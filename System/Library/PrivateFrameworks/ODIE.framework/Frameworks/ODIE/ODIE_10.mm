uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
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
        v7 = (v4 + 8 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::InsertIntoBucketImpl<void *>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::grow(a1, v6, a3);
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::grow(uint64_t **a1, int a2, unint64_t a3)
{
  v4 = *(a1 + 4);
  v5 = *a1;
  v6 = (a2 - 1) | ((a2 - 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  v8 = ((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8);
  if ((v8 + 1) > 0x40)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 64;
  }

  *(a1 + 4) = v9;
  result = llvm::allocate_buffer((8 * v9), 8uLL);
  *a1 = result;
  if (v5)
  {
    llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::moveFromOldBuckets(a1, v5, &v5[v4]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v11 = *(a1 + 4);
  if (v11)
  {
    v12 = 0;
    v13 = v11 + 0x1FFFFFFFFFFFFFFFLL;
    v14 = v13 & 0x1FFFFFFFFFFFFFFFLL;
    v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
    v16 = vdupq_n_s64(v14);
    v17 = result + 1;
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
      if (v18.i8[0])
      {
        *(v17 - 1) = -4096;
      }

      if (v18.i8[4])
      {
        *v17 = -4096;
      }

      v12 += 2;
      v17 += 2;
    }

    while (v15 != v12);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::LookupBucketFor<void *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

void mlir::Block::~Block(mlir::Block **this)
{
  mlir::Block::clear(this);
  v2 = this[6];
  v3 = this[7];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x25F891040](*v2, 0x1020C401BF16FDDLL);
      }

      v2 = (v2 + 8);
    }

    while (v2 != v3);
    v2 = this[6];
  }

  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v4 = this[5];
  if (v4 != (this + 4))
  {
    do
    {
      *(v4 + 2) = 0;
      v5 = *v4;
      v6 = *(v4 + 1);
      *v6 = *v4;
      *(v5 + 1) = v6;
      *v4 = 0;
      *(v4 + 1) = 0;
      mlir::Operation::destroy(v4);
      v4 = v6;
    }

    while (v6 != this + 4);
  }
}

mlir::Operation *mlir::Block::clear(mlir::Block *this)
{
  v1 = (this + 32);
  for (i = *(this + 5); i != v1; i = *(i + 8))
  {
    mlir::Operation::dropAllReferences(i);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    *(result + 2) = 0;
    v4 = *result;
    v3 = *(result + 1);
    *v3 = *result;
    *(v4 + 8) = v3;
    *result = 0;
    *(result + 1) = 0;
    mlir::Operation::destroy(result);
  }

  return result;
}

uint64_t **mlir::Block::dropAllDefinedValueUses(mlir::Block *this)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  while (v2 != v3)
  {
    v4 = *v2++;
    mlir::IRObjectWithUseList<mlir::OpOperand>::dropAllUses(v4);
  }

  for (i = *(this + 5); i != (this + 32); i = *(i + 8))
  {
    mlir::Operation::dropAllDefinedValueUses(i);
  }

  return mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(this);
}

uint64_t **mlir::IRObjectWithUseList<mlir::BlockOperand>::dropAllUses(uint64_t **result)
{
  while (1)
  {
    v1 = *result;
    if (!*result)
    {
      break;
    }

    v2 = v1[1];
    if (v2)
    {
      v3 = *v1;
      *v2 = *v1;
      if (v3)
      {
        *(v3 + 8) = v1[1];
      }
    }

    *v1 = 0;
    v1[1] = 0;
    v1[3] = 0;
  }

  return result;
}

uint64_t mlir::Block::addArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = a1[7] - a1[6];
  std::vector<mlir::BlockArgument>::reserve(a1 + 6, a3 + (v10 >> 3));
  if (a3 && a5)
  {
    v11 = mlir::TypeRange::dereference_iterator(a2, 0);
    mlir::Block::addArgument(a1, v11, *a4);
  }

  return a1[6] + v10;
}

void std::vector<mlir::BlockArgument>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(a1, a2);
    }

    std::vector<mlir::BlockArgument>::__throw_length_error[abi:nn200100]();
  }
}

char *std::vector<mlir::BlockArgument>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<mlir::BlockArgument>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(a1, v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(a1, v19);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, v4, a1[1] - v4);
    v20 = *a1;
    v21 = v16 + a1[1] - v4 + 8;
    a1[1] = v4;
    v22 = v4 - v20;
    v23 = v16 - (v4 - v20);
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    a1[1] = v21;
    a1[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v17 = v9 <= a3 || v4 > a3;
    v18 = 8;
    if (v17)
    {
      v18 = 0;
    }

    *v4 = *&a3[v18];
  }

  return v4;
}

void *mlir::Block::eraseArgument(mlir::Block *this, unsigned int a2)
{
  v2 = a2;
  v4 = a2;
  v5 = *(this + 6);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = MEMORY[0x25F891040](result, 0x1020C401BF16FDDLL);
    v5 = *(this + 6);
  }

  v7 = 8 * v4;
  v8 = v5 + 8 * v4;
  v9 = *(this + 7);
  v10 = v9 - (v8 + 8);
  if (v9 != v8 + 8)
  {
    result = memmove(v8, (v8 + 8), v9 - (v8 + 8));
    v5 = *(this + 6);
  }

  *(this + 7) = v8 + v10;
  v11 = (v7 + v5);
  if ((v8 + v10) != v11)
  {
    do
    {
      v12 = *v11++;
      v13 = v2++;
      *(v12 + 24) = v13;
    }

    while (v11 != (v8 + v10));
  }

  return result;
}

uint64_t mlir::Block::eraseArguments(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6 != v7)
  {
    while (1)
    {
      result = a2(a3, *v6);
      if (result)
      {
        break;
      }

      if (++v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(v5 + 56);
  }

  if (v6 != v7)
  {
    v8 = v6 + 1;
    v9 = *(*v6 + 24);
    result = MEMORY[0x25F891040]();
    v10 = *(v5 + 56);
    if (v10 != v6 + 1)
    {
      do
      {
        result = a2(a3, *v8);
        if (result)
        {
          result = *v8;
          if (*v8)
          {
            result = MEMORY[0x25F891040](result, 0x1020C401BF16FDDLL);
          }
        }

        else
        {
          *(*v8 + 24) = v9;
          *v6++ = *v8;
          LODWORD(v9) = v9 + 1;
        }

        ++v8;
      }

      while (v8 != v10);
      v10 = *(v5 + 56);
    }

    if (v6 != v10)
    {
      *(v5 + 56) = v6;
    }
  }

  return result;
}

void *mlir::SuccessorRange::SuccessorRange(void *this, mlir::Block *a2)
{
  *this = 0;
  this[1] = 0;
  v2 = *(a2 + 4);
  if (v2 != (a2 + 32))
  {
    v3 = *(a2 + 3) & 0xFFFFFFFFFFFFFFF8;
    v4 = *(v3 + 8);
    if (v4 == v3 || *(v4 + 8) != v3)
    {
      v5 = v2[10];
      this[1] = v5;
      if (v5)
      {
        *this = &v2[4 * ((v2[11] >> 23) & 1) + 16] + ((v2[11] >> 21) & 0x7F8);
      }
    }
  }

  return this;
}

const void **llvm::SmallPtrSetImpl<mlir::Block *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = (*a1 + 8 * *(a1 + v7));
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

void llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(result + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v11, 8);
    v10 = *(result + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*result + 8 * v10);
    v14 = (a2 + 32 * a3 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *v13++ = v15;
      --v12;
    }

    while (v12);
  }

  *(result + 8) = v10 + v9;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 != a5)
  {
    if (result != a3 && a4 != a5)
    {
      v5 = a4;
      do
      {
        v6 = v5 - 1;
        if (!v5)
        {
          v6 = 0;
        }

        v6[3] = v6[3] & 7 | result;
        v5 = v5[1];
      }

      while (v5 != a5);
    }

    if (a4 != a5)
    {
      v7 = *a5;
      v8 = *a4;
      *(v8 + 8) = a5;
      *a5 = v8;
      v9 = *a2;
      *(v7 + 8) = a2;
      *a4 = v9;
      *(v9 + 8) = a4;
      *a2 = v7;
    }
  }

  return result;
}

uint64_t llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a2)
  {
    v3 = (a2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3[2];
  v3[3] &= 7uLL;
  v5 = v3[1];
  *v4 = v5;
  *(v5 + 8) = v4;
  v3[1] = 0;
  v3[2] = 0;
  mlir::Block::~Block((a2 - 8));
  MEMORY[0x25F891040]();
  return v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BlockArgument>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v2 = *(**a1 + 32);

  return v2();
}

BOOL llvm::SmallPtrSetImplBase::contains_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  if (*(this + 20) != 1)
  {
    return llvm::SmallPtrSetImplBase::doFind(this, a2) != 0;
  }

  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *this;
  v4 = 8 * v2 - 8;
  do
  {
    v5 = *v3++;
    result = v5 == a2;
    v7 = v5 == a2 || v4 == 0;
    v4 -= 8;
  }

  while (!v7);
  return result;
}

uint64_t *mlir::Builder::getF16Type(mlir::Builder *this)
{
  v1 = *(**this + 424);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t *mlir::Builder::getF32Type(mlir::Builder *this)
{
  v1 = *(**this + 440);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t *mlir::Builder::getF64Type(mlir::Builder *this)
{
  v1 = *(**this + 448);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::Builder::getNoneType(mlir::Builder *this)
{
  v3 = **this;
  result = *(v3 + 528);
  if (!result)
  {
    v6[1] = v1;
    v6[2] = v2;
    v5 = *(v3 + 384);
    v6[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v6);
  }

  return result;
}

uint64_t mlir::Builder::getIndexAttr(mlir::Builder *this, uint64_t a2)
{
  v2 = *(**this + 472);
  v6 = 64;
  v5 = a2;
  v3 = mlir::IntegerAttr::get(v2, &v5);
  if (v6 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t mlir::Builder::getI64IntegerAttr(mlir::Builder *this, uint64_t a2)
{
  v3 = mlir::IntegerType::get(*this, 64, 0);
  v7 = 64;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getI32VectorAttr(void *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3)
{
  v12 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  v6 = mlir::VectorType::get(&v12, 1uLL, v5, 0, 0);
  v7 = v6;
  if (v6)
  {
    v8 = *v6;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(v7, v10, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32TensorAttr(void *a1, llvm::hashing::detail::hash_state *a2, uint64_t a3)
{
  v9 = a3;
  v5 = mlir::IntegerType::get(*a1, 32, 0);
  *&v12 = &v9;
  *(&v12 + 1) = 1;
  v10 = 0;
  v11 = v5;
  *&v12 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v5 + 32), &v12, &v11, &v10);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v12);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v6, v7, a2, 4 * a3);
}

uint64_t mlir::Builder::getI32IntegerAttr(mlir::Builder *this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 0);
  v7 = 32;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getUI32IntegerAttr(mlir::Builder *this, unsigned int a2)
{
  v3 = mlir::IntegerType::get(*this, 32, 2);
  v7 = 32;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getI16IntegerAttr(mlir::Builder *this, int a2)
{
  v3 = mlir::IntegerType::get(*this, 16, 0);
  v7 = 16;
  v6 = a2;
  v4 = mlir::IntegerAttr::get(v3, &v6);
  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t mlir::Builder::getIntegerAttr(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12 = a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v11 = 64;
    v10 = a3;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
    v6 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(a2 + 2) >> 30 == 1;
    v11 = IntOrFloatBitWidth;
    if (IntOrFloatBitWidth > 0x40)
    {
      llvm::APInt::initSlowCase(&v10, a3, v6);
    }

    v7 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    if (!IntOrFloatBitWidth)
    {
      v7 = 0;
    }

    v10 = v7 & a3;
  }

  v8 = mlir::IntegerAttr::get(a2, &v10);
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  return v8;
}

uint64_t mlir::Builder::getI64ArrayAttr(mlir::Builder *a1, uint64_t *a2, unint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v11 = 0;
      v12 = v17;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v17;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, a3, 8);
    v6 = v16;
    v7 = v15;
  }

  v8 = 8 * a3;
  v9 = &v7[v6];
  do
  {
    v10 = *a2++;
    *v9++ = mlir::Builder::getI64IntegerAttr(a1, v10);
    v8 -= 8;
  }

  while (v8);
  v11 = v16;
  v12 = v15;
LABEL_8:
  LODWORD(v16) = v11 + a3;
  v13 = mlir::ArrayAttr::get(*a1, v12, (v11 + a3));
  if (v15 != v17)
  {
    free(v15);
  }

  return v13;
}

uint64_t mlir::Builder::getStrArrayAttr(mlir::StringAttr **a1, const char **a2, const llvm::Twine *a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v12 = 0;
      v13 = v20;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v20;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, a3, 8);
    v6 = v19;
    v7 = v18;
  }

  v8 = &a2[2 * a3];
  v9 = &v7[v6];
  do
  {
    v10 = *a2;
    v11 = a2[1];
    a2 += 2;
    v17 = 261;
    v16[0] = v10;
    v16[1] = v11;
    *v9++ = mlir::StringAttr::get(*a1, v16, a3);
  }

  while (a2 != v8);
  v12 = v19;
  v13 = v18;
LABEL_8:
  LODWORD(v19) = v12 + a3;
  v14 = mlir::ArrayAttr::get(*a1, v13, (v12 + a3));
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

uint64_t mlir::Builder::getTypeArrayAttr(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x800000000;
  if (a3 < 9)
  {
    if (!a3)
    {
      v11 = 0;
      v12 = v17;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = v17;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, a3, 8);
    v6 = v16;
    v7 = v15;
  }

  v8 = 0;
  v9 = &v7[v6];
  do
  {
    v10 = mlir::TypeRange::dereference_iterator(a2, v8);
    v9[v8++] = mlir::TypeAttr::get(v10);
  }

  while (a3 != v8);
  v11 = v16;
  v12 = v15;
LABEL_8:
  LODWORD(v16) = v11 + a3;
  v13 = mlir::ArrayAttr::get(*a1, v12, (v11 + a3));
  if (v15 != v17)
  {
    free(v15);
  }

  return v13;
}

uint64_t *mlir::Builder::getZeroAttr(mlir::Builder *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    IndexAttr = mlir::FloatAttr::get(a2, 0.0);
    goto LABEL_3;
  }

  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    IndexAttr = mlir::Builder::getIndexAttr(a1, 0);
LABEL_3:
    v7 = IndexAttr;
    if (IndexAttr)
    {
      v8 = *IndexAttr;
      v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    return v7;
  }

  if (a2 && v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    LODWORD(v23) = a2[1] & 0x3FFFFFFF;
    if (v23 >= 0x41)
    {
      operator new[]();
    }

    ZeroAttr = 0;
    v17 = mlir::IntegerAttr::get(a2, &ZeroAttr);
    v7 = v17;
    if (v17)
    {
      v18 = *v17;
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
    }

    if (v23 >= 0x41 && ZeroAttr)
    {
      MEMORY[0x25F891010](ZeroAttr, 0x1000C8000313F17);
    }
  }

  else
  {
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v12 && (v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v14 = mlir::detail::InterfaceMap::lookup(v10 + 8, v13), v15 = (*(v14 + 8))(v14, a2), ZeroAttr = mlir::Builder::getZeroAttr(a1, v15), v23 = v16, ZeroAttr))
    {
      v21 = mlir::DenseElementsAttr::get(a2, v14, &ZeroAttr, 1uLL);
      return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v21);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t *mlir::Builder::getOneAttr(mlir::Builder *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    IndexAttr = mlir::FloatAttr::get(a2, 1.0);
    goto LABEL_3;
  }

  v10 = *a2;
  v11 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    IndexAttr = mlir::Builder::getIndexAttr(a1, 1);
LABEL_3:
    v7 = IndexAttr;
    if (IndexAttr)
    {
      v8 = *IndexAttr;
      v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    return v7;
  }

  if (a2 && v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    LODWORD(v23) = a2[1] & 0x3FFFFFFF;
    if (v23 >= 0x41)
    {
      operator new[]();
    }

    OneAttr = 1;
    v17 = mlir::IntegerAttr::get(a2, &OneAttr);
    v7 = v17;
    if (v17)
    {
      v18 = *v17;
      v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
    }

    if (v23 >= 0x41 && OneAttr)
    {
      MEMORY[0x25F891010](OneAttr, 0x1000C8000313F17);
    }
  }

  else
  {
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v12 && (v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v14 = mlir::detail::InterfaceMap::lookup(v10 + 8, v13), v15 = (*(v14 + 8))(v14, a2), OneAttr = mlir::Builder::getOneAttr(a1, v15), v23 = v16, OneAttr))
    {
      v21 = mlir::DenseElementsAttr::get(a2, v14, &OneAttr, 1uLL);
      return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v21);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t mlir::Builder::getConstantAffineMap(mlir::Builder *this, mlir *a2, mlir::MLIRContext *a3)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = mlir::getAffineConstantExpr(a2, *this, a3);
  return mlir::AffineMap::getImpl(0, 0, v4, 1, *v4[0]);
}

uint64_t mlir::Builder::getSymbolIdentityMap(mlir::Builder *this)
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = getAffineDimOrSymbol(7u, 0, *this);
  return mlir::AffineMap::getImpl(0, 1, v2, 1, *v2[0]);
}

mlir::Operation *mlir::OpBuilder::insert(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 3);
    *(a2 + 2) = v3;
    *(a2 + 8) = -1;
    v5 = *v4;
    *a2 = *v4;
    *(a2 + 1) = v4;
    *(v5 + 8) = a2;
    *v4 = a2;
    v6 = *(this + 1);
    if (v6)
    {
      (*(*v6 + 16))(v6, a2, 0, 0);
    }
  }

  return a2;
}

uint64_t mlir::OpBuilder::tryFold(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v49[4] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  if (v6)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 12) < v6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v6, 8);
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v9))
  {
    v10 = 0;
    *(v3 + 8) = 0;
    return v10;
  }

  v47 = v49;
  v48 = 0x400000000;
  if ((mlir::Operation::fold(a2, &v47) & 1) == 0)
  {
    v10 = 0;
    *(v3 + 8) = 0;
    goto LABEL_41;
  }

  if (!v48)
  {
    v10 = 1;
    goto LABEL_41;
  }

  v43[0] = *a1;
  memset(&v43[1], 0, 24);
  v44 = &v46;
  v45 = 0x100000000;
  v11 = *(a2 + 48);
  v42 = a2;
  v41 = a1;
  if (*(v11 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = (*(v11 + 8) + 32);
  }

  else
  {
    v12 = (v11 + 24);
  }

  v13 = 0;
  v14 = *v12;
  v15 = v47;
  v16 = 8 * v48;
  v17 = v7;
  do
  {
    v18 = v8;
    if (v13)
    {
      v19 = v7;
      v20 = v13;
      if (!v6)
      {
        goto LABEL_21;
      }

      v21 = *(v8 + 8) & 7;
      v19 = v7;
      v20 = v13;
      if (v21 == 6)
      {
        goto LABEL_21;
      }

      v22 = (5 - v21);
      v18 = v17;
      v20 = v13 - v22;
      if (v13 > v22)
      {
        v19 = v7 - 16 * v22;
LABEL_21:
        v18 = v19 - 24 * v20;
      }
    }

    v23 = *(v18 + 8);
    v24 = v15[v13];
    v25 = v24 & 0xFFFFFFFFFFFFFFF8;
    if ((v24 & 4) == 0 || !v25)
    {
      if (!v14)
      {
        goto LABEL_37;
      }

      v26 = v3;
      v27 = v6;
      v28 = v8;
      v29 = v15;
      v30 = (*(*v14 + 24))(v14, v43, v25, v23 & 0xFFFFFFFFFFFFFFF8, *(v42 + 24));
      if (!v30)
      {
        v3 = v26;
        if (v45)
        {
          v35 = v44;
          v36 = 8 * v45;
          do
          {
            v37 = *v35;
            if (*(*v35 + 16))
            {
              *(v37 + 2) = 0;
              v39 = *v37;
              v38 = *(v37 + 1);
              *v38 = *v37;
              *(v39 + 8) = v38;
              *v37 = 0;
              *(v37 + 1) = 0;
            }

            mlir::Operation::destroy(v37);
            v35 += 8;
            v36 -= 8;
          }

          while (v36);
        }

LABEL_37:
        v10 = 0;
        *(v3 + 8) = 0;
        goto LABEL_39;
      }

      v31 = v30;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v44, v30);
      v25 = v31 - 16;
      v15 = v29;
      v8 = v28;
      v6 = v27;
      v3 = v26;
    }

    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v3, v25);
    ++v13;
    v17 -= 16;
    v16 -= 8;
  }

  while (v16);
  if (v45)
  {
    v32 = v44;
    v33 = 8 * v45;
    do
    {
      v34 = *v32++;
      mlir::OpBuilder::insert(v41, v34);
      v33 -= 8;
    }

    while (v33);
    v10 = 1;
  }

  else
  {
    v10 = 1;
  }

LABEL_39:
  if (v44 != &v46)
  {
    free(v44);
  }

LABEL_41:
  if (v47 != v49)
  {
    free(v47);
  }

  return v10;
}

unsigned int *mlir::OpBuilder::clone(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::Operation::clone(a2, a3, 3);
  mlir::OpBuilder::insert(a1, v4);
  v5 = *(a1 + 1);
  if (v5)
  {
    notifyBlockInsertions(v4, v5);
    v15 = a1;
    v6 = v4[11];
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = ((&v4[4 * ((v6 >> 23) & 1) + 17] + ((v6 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10];
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

          v11 = *(v10 + 40);
          v12 = v10 + 32;
          if (v11 != v10 + 32)
          {
            do
            {
              v13 = *(v11 + 8);
              mlir::detail::walk<mlir::ForwardIterator>(v11, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>, &v15, 0);
              v11 = v13;
            }

            while (v13 != v12);
          }
        }

        v7 += 24;
      }

      while (v7 != v8);
    }
  }

  return v4;
}

uint64_t notifyBlockInsertions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 44);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((result + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 40);
    v5 = v4 + 24 * (v2 & 0x7FFFFF);
    do
    {
      for (i = *(v4 + 8); i != v4; i = *(i + 8))
      {
        if (i)
        {
          v7 = i - 8;
        }

        else
        {
          v7 = 0;
        }

        result = (*(*a2 + 24))(a2, v7, 0, 0);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return result;
}

unsigned int *mlir::OpBuilder::clone(mlir::OpBuilder *this, mlir::Operation *a2)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = mlir::OpBuilder::clone(this, a2, v4);
  MEMORY[0x25F891030](v9, 8);
  MEMORY[0x25F891030](v6, 8);
  MEMORY[0x25F891030](v4[0], 8);
  return v2;
}

void mlir::OpBuilder::cloneRegionBefore(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  mlir::Region::cloneInto(a2, a3, a4, a5);
  if (*(a1 + 8))
  {
    v9 = a2[1];
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v18 = v10;
    v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>((a5 + 24), &v18);
    v12 = 0;
    if (v11 && v11 != *(a5 + 24) + 16 * *(a5 + 40))
    {
      v12 = *(v11 + 8);
    }

    for (i = (v12 + 8); i != a4; i = i[1])
    {
      if (i)
      {
        v14 = i - 1;
      }

      else
      {
        v14 = 0;
      }

      (*(**(a1 + 8) + 24))(*(a1 + 8), v14, 0, 0);
      v18 = a1;
      v15 = v14[5];
      v16 = v14 + 4;
      if (v15 != v16)
      {
        do
        {
          v17 = *(v15 + 8);
          mlir::detail::walk<mlir::ForwardIterator>(v15, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>, &v18, 0);
          v15 = v17;
        }

        while (v17 != v16);
      }
    }
  }
}

uint64_t mlir::OpBuilder::cloneRegionBefore(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  mlir::OpBuilder::cloneRegionBefore(a1, a2, a3, a4, v5);
  MEMORY[0x25F891030](v10, 8);
  MEMORY[0x25F891030](v7, 8);
  return MEMORY[0x25F891030](v5[0], 8);
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, double a2)
{
  v7 = 64;
  v6 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v4, &v6);
  *this = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(this, &v4);
  if ((*(v4 + 8) - 64) <= 0xFFFFFF7F && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return this;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, float a2)
{
  v7 = 32;
  v6 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(&v4, &v6);
  *this = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(this, &v4);
  if ((*(v4 + 8) - 64) <= 0xFFFFFF7F && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::clone(mlir::Operation&,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v4 = *(v3 + 8);

  return notifyBlockInsertions(a2, v4);
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::OpBuilder::cloneRegionBefore(mlir::Region &,mlir::Region &,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,mlir::IRMapping &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(**(*a1 + 8) + 16))(*(*a1 + 8), a2, 0, 0);
  v4 = *(v3 + 8);

  return notifyBlockInsertions(a2, v4);
}

uint64_t mlir::ElementsAttr::isValidIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(a2 + 24))(a2, a1);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4 == 1;
  }

  if (v9 && !*a3)
  {
    return 1;
  }

  if (v8 == a4)
  {
    v10 = (*(a2 + 24))(a2, a1);
    if (a4 << 32)
    {
      v11 = 0;
      v12 = a4;
      while (1)
      {
        v13 = *(a3 + (v11 >> 29));
        if (v13 < 0 || v13 >= *(v10 + 8 * (v11 >> 32)))
        {
          break;
        }

        v11 += 0x100000000;
        if (!--v12)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t mlir::ElementsAttr::getFlattenedIndex(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  (*(v6 + 24))(v6, a1);
  v8 = v7;
  v9 = (*(v6 + 24))(v6, a1);
  v10 = 0;
  if (v8 - 1 >= 0)
  {
    v11 = 8 * (v8 - 1);
    v12 = 1;
    do
    {
      v10 += *(a2 + v11) * v12;
      v12 *= *(v9 + v11);
      v11 -= 8;
    }

    while (v11 != -8);
  }

  return v10;
}

BOOL mlir::detail::verifyAffineMapAsLayout(_DWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3 == *a1)
  {
    return 1;
  }

  a4(&v18, a5, a2);
  if (v18)
  {
    mlir::Diagnostic::operator<<<53ul>(v19, "memref layout mismatch between rank and affine map: ");
    if (v18)
    {
      v16 = 5;
      v17 = a3;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
      v9 = v20 + 24 * v21;
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++v21;
      if (v18)
      {
        mlir::Diagnostic::operator<<<5ul>(v19, " != ");
        if (v18)
        {
          v11 = *a1;
          v16 = 5;
          v17 = v11;
          v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
          v13 = v20 + 24 * v21;
          v14 = *v12;
          *(v13 + 16) = *(v12 + 16);
          *v13 = v14;
          ++v21;
        }
      }
    }
  }

  v5 = (v22 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v5;
}

uint64_t mlir::Diagnostic::operator<<<53ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::AffineMapAttr::get(unint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *v1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v9[1] = v1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = a1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = ((0x9DDFEA08EB382D69 * v5) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (((0x759C16B48 * v5) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::ArrayAttr::get(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v9[1] = v6;
  v8[0] = a2;
  v8[1] = a3;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Attribute>>(v10, 0, v10, v11, v8);
  v7 = v8;
  *&v10[0] = v8;
  *(&v10[0] + 1) = v9;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::DenseArrayAttr::get(uint64_t a1, unsigned int a2, llvm::hashing::detail::hash_state *a3, llvm::hashing::detail::hash_state *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  v5 = *v4;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v8[1] = v4;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v13[1] = v8;
  v10 = a1;
  v11 = a2;
  v12[0] = a3;
  v12[1] = a4;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,long long,llvm::ArrayRef<char>>(__dst, __dst, v15, a1, &v11, v12);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::DenseStringElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = *(**a1 + 32);
  v8 = *v7;
  v39[0] = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v39[1] = v7;
  v41[0] = _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v41[1] = v39;
  if (a4)
  {
    v10 = llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v13 = a4 - 1;
    if (a4 == 1)
    {
      *&v42 = a1;
      *(&v42 + 1) = a2;
      *&v43 = a3;
      *(&v43 + 1) = 1;
      *&v44 = v10;
      BYTE8(v44) = 1;
    }

    else
    {
      v37 = v10;
      v38 = a2;
      v14 = *a3;
      v15 = *(a3 + 8);
      v16 = 16 * a4 - 16;
      v17 = a3 + 16;
      while (v15 == *(v17 + 8) && (!v15 || !memcmp(v14, *v17, v15)))
      {
        v16 -= 16;
        v17 += 16;
        if (!--v13)
        {
          *&v42 = a1;
          *(&v42 + 1) = v38;
          *&v43 = a3;
          *(&v43 + 1) = 1;
          *&v44 = v37;
          BYTE8(v44) = 1;
          goto LABEL_27;
        }
      }

      if (v13)
      {
        v18 = 0;
        v19 = a3 + 16 * a4;
        while (1)
        {
          v20 = llvm::hashing::detail::hash_combine_range_impl<char const>(*v17, *v17 + *(v17 + 8), v11, v12);
          if (v18 > 0x38)
          {
            break;
          }

          v21 = v18 + 8;
          *(__src + v18) = v20;
          v17 += 16;
          v18 += 8;
          v16 -= 16;
          if (!v16)
          {
            goto LABEL_17;
          }
        }

        v36 = v8;
        v42 = xmmword_25D0A0610;
        v43 = xmmword_25D0A0620;
        v44 = xmmword_25D0A0630;
        v45 = 0xF7ACCA5326449396;
        llvm::hashing::detail::hash_state::mix(&v42, __src, v11, v12);
        v25 = 64;
        if (v16)
        {
          do
          {
            v26 = 0;
            while (1)
            {
              v27 = llvm::hashing::detail::hash_combine_range_impl<char const>(*v17, *v17 + *(v17 + 8), v23, v24);
              if (v26 > 0x38)
              {
                break;
              }

              v28 = v26 + 8;
              *(__src + v26) = v27;
              v17 += 16;
              v26 += 8;
              if (v17 == v19)
              {
                v29 = __src + v28;
                v17 = a3 + 16 * a4;
                goto LABEL_24;
              }
            }

            v29 = __src + v26;
            v28 = 64;
LABEL_24:
            std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, v29, v47);
            llvm::hashing::detail::hash_state::mix(&v42, __src, v30, v31);
            v25 += v28;
          }

          while (v17 != v19);
        }

        v22 = llvm::hashing::detail::hash_state::finalize(&v42, v25);
        v8 = v36;
      }

      else
      {
        v21 = 0;
LABEL_17:
        v22 = llvm::hashing::detail::hash_short(__src, v21, 0xFF51AFD7ED558CCDLL);
      }

      v32 = __ROR8__(v22 + 16, 16);
      v33 = 0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v37 ^ v32 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v37 ^ v32 ^ 0xFF51AFD7ED558CCDLL)));
      *&v42 = a1;
      *(&v42 + 1) = v38;
      *&v43 = a3;
      *(&v43 + 1) = a4;
      *&v44 = (0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v22;
      BYTE8(v44) = 0;
    }
  }

  else
  {
    *&v42 = a1;
    *(&v42 + 1) = a2;
    *&v44 = 0;
    v43 = a3;
    BYTE8(v44) = 0;
  }

LABEL_27:
  memset(v47, 0, sizeof(v47));
  memset(__src, 0, sizeof(__src));
  v48 = 0;
  v49 = 0xFF51AFD7ED558CCDLL;
  v34 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(__src, __src, v47, a1, &v44);
  v40 = &v42;
  *&__src[0] = &v42;
  *(&__src[0] + 1) = v41;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v34, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __src);
}

uint64_t mlir::FloatAttr::get(uint64_t a1, const llvm::APFloat::Storage *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v7[1] = v2;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v9[1] = v7;
  v10 = a1;
  llvm::APFloat::Storage::Storage(v11, a2);
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(__dst, __dst, v13, v10, v11);
  v8 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v9;
  v5 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  llvm::APFloat::Storage::~Storage(v11);
  return v5;
}

uint64_t mlir::FloatAttr::get(uint64_t *a1, double a2)
{
  v3 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
    {
      llvm::APFloat::APFloat(&v24, a2);
      v6 = *v3;
      v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
      v9 = (*v8)(v8, v3);
      llvm::APFloat::convert(&v24, v9, 1u, &v18);
      v10 = *(**v3 + 32);
      v11 = *v10;
      v19 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
      v20 = v10;
      v22 = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
      v23 = &v19;
      v26 = v3;
      llvm::APFloat::Storage::Storage(v27, &v24);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      __dst = 0u;
      v29 = 0u;
      v35 = 0;
      v36 = 0xFF51AFD7ED558CCDLL;
      v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(&__dst, &__dst, &v32, v26, v27);
      v21 = &v26;
      *&__dst = &v26;
      *(&__dst + 1) = &v22;
      v13 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
      goto LABEL_9;
    }

    v4 = *v3;
  }

  v14 = *(*v4 + 32);
  llvm::APFloat::APFloat(&v24, a2);
  v15 = *v14;
  v19 = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v20 = v14;
  v22 = _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v23 = &v19;
  v26 = v3;
  if (v24 == &llvm::semPPCDoubleDouble)
  {
    v27[0] = &llvm::semPPCDoubleDouble;
    v27[1] = v25;
    v24 = &llvm::semBogus;
    v25 = 0;
  }

  else
  {
    v27[0] = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(v27, &v24);
    LODWORD(v3) = v26;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  __dst = 0u;
  v29 = 0u;
  v35 = 0;
  v36 = 0xFF51AFD7ED558CCDLL;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(&__dst, &__dst, &v32, v3, v27);
  v21 = &v26;
  *&__dst = &v26;
  *(&__dst + 1) = &v22;
  v13 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v15 + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v16, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
LABEL_9:
  llvm::APFloat::Storage::~Storage(v27);
  llvm::APFloat::Storage::~Storage(&v24);
  return v13;
}

uint64_t mlir::IntegerAttr::get(_DWORD *a1, llvm::APInt *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = *(*v2 + 32);
LABEL_6:
    v6 = *v3;
    v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v12[1] = v3;
    v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
    v17[1] = v12;
    v14 = a1;
    v16 = *(a2 + 2);
    if (v16 > 0x40)
    {
      operator new[]();
    }

    v15 = *a2;
    memset(v19, 0, sizeof(v19));
    memset(__dst, 0, sizeof(__dst));
    v20 = 0;
    v21 = 0xFF51AFD7ED558CCDLL;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v19, a1, &v15);
    v13 = &v14;
    *&__dst[0] = &v14;
    *(&__dst[0] + 1) = v17;
    v8 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
    if (v16 >= 0x41 && v15)
    {
      MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }

    return v8;
  }

  v3 = *(*v2 + 32);
  if (a1[2] != 1)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 2);
  if (v4 > 0x40)
  {
    v5 = llvm::APInt::countLeadingZerosSlowCase(a2) == v4;
  }

  else
  {
    v5 = *a2 == 0;
  }

  v9 = v5;
  v5 = v9 == 0;
  v10 = 600;
  if (!v5)
  {
    v10 = 592;
  }

  return *(*v3 + v10);
}

uint64_t mlir::IntegerAttr::get(_DWORD *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v15 = 64;
    v14 = a2;
    v6 = *(*v2 + 32);
    v7 = *v6;
    v16 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v17 = v6;
    return mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v16, a1, &v14);
  }

  else
  {
    v4 = a1[2];
    v15 = v4 & 0x3FFFFFFF;
    if ((v4 & 0x3FFFFFFF) > 0x40)
    {
      v10 = v4 >> 30 == 1 && v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
      llvm::APInt::initSlowCase(&v14, a2, v10);
    }

    v5 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    if ((v4 & 0x3FFFFFFF) == 0)
    {
      v5 = 0;
    }

    v14 = v5 & a2;
    v11 = *(*v2 + 32);
    v12 = *v11;
    v16 = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v17 = v11;
    v8 = mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>((v12 + 560), _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, &v16, a1, &v14);
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  return v8;
}

uint64_t *mlir::IntegerAttr::getValue@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = *this;
  v4 = *(*this + 24);
  *(a1 + 2) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *a1 = *(v3 + 16);
  return this;
}

uint64_t mlir::IntegerSetAttr::get(unint64_t a1)
{
  v1 = ***(a1 + 8);
  v2 = *v1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v9[1] = v1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v13[1] = v9;
  v12 = a1;
  v3 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = ((0x9DDFEA08EB382D69 * v5) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (((0x759C16B48 * v5) & 0x7FFFFFFF8) + 8));
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(void (*a1)(void **__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a6;
  v9 = a7;
  mlir::Dialect::isValidNamespace(a4[2], a4[3]);
}

uint64_t mlir::SparseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  v5 = *v4;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v8[1] = v4;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
  v13[1] = v8;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(__dst, __dst, v15, a1, &v11, &v12);
  v9 = v10;
  *&__dst[0] = v10;
  *(&__dst[0] + 1) = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(void (*a1)(void *__return_ptr, void), void *a2, void *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v60 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v47 = a2;
  v44 = a4;
  v45 = a5;
  v14 = *(a7 + 16);
  v41 = *(a7 + 8);
  v42 = v14;
  v43 = a6;
  (*(v14 + 24))();
  if (v15 == 1)
  {
    v40 = *(v8 + 8);
    v36 = &v46;
    v37 = &v44;
    v38 = &v40;
    v39 = &v41;
    (*(a5 + 24))(a5, a4);
    v17 = v16;
    (*(*(&v40 + 1) + 24))(*(&v40 + 1), v40);
    if (v18 == 2)
    {
      if (*((*(*(&v40 + 1) + 24))(*(&v40 + 1), v40) + 8) != v17)
      {
LABEL_16:
        mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(&__dst, &v36);
        goto LABEL_17;
      }
    }

    else if (v18 != 1 || v17 != 1)
    {
      goto LABEL_16;
    }

    v19 = *(*(*(&v40 + 1) + 24))(*(&v40 + 1), v40);
    if (v19 == *(*(v42 + 24))(v42, v41))
    {
      v34 = a3;
      v35[0] = &v46;
      v35[1] = &v44;
      mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v43, &__dst);
      v20 = __dst;
      v21 = BYTE8(__dst);
      v22 = v53;
      if (*(v43 + 24))
      {
        if (BYTE8(__dst))
        {
          v23 = 0;
        }

        else
        {
          v23 = v53;
        }

        v48 = &v50;
        v49 = 0x600000000;
        llvm::SmallVectorImpl<unsigned long long>::assign(&v48, v17, *(__dst + 8 * v23));
        if (mlir::ElementsAttr::isValidIndex(v44, v45, v48, v49))
        {
          v24 = 1;
        }

        else
        {
          mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&__dst, v35, 0, v48, v49);
          v24 = v59 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
        }

        a3 = v34;
        if (v48 != &v50)
        {
          free(v48);
        }

        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v33 = v8;
        if (v19)
        {
          v27 = 0;
          while (1)
          {
            v28 = (v21 & 1) != 0 ? 0 : v22;
            v29 = (v20 + 8 * v28);
            if (!mlir::ElementsAttr::isValidIndex(v44, v45, v29, v17))
            {
              break;
            }

            ++v27;
            v22 += v17;
            if (v19 == v27)
            {
              goto LABEL_26;
            }
          }

          mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(&__dst, v35, v27, v29, v17);
          v30 = v59;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
          v8 = v33;
          a3 = v34;
          if (v30)
          {
            return 0;
          }
        }

        else
        {
LABEL_26:
          v8 = v33;
          a3 = v34;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_16;
  }

  a1(&__dst, a2);
  if (__dst)
  {
    mlir::Diagnostic::operator<<<46ul>(&__dst + 8, "expected 1-d tensor for sparse element values");
  }

LABEL_17:
  v25 = v59;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
  if (v25)
  {
    return 0;
  }

LABEL_33:
  v31 = *a3;
  v46 = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  v47 = a3;
  v36 = _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v37 = &v46;
  v48 = a4;
  v49 = a5;
  v50 = v8;
  v51[0] = a7;
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v53 = 0u;
  v54 = 0u;
  __dst = 0u;
  v57 = 0;
  v58 = 0xFF51AFD7ED558CCDLL;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(&__dst, &__dst, v56, a4, &v50, v51);
  v44 = &v48;
  *&__dst = &v48;
  *(&__dst + 1) = &v36;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v31 + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v32, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v44, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__dst);
}

uint64_t mlir::StridedLayoutAttr::get(uint64_t *a1, void *a2, llvm::hashing::detail::hash_state *a3, llvm::hashing::detail::hash_state *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v11[1] = v7;
  v9 = a2;
  v10[0] = a3;
  v10[1] = a4;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = a2;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(&v12, 0, v13, &v13[3] + 8, v10);
  v8 = &v9;
  v12 = &v9;
  *&v13[0] = v11;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::SymbolRefAttr::get(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(**a1 + 32);
  v6 = *v5;
  v22[0] = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v22[1] = v5;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v24[1] = v22;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  memset(&v27[1], 0, 112);
  v27[15] = 0xFF51AFD7ED558CCDLL;
  v27[0] = (a1 >> 4) ^ (a1 >> 9);
  if (a3)
  {
    v7 = a2;
    v8 = 0;
    v9 = &a2[2 * a3];
    while (v8 <= 0x38)
    {
      v10 = v8 + 8;
      v11 = *v7;
      v7 += 2;
      *&__src[v8] = (v11 >> 4) ^ (v11 >> 9);
      v8 = v10;
      if (8 * a3 == v10)
      {
        goto LABEL_7;
      }
    }

    v25[0] = xmmword_25D0A0610;
    v25[1] = xmmword_25D0A0620;
    v25[2] = xmmword_25D0A0630;
    v26 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v25, __src, 0xFF51AFD7ED558CCDLL, a4);
    if (v8 == 8 * a3)
    {
      v13 = 64;
    }

    else
    {
      v13 = 64;
      do
      {
        v14 = 0;
        do
        {
          v15 = *v7;
          v7 += 2;
          v16 = v14 + 8;
          *&__src[v14] = (v15 >> 4) ^ (v15 >> 9);
          if (v7 == v9)
          {
            break;
          }

          v17 = v14 >= 0x31;
          v14 += 8;
        }

        while (!v17);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v16], &v29);
        llvm::hashing::detail::hash_state::mix(v25, __src, v18, v19);
        v13 += v16;
      }

      while (v7 != v9);
    }

    v12 = llvm::hashing::detail::hash_state::finalize(v25, v13);
  }

  else
  {
    v10 = 0;
LABEL_7:
    v12 = llvm::hashing::detail::hash_short(__src, v10, 0xFF51AFD7ED558CCDLL);
  }

  v27[1] = v12;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine(v27, 0, &v27[2], &v27[8]);
  *__src = v23;
  v27[0] = v23;
  v27[1] = v24;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, v20, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
}

uint64_t mlir::TypeAttr::get(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(**a1 + 32);
  v2 = *v1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v5[1] = v1;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v8[1] = v5;
  v7 = a1;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v9, 0, v9, v10, &v7);
  v6 = &v7;
  *&v9[0] = &v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t dictionaryAttrSort<false>(void *a1, uint64_t a2, unsigned int *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        result = 0;
        a3[2] = 0;
        return result;
      }

      v9 = 16 * a2;
      a3[2] = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, a1, &a1[2 * a2]);
      v10 = a1 + 2;
      for (i = v9 - 16; i; i -= 16)
      {
        *&v15 = *v10;
        v12 = mlir::StringAttr::compare(&v15, *(v10 - 2));
        v10 += 2;
        if (v12 < 0)
        {
          v13 = a3[2];
          if (v13 >= 2)
          {
            qsort(*a3, v13, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
          }

          return 1;
        }
      }

      return 0;
    }

    v15 = *a1;
    a3[2] = 0;
    v6 = &v16;
LABEL_15:
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, &v15, v6);
    return 0;
  }

  v8 = (a1 + 2);
  v7 = a1[2];
  *&v15 = *a1;
  if ((mlir::StringAttr::compare(&v15, v7) & 0x80000000) != 0)
  {
    v14 = *v8;
    v15 = *a1;
    v16 = v14;
    a3[2] = 0;
    v6 = v17;
    goto LABEL_15;
  }

  v15 = *v8;
  v16 = *a1;
  a3[2] = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a3, &v15, v17);
  return 1;
}

uint64_t dictionaryAttrSort<true>(uint64_t *a1, unint64_t a2, void **a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (a2 != 2)
  {
    v7 = a1 + 2;
    for (i = 16 * a2 - 16; i; i -= 16)
    {
      v11 = *v7;
      v9 = mlir::StringAttr::compare(&v11, *(v7 - 2));
      v7 += 2;
      if (v9 < 0)
      {
        v10 = *(a3 + 2);
        if (v10 >= 2)
        {
          qsort(*a3, v10, 0x10uLL, llvm::array_pod_sort_comparator<mlir::NamedAttribute>);
        }

        return 1;
      }
    }

    return 0;
  }

  v11 = *a1;
  if ((mlir::StringAttr::compare(&v11, a1[2]) & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *a3;
  v6 = **a3;
  *v5 = *(*a3 + 1);
  v5[1] = v6;
  return 1;
}

uint64_t mlir::DictionaryAttr::findDuplicate@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((a2 & 1) == 0)
  {
    result = dictionaryAttrSort<true>(*result, *(result + 8), result);
  }

  v5 = *(v3 + 8);
  if (v5 > 1)
  {
    v6 = *v3;
    if (v5 == 2)
    {
      if (*v6 == v6[2])
      {
LABEL_12:
        *a3 = *v6;
        *(a3 + 16) = 1;
        return result;
      }
    }

    else
    {
      v7 = 16 * v5 + 16;
      while (v7 != 32)
      {
        v8 = v6 + 2;
        v9 = *v6;
        v10 = v6[2];
        v7 -= 16;
        v6 += 2;
        if (v9 == v10)
        {
          if (!v7)
          {
            break;
          }

          v6 = v8 - 2;
          goto LABEL_12;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t mlir::DictionaryAttr::get(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return *(*a1 + 624);
  }

  v13 = v15;
  v14 = 0x800000000;
  v6 = dictionaryAttrSort<false>(a2, a3, &v13);
  if (v6)
  {
    v7 = v14;
  }

  else
  {
    v7 = a3;
  }

  if (v6)
  {
    v8 = v13;
  }

  else
  {
    v8 = a2;
  }

  v9 = *a1;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v12[1] = a1;
  v10 = mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>((v9 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v12, v8, v7);
  if (v13 != v15)
  {
    free(v13);
  }

  return v10;
}

uint64_t mlir::DictionaryAttr::getWithSorted(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return *(*a1 + 624);
  }

  v3 = *a1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v5[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>((v3 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v5, a2, a3);
}

unint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = a1;
  v5 = (a2 - a1) >> 4;
  if (v5 >= 1)
  {
    do
    {
      v8 = v4 + 16 * (v5 >> 1);
      v11 = *(*v8 + 16);
      v9 = llvm::StringRef::compare(&v11, a3, a4);
      if (v9 < 0)
      {
        v4 = v8 + 16;
        v5 += ~(v5 >> 1);
      }

      else
      {
        v5 = v5 >> 1;
        if (!v9)
        {
          return v8;
        }
      }
    }

    while (v5 > 0);
  }

  return v4;
}

unint64_t mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(unint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  if ((a2 - result) >= 257)
  {
    return mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(result, a2, *(a3 + 16), *(a3 + 24));
  }

  if (result == a2)
  {
    return a2;
  }

  while (*v3 != a3)
  {
    v3 += 2;
    result += 16;
    if (v3 == a2)
    {
      return a2;
    }
  }

  return result;
}

uint64_t mlir::DictionaryAttr::getEmptyUnchecked(mlir::DictionaryAttr *this, mlir::MLIRContext *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v5[1] = this;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v8[1] = v5;
  v7[0] = 0;
  v7[1] = 0;
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  v12 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(v9, v9, v10, 0, 0);
  v6 = v7;
  *&v9[0] = v7;
  *(&v9[0] + 1) = v8;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v6, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

llvm::raw_ostream *mlir::StridedLayoutAttr::print(llvm::raw_ostream *this, llvm::raw_ostream *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 8)
  {
    *(v4 + 8) = 91;
    *v4 = *"strided<[";
    *(a2 + 4) += 9;
  }

  else
  {
    this = llvm::raw_ostream::write(a2, "strided<[", 9uLL);
  }

  v5 = *(*v3 + 24);
  if (v5)
  {
    v6 = *(*v3 + 16);
    if (*v6 == 0x8000000000000000)
    {
      v7 = *(a2 + 4);
      if (*(a2 + 3) == v7)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
      }

      else
      {
        *v7 = 63;
        ++*(a2 + 4);
      }
    }

    else
    {
      this = llvm::write_integer(a2, *v6, 0, 0);
    }

    if (v5 != 1)
    {
      v8 = v6 + 1;
      v9 = 8 * v5 - 8;
      do
      {
        v10 = *(a2 + 4);
        if (*(a2 + 3) - v10 > 1uLL)
        {
          *v10 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          this = llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        if (*v8 == 0x8000000000000000)
        {
          v11 = *(a2 + 4);
          if (*(a2 + 3) == v11)
          {
            this = llvm::raw_ostream::write(a2, "?", 1uLL);
          }

          else
          {
            *v11 = 63;
            ++*(a2 + 4);
          }
        }

        else
        {
          this = llvm::write_integer(a2, *v8, 0, 0);
        }

        ++v8;
        v9 -= 8;
      }

      while (v9);
    }
  }

  v12 = *(a2 + 4);
  if (*(a2 + 3) == v12)
  {
    this = llvm::raw_ostream::write(a2, "]", 1uLL);
  }

  else
  {
    *v12 = 93;
    ++*(a2 + 4);
  }

  if (*(*v3 + 8))
  {
    v13 = *(a2 + 4);
    if ((*(a2 + 3) - v13) > 9)
    {
      *(v13 + 8) = 8250;
      *v13 = *", offset: ";
      *(a2 + 4) += 10;
    }

    else
    {
      this = llvm::raw_ostream::write(a2, ", offset: ", 0xAuLL);
    }

    v14 = *(*v3 + 8);
    if (v14 == 0x8000000000000000)
    {
      v15 = *(a2 + 4);
      if (*(a2 + 3) == v15)
      {
        this = llvm::raw_ostream::write(a2, "?", 1uLL);
      }

      else
      {
        *v15 = 63;
        ++*(a2 + 4);
      }
    }

    else
    {
      this = llvm::write_integer(a2, v14, 0, 0);
    }
  }

  v16 = *(a2 + 4);
  if (*(a2 + 3) == v16)
  {

    return llvm::raw_ostream::write(a2, ">", 1uLL);
  }

  else
  {
    *v16 = 62;
    ++*(a2 + 4);
  }

  return this;
}

uint64_t mlir::makeStridedLinearLayoutMap(uint64_t a1, uint64_t a2, mlir *this, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (this == 0x8000000000000000)
  {
    AffineDimOrSymbol = getAffineDimOrSymbol(7u, 0, a4);
    v8 = 1;
  }

  else
  {
    AffineDimOrSymbol = mlir::getAffineConstantExpr(this, a4, this);
    v8 = 0;
  }

  v18 = AffineDimOrSymbol;
  if (a2)
  {
    v9 = 0;
    v10 = 8 * a2;
    do
    {
      v11 = *(a1 + 8 * v9);
      v19[0] = getAffineDimOrSymbol(6u, v9, a4);
      if (v11 == 0x8000000000000000)
      {
        AffineConstantExpr = getAffineDimOrSymbol(7u, v8, a4);
        v8 = (v8 + 1);
      }

      else
      {
        AffineConstantExpr = mlir::getAffineConstantExpr(v11, a4, v12);
      }

      v15 = mlir::AffineExpr::operator*(v19, AffineConstantExpr, v14);
      AffineDimOrSymbol = mlir::AffineExpr::operator+(&v18, v15, v16);
      v18 = AffineDimOrSymbol;
      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v19[0] = AffineDimOrSymbol;
  return mlir::AffineMap::getImpl(a2, v8, v19, 1, *AffineDimOrSymbol);
}

uint64_t mlir::StringAttr::getEmptyStringAttrUnchecked(mlir::StringAttr *this, mlir::MLIRContext *a2)
{
  v3 = *this;
  v4 = *(*this + 528);
  if (!v4)
  {
    v5 = *(v3 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v4 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v12);
    v3 = *this;
  }

  v9[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v9[1] = this;
  v6 = *(v3 + 560);
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v13[1] = v9;
  v12[0] = &byte_25D0A27DF;
  v12[1] = 0;
  v12[2] = v4;
  v7 = 0xBF58476D1CE4E5B9 * ((v4 >> 4) ^ (v4 >> 9));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v6, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, ((v7 + 0xCA913F200000000) >> 31) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::StringAttr::get(mlir::StringAttr *this, const char **a2, const llvm::Twine *a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) <= 1u)
  {
    return *(*this + 632);
  }

  v20 = v22;
  v21 = xmmword_25D0A05C0;
  v7 = llvm::Twine::toStringRef(a2, &v20);
  v9 = v8;
  v10 = *this;
  v11 = *(*this + 528);
  if (!v11)
  {
    v12 = *(v10 + 384);
    v18[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), v18);
    v10 = *this;
  }

  v15[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v15[1] = this;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v19[1] = v15;
  v18[0] = v7;
  v18[1] = v9;
  v18[2] = v11;
  v13 = 0xBF58476D1CE4E5B9 * ((v11 >> 4) ^ (v11 >> 9) | (llvm::hashing::detail::hash_combine_range_impl<char const>(v7, v7 + v9, v5, v6) << 32));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  v4 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v13 >> 31) ^ v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  if (v20 != v22)
  {
    free(v20);
  }

  return v4;
}

const char *llvm::Twine::toStringRef(const char **a1, uint64_t a2)
{
  if (*(a1 + 33) == 1)
  {
    v3 = *(a1 + 32);
    if ((v3 - 3) < 4 || v3 == 1)
    {
      return llvm::Twine::getSingleStringRef(a1);
    }
  }

  llvm::Twine::toVector(a1, a2);
  return *a2;
}

uint64_t mlir::StringAttr::get(const char **a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = xmmword_25D0A05C0;
  v3 = *(**a2 + 32);
  v4 = llvm::Twine::toStringRef(a1, &v17);
  v5 = *v3;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
  v12[1] = v3;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v16[1] = v12;
  v15[0] = v4;
  v15[1] = v6;
  v15[2] = a2;
  v9 = 0xBF58476D1CE4E5B9 * ((a2 >> 4) ^ (a2 >> 9) | (llvm::hashing::detail::hash_combine_range_impl<char const>(v4, v4 + v6, v7, v8) << 32));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  v10 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v5 + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, (v9 >> 31) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  if (v17 != v19)
  {
    free(v17);
  }

  return v10;
}

double mlir::FloatAttr::getValueAsDouble(mlir::FloatAttr *this)
{
  v3[3] = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(v3, (*this + 16));
  ValueAsDouble = mlir::FloatAttr::getValueAsDouble(v3);
  llvm::APFloat::Storage::~Storage(v3);
  return ValueAsDouble;
}

double mlir::FloatAttr::getValueAsDouble(llvm::APFloat *a1)
{
  if (*a1 != &llvm::semIEEEdouble)
  {
    llvm::APFloat::convert(a1, &llvm::semIEEEdouble, 1u, &v3);
  }

  return llvm::APFloat::convertToDouble(a1);
}

uint64_t mlir::SymbolRefAttr::get(mlir::SymbolRefAttr *this, mlir::Operation *a2)
{
  Attr = mlir::Operation::getAttr(this, "sym_name", 8uLL);
  if (Attr && *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    Attr = 0;
  }

  return mlir::SymbolRefAttr::get(Attr, 0, 0, v3);
}

uint64_t mlir::IntegerAttr::getInt(mlir::IntegerAttr *this)
{
  v1 = *(*this + 24);
  if (v1 > 0x40)
  {
    operator new[]();
  }

  if (v1)
  {
    return (*(*this + 16) << -v1) >> -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getSInt(mlir::IntegerAttr *this)
{
  v1 = *(*this + 24);
  if (v1 > 0x40)
  {
    operator new[]();
  }

  if (v1)
  {
    return (*(*this + 16) << -v1) >> -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::IntegerAttr::getUInt(mlir::IntegerAttr *this)
{
  if (*(*this + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(*this + 16);
}

uint64_t mlir::IntegerAttr::getBoolAttrUnchecked(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  v7[1] = v2;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v12[1] = v7;
  v11 = 1;
  v9 = a1;
  v10 = a2;
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v14, a1, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v12;
  v5 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  return v5;
}

uint64_t mlir::DenseElementsAttr::AttributeElementIterator::operator*(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(*(*a1 + 16) + 8))();
  v4 = v3;
  v5 = *(*v3 + 136);
  if (v3)
  {
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v19 = a1[1];
    v20 = *(v2 + 24);
    __src = *(v2 + 32);
    v44 = v20;
    v45 = v19;
    v21 = (*(*(v2 + 16) + 8))();
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v21);
    mlir::DenseElementsAttr::IntElementIterator::operator*(&__src, v48);
    v17 = mlir::IntegerAttr::get(v4, v48);
    if (DWORD2(v48[0]) < 0x41 || !*&v48[0])
    {
      return v17;
    }

    goto LABEL_11;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v3);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = a1[1];
    v12 = *(v2 + 32);
    v13 = *(v2 + 24);
    v14 = (*(*(v2 + 16) + 8))();
    v15 = mlir::detail::getDenseElementBitWidth(v14);
    v16 = (*v10)(v10, v9);
    __src = v12;
    v44 = v13;
    v45 = v11;
    DenseElementBitWidth = v15;
    v47 = v16;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&__src, v48);
    v17 = mlir::FloatAttr::get(v4, v48);
    p_src = v48;
LABEL_8:
    llvm::APFloat::Storage::~Storage(p_src);
    return v17;
  }

  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v22 = *(v2 + 32);
    if ((*(v2 + 24) & 1) == 0)
    {
      v22 += 16 * a1[1];
    }

    LOWORD(v47) = 261;
    v24 = *v22;
    v23 = *(v22 + 8);
    __src = v24;
    v44 = v23;
    return mlir::StringAttr::get(&__src, v4);
  }

  v26 = *(v4 + 8);
  v27 = a1[1];
  v28 = *(v2 + 24);
  *&v40 = *(v2 + 32);
  *(&v40 + 1) = v28;
  *&v41 = v27;
  v29 = (*(*(v2 + 16) + 8))();
  *(&v41 + 1) = mlir::detail::getDenseElementBitWidth(*(v29 + 8));
  v30 = *v26;
  if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v31 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    v32 = mlir::detail::InterfaceMap::lookup(v30 + 8, v31);
    v33 = (*v32)(v32, v26);
    v48[0] = v40;
    v48[1] = v41;
    v49 = v33;
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::ComplexFloatElementIterator,mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APFloat>>::operator*(v48, &__src);
    llvm::APFloat::Storage::Storage(v42, &__src);
    v34 = mlir::FloatAttr::get(v26, v42);
    llvm::APFloat::Storage::~Storage(v42);
    llvm::APFloat::Storage::Storage(v42, &DenseElementBitWidth);
    v35 = mlir::FloatAttr::get(v26, v42);
    llvm::APFloat::Storage::~Storage(v42);
    v36 = *(**v4 + 32);
    v42[0] = v34;
    v42[1] = v35;
    v17 = mlir::ArrayAttr::get(v36, v42, 2);
    llvm::APFloat::Storage::~Storage(&DenseElementBitWidth);
    p_src = &__src;
    goto LABEL_8;
  }

  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v40, &__src);
  DWORD2(v48[0]) = v44;
  if (v44 > 0x40)
  {
    operator new[]();
  }

  *&v48[0] = __src;
  v37 = mlir::IntegerAttr::get(v26, v48);
  DWORD2(v48[0]) = DenseElementBitWidth;
  if (DenseElementBitWidth > 0x40)
  {
    operator new[]();
  }

  *&v48[0] = v45;
  v38 = mlir::IntegerAttr::get(v26, v48);
  v39 = *(**v4 + 32);
  *&v48[0] = v37;
  *(&v48[0] + 1) = v38;
  v17 = mlir::ArrayAttr::get(v39, v48, 2);
  if (DenseElementBitWidth >= 0x41 && v45)
  {
    MEMORY[0x25F891010](v45, 0x1000C8000313F17);
  }

  if (v44 >= 0x41 && __src)
  {
LABEL_11:
    MEMORY[0x25F891010]();
  }

  return v17;
}

void mlir::DenseElementsAttr::IntElementIterator::operator*(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v5 - (v5 != 0) + 8 * (v5 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  readBits(a2, v3, v6 * v4, v5);
}

uint64_t mlir::DenseElementsAttr::ComplexIntElementIterator::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a1 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = v5 * v6;
  readBits(&v11, *a1, 2 * v5 * v6, v4);
  readBits(&v9, *a1, v5 + 2 * v7, *(a1 + 24));
  result = std::complex<llvm::APInt>::complex[abi:nn200100](a2, &v11, &v9);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::detail::getDenseElementBitWidth(uint64_t *a1)
{
  v4 = a1;
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(a1[1]);
    return (2 * (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0))) & 0xFFFFFFFFFFFFFFF0;
  }

  else if (v1 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 64;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v4);
  }
}

void readBits(uint64_t *__return_ptr a1@<X8>, const char *a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (a4 == 1)
  {
    v5 = (a2[a3 >> 3] >> (a3 & 7)) & 1;
    *(a1 + 2) = 1;
    *a1 = v5;
  }

  else
  {
    *(a1 + 2) = a4;
    if (a4 >= 0x41)
    {
      operator new[]();
    }

    v6 = a4 - (a4 != 0);
    *a1 = 0;
    if (a4)
    {
      v7 = (v6 >> 3) + 1;
    }

    else
    {
      v7 = v6 >> 3;
    }

    if (v7)
    {
      v8 = &a2[a3 >> 3];

      memcpy(a1, v8, v7);
    }
  }
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::detail::DenseArrayAttrImpl<BOOL>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 1, 0);
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

uint64_t mlir::detail::DenseArrayAttrImpl<signed char>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 8, 0);
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 32, 0);
  *&v9 = a2;
  *(&v9 + 1) = 4 * a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<int>::print(llvm::raw_ostream *a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
  }

  result = mlir::detail::DenseArrayAttrImpl<int>::printWithoutBraces(a1, this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v6 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<int>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 4)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    result = llvm::write_integer(a2, *v4, 0, 0);
    v6 = v5 - 4;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        v8 = *(a2 + 4);
        if (*(a2 + 3) - v8 > 1uLL)
        {
          *v8 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v9 = *v7++;
        result = llvm::write_integer(a2, v9, 0, 0);
        v6 -= 4;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parse(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    v3 = *(*(*a1 + 32))(a1);

    return mlir::detail::DenseArrayAttrImpl<int>::get(v3, 0, 0);
  }

  else
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(uint64_t a1)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ((*(*a1 + 392))())
  {
    v3 = (*(*a1 + 32))(a1);
    return mlir::detail::DenseArrayAttrImpl<int>::get(*v3, v5, 0);
  }

  return v2;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = mlir::IntegerType::get(a1, 64, 0);
  *&v9 = a2;
  *(&v9 + 1) = 8 * a3;
  v7 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v10[1] = a1;
  return mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>((v7 + 560), _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v10, v6, a3, &v9);
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<long long>::print(llvm::raw_ostream *a1, llvm::raw_ostream *this)
{
  v4 = *(this + 4);
  if (*(this + 3) == v4)
  {
    llvm::raw_ostream::write(this, "[", 1uLL);
  }

  else
  {
    *v4 = 91;
    ++*(this + 4);
  }

  result = mlir::detail::DenseArrayAttrImpl<long long>::printWithoutBraces(a1, this);
  v6 = *(this + 4);
  if (*(this + 3) == v6)
  {

    return llvm::raw_ostream::write(this, "]", 1uLL);
  }

  else
  {
    *v6 = 93;
    ++*(this + 4);
  }

  return result;
}

llvm::raw_ostream *mlir::detail::DenseArrayAttrImpl<long long>::printWithoutBraces(llvm::raw_ostream *result, llvm::raw_ostream *a2)
{
  v2 = *(*result + 32);
  if (v2 >= 8)
  {
    v4 = *(*result + 24);
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
    result = llvm::write_integer(a2, *v4, 0, 0);
    v6 = v5 - 8;
    if (v6)
    {
      v7 = v4 + 1;
      do
      {
        v8 = *(a2 + 4);
        if (*(a2 + 3) - v8 > 1uLL)
        {
          *v8 = 8236;
          *(a2 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(a2, ", ", 2uLL);
        }

        v9 = *v7++;
        result = llvm::write_integer(a2, v9, 0, 0);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parse(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 336))(a1))
  {
    v3 = *(*(*a1 + 32))(a1);

    return mlir::detail::DenseArrayAttrImpl<long long>::get(v3, 0, 0);
  }

  else
  {
    v5 = mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(a1);
    if ((*(*a1 + 328))(a1))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(uint64_t a1)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ((*(*a1 + 392))())
  {
    v3 = (*(*a1 + 32))(a1);
    return mlir::detail::DenseArrayAttrImpl<long long>::get(*v3, v5, 0);
  }

  return v2;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8))(a2, a1);
  v9 = v8;
  v58 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v12 = *(**(v8 + 8) + 136);
    if (v12 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v59 = &v60 + 8;
      *&v60 = 0x100000000;
      if (a4 < 2)
      {
        if (!a4)
        {
          v52 = 0;
          v51 = (&v60 + 8);
          goto LABEL_98;
        }
      }

      else
      {
        llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v59, a4);
      }

      v42 = 8 * a4;
      do
      {
        v43 = *(*a3 + 8);
        v44 = v43[1];
        llvm::APFloat::Storage::Storage(&v64, (*v43 + 16));
        llvm::APFloat::Storage::Storage(&v62, (v44 + 16));
        v45 = &v66;
        llvm::APFloat::Storage::Storage(&v66, &v64);
        llvm::APFloat::Storage::Storage(v69, &v62);
        v46 = v59;
        if (v60 >= DWORD1(v60))
        {
          if (v59 <= &v66 && v59 + 48 * v60 > &v66)
          {
            v50 = &v66 - v59;
            llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v59, v60 + 1);
            v46 = v59;
            v45 = (v59 + v50);
          }

          else
          {
            llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(&v59, v60 + 1);
            v46 = v59;
          }
        }

        v47 = &v46[48 * v60];
        if (*v45 == &llvm::semPPCDoubleDouble)
        {
          *v47 = &llvm::semPPCDoubleDouble;
          v48 = v45[1];
          v45[1] = 0;
          *(v47 + 1) = v48;
          *v45 = &llvm::semBogus;
        }

        else
        {
          *v47 = &llvm::semBogus;
          v47 = llvm::detail::IEEEFloat::operator=(v47, v45);
        }

        if (v45[3] == &llvm::semPPCDoubleDouble)
        {
          *(v47 + 3) = &llvm::semPPCDoubleDouble;
          v49 = v45[4];
          v45[4] = 0;
          *(v47 + 4) = v49;
          v45[3] = &llvm::semBogus;
        }

        else
        {
          *(v47 + 3) = &llvm::semBogus;
          llvm::detail::IEEEFloat::operator=((v47 + 24), (v45 + 3));
        }

        LODWORD(v60) = v60 + 1;
        llvm::APFloat::Storage::~Storage(v69);
        llvm::APFloat::Storage::~Storage(&v66);
        llvm::APFloat::Storage::~Storage(&v62);
        llvm::APFloat::Storage::~Storage(&v64);
        ++a3;
        v42 -= 8;
      }

      while (v42);
      v51 = v59;
      v52 = v60;
LABEL_98:
      Raw = mlir::DenseElementsAttr::get(a1, a2, v51, v52);
      llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::destroy_range(v59, (v59 + 48 * v60));
      v30 = v59;
      if (v59 == &v60 + 8)
      {
        return Raw;
      }

      goto LABEL_81;
    }

    v14 = &v60 + 8;
    v59 = &v60 + 8;
    *&v60 = 0x100000000;
    if (a4 < 2)
    {
      if (!a4)
      {
        v40 = 0;
        v39 = &v60 + 8;
LABEL_79:
        Raw = mlir::DenseElementsAttr::get(a1, a2, v39, v40);
        llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::destroy_range(v59, v59 + 4 * v60);
        goto LABEL_80;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v59, a4);
    }

    v31 = 8 * a4;
    do
    {
      v32 = *(*a3 + 8);
      v34 = *v32;
      v33 = v32[1];
      v65 = *(*v32 + 24);
      if (v65 > 0x40)
      {
        operator new[]();
      }

      v64 = *(v34 + 16);
      v63 = *(v33 + 24);
      if (v63 > 0x40)
      {
        operator new[]();
      }

      v62 = *(v33 + 16);
      v35 = &v66;
      std::complex<llvm::APInt>::complex[abi:nn200100](&v66, &v64, &v62);
      v36 = v59;
      if (v60 >= DWORD1(v60))
      {
        if (v59 <= &v66 && v59 + 32 * v60 > &v66)
        {
          v38 = &v66 - v59;
          llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v59, v60 + 1);
          v36 = v59;
          v35 = v59 + v38;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(&v59, v60 + 1);
          v36 = v59;
        }
      }

      v37 = &v36[32 * v60];
      *(v37 + 2) = *(v35 + 2);
      *v37 = *v35;
      *(v35 + 2) = 0;
      *(v37 + 6) = *(v35 + 6);
      *(v37 + 2) = *(v35 + 2);
      *(v35 + 6) = 0;
      LODWORD(v60) = v60 + 1;
      if (v69[0] >= 0x41u && v68)
      {
        MEMORY[0x25F891010](v68, 0x1000C8000313F17);
      }

      if (v67 >= 0x41 && v66)
      {
        MEMORY[0x25F891010](v66, 0x1000C8000313F17);
      }

      if (v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      if (v65 >= 0x41 && v64)
      {
        MEMORY[0x25F891010](v64, 0x1000C8000313F17);
      }

      ++a3;
      v31 -= 8;
    }

    while (v31);
    v39 = v59;
    v40 = v60;
    goto LABEL_79;
  }

  if (!mlir::Type::isIntOrFloat(&v58) && *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v59 = &v60 + 8;
    *&v60 = 0x800000000;
    if (a4 < 9)
    {
      if (!a4)
      {
        v29 = 0;
        v28 = &v60 + 8;
        goto LABEL_50;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, &v60 + 8, a4, 16);
    }

    v26 = 8 * a4;
    do
    {
      v27 = *a3++;
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v59, *(v27 + 16), *(v27 + 24));
      v26 -= 8;
    }

    while (v26);
    v28 = v59;
    v29 = v60;
LABEL_50:
    Raw = mlir::DenseStringElementsAttr::get(a1, a2, v28, v29);
    v30 = v59;
    if (v59 == &v60 + 8)
    {
      return Raw;
    }

    goto LABEL_81;
  }

  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v9);
  v55 = a2;
  if (DenseElementBitWidth == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v11 * a4 - (v11 * a4 != 0);
  if (v11 * a4)
  {
    v16 = (v15 >> 3) + 1;
  }

  else
  {
    v16 = v15 >> 3;
  }

  v14 = v61;
  v59 = v61;
  v60 = xmmword_25D0A0590;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v59, v16);
  v54 = a4;
  v17 = a4;
  if (a4)
  {
    v53 = v9;
    v18 = 0;
    do
    {
      if (*(**a3 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v19 = llvm::APFloat::Storage::Storage(&v66, (*a3 + 16));
        llvm::APFloat::bitcastToAPInt(v19, &v64);
        v20 = v64;
        v21 = v65;
        v65 = 0;
        llvm::APFloat::Storage::~Storage(&v66);
      }

      else
      {
        if (*(*a3 + 24) > 0x40u)
        {
          operator new[]();
        }

        v20 = *(*a3 + 16);
        v21 = *(*a3 + 24);
      }

      v57 = v21;
      v22 = v21 < 0x41;
      if (v21 > 0x40)
      {
        operator new[]();
      }

      __src = v20;
      writeBits(v59, v18, &__src);
      v18 += v11;
      ++a3;
      --v17;
    }

    while (v17);
    v14 = v61;
    v9 = v53;
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  if (v54 == 1 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (*(v9 + 8) & 0x3FFFFFFF) == 1)
  {
    if (*v59)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    *v59 = v23;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, v55, v59, v60);
  if (v20)
  {
    v25 = v22;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

LABEL_80:
  v30 = v59;
  if (v59 != v14)
  {
LABEL_81:
    free(v30);
  }

  return Raw;
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, 2 * a4);
}

{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, a4);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, llvm::APFloat *a3, uint64_t a4)
{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, 2 * a4);
}

{
  v8 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v8);
  if (DenseElementBitWidth == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  return mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v10, a3, a4);
}

_BYTE *writeBits(_BYTE *result, unint64_t a2, unsigned int *__src)
{
  v3 = __src[2];
  if (v3 == 1)
  {
    v4 = 1 << (a2 & 7);
    if (*__src == 1)
    {
      v5 = result[a2 >> 3] | v4;
    }

    else
    {
      v5 = result[a2 >> 3] & ~v4;
    }

    result[a2 >> 3] = v5;
  }

  else
  {
    if (v3 >= 0x41)
    {
      __src = *__src;
    }

    v6 = v3 == 0;
    v7 = (v3 - (v3 != 0)) >> 3;
    if (!v6)
    {
      ++v7;
    }

    if (v7)
    {
      return memmove(&result[a2 >> 3], __src, v7);
    }
  }

  return result;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, llvm::hashing::detail::hash_state *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v61 = *MEMORY[0x277D85DE8];
  v49 = 0;
  mlir::DenseElementsAttr::isValidRawBuffer(a1, a2, a3, a4, &v49);
  v8 = *(**a1 + 32);
  v9 = *v8;
  v50[0] = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  v50[1] = v8;
  v10 = v49;
  v58[0] = _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v58[1] = v50;
  if (!v4)
  {
    v52 = a1;
    v53 = a2;
    v55 = 0;
    v56 = 0;
    v54 = v5;
LABEL_6:
    v57 = 0;
    goto LABEL_30;
  }

  v11 = (*(a2 + 8))(a2, a1);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!v10)
    {
      (*(a2 + 24))(a2, a1);
LABEL_19:
      v29 = (*(a2 + 8))(a2, a1);
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v29);
      if (DenseElementBitWidth)
      {
        v33 = ((DenseElementBitWidth - (DenseElementBitWidth != 0)) >> 3) + 1;
      }

      else
      {
        v33 = 0;
      }

      if (v4 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v4;
      }

      v35 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v34, v31, v32);
      if (v33 == v4)
      {
LABEL_29:
        v52 = a1;
        v53 = a2;
        v54 = v5;
        v55 = v34;
        v56 = v35;
        v57 = 1;
        goto LABEL_30;
      }

      v36 = v33;
      while (!memcmp(v5, v5 + v36, v33))
      {
        v36 += v33;
        if (v36 == v4)
        {
          goto LABEL_29;
        }
      }

      memset(&__dst[8], 0, 112);
      v60 = 0xFF51AFD7ED558CCDLL;
      *__dst = v35;
      v39 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(__dst, 0, &__dst[8], &__dst[64], (v5 + v36), v4 - v36);
      v52 = a1;
      v53 = a2;
      v54 = v5;
      v55 = v4;
      v56 = v39;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v14 = v11[2] & 0x3FFFFFFF;
  if (!v10)
  {
    v21 = (*(a2 + 24))(a2, a1);
    if (v14 != 1)
    {
      goto LABEL_19;
    }

    if (v22)
    {
      v25 = 8 * v22;
      v26 = 1;
      do
      {
        v27 = *v21++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
      v28 = v26 & 7;
    }

    else
    {
      v28 = 1;
    }

    v40 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
    v41 = *v5;
    if (v41)
    {
      v40 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
    }

    if (v4 == 1)
    {
      if (*v40 == v41)
      {
LABEL_53:
        v47 = HIDWORD(v41);
        v48 = 0x9DDFEA08EB382D69 * ((8 * v41 - 0xAE502812AA7333) ^ HIDWORD(v41));
        v43 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) ^ ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) >> 47));
        v4 = 1;
        v5 = v40;
        v20 = 1;
        goto LABEL_54;
      }

      v42 = v5 + 1;
      if (v28 && (v41 & 1) != 0)
      {
        if (0xFFu >> (8 - v28) == v41)
        {
          v4 = 1;
          v43 = 0xE58356463FB8AC99;
          v20 = 1;
          v5 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
LABEL_54:
          v52 = a1;
          v53 = a2;
          v54 = v5;
          v55 = v4;
          v56 = v43;
          goto LABEL_13;
        }

LABEL_44:
        v43 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v42, v23, v24);
        v20 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v42 = v5 + v4;
      if (v28 && (v41 & 1) != 0)
      {
        v44 = (v42 - 1);
        if (0xFFu >> (8 - v28) != *(v42 - 1))
        {
          goto LABEL_44;
        }

LABEL_46:
        if (v41)
        {
          v45 = -1;
        }

        else
        {
          v45 = 0;
        }

        v46 = v5;
        while (*v46 == v45)
        {
          v46 = (v46 + 1);
          if (v46 == v44)
          {
            v41 = *v40;
            goto LABEL_53;
          }
        }

        goto LABEL_44;
      }
    }

    v44 = v42;
    goto LABEL_46;
  }

  if (v14 != 1)
  {
LABEL_12:
    v19 = llvm::hashing::detail::hash_combine_range_impl<char const>(v5, v5 + v4, v12, v13);
    v52 = a1;
    v53 = a2;
    v54 = v5;
    v55 = v4;
    v56 = v19;
    v20 = 1;
LABEL_13:
    v57 = v20;
    goto LABEL_30;
  }

  v15 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatTrue;
  if (!*v5)
  {
    v15 = &mlir::detail::DenseIntOrFPElementsAttrStorage::kSplatFalse;
  }

  v16 = *v15;
  v17 = HIDWORD(v16);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v16 - 0xAE502812AA7333) ^ HIDWORD(v16));
  v52 = a1;
  v53 = a2;
  v54 = v15;
  v55 = 1;
  v56 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v57 = 1;
LABEL_30:
  memset(__dst, 0, sizeof(__dst));
  v60 = 0xFF51AFD7ED558CCDLL;
  v37 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(__dst, __dst, &__dst[64], a1, &v56);
  v51 = &v52;
  *__dst = &v52;
  *&__dst[8] = v58;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v37, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
}

uint64_t mlir::DenseElementsAttr::get(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4)
  {
    v7 = ((a4 - (a4 != 0)) >> 3) + 1;
  }

  else
  {
    v7 = 0;
  }

  memset(&v19, 0, sizeof(v19));
  if (v7)
  {
    operator new();
  }

  end = 0;
  begin = 0;
  if (a4)
  {
    v10 = *a3;
    if (!a4)
    {
      goto LABEL_14;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      v13 = a3[v11];
      v14 = 1 << (v11 & 7);
      v15 = (v11 >> 3);
      if (v13 == 1)
      {
        v16 = *v15 | v14;
      }

      else
      {
        v16 = *v15 & ~v14;
      }

      *v15 = v16;
      v12 &= v13 == v10;
      ++v11;
    }

    while (a4 != v11);
    if (v12)
    {
LABEL_14:
      std::vector<char>::__append(&v19, 1uLL);
      *v19.__begin_ = -*a3;
      begin = v19.__begin_;
      end = v19.__end_;
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, begin, end - begin);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return Raw;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5 * a3 - (a5 * a3 != 0);
  memset(&v19, 0, sizeof(v19));
  if (a5 * a3)
  {
    v11 = (v10 >> 3) + 1;
  }

  else
  {
    v11 = v10 >> 3;
  }

  if (v11)
  {
    std::vector<char>::__append(&v19, v11);
  }

  if (a5)
  {
    v18 = a1;
    v12 = 0;
    v13 = 16 * a5;
    v14 = a4;
    do
    {
      v21 = *(v14 + 8);
      if (v21 > 0x40)
      {
        operator new[]();
      }

      __src = *v14;
      writeBits(v19.__begin_, v12, &__src);
      v14 += 16;
      v12 += a3;
      v13 -= 16;
    }

    while (v13);
    a1 = v18;
    if (a5 == 1 && *(a4 + 8) == 1)
    {
      if (*v19.__begin_)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      *v19.__begin_ = v15;
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v19.__begin_, v19.__end_ - v19.__begin_);
  if (v19.__begin_)
  {
    v19.__end_ = v19.__begin_;
    operator delete(v19.__begin_);
  }

  return Raw;
}

uint64_t mlir::DenseIntOrFPElementsAttr::getRaw(uint64_t a1, uint64_t a2, uint64_t a3, llvm::APFloat *this, uint64_t a5)
{
  v9 = 3 * a5;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((24 * a5) >> 3) * a3;
  v11 = v10 - (v10 != 0);
  memset(&v22, 0, sizeof(v22));
  v12 = (this + 24 * a5);
  if (v10)
  {
    v13 = (v11 >> 3) + 1;
  }

  else
  {
    v13 = v11 >> 3;
  }

  if (v13)
  {
    std::vector<char>::__append(&v22, v13);
  }

  v14 = 8 * v9;
  if (this != v12)
  {
    v15 = 0;
    v16 = v14;
    v17 = this;
    do
    {
      begin = v22.__begin_;
      llvm::APFloat::bitcastToAPInt(v17, &__src);
      writeBits(begin, v15, &__src);
      if (v26 >= 0x41 && __src)
      {
        MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      v17 += 3;
      v15 += a3;
      v16 -= 24;
    }

    while (v16);
  }

  if (v14 == 24)
  {
    llvm::APFloat::bitcastToAPInt(this, &v23);
    if (v24 < 0x41)
    {
      if (v24 == 1)
      {
        if (*v22.__begin_)
        {
          v19 = -1;
        }

        else
        {
          v19 = 0;
        }

        *v22.__begin_ = v19;
      }
    }

    else if (v23)
    {
      MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a1, a2, v22.__begin_, v22.__end_ - v22.__begin_);
  if (v22.__begin_)
  {
    v22.__end_ = v22.__begin_;
    operator delete(v22.__begin_);
  }

  return Raw;
}

BOOL mlir::DenseElementsAttr::isValidRawBuffer(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, BOOL *a5)
{
  v10 = (*(a2 + 8))(a2, a1);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v10);
  if (DenseElementBitWidth == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (DenseElementBitWidth - (DenseElementBitWidth != 0) + 8 * (DenseElementBitWidth != 0)) & 0xFFFFFFFFFFFFFFF8;
  }

  v13 = (*(a2 + 24))(a2, a1);
  if (v14)
  {
    v15 = 8 * v14;
    v16 = 1;
    do
    {
      v17 = *v13++;
      v16 *= v17;
      v15 -= 8;
    }

    while (v15);
  }

  else
  {
    v16 = 1;
  }

  v18 = 8 * a4;
  *a5 = v16 == 1;
  if (v12 != 1)
  {
    if (v18 != v12)
    {
      v19 = v16 * v12;
      return v18 == v19;
    }

LABEL_14:
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a4 == 1 && *a3 - 1 >= 0xFE)
  {
    goto LABEL_14;
  }

  v19 = (v16 - (v16 != 0) + 8 * (v16 != 0)) & 0xFFFFFFFFFFFFFFF8;
  return v18 == v19;
}

uint64_t isValidIntOrFloat(uint64_t *a1, uint64_t a2, char a3, unsigned int a4)
{
  if (mlir::detail::getDenseElementBitWidth(a1) != 8 * a2)
  {
    return 0;
  }

  v7 = *a1;
  if (a3)
  {
    v8 = *(v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 0;
    }

    v11 = *(a1 + 2) >> 30;
    if (v11)
    {
      return (v11 != 1) ^ a4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    return mlir::detail::InterfaceMap::lookup(v7 + 8, v10) != 0;
  }
}

uint64_t *mlir::DenseElementsAttr::tryGetComplexIntValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  result = (*(*(*this + 16) + 8))();
  if (*(*result[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v6 = *(*this + 8);
    v7 = *(*this + 16);
    v8 = *(*this + 32);
    v9 = *(*this + 24);
    v10 = (*(v7 + 8))(v7, v6);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(*(v10 + 8));
    v12 = *this;
    v13 = (*(*(*this + 16) + 24))();
    if (v14)
    {
      v15 = 8 * v14;
      v16 = 1;
      do
      {
        v17 = *v13++;
        v16 *= v17;
        v15 -= 8;
      }

      while (v15);
    }

    else
    {
      v16 = 1;
    }

    v18 = *(v12 + 32);
    v19 = *(v12 + 24);
    v20 = (*(*(v12 + 16) + 8))();
    result = mlir::detail::getDenseElementBitWidth(*(v20 + 8));
    *a1 = v8;
    a1[1] = v9;
    a1[2] = 0;
    a1[3] = DenseElementBitWidth;
    a1[4] = v18;
    a1[5] = v19;
    a1[6] = v16;
    a1[7] = result;
    v5 = 1;
    a1[8] = v6;
    a1[9] = v7;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 80) = v5;
  return result;
}

uint64_t *mlir::DenseElementsAttr::tryGetFloatValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  v4 = (*(*(*this + 16) + 8))();
  result = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(v4);
  v7 = result;
  if (result)
  {
    v8 = (*v6)(v6, result);
    v9 = *(*this + 8);
    v10 = *(*this + 16);
    v11 = *(*this + 32);
    v12 = *(*this + 24);
    v13 = (*(v10 + 8))(v10, v9);
    DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v13);
    result = mlir::DenseElementsAttr::raw_int_end(this, a1 + 5);
    *a1 = v11;
    a1[1] = v12;
    a1[2] = 0;
    a1[3] = DenseElementBitWidth;
    a1[4] = v8;
    a1[9] = v8;
    a1[10] = v9;
    v7 = 1;
    a1[11] = v10;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 96) = v7;
  return result;
}

unint64_t mlir::DenseElementsAttr::raw_int_end@<X0>(mlir::DenseElementsAttr *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v4 = (*(*(*this + 16) + 24))();
  if (v5)
  {
    v6 = 8 * v5;
    v7 = 1;
    do
    {
      v8 = *v4++;
      v7 *= v8;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 1;
  }

  v9 = *(v3 + 24);
  *a2 = *(v3 + 32);
  a2[1] = v9;
  a2[2] = v7;
  v10 = (*(*(v3 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(v10);
  a2[3] = result;
  return result;
}

uint64_t *mlir::DenseElementsAttr::tryGetComplexFloatValues@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::DenseElementsAttr *this@<X0>)
{
  result = (*(*(*this + 16) + 8))();
  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = 0;
LABEL_3:
    *a1 = 0;
    goto LABEL_11;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(result[1]);
  v5 = result;
  if (!result)
  {
    goto LABEL_3;
  }

  v7 = (*v6)(v6, result);
  v8 = *(*this + 8);
  v9 = *(*this + 16);
  v10 = *(*this + 32);
  v11 = *(*this + 24);
  v12 = (*(v9 + 8))(v9, v8);
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(*(v12 + 8));
  v14 = *this;
  v15 = (*(*(v14 + 16) + 24))();
  if (v16)
  {
    v17 = 8 * v16;
    v18 = 1;
    do
    {
      v19 = *v15++;
      v18 *= v19;
      v17 -= 8;
    }

    while (v17);
  }

  else
  {
    v18 = 1;
  }

  v20 = *(v14 + 24);
  a1[5] = *(v14 + 32);
  a1[6] = v20;
  a1[7] = v18;
  v21 = (*(*(v14 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(*(v21 + 8));
  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  a1[3] = DenseElementBitWidth;
  a1[4] = v7;
  a1[8] = result;
  a1[9] = v7;
  v5 = 1;
  a1[10] = v8;
  a1[11] = v9;
LABEL_11:
  *(a1 + 96) = v5;
  return result;
}

uint64_t mlir::DenseElementsAttr::bitcast(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if ((*(v5 + 8))(v5, v4) == a2)
  {
    return *a1;
  }

  v7 = *v5;
  v10[0] = 0;
  v10[16] = 0;
  v8 = v7(v5, v4, v10, a2);
  return mlir::DenseIntOrFPElementsAttr::getRaw(v8, v9, *(*a1 + 32), *(*a1 + 40));
}

BOOL mlir::DenseFPElementsAttr::classof(void *a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1)
  {
    if (v5)
    {
      v6 = *(*(a1[2] + 8))();
      v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      return mlir::detail::InterfaceMap::lookup(v6 + 8, v7) != 0;
    }
  }

  return result;
}

BOOL mlir::DenseIntElementsAttr::classof(void *a1)
{
  result = 0;
  v3 = *(*a1 + 136);
  v5 = v3 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (a1 && v5)
  {
    v6 = *(*(*(a1[2] + 8))() + 136);
    return v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  }

  return result;
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(**a1 + 32);
  v4 = *v3;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v8[1] = v3;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v13[1] = v8;
  v10[0] = a1;
  v10[1] = a2;
  v11 = *a3;
  v12 = *(a3 + 2);
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ DWORD1(v11));
  v14 = ((a1 >> 4) ^ (a1 >> 9));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v11) ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v14, 0, v16, v17);
  v9 = v10;
  v14 = v10;
  v15 = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v14);
}

uint64_t mlir::DenseResourceElementsAttr::get(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, __int128 *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  ManagerInterface = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>::getManagerInterface(*(**a1 + 32));
  v14 = *a5;
  v15 = *(a5 + 2);
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v16, (a5 + 24));
  v16[32] = *(a5 + 56);
  v17 = 1;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(ManagerInterface, a3, a4, &v14, &v13);
  v11 = mlir::DenseResourceElementsAttr::get(a1, a2, &v13);
  if (v17 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v14);
  }

  return v11;
}

uint64_t mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>::getManagerInterface(int32x2_t **a1)
{
  v3 = a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(a1, "builtin", 7uLL, &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::BuiltinDialect * mlir::MLIRContext::getOrLoadDialect<mlir::BuiltinDialect>(void)::{lambda(void)#1}>, &v3);
  v3 = mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID();
  return *(llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>(Dialect + 6, &v3) + 8);
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t **a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 24);
  v9 = *(a1 + 8);
  LOBYTE(v11) = 0;
  v14 = 0;
  if (*(a4 + 64) == 1)
  {
    v11 = *a4;
    v12 = *(a4 + 2);
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v13, (a4 + 24));
    v13[32] = *(a4 + 56);
    v14 = 1;
  }

  mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v8, v9, a2, a3, &v11, a5);
  if (v14 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v11);
  }
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v6 = (*(v4 + 16))(v4, v1);
  v7 = *(v5 + 8);

  return v7(v5, v6);
}

llvm::detail::IEEEFloat *mlir::SparseElementsAttr::getZeroAPFloat(mlir::SparseElementsAttr *this, uint64_t *a2)
{
  ElementType = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a2);
  v4 = *ElementType;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  v7 = (*v6)(v6, ElementType);

  return llvm::APFloat::Storage::Storage<>(this, v7);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(uint64_t *a1)
{
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v4 = mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  v6 = (*(v4 + 16))(v4, a1);
  v7 = *(v5 + 8);

  return v7(v5, v6);
}

void mlir::SparseElementsAttr::getZeroAPInt(mlir::SparseElementsAttr *this, uint64_t *a2)
{
  v3 = *(mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getElementType(a2) + 8) & 0x3FFFFFFF;
  *(this + 2) = v3;
  if (v3 >= 0x41)
  {
    operator new[]();
  }

  *this = 0;
}

void mlir::SparseElementsAttr::getFlattenedSparseIndices(mlir::SparseElementsAttr *this, void *a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v14 = *(*a2 + 24);
  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v14, &v15);
  v4 = v15;
  v5 = v16;
  v6 = v17[0];
  if (*(v14 + 24) == 1)
  {
    (*(*(*a2 + 16) + 24))();
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v15 = v17;
    v16 = 0x800000000;
    llvm::SmallVectorImpl<unsigned long long>::assign(&v15, v7, v4[v8]);
    FlattenedIndex = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(*a2, v15);
    std::vector<long>::push_back[abi:nn200100](this, &FlattenedIndex);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  else
  {
    v9 = *(*(*(v14 + 16) + 24))();
    (*(*(*a2 + 16) + 24))();
    if (v9)
    {
      v11 = v10;
      do
      {
        if (v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v6;
        }

        v15 = mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(*a2, &v4[v12]);
        std::vector<long>::push_back[abi:nn200100](this, &v15);
        v6 += v11;
        --v9;
      }

      while (v9);
    }
  }
}

void std::vector<long>::push_back[abi:nn200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getFlattenedIndex(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  v7 = (*(v6 + 16))(v6, a1);

  return mlir::ElementsAttr::getFlattenedIndex(v7, a2);
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_0::operator()(uint64_t a1, void *a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  (**a2)(&v16, *(*a2 + 8));
  if (v16)
  {
    mlir::Diagnostic::operator<<<18ul>(v17, "expected shape ([");
  }

  v15[0] = (*(*(a2[1] + 8) + 24))();
  v15[1] = v4;
  v5 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(&v16, v15);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<41ul>((v5 + 1), "]); inferred shape of indices literal ([");
  }

  v14[0] = (*(*(a2[2] + 8) + 24))();
  v14[1] = v7;
  v8 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v6, v14);
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<<40ul>((v8 + 1), "]); inferred shape of values literal ([");
  }

  v13[0] = (*(*(a2[3] + 8) + 24))();
  v13[1] = v10;
  v11 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v9, v13);
  v12 = v11;
  if (*v11)
  {
    mlir::Diagnostic::operator<<<3ul>((v11 + 1), "])");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, v12);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
}

void mlir::SparseElementsAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr)::$_1::operator()(uint64_t a1, void **a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  (**a2)(&v30, (*a2)[1]);
  if (v30)
  {
    mlir::Diagnostic::operator<<<15ul>(v31, "sparse index #");
    if (v30)
    {
      LODWORD(v27) = 5;
      v28 = a3;
      v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v27, 1);
      v11 = v32 + 24 * v33;
      v12 = *v10;
      *(v11 + 16) = *(v10 + 16);
      *v11 = v12;
      ++v33;
      if (v30)
      {
        mlir::Diagnostic::operator<<<55ul>(v31, " is not contained within the value shape, with index=[");
        if (v30)
        {
          if (a5)
          {
            v13 = *a4;
            LODWORD(v27) = 5;
            v28 = v13;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v27, 1);
            v15 = v32 + 24 * v33;
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++v33;
            if (a5 != 1)
            {
              v17 = a4 + 1;
              v18 = 8 * a5 - 8;
              do
              {
                v27 = ", ";
                v29 = 259;
                mlir::Diagnostic::operator<<(v31, &v27);
                v19 = *v17++;
                LODWORD(v27) = 5;
                v28 = v19;
                v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v27, 1);
                v21 = v32 + 24 * v33;
                v22 = *v20;
                *(v21 + 16) = *(v20 + 16);
                *v21 = v22;
                ++v33;
                v18 -= 8;
              }

              while (v18);
            }
          }

          if (v30)
          {
            mlir::Diagnostic::operator<<<13ul>(v31, "], and type=");
            if (v30)
            {
              v23 = *a2[1];
              LODWORD(v27) = 4;
              v28 = v23;
              v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v27, 1);
              v25 = v32 + 24 * v33;
              v26 = *v24;
              *(v25 + 16) = *(v24 + 16);
              *v25 = v26;
              ++v33;
            }
          }
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v30);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
}

const char *llvm::Twine::getSingleStringRef(const char **this)
{
  v1 = *(this + 32);
  if (v1 > 4)
  {
    return *this;
  }

  if (v1 == 1)
  {
    return 0;
  }

  if (v1 == 3)
  {
    v2 = *this;
    if (*this)
    {
      strlen(*this);
    }
  }

  else if ((*this)[23] >= 0)
  {
    return *this;
  }

  else
  {
    return **this;
  }

  return v2;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t std::complex<llvm::APInt>::complex[abi:nn200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *a1 = *a2;
  v4 = *(a3 + 8);
  *(a1 + 24) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(a1 + 16) = *a3;
  return a1;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

llvm::detail::IEEEFloat *llvm::APFloat::Storage::Storage<>(llvm::detail::IEEEFloat *a1, void *a2)
{
  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  return llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v4, 8, 1, 0);
  if (result)
  {
    v6 = *a1;
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    v9 = *(*a1 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v13;
    v15 = 1;
    *(a2 + 48) = v9;
    *(a2 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v15;
  return result;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(uint64_t a1, uint64_t **a2)
{
  if (*a1)
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2;
      v5 = **a2;
      LODWORD(v17) = 2;
      v18 = v5;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
      v7 = *(a1 + 24) + 24 * *(a1 + 32);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(a1 + 32);
      if (v3 != 1)
      {
        v9 = 8 * v3;
        v10 = v4 + 1;
        v11 = v9 - 8;
        do
        {
          v17 = ", ";
          v19 = 259;
          mlir::Diagnostic::operator<<(a1 + 8, &v17);
          v12 = *v10++;
          LODWORD(v17) = 2;
          v18 = v12;
          v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
          v14 = *(a1 + 24) + 24 * *(a1 + 32);
          v15 = *v13;
          *(v14 + 16) = *(v13 + 16);
          *v14 = v15;
          ++*(a1 + 32);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  return a1;
}

uint64_t mlir::Diagnostic::operator<<<41ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<15ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<55ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::ShapedType &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
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
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine(llvm::hashing::detail::hash_combine_recursive_helper *this, uint64_t a2, char *a3, char *a4)
{
  if (a2)
  {
    std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(this, a3, a4);
    llvm::hashing::detail::hash_state::mix((this + 64), this, v7, v8);

    return llvm::hashing::detail::hash_state::finalize((this + 64), &a3[a2 - this]);
  }

  else
  {
    v10 = a3 - this;
    v11 = *(this + 15);

    return llvm::hashing::detail::hash_short(this, v10, v11);
  }
}

uint64_t *llvm::hashing::detail::hash_state::create@<X0>(llvm::hashing::detail::hash_state *__return_ptr a1@<X8>, llvm::hashing::detail::hash_state *this@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t *a5@<X3>)
{
  *a1 = 0;
  *(a1 + 1) = a3;
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a3 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (a3 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  *(a1 + 2) = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  *(a1 + 3) = __ROR8__(a3 ^ 0xB492B66FBE98F273, 49);
  v6 = a3 ^ (a3 >> 47);
  *(a1 + 4) = 0xB492B66FBE98F273 * a3;
  *(a1 + 5) = v6;
  *(a1 + 6) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a3 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))) ^ a3) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))))) ^ ((0x9DDFEA08EB382D69 * (a3 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))) ^ a3) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a3))))) >> 47));
  return llvm::hashing::detail::hash_state::mix(a1, this, a4, a5);
}

void *llvm::hashing::detail::hash_state::mix(llvm::hashing::detail::hash_state *this, llvm::hashing::detail::hash_state *a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(this + 1);
  v7 = *(this + 3);
  v8 = 0xB492B66FBE98F273 * __ROR8__(v6 + *this + v7 + *(a2 + 1), 37);
  v9 = *(this + 4);
  *this = v8;
  v10 = __ROR8__(v9 + v6 + *(a2 + 6), 42);
  v11 = (this + 48);
  v12 = *(this + 6) ^ v8;
  *this = v12;
  *(this + 1) = 0xB492B66FBE98F273 * v10;
  v13 = 0xB492B66FBE98F273 * v10 + v7 + *(a2 + 5);
  v15 = this + 40;
  v14 = *(this + 5);
  v16 = __ROR8__(v14 + *(this + 2), 33);
  *(this + 1) = v13;
  *(this + 2) = 0xB492B66FBE98F273 * v16;
  *(this + 3) = 0xB492B66FBE98F273 * v9;
  *(this + 4) = v14 + v12;
  llvm::hashing::detail::hash_state::mix_32_bytes(a2, this + 24, this + 4, a4);
  v17 = *(this + 1);
  *v15 = *v11 + *(this + 2);
  *v11 = *(a2 + 2) + v17;
  result = llvm::hashing::detail::hash_state::mix_32_bytes(a2 + 4, v15, v11, v18);
  v20 = *(this + 2);
  *(this + 2) = *this;
  *this = v20;
  return result;
}

void *llvm::hashing::detail::hash_state::mix_32_bytes(void *this, char *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a2 + *this;
  *a2 = v4;
  v5 = this[3];
  *a3 = __ROR8__(v5 + *a3 + v4, 21);
  v6 = *a2;
  v7 = this[1] + *a2 + this[2];
  *a2 = v7;
  *a3 += v6 + __ROR8__(v7, 44);
  *a2 += v5;
  return this;
}

unint64_t llvm::hashing::detail::hash_short(llvm::hashing::detail *this, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 <= 4)
  {
    v3 = *(this + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *this));
    v5 = v3 ^ (v4 >> 47) ^ v4;
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 - 9 <= 7)
  {
    v7 = *(this + a2 - 8);
    v8 = __ROR8__(v7 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (*this ^ a3 ^ v8)))) >> 47))) ^ v7;
  }

  if (a2 - 17 <= 0xF)
  {
    v9 = *(this + 1);
    v10 = 0x9AE16A3B2F90404FLL * *(this + a2 - 8);
    v11 = __ROR8__(0xB492B66FBE98F273 * *this - v9, 43) - 0x3C5A37A36834CED9 * *(this + a2 - 16) + __ROR8__(v10 ^ a3, 30);
    v12 = a3 + a2 + __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *this - v10;
    v5 = v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v12));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  }

  if (a2 >= 0x21)
  {
    v13 = this + a2;
    v14 = *(this + a2 - 16);
    v15 = *(this + a2 - 8);
    v16 = *this - 0x3C5A37A36834CED9 * (v14 + a2);
    v18 = *(this + 2);
    v17 = *(this + 3);
    v19 = __ROR8__(v16 + v17, 52);
    v20 = v16 + *(this + 1);
    v21 = __ROR8__(v20, 7);
    v22 = v20 + v18;
    v23 = v21 + __ROR8__(*this - 0x3C5A37A36834CED9 * (v14 + a2), 37) + v19;
    v24 = *(this + a2 - 32) + v18;
    v25 = __ROR8__(v24 + v15, 52);
    v26 = v23 + __ROR8__(v22, 31);
    v27 = __ROR8__(v24, 37);
    v28 = *(v13 - 3) + v24;
    v29 = __ROR8__(v28, 7);
    v30 = v28 + v14;
    v31 = __ROR8__(v30, 31);
    v32 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) ^ ((0xC3A5C85C97CB3127 * (v30 + v15 + v26) - 0x651E95C4D06FBFB1 * (v22 + v17 + v27 + v25 + v29 + v31)) >> 47))) ^ a3) + v26;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  if (a2)
  {
    v32 = (0x9AE16A3B2F90404FLL * (*this | (*(this + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(this + a2 - 1))) ^ a3;
    return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
  }

  return a3 ^ 0x9AE16A3B2F90404FLL;
}

unint64_t llvm::hashing::detail::hash_state::finalize(llvm::hashing::detail::hash_state *this, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * (*(this + 5) ^ ((0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 5) ^ *(this + 3))));
  v3 = 0x9DDFEA08EB382D69 * (*(this + 6) ^ ((0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))) >> 47) ^ (0x9DDFEA08EB382D69 * (*(this + 6) ^ *(this + 4))));
  v4 = *this - 0x4B6D499041670D8DLL * (a2 ^ (a2 >> 47)) - 0x622015F714C7D297 * (v3 ^ (v3 >> 47));
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (*(this + 2) - 0x4B6D499041670D8DLL * (*(this + 1) ^ (*(this + 1) >> 47)) - 0x622015F714C7D297 * (v2 ^ (v2 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 1 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 1, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
    }

    else if (a2 + 1 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 1;
      v9 = a3 - 1 - __src;
      if (a3 - 1 != __src)
      {
        memmove(__src + 1, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(__src, a2, a3);
    }
  }

  return v4;
}

_BYTE *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,char *>(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2 - a1;
  if (a2 - a1 == a3 - a2)
  {
    if (a1 != a2 && a2 != a3)
    {
      v4 = a2 + 1;
      v5 = a1 + 1;
      do
      {
        v6 = *(v5 - 1);
        *(v5 - 1) = *(v4 - 1);
        *(v4 - 1) = v6;
        if (v5 == a2)
        {
          break;
        }

        ++v5;
      }

      while (v4++ != a3);
    }
  }

  else
  {
    v8 = a3 - a2;
    v9 = a2 - a1;
    do
    {
      v10 = v9;
      v9 = v8;
      v8 = v10 % v8;
    }

    while (v8);
    v11 = &a1[v9];
    do
    {
      v13 = *--v11;
      v12 = v13;
      v14 = &v11[v3];
      v15 = v11;
      do
      {
        v16 = v15;
        v15 = v14;
        *v16 = *v14;
        v17 = (a3 - v14);
        v18 = __OFSUB__(v3, v17);
        v20 = v3 - v17;
        v19 = (v20 < 0) ^ v18;
        v14 = &a1[v20];
        if (v19)
        {
          v14 = &v15[v3];
        }
      }

      while (v14 != v11);
      *v15 = v12;
    }

    while (v11 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Attribute>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int **a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(*a5, &(*a5)[2 * a5[1]], a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::Attribute const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Attribute>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Attribute>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,long long,llvm::ArrayRef<char>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5, llvm::hashing::detail::hash_state **a6)
{
  v13 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  *v14 = v13;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(a1, v14, v10, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(a1, *v14, v11, a3, *a6, a6[1]);
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<long long>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
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
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<char>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, llvm::hashing::detail::hash_state *a5, uint64_t a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_range_impl<char const>(a5, a5 + a6, a3, a4);
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v10, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<char const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL mlir::detail::DenseArrayAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *a2 && *(a1 + 16) == *(a2 + 8) && (v2 = *(a1 + 32), v2 == *(a2 + 24)))
  {
    return memcmp(*(a1 + 24), *(a2 + 16), v2) == 0;
  }

  else
  {
    return 0;
  }
}

void *mlir::detail::DenseArrayAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, a2[3], 3);
    for (i = 0; i != v5; ++i)
    {
      *(v7 + i) = *(v6 + i);
    }

    v6 = v7;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x28uLL, 3);
  *result = 0;
  result[1] = v3;
  result[2] = v4;
  result[3] = v6;
  result[4] = v5;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (**a1 == a2[1])
  {
    v3 = v2[3];
    if (v3 == a2[5])
    {
      if (!v3)
      {
        return 1;
      }

      v4 = a2[4];
      v5 = v2[2];
      v6 = v5 + 16 * v3;
      while (1)
      {
        v7 = *(v5 + 8);
        if (v7 != *(v4 + 8) || v7 && memcmp(*v5, *v4, v7))
        {
          break;
        }

        v5 += 16;
        v4 += 16;
        if (v5 == v6)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseStringElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseStringElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL>(llvm::function_ref<void ()(mlir::detail::DenseStringElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<llvm::StringRef> &,BOOL &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[3];
  v7 = *(*a1 + 40);
  if (v6)
  {
    if ((*a1)[5])
    {
      LODWORD(v6) = 1;
    }

    v8 = v6;
    v9 = 16 * v6;
    if (v6 <= 0)
    {
      v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16 * v6, 3);
    }

    else
    {
      v23 = (*a1)[1];
      v10 = (*a1)[2];
      v11 = (v10 + 8);
      v6 = v6;
      v12 = 16 * v6;
      do
      {
        v13 = *v11;
        v11 += 2;
        v12 += v13;
        --v6;
      }

      while (v6);
      v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v12, 3);
      v15 = (v14 + v9);
      v16 = (v14 + 8);
      v17 = (v10 + 8);
      v18 = v8;
      do
      {
        memcpy(v15, *(v17 - 1), *v17);
        v19 = *v17;
        v17 += 2;
        *(v16 - 1) = v15;
        *v16 = v19;
        v15 += v19;
        v16 += 2;
        --v18;
      }

      while (v18);
      v5 = v23;
    }

    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
    *v20 = 0;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = v7;
    *(v20 + 32) = v14;
    *(v20 + 40) = v8;
  }

  else
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
    *v20 = 0;
    *(v20 + 8) = v4;
    *(v20 + 16) = v5;
    *(v20 + 24) = v7;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
  }

  v21 = a1[1];
  if (*v21)
  {
    (*v21)(v21[1], v20);
  }

  return v20;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail30DenseStringElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_23DenseStringElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefINS_9StringRefEEEbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APFloat>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, llvm *a5)
{
  v15 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v16 = v15;
  v12 = llvm::hash_value(a5, v9, v10, v11);
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, v8, a3, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v16, v13, a3);
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(v4[1], v3);
  }

  return v3;
}

void *mlir::detail::FloatAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (a2[1] == &llvm::semPPCDoubleDouble)
  {
    v4 = a2[2];
    v12 = &llvm::semPPCDoubleDouble;
    v13 = v4;
    a2[1] = &llvm::semBogus;
    a2[2] = 0;
  }

  else
  {
    v12 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v12, (a2 + 1));
  }

  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 0x28uLL, 3);
  v6 = v5;
  if (v12 == &llvm::semPPCDoubleDouble)
  {
    v11 = v13;
    v12 = &llvm::semBogus;
    v13 = 0;
    *v5 = 0;
    v5[1] = v3;
    goto LABEL_8;
  }

  v10 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(&v10, &v12);
  v7 = v10;
  *v6 = 0;
  v6[1] = v3;
  if (v7 == &llvm::semPPCDoubleDouble)
  {
LABEL_8:
    v8 = v11;
    v6[2] = &llvm::semPPCDoubleDouble;
    v6[3] = v8;
    v10 = &llvm::semBogus;
    v11 = 0;
    goto LABEL_9;
  }

  v6[2] = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=((v6 + 2), &v10);
LABEL_9:
  llvm::APFloat::Storage::~Storage(&v10);
  llvm::APFloat::Storage::~Storage(&v12);
  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat &>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == **a1)
  {
    return llvm::APFloat::bitwiseIsEqual((a2 + 16), (*a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FloatAttrStorage * mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat>(llvm::function_ref<void ()(mlir::detail::FloatAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APFloat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FloatAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeENS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, llvm::hashing::detail::hash_state **a5)
{
  *v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(a1, *v10, v8, a3, a5);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::APInt *a2, void *a3, char *a4, llvm::hashing::detail::hash_state **this)
{
  v11 = a2;
  v8 = llvm::hash_value(this, a2, a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

BOOL mlir::detail::IntegerAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 > 0x40)
  {
    return memcmp(*(a1 + 16), *(a2 + 8), ((v3 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    return *(a1 + 16) == *(a2 + 8);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt const&>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt const&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v4 = **a1;
  v5 = (*a1)[1];
  *(*a1 + 4) = 0;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 24) = v3;
  *(v6 + 16) = v5;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(v7[1], v6);
  }

  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERKNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v13[1] = a3;
  v10 = a4;
  v12 = *(a5 + 8);
  if (v12 > 0x40)
  {
    operator new[]();
  }

  v11 = *a5;
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,llvm::APInt>(__dst, __dst, v15, a4, &v11);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v13;
  v7 = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  return v7;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::Type &,llvm::APInt &>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::Type &,llvm::APInt &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v4 = **a1;
  v5 = (*a1)[1];
  *(*a1 + 4) = 0;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 24) = v3;
  *(v6 + 16) = v5;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(v7[1], v6);
  }

  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_4TypeERNS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, __int128 *a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v11 = a4;
  v12 = *a5;
  v13 = a6;
  memset(v17, 0, sizeof(v17));
  v18 = 0xFF51AFD7ED558CCDLL;
  v15 = 0;
  v16 = ((a4 >> 4) ^ (a4 >> 9));
  v7 = llvm::hashing::detail::hash_combine_range_impl<char const>(v12, v12 + *(&v12 + 1), a3, a4);
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v16, &v15, v17, &v17[3] + 8, v7);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(&v16, v15, v8, &v17[3] + 8, &v13);
  v15 = &v11;
  v16 = &v11;
  *&v17[0] = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v16);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v4 = *(a2 + 24), v4 == v2[2]) && (!v4 || !memcmp(*(a2 + 16), v2[1], v4)))
  {
    return *(a2 + 32) == v2[3];
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[3];
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, (*a1)[1], (*a1)[2]);
  v8 = v7;
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v9 = 0;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v5;
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(v10[1], v9);
  }

  return v9;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto(unint64_t *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, a3 + 1, 0);
  v6 = a3;
  v7 = result;
  do
  {
    v8 = *a2++;
    *v7++ = v8;
    --v6;
  }

  while (v6);
  *(result + a3) = 0;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  v16 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v11 = *a5;
  v17 = v16;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v10, a3, (v11 >> 4) ^ (v11 >> 9));
  v13 = *a6;
  v18 = v17;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, v12, a3, (v13 >> 4) ^ (v13 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v18, v14, a3);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeENS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x28uLL, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25SparseElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_18SparseElementsAttrEJRNS1_10ShapedTypeERNS1_20DenseIntElementsAttrERNS1_17DenseElementsAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<long long>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, llvm::hashing::detail::hash_state **a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<long long const>(*a5, *a5 + 8 * a5[1], a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<long long const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto<long long>(a2, (*a1)[1], (*a1)[2]);
  v7 = v6;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v8 = 0;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v7;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v8);
  }

  return v8;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<long long>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail24StridedLayoutAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_17StridedLayoutAttrEJxNS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[2];
  if (v5)
  {
    v6 = (*a1)[1];
    v7 = 8 * v5;
    v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5, 3);
    v9 = v8;
    do
    {
      v10 = *v6++;
      *v9++ = v10;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v11 = 0;
  v11[1] = v4;
  v11[2] = v8;
  v11[3] = v5;
  v12 = a1[1];
  if (*v12)
  {
    (*v12)(v12[1], v11);
  }

  return v11;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail20SymbolRefAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13SymbolRefAttrEJRNS1_10StringAttrERNS_8ArrayRefINS1_17FlatSymbolRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x10uLL, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail15TypeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8TypeAttrEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::AffineMapAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::AffineMapAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::ArrayAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ArrayAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseArrayAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::DictionaryAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DictionaryAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::FloatAttr>(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::FloatAttr>::getType;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v3, v2);
  *&v9[0] = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(&v9[1] + 1) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(&v6, a1, v10, v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSB_16FloatAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v5, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v4, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, "builtin.float", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v6);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v8);
  mlir::detail::InterfaceMap::~InterfaceMap(&v7);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::FloatAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v6);
}

void mlir::Dialect::addAttribute<mlir::IntegerAttr>(uint64_t a1)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::IntegerAttr>::getType;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v3, v2);
  *&v9[0] = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(&v9[1] + 1) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(&v6, a1, v10, v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v5, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v4, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, "builtin.integer", 15);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, &v6);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v8);
  mlir::detail::InterfaceMap::~InterfaceMap(&v7);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::IntegerAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>, &v6);
}

void mlir::Dialect::addAttribute<mlir::IntegerSetAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::IntegerSetAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::OpaqueAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::OpaqueAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::SparseElementsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::StringAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StringAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::SymbolRefAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::SymbolRefAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::TypeAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::TypeAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, 0, v2);
}

void *mlir::Dialect::addAttribute<mlir::UnitAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::UnitAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::UnitAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id);
}

void mlir::AbstractAttribute::get<mlir::AffineMapAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSB_20AffineMapAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, "builtin.affine_map", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemRefLayoutAttrInterface>();
      mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1872);
}

uint64_t llvm::getTypeName<mlir::MemRefLayoutAttrInterface>()
{
  {
    llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface>();
    *algn_27FC17768 = v1;
  }

  return llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]";
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

BOOL mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1592);
}

uint64_t llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>();
    unk_27FC17650 = v1;
  }

  return llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
  v6 = 107;
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

void *mlir::AbstractAttribute::AbstractAttribute(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  a1[1] = a1 + 3;
  v17 = a1 + 1;
  a1[2] = 0x300000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v17, a3);
  }

  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase((a1 + 9), a4);
  a1[13] = a5;
  a1[14] = a6;
  a1[15] = a7;
  a1[16] = a8;
  a1[17] = a9;
  a1[18] = a10;
  a1[19] = a11;
  return a1;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 == a2 + 16)
    {
      v5 = *(a2 + 8);
      v6 = *(a1 + 8);
      if (v6 >= v5)
      {
        if (v5)
        {
          v8 = *a1;
          v9 = &v4[2 * v5];
          do
          {
            *v8 = *v4;
            v8[1] = v4[1];
            v4 += 2;
            v8 += 2;
          }

          while (v4 != v9);
        }
      }

      else
      {
        if (*(a1 + 12) >= v5)
        {
          if (v6)
          {
            v10 = &v4[2 * v6];
            v11 = *a1;
            do
            {
              *v11 = *v4;
              v11[1] = v4[1];
              v4 += 2;
              v11 += 2;
            }

            while (v4 != v10);
          }

          else
          {
            v6 = 0;
          }

          v7 = v5;
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 16);
          v6 = 0;
          v7 = *(a2 + 8);
        }

        v12 = v7 - v6;
        if (v12)
        {
          memcpy((*a1 + 16 * v6), (*a2 + 16 * v6), 16 * v12);
        }
      }

      *(a1 + 8) = v5;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::assignRemote(a1, a2);
    }
  }

  return a1;
}

double llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
      (*((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

void *llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

void mlir::detail::InterfaceMap::~InterfaceMap(void ***this)
{
  v2 = *this;
  v3 = *(this + 2);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *this;
  }

  if (v2 != (this + 2))
  {
    free(v2);
  }
}

void mlir::AbstractAttribute::get<mlir::ArrayAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ArrayAttr,mlir::Attribute,mlir::detail::ArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, "builtin.array", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  if (a4 >= a2[4])
  {
    v5 = a2[4];
  }

  else
  {
    v5 = a4;
  }

  return mlir::ArrayAttr::get(*(**a2 + 32), a3, v5);
}

void mlir::AbstractAttribute::get<mlir::DenseArrayAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::BlobAttrInterfaceTraits::Model<mlir::DenseArrayAttr>::getData;
  v5 = mlir::detail::TypeIDResolver<mlir::BlobAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, "builtin.dense_array", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::BlobAttr,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3A0))
  {
    v1 = llvm::getTypeName<mlir::BlobAttr>();
    _MergedGlobals_4 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D3A0);
  }

  return _MergedGlobals_4;
}

uint64_t llvm::getTypeName<mlir::BlobAttr>()
{
  if ((atomic_load_explicit(&qword_27FC1D3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3B8))
  {
    qword_27FC1D3A8 = llvm::detail::getTypeNameImpl<mlir::BlobAttr>();
    unk_27FC1D3B0 = v1;
    __cxa_guard_release(&qword_27FC1D3B8);
  }

  return qword_27FC1D3A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::BlobAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr]";
  v6 = 76;
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

BOOL mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer,mlir::BlobAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3C8))
  {
    v1 = llvm::getTypeName<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>();
    qword_27FC1D3C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D3C8);
  }

  return qword_27FC1D3C0;
}

uint64_t llvm::getTypeName<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1D3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3E0))
  {
    qword_27FC1D3D0 = llvm::detail::getTypeNameImpl<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>();
    *algn_27FC1D3D8 = v1;
    __cxa_guard_release(&qword_27FC1D3E0);
  }

  return qword_27FC1D3D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::BlobAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::BlobAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BlobAttr::Trait<Empty>]";
  v6 = 90;
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    return a5(a6, v6, a3, a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJNS1_8BlobAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  v17 = *(a2 + 8);
  v18 = v5;
  if (v17)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(&v18 + 1);
  v7 = v18;
  v23 = &v25;
  v9 = xmmword_25D0A0550;
  v24 = xmmword_25D0A0550;
  if (*(&v18 + 1))
  {
    do
    {
      v10 = *v7;
      if (v24 >= *(&v24 + 1))
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v23, v10);
        v9 = xmmword_25D0A0550;
      }

      else
      {
        *(v23 + v24) = v10;
        *&v24 = v24 + 1;
      }

      ++v7;
      --v8;
    }

    while (v8);
    v19 = &v21;
    *v20 = v9;
    if (v24)
    {
      llvm::SmallVectorImpl<char>::operator=(&v19, &v23);
      v9 = xmmword_25D0A0550;
    }
  }

  else
  {
    v19 = &v21;
    *v20 = xmmword_25D0A0550;
  }

  if (v23 != &v25)
  {
    free(v23);
    v9 = xmmword_25D0A0550;
  }

  v23 = v6;
  *&v24 = &v17 + 8;
  *(&v24 + 1) = v26;
  v25 = v9;
  if (v20[0])
  {
    llvm::SmallVectorImpl<char>::operator=(&v24 + 8, &v19);
    v9 = xmmword_25D0A0550;
  }

  if (v19 != &v21)
  {
    free(v19);
    v9 = xmmword_25D0A0550;
  }

  v11 = v23;
  v12 = v24;
  v19 = v23;
  v20[0] = v24;
  v20[1] = v22;
  v21 = v9;
  if (v25)
  {
    llvm::SmallVectorImpl<char>::operator=(&v20[1], &v24 + 8);
    v11 = v19;
    v12 = v20[0];
    v13 = v20[1];
    v14 = v21;
  }

  else
  {
    v14 = 0;
    v13 = v22;
  }

  v15 = mlir::DenseArrayAttr::get(v11, *v12, v13, v14);
  if (v20[1] != v22)
  {
    free(v20[1]);
  }

  if (*(&v24 + 1) != v26)
  {
    free(*(&v24 + 1));
  }

  return v15;
}

uint64_t llvm::SmallVectorImpl<char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) >= v4)
      {
        if (v5)
        {
          memmove(*a1, *a2, *(a1 + 8));
        }
      }

      else
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v4, 1);
        v5 = 0;
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v5, v4);
  v6 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  *v6 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl;
  v6[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::isSplat;
  v6[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getShapedType;
  v6[3] = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v22;
  if (v22)
  {
    v9 = v21;
    v10 = v22;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[2 * (v10 >> 1)];
      v14 = *v12;
      v13 = v12 + 2;
      v10 += ~(v10 >> 1);
      if (v14 < v7)
      {
        v9 = v13;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  else
  {
    v8 = 0;
    v9 = v21;
  }

  if (v9 != &v21[2 * v8] && *v9 == v7)
  {
    v15 = v9[1];
  }

  else
  {
    v15 = 0;
  }

  v6[3] = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v21, v16, v6);
  *&v19 = mlir::detail::StorageUserBase<mlir::DenseIntOrFPElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v20 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v21, &v19, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSB_31DenseIntOrFPElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v18, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSA_31DenseIntOrFPElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v17, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, "builtin.dense_int_or_fp_elements", 32);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v19);
  mlir::detail::InterfaceMap::~InterfaceMap(&v21);
}

uint64_t *mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v96 = *MEMORY[0x277D85DE8];
  v87 = a1;
  if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID() == a2)
  {
    result = (*(*(a1 + 16) + 24))();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = 8 * v7;
    v9 = 1;
    do
    {
      v10 = *result++;
      v9 *= v10;
      v8 -= 8;
    }

    while (v8);
    if (v9)
    {
LABEL_6:
      result = mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v91, &v87);
      goto LABEL_7;
    }

LABEL_148:
    v14 = 1;
    v88 = 1;
    v89 = 0;
    goto LABEL_149;
  }

  if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a2)
  {
LABEL_14:
    result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned short>(&v88, &v87);
    goto LABEL_150;
  }

  if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a2)
  {
LABEL_16:
    result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned int>(&v88, &v87);
    goto LABEL_150;
  }

  if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID() == a2)
  {
    result = (*(*(a1 + 16) + 24))();
    if (v15)
    {
      v16 = 8 * v15;
      v17 = 1;
      do
      {
        v18 = *result++;
        v17 *= v18;
        v16 -= 8;
      }

      while (v16);
      if (!v17)
      {
        goto LABEL_148;
      }
    }

    result = mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v87, v91);
    goto LABEL_23;
  }

  if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID() != a2)
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a2)
    {
LABEL_35:
      result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<short>(&v88, &v87);
      goto LABEL_150;
    }

    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a2)
    {
LABEL_37:
      result = mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<int>(&v88, &v87);
      goto LABEL_150;
    }

    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v24)
      {
        v25 = 8 * v24;
        v26 = 1;
        do
        {
          v27 = *result++;
          v26 *= v27;
          v25 -= 8;
        }

        while (v25);
        if (!v26)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<long long,void>(&v87, v91);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID() == a2)
    {
      goto LABEL_35;
    }

    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID() == a2)
    {
      goto LABEL_14;
    }

    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID() == a2)
    {
      goto LABEL_37;
    }

    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID() == a2)
    {
      goto LABEL_16;
    }

    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v28)
      {
        v29 = 8 * v28;
        v30 = 1;
        do
        {
          v31 = *result++;
          v30 *= v31;
          v29 -= 8;
        }

        while (v29);
        if (!v30)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<long,void>(v91, &v87);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v32)
      {
        v33 = 8 * v32;
        v34 = 1;
        do
        {
          v35 = *result++;
          v34 *= v35;
          v33 -= 8;
        }

        while (v33);
        if (!v34)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<unsigned long,void>(v91, &v87);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v36)
      {
        v37 = 8 * v36;
        v38 = 1;
        do
        {
          v39 = *result++;
          v38 *= v39;
          v37 -= 8;
        }

        while (v37);
        if (!v38)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v91, &v87);
      goto LABEL_66;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v41)
      {
        v42 = 8 * v41;
        v43 = 1;
        do
        {
          v44 = *result++;
          v43 *= v44;
          v42 -= 8;
        }

        while (v42);
        if (!v43)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v91, &v87);
      goto LABEL_77;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v46)
      {
        v47 = 8 * v46;
        v48 = 1;
        do
        {
          v49 = *result++;
          v48 *= v49;
          v47 -= 8;
        }

        while (v47);
        if (!v48)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v91, &v87);
      goto LABEL_23;
    }

    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v50)
      {
        v51 = 8 * v50;
        v52 = 1;
        do
        {
          v53 = *result++;
          v52 *= v53;
          v51 -= 8;
        }

        while (v51);
        if (!v52)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v91, &v87);
      goto LABEL_94;
    }

    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v55)
      {
        v56 = 8 * v55;
        v57 = 1;
        do
        {
          v58 = *result++;
          v57 *= v58;
          v56 -= 8;
        }

        while (v56);
        if (!v57)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v91, &v87);
LABEL_66:
      if (v92)
      {
        v11 = *(v87 + 24);
        if (v91[8])
        {
          v40 = 0;
        }

        else
        {
          v40 = *&v91[16];
        }

        v13 = *v91 + 2 * v40;
        goto LABEL_12;
      }

      goto LABEL_147;
    }

    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v59)
      {
        v60 = 8 * v59;
        v61 = 1;
        do
        {
          v62 = *result++;
          v61 *= v62;
          v60 -= 8;
        }

        while (v60);
        if (!v61)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v91, &v87);
      goto LABEL_77;
    }

    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID() == a2)
    {
      result = (*(*(a1 + 16) + 24))();
      if (v63)
      {
        v64 = 8 * v63;
        v65 = 1;
        do
        {
          v66 = *result++;
          v65 *= v66;
          v64 -= 8;
        }

        while (v64);
        if (!v65)
        {
          goto LABEL_148;
        }
      }

      result = mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v91, &v87);
    }

    else
    {
      if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID() == a2)
      {
        result = (*(*(a1 + 16) + 24))();
        if (v67)
        {
          v68 = 8 * v67;
          v69 = 1;
          do
          {
            v70 = *result++;
            v69 *= v70;
            v68 -= 8;
          }

          while (v68);
          if (!v69)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v91, &v87);
LABEL_94:
        if (v92)
        {
          v11 = *(v87 + 24);
          if (v91[8])
          {
            v54 = 0;
          }

          else
          {
            v54 = *&v91[16];
          }

          v13 = *v91 + 16 * v54;
          goto LABEL_12;
        }

        goto LABEL_147;
      }

      if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID() == a2)
      {
        result = (*(*(a1 + 16) + 24))();
        if (v71)
        {
          v72 = 8 * v71;
          v73 = 1;
          do
          {
            v74 = *result++;
            v73 *= v74;
            v72 -= 8;
          }

          while (v72);
          if (!v73)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<float,void>(&v87, v91);
LABEL_77:
        if (v92)
        {
          v11 = *(v87 + 24);
          if (v91[8])
          {
            v45 = 0;
          }

          else
          {
            v45 = *&v91[16];
          }

          v13 = *v91 + 4 * v45;
          goto LABEL_12;
        }

        goto LABEL_147;
      }

      if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID() == a2)
      {
        result = (*(*(a1 + 16) + 24))();
        if (v75)
        {
          v76 = 8 * v75;
          v77 = 1;
          do
          {
            v78 = *result++;
            v77 *= v78;
            v76 -= 8;
          }

          while (v76);
          if (!v77)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<double,void>(v91, &v87);
      }

      else
      {
        if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID() != a2)
        {
          result = mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID();
          if (result != a2)
          {
            goto LABEL_147;
          }

          result = (*(*(a1 + 16) + 24))();
          if (v83)
          {
            v84 = 8 * v83;
            v85 = 1;
            do
            {
              v86 = *result++;
              v85 *= v86;
              v84 -= 8;
            }

            while (v84);
            if (!v85)
            {
              goto LABEL_148;
            }
          }

          result = mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(v91, &v87);
          goto LABEL_94;
        }

        result = (*(*(a1 + 16) + 24))();
        if (v79)
        {
          v80 = 8 * v79;
          v81 = 1;
          do
          {
            v82 = *result++;
            v81 *= v82;
            v80 -= 8;
          }

          while (v80);
          if (!v81)
          {
            goto LABEL_148;
          }
        }

        result = mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v91, &v87);
      }
    }

LABEL_23:
    if (v92)
    {
      v11 = *(v87 + 24);
      if (v91[8])
      {
        v19 = 0;
      }

      else
      {
        v19 = *&v91[16];
      }

      v13 = *v91 + 8 * v19;
      goto LABEL_12;
    }

LABEL_147:
    v14 = 0;
    LOBYTE(v88) = 0;
    goto LABEL_149;
  }

  result = (*(*(a1 + 16) + 24))();
  if (v20)
  {
    v21 = 8 * v20;
    v22 = 1;
    do
    {
      v23 = *result++;
      v22 *= v23;
      v21 -= 8;
    }

    while (v21);
    if (!v22)
    {
      goto LABEL_148;
    }
  }

  result = mlir::DenseElementsAttr::tryGetValues<signed char,void>(&v87, v91);
LABEL_7:
  if ((v92 & 1) == 0)
  {
    goto LABEL_147;
  }

  v11 = *(v87 + 24);
  if (v91[8])
  {
    v12 = 0;
  }

  else
  {
    v12 = *&v91[16];
  }

  v13 = *v91 + v12;
LABEL_12:
  v14 = 1;
  LOBYTE(v88) = 1;
  HIBYTE(v88) = v11;
  v89 = v13;
LABEL_149:
  v90 = v14;
LABEL_150:
  if (v90 == 1)
  {
    *a3 = v88;
    *(a3 + 8) = v89;
    *(a3 + 16) = 1;
  }

  else
  {
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID() == a2)
    {
      (*(*(v87 + 16) + 24))();
      operator new();
    }

    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v87, v91);
      if (v93)
      {
        *v95 = *&v91[1];
        *&v95[15] = *&v91[16];
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v87, v91);
      if (v92)
      {
        *v95 = *&v91[1];
        *&v95[15] = *&v91[16];
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetComplexIntValues(v91, &v87);
      if (v93)
      {
        *v95 = *&v91[1];
        *&v95[15] = *&v91[16];
        operator new();
      }
    }

    else if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID() == a2)
    {
      result = mlir::DenseElementsAttr::tryGetFloatValues(v91, &v87);
      if (v94)
      {
        *v95 = *&v91[1];
        *&v95[16] = *&v91[17];
        *&v95[31] = *&v91[32];
        operator new();
      }
    }

    else
    {
      result = mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID();
      if (result == a2)
      {
        result = mlir::DenseElementsAttr::tryGetComplexFloatValues(v91, &v87);
        if (v94)
        {
          *v95 = *&v91[1];
          *&v95[16] = *&v91[17];
          *&v95[31] = *&v91[32];
          operator new();
        }
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    if ((v90 & 1) != 0 && (v88 & 1) == 0)
    {
      result = v89;
      v89 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D3F0))
  {
    Type = llvm::getTypeName<unsigned char>();
    qword_27FC1D3E8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D3F0);
  }

  return qword_27FC1D3E8;
}

uint64_t llvm::getTypeName<unsigned char>()
{
  if ((atomic_load_explicit(&qword_27FC1D408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D408))
  {
    qword_27FC1D3F8 = llvm::detail::getTypeNameImpl<unsigned char>();
    unk_27FC1D400 = v1;
    __cxa_guard_release(&qword_27FC1D408);
  }

  return qword_27FC1D3F8;
}

const char *llvm::detail::getTypeNameImpl<unsigned char>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned char]";
  v6 = 75;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(v4, 1, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned short>(uint64_t a1, uint64_t *a2)
{
  result = (*(*(*a2 + 16) + 24))();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = 8 * v5;
  v7 = 1;
  do
  {
    v8 = *result++;
    v7 *= v8;
    v6 -= 8;
  }

  while (v6);
  if (!v7)
  {
    v12 = 1;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
LABEL_5:
    result = mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(&v13, a2);
    if (v16)
    {
      v9 = *(*a2 + 24);
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v15;
      }

      v11 = v13 + 2 * v10;
      v12 = 1;
      *a1 = 1;
      *(a1 + 1) = v9;
      *(a1 + 8) = v11;
    }

    else
    {
      v12 = 0;
      *a1 = 0;
    }
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D418))
  {
    Type = llvm::getTypeName<unsigned short>();
    qword_27FC1D410 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D418);
  }

  return qword_27FC1D410;
}

uint64_t llvm::getTypeName<unsigned short>()
{
  if ((atomic_load_explicit(&qword_27FC1D430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D430))
  {
    qword_27FC1D420 = llvm::detail::getTypeNameImpl<unsigned short>();
    *algn_27FC1D428 = v1;
    __cxa_guard_release(&qword_27FC1D430);
  }

  return qword_27FC1D420;
}

const char *llvm::detail::getTypeNameImpl<unsigned short>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned short]";
  v6 = 76;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(*a2 + 16) + 8))();
  result = isValidIntOrFloat(v4, 2, 1, 0);
  if (result)
  {
    v6 = *a2;
    v7 = *(*a2 + 32);
    v8 = *(*a2 + 24);
    v9 = *(*a2 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v13;
    v15 = 1;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a1 = 0;
  }

  *(a1 + 64) = v15;
  return result;
}

uint64_t *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<unsigned int>(uint64_t a1, uint64_t *a2)
{
  result = (*(*(*a2 + 16) + 24))();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = 8 * v5;
  v7 = 1;
  do
  {
    v8 = *result++;
    v7 *= v8;
    v6 -= 8;
  }

  while (v6);
  if (!v7)
  {
    v12 = 1;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
LABEL_5:
    result = mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(a2, &v13);
    if (v16)
    {
      v9 = *(*a2 + 24);
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v15;
      }

      v11 = v13 + 4 * v10;
      v12 = 1;
      *a1 = 1;
      *(a1 + 1) = v9;
      *(a1 + 8) = v11;
    }

    else
    {
      v12 = 0;
      *a1 = 0;
    }
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D440))
  {
    Type = llvm::getTypeName<unsigned int>();
    qword_27FC1D438 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D440);
  }

  return qword_27FC1D438;
}

uint64_t llvm::getTypeName<unsigned int>()
{
  if ((atomic_load_explicit(&qword_27FC1D458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D458))
  {
    qword_27FC1D448 = llvm::detail::getTypeNameImpl<unsigned int>();
    unk_27FC1D450 = v1;
    __cxa_guard_release(&qword_27FC1D458);
  }

  return qword_27FC1D448;
}

const char *llvm::detail::getTypeNameImpl<unsigned int>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned int]";
  v6 = 74;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v4, 4, 1, 0);
  if (result)
  {
    v6 = *a1;
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 24);
    v9 = *(*a1 + 8);
    v10 = *(v6 + 16);
    result = (*(v10 + 24))(v10, v9);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = 1;
      do
      {
        v14 = *result;
        result += 8;
        v13 *= v14;
        v12 -= 8;
      }

      while (v12);
    }

    else
    {
      v13 = 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v13;
    v15 = 1;
    *(a2 + 48) = v9;
    *(a2 + 56) = v10;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v15;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D468))
  {
    Type = llvm::getTypeName<unsigned long long>();
    qword_27FC1D460 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D468);
  }

  return qword_27FC1D460;
}

uint64_t llvm::getTypeName<unsigned long long>()
{
  if ((atomic_load_explicit(&qword_27FC1D480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D480))
  {
    qword_27FC1D470 = llvm::detail::getTypeNameImpl<unsigned long long>();
    *algn_27FC1D478 = v1;
    __cxa_guard_release(&qword_27FC1D480);
  }

  return qword_27FC1D470;
}

const char *llvm::detail::getTypeNameImpl<unsigned long long>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = unsigned long long]";
  v6 = 80;
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

uint64_t mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D490))
  {
    Type = llvm::getTypeName<signed char>();
    qword_27FC1D488 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D490);
  }

  return qword_27FC1D488;
}

uint64_t llvm::getTypeName<signed char>()
{
  if ((atomic_load_explicit(&qword_27FC1D4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D4A8))
  {
    qword_27FC1D498 = llvm::detail::getTypeNameImpl<signed char>();
    unk_27FC1D4A0 = v1;
    __cxa_guard_release(&qword_27FC1D4A8);
  }

  return qword_27FC1D498;
}

const char *llvm::detail::getTypeNameImpl<signed char>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = signed char]";
  v6 = 73;
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

uint64_t *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<short>(uint64_t a1, uint64_t *a2)
{
  result = (*(*(*a2 + 16) + 24))();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = 8 * v5;
  v7 = 1;
  do
  {
    v8 = *result++;
    v7 *= v8;
    v6 -= 8;
  }

  while (v6);
  if (!v7)
  {
    v12 = 1;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
LABEL_5:
    result = mlir::DenseElementsAttr::tryGetValues<short,void>(a2, &v13);
    if (v16)
    {
      v9 = *(*a2 + 24);
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v15;
      }

      v11 = v13 + 2 * v10;
      v12 = 1;
      *a1 = 1;
      *(a1 + 1) = v9;
      *(a1 + 8) = v11;
    }

    else
    {
      v12 = 0;
      *a1 = 0;
    }
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<short,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D4B8))
  {
    Type = llvm::getTypeName<short>();
    qword_27FC1D4B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D4B8);
  }

  return qword_27FC1D4B0;
}

uint64_t llvm::getTypeName<short>()
{
  if ((atomic_load_explicit(&qword_27FC1D4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D4D0))
  {
    qword_27FC1D4C0 = llvm::detail::getTypeNameImpl<short>();
    *algn_27FC1D4C8 = v1;
    __cxa_guard_release(&qword_27FC1D4D0);
  }

  return qword_27FC1D4C0;
}

const char *llvm::detail::getTypeNameImpl<short>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = short]";
  v6 = 67;
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

uint64_t *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<int>(uint64_t a1, uint64_t *a2)
{
  result = (*(*(*a2 + 16) + 24))();
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = 8 * v5;
  v7 = 1;
  do
  {
    v8 = *result++;
    v7 *= v8;
    v6 -= 8;
  }

  while (v6);
  if (!v7)
  {
    v12 = 1;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  else
  {
LABEL_5:
    result = mlir::DenseElementsAttr::tryGetValues<int,void>(a2, &v13);
    if (v16)
    {
      v9 = *(*a2 + 24);
      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v15;
      }

      v11 = v13 + 4 * v10;
      v12 = 1;
      *a1 = 1;
      *(a1 + 1) = v9;
      *(a1 + 8) = v11;
    }

    else
    {
      v12 = 0;
      *a1 = 0;
    }
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<int,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D4E0))
  {
    Type = llvm::getTypeName<int>();
    qword_27FC1D4D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D4E0);
  }

  return qword_27FC1D4D8;
}

uint64_t llvm::getTypeName<int>()
{
  if ((atomic_load_explicit(&qword_27FC1D4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D4F8))
  {
    qword_27FC1D4E8 = llvm::detail::getTypeNameImpl<int>();
    unk_27FC1D4F0 = v1;
    __cxa_guard_release(&qword_27FC1D4F8);
  }

  return qword_27FC1D4E8;
}

const char *llvm::detail::getTypeNameImpl<int>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = int]";
  v6 = 65;
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

uint64_t mlir::detail::TypeIDResolver<long long,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D508))
  {
    Type = llvm::getTypeName<long long>();
    qword_27FC1D500 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D508);
  }

  return qword_27FC1D500;
}

uint64_t llvm::getTypeName<long long>()
{
  if ((atomic_load_explicit(&qword_27FC1D520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D520))
  {
    qword_27FC1D510 = llvm::detail::getTypeNameImpl<long long>();
    *algn_27FC1D518 = v1;
    __cxa_guard_release(&qword_27FC1D520);
  }

  return qword_27FC1D510;
}

const char *llvm::detail::getTypeNameImpl<long long>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = long long]";
  v6 = 71;
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

uint64_t mlir::detail::TypeIDResolver<long,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D530))
  {
    Type = llvm::getTypeName<long>();
    qword_27FC1D528 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(Type, v2);
    __cxa_guard_release(&qword_27FC1D530);
  }

  return qword_27FC1D528;
}