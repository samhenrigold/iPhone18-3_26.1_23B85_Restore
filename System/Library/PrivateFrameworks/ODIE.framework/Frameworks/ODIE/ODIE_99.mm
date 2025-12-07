void mlir::ODIE::Compiler::ConversionCastPattern::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIXBuilderContext::materializeODIXResults(&v6, *(a1 + 104), a2, *(a3 + 40), *(a3 + 48), a4);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v6 & 0xFFFFFFFFFFFFFFF9, v7);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConversionCastPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConversionCastPattern]";
  v6 = 105;
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

void mlir::ODIE::Compiler::FlattenCFGPattern::~FlattenCFGPattern(mlir::ODIE::Compiler::FlattenCFGPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 88))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 96))(a1, a2, v11, a5);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = a3 & 0xFFFFFFFFFFFFFFF9;
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v11, a2);
  v12 = v9;
  v13 = a4;
  return (*(*a1 + 104))(a1, a2, v11, a5);
}

{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::ODIX::detail::RegionOpGenericAdaptorBase::RegionOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  return (*(*a1 + 112))(a1, a2, v11, a5);
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v12);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v9[2] = *(a3 + 32);
  v10 = v12 & 0xFFFFFFFFFFFFFFF9;
  v11 = v13;
  (*(*a1 + 88))(a1, a2, v9, a4);
  if (v12 != v14)
  {
    free(v12);
  }
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::ODIX::RegionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 48), *(a3 + 56), &v14);
  v8 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v8;
  v11[2] = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  v9 = (*(*a1 + 104))(a1, a2, v11, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  return v9;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::operator[](void *a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 4), *a2, &v9);
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
    llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 4), *a2, &v10);
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  v5[1] = (v5 + 3);
  v5[2] = 0x600000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
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
        v6 = (a1 + 72 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 72 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>,mlir::Block *,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x600000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Value>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 9;
        v16 -= 72;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 72 * v21 - 72;
    v24 = vdupq_n_s64(v23 / 0x48);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[9] = -4096;
      }

      v22 += 2;
      result += 18;
    }

    while (((v23 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::ODIX::MoveOp>(*(**a2 + 32));
  v10[0] = a2;
  v10[1] = v8;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::ODIE::Compiler::ODIX::MoveOp::build(a1, v10, *a3, *a4);
  v9 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v9);
  mlir::OperationState::~OperationState(v10);
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::StringAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::JumpOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v15 = 1283;
    v14[2] = "odix.jump";
    v14[3] = 9;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  v16[0] = a2;
  v16[1] = v6;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  v8 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::JumpOpGenericAdaptorBase::Properties>(v16) = v8;
  v9 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::JumpOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::FlattenCFGPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::FlattenCFGPattern]";
  v6 = 101;
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

void mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern::~KernelBackedOpSymbolAttrPattern(mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern::matchAndRewrite(uint64_t a1, mlir::ODIE::Compiler *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    v22 = "Already has a symbol";
  }

  else
  {
    v9 = *(a1 + 96);
    (*a3)(&v36, a3, a2);
    v10 = mlir::SymbolTable::lookup((v9 + 152), v36, v37);
    if (v10)
    {
      v11 = *(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
    }

    else
    {
      v11 = 1;
    }

    if (v36 != v39)
    {
      free(v36);
    }

    if (v11)
    {
      v12 = *(a1 + 96);
      v13 = (*(a3 + 8))(a3, a2);
      InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::OutputIntentOpInterface,mlir::ODIE::Compiler::Exec::detail::OutputIntentOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v15 = (*InterfaceFor)(InterfaceFor, a2);
      v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 7) + 8), *(*(a2 + 7) + 8) + 16 * *(*(a2 + 7) + 16), "delegate", 8uLL);
      if ((v17 & 1) != 0 && *(v16 + 8))
      {
        v19 = *(***(a2 + 3) + 32);
        v35 = 261;
        v33 = "delegate";
        v34 = 8;
        v20 = mlir::StringAttr::get(v19, &v33, v18);
        mlir::NamedAttrList::NamedAttrList(&v36, *(a2 + 7));
        if (mlir::NamedAttrList::erase(&v36, v20))
        {
          *(a2 + 7) = mlir::NamedAttrList::getDictionary(&v36, *(***(a2 + 3) + 32));
        }

        if (v36 != &v38)
        {
          free(v36);
        }

        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      OpAttrs = mlir::ODIE::Compiler::getOpAttrs(a2, v17);
      if (v24)
      {
        v25 = OpAttrs;
        v26 = *(***(*v12 + 24) + 32);
        (*a3)(&v36, a3, a2);
        v35 = 261;
        v33 = v36;
        v34 = v37;
        v28 = mlir::StringAttr::get(v26, &v33, v27);
        SymbolAttr = mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(v12, *(v28 + 16), *(v28 + 24), v21, *(v13 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v13 + 8), (*(v13 + 16) + 8 * *(v13 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v13 + 12), v15, v25);
        if (v36 != v39)
        {
          free(v36);
        }
      }

      else
      {
        SymbolAttr = 0;
      }

      Symbol = mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(*(a1 + 96), *(a2 + 3), SymbolAttr, a4);
      mlir::SymbolTable::insert((*(a1 + 96) + 152), Symbol, 0);
      (*(*a4 + 40))(a4, a2);
      mlir::Operation::setAttr(a2, "symbol", 6, SymbolAttr);
      (*(*a4 + 48))(a4, a2);
      return 1;
    }

    v22 = "Function calls are handled elsewhere";
  }

  v36 = v22;
  v39[4] = 259;
  v33 = &v36;
  v30 = a4[2];
  if (v30 && v30[2] == 1)
  {
    (*(*v30 + 88))(v30, *(a2 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface &>(mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v33);
  }

  return 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[275];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>();
    unk_27FC1B8B0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface]";
  v6 = 113;
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

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(uint64_t a1, const char *a2, const llvm::Twine *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a4;
  v16 = a9;
  v17 = a10;
  v48 = *MEMORY[0x277D85DE8];
  v37 = *(***(*a1 + 24) + 32);
  v43 = v45;
  v44 = 0x600000000;
  if (a6 < 7)
  {
    if (!a6)
    {
      v24 = 0;
      goto LABEL_8;
    }

    v34 = a9;
    v18 = a10;
    v19 = a4;
    v20 = 0;
  }

  else
  {
    v34 = a9;
    v18 = a10;
    v19 = a4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, a6, 8);
    v20 = v44;
  }

  v21 = 0;
  v22 = v43 + 8 * v20;
  do
  {
    v23 = mlir::TypeRange::dereference_iterator(a5, v21);
    *&v22[8 * v21++] = mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(a1, v23);
  }

  while (a6 != v21);
  v24 = v44;
  v14 = v19;
  v17 = v18;
  v16 = v34;
LABEL_8:
  LODWORD(v44) = v24 + a6;
  v40 = v42;
  v41 = 0x600000000;
  if (a8 < 7)
  {
    if (!a8)
    {
      v29 = 0;
      goto LABEL_15;
    }

    v25 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, a8, 8);
    v25 = v41;
  }

  v26 = 0;
  v27 = v40 + 8 * v25;
  do
  {
    v28 = mlir::TypeRange::dereference_iterator(a7, v26);
    *&v27[8 * v26++] = mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(a1, v28);
  }

  while (a8 != v26);
  v29 = v41;
LABEL_15:
  LODWORD(v41) = v29 + a8;
  v39 = 261;
  v38[0] = a2;
  v38[1] = a3;
  v30 = mlir::StringAttr::get(v37, v38, a3);
  *&v47 = v43 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v47 + 1) = v44;
  *&v46 = v40 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v46 + 1) = v41;
  v31 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v37, &v47, &v46);
  v32 = mlir::ODIE::Compiler::ODIX::SymbolAttr::get(v37, v14, v30, v31, v16, v17);
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v32;
}

uint64_t *mlir::ODIE::Compiler::ODIXBuilderContext::convertSymbolType(uint64_t a1, uint64_t *a2)
{
  v8 = a2;
  v9 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::LookupBucketFor<mlir::Type>((a1 + 192), &v8, &v9);
  v4 = v9;
  if (v3)
  {
    result = v9[1];
    if (result)
    {
      return result;
    }
  }

  else
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::InsertIntoBucketImpl<mlir::Type>(a1 + 192, &v8, v9);
    *v4 = v8;
    v4[1] = 0;
  }

  v6 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v8);
  if (v6)
  {
    result = (*v7)(v7, v6);
  }

  else
  {
    result = v8;
  }

  v4[1] = result;
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[280];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>();
    *algn_27FC1B8D8 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::ODIXSerializableType]";
  v6 = 110;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::KernelBackedOpSymbolAttrPattern]";
  v6 = 115;
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

void mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern::~FunctionOpSymbolAttrPattern(mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "symbol", 6uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
  {
    v36[8] = 259;
    v33 = &v34;
    v34 = "Already has a symbol";
    v30 = a3[2];
    if (v30 && v30[2] == 1)
    {
      (*(*v30 + 88))(v30, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::func::FuncOp &>(mlir::func::FuncOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v33);
    }

    return 0;
  }

  else
  {
    v8 = *(a1 + 96);
    v33 = a2;
    v9 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8);
    v10 = *(v9 + 8);
    v11 = *(v9 + 12);
    v12 = v10 - v11;
    v34 = v36;
    v35 = 0x600000000;
    v13 = a2;
    if (v12 < v10)
    {
      v14 = v10 - v11;
      do
      {
        ArgAttr = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::getArgAttr(&v33, v14, "coreml.intent", 0xDuLL);
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v34, ArgAttr);
        ++v14;
        --v11;
      }

      while (v11);
      v13 = v33;
    }

    OpAttrs = mlir::ODIE::Compiler::getOpAttrs(v13, v7);
    if (v17)
    {
      v18 = OpAttrs;
      v19 = *(v33 + 2 * ((*(v33 + 11) >> 23) & 1) + 12);
      v31 = *(v19 + 24);
      v32 = *(v19 + 16);
      v20 = *(v9 + 16);
      v21 = *(v9 + 8);
      v22 = v21 - v12;
      v23 = v8;
      if (v21 >= v12)
      {
        v24 = v12;
      }

      else
      {
        v24 = v21;
      }

      v25 = v20 & 0xFFFFFFFFFFFFFFF9;
      v26 = (v20 + 8 * v12) & 0xFFFFFFFFFFFFFFF9;
      v27 = mlir::ArrayAttr::get(*(***(v33 + 3) + 32), v34, v35);
      SymbolAttr = mlir::ODIE::Compiler::ODIXBuilderContext::getSymbolAttr(v23, v32, v31, 0, v25 | 2, v24, v26 | 2, v22, v27, v18);
    }

    else
    {
      SymbolAttr = 0;
    }

    if (v34 != v36)
    {
      free(v34);
    }

    mlir::ODIE::Compiler::ODIXBuilderContext::getOrCreateSymbol(*(a1 + 96), *(a2 + 24), SymbolAttr, a3);
    (*(*a3 + 40))(a3, a2);
    mlir::Operation::setAttr(a2, "symbol", 6, SymbolAttr);
    (*(*a3 + 48))(a3, a2);
    return 1;
  }
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::FunctionOpSymbolAttrPattern]";
  v6 = 111;
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler4ODIX8RegionOpEZNS6_17ConvertExecToODIX14runOnOperationEvE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSC_EUlSE_E_NS_9allocatorISI_EEFNS_8optionalIbEESE_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA21D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler4ODIX8RegionOpEZNS6_17ConvertExecToODIX14runOnOperationEvE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSC_EUlSE_E_NS_9allocatorISI_EEFNS_8optionalIbEESE_EEclEOSE_(uint64_t a1, uint64_t a2)
{
  v2 = (((*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + ((*(*a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a2 + 40));
  v3 = *v2 != v2 && *(v2[1] + 8) == v2;
  return v3 | 0x100u;
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v80 = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v80);
  if (!v2
    || (v4 = *(v2 + 8)) == 0
    || (v11 = *(v10 + 8)) == 0
    || (v18 = *(v17 + 8)) == 0
    || (v25 = *(v24 + 8)) == 0
    || (v32 = *(v31 + 8)) == 0
    || (v39 = *(v38 + 8)) == 0
    || (v46 = *(v45 + 8)) == 0
    || (v53 = *(v52 + 8)) == 0
    || (v60 = *(v59 + 8)) == 0
    || (v67 = *(v66 + 8)) == 0
    || (v74 = *(v73 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v3);
  }

  v75 = *v74;
  v76 = v74[17];
  v77 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v80 = v76;
  v81 = v77;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v75 + 9, &v80);
  v78 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v79 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v74 + 1), v79, v78);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::NDArrayODIXSerializationModel<mlir::RankedTensorType>>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v56[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(**a2 + 32);
  if (a2)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v3 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8))(v6, a2);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*v9)(v9, v8);
  }

  if (!v10)
  {
    v8 = v7;
  }

  __src = mlir::TypeAttr::get(v8);
  v54 = v56;
  v55 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v54, &__src, &v52);
  v12 = (*(v6 + 24))(v6, a2);
  v13 = v11;
  __src = v53;
  v52 = 0xC00000000;
  if (v11 < 0xD)
  {
    if (!v11)
    {
      v20 = 0;
      v15 = v53;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = v53;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v53, v11, 4);
    v14 = v52;
    v15 = __src;
  }

  v16 = 4 * v14;
  v17 = 8 * v13;
  do
  {
    v19 = *v12++;
    v18 = v19;
    if (v19 == 0x8000000000000000)
    {
      v18 = -1;
    }

    *&v15[v16] = v18;
    v16 += 4;
    v17 -= 8;
  }

  while (v17);
  v20 = v52;
LABEL_17:
  LODWORD(v52) = v20 + v13;
  v21 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v15, (v20 + v13));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v21);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v29 = a2[4]) == 0 || *(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    (*(v6 + 24))(v6, a2);
    *&v49 = v50;
    *(&v49 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v49, 0, v22);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v49, DWORD2(v49));
    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v23);
    v24 = v49;
    if (v49 == v50)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v30 = v29[1];
  v31 = v29[2];
  *&v49 = v50;
  *(&v49 + 1) = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<int const*,void>(&v49, v30, &v30[4 * v31]);
  v32 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v49, DWORD2(v49));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v32);
  v33 = v29[3];
  v34 = v29[4];
  v46 = v48;
  v47 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v46, v33, &v33[8 * v34]);
  v35 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v46, v47);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v35);
  v36 = v29[5];
  v37 = v29[6];
  v43 = v45;
  v44 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v43, v36, &v36[8 * v37]);
  v38 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v43, v44);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v38);
  v40 = a2[6];
  if (!v40 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v41 = "Heap";
    v42 = 259;
    v40 = mlir::StringAttr::get(v4, &v41, v39);
  }

  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v40);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v24 = v49;
  if (v49 != v50)
  {
LABEL_19:
    free(v24);
  }

LABEL_20:
  v25 = mlir::ArrayAttr::get(v4, v54, v55);
  *&v49 = "NDArray";
  *(&v49 + 1) = 7;
  v46 = v25;
  v27 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v4, &v49, &v46, v26);
  if (__src != v53)
  {
    free(__src);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  return v27;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::NDArrayODIXSerializationModel<mlir::MemRefType>>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v56[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(**a2 + 32);
  if (a2)
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v3 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8))(v6, a2);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*v9)(v9, v8);
  }

  if (!v10)
  {
    v8 = v7;
  }

  __src = mlir::TypeAttr::get(v8);
  v54 = v56;
  v55 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v54, &__src, &v52);
  v12 = (*(v6 + 24))(v6, a2);
  v13 = v11;
  __src = v53;
  v52 = 0xC00000000;
  if (v11 < 0xD)
  {
    if (!v11)
    {
      v20 = 0;
      v15 = v53;
      goto LABEL_17;
    }

    v14 = 0;
    v15 = v53;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v53, v11, 4);
    v14 = v52;
    v15 = __src;
  }

  v16 = 4 * v14;
  v17 = 8 * v13;
  do
  {
    v19 = *v12++;
    v18 = v19;
    if (v19 == 0x8000000000000000)
    {
      v18 = -1;
    }

    *&v15[v16] = v18;
    v16 += 4;
    v17 -= 8;
  }

  while (v17);
  v20 = v52;
LABEL_17:
  LODWORD(v52) = v20 + v13;
  v21 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v15, (v20 + v13));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v21);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v29 = a2[4]) == 0 || *(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MemoryLayoutAttr,void>::id)
  {
    (*(v6 + 24))(v6, a2);
    *&v49 = v50;
    *(&v49 + 1) = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<llvm::detail::SafeIntIterator<int,false>,void>(&v49, 0, v22);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v49, DWORD2(v49));
    llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v23);
    v24 = v49;
    if (v49 == v50)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v30 = v29[1];
  v31 = v29[2];
  *&v49 = v50;
  *(&v49 + 1) = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<int const*,void>(&v49, v30, &v30[4 * v31]);
  v32 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v49, DWORD2(v49));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v32);
  v33 = v29[3];
  v34 = v29[4];
  v46 = v48;
  v47 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v46, v33, &v33[8 * v34]);
  v35 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v46, v47);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v35);
  v36 = v29[5];
  v37 = v29[6];
  v43 = v45;
  v44 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v43, v36, &v36[8 * v37]);
  v38 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v43, v44);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v38);
  v40 = a2[6];
  if (!v40 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v41 = "Heap";
    v42 = 259;
    v40 = mlir::StringAttr::get(v4, &v41, v39);
  }

  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v54, v40);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v24 = v49;
  if (v49 != v50)
  {
LABEL_19:
    free(v24);
  }

LABEL_20:
  v25 = mlir::ArrayAttr::get(v4, v54, v55);
  *&v49 = "NDArray";
  *(&v49 + 1) = 7;
  v46 = v25;
  v27 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v4, &v49, &v46, v26);
  if (__src != v53)
  {
    free(__src);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  return v27;
}

uint64_t anonymous namespace::getSerializeScalarType(unsigned int *a1)
{
  v1 = *a1;
  v2 = *(**a1 + 32);
  v17 = v2;
  v3 = *(v1 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v4 = 68;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v4 = 69;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    v4 = 70;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v4 = 80;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v4 = 66;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v4 = 67;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v5 = *(**(a1 + 1) + 136);
    v6 = 0xFFFFLL;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      v6 = 98;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v7 = 97;
    }

    else
    {
      v7 = v6;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v4 = 96;
    }

    else
    {
      v4 = v7;
    }
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v4 = 42;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v8 = a1[2];
    v9 = v8 & 0x3FFFFFFF;
    v4 = 0xFFFFLL;
    if ((v8 & 0x3FFFFFFF) <= 5)
    {
      if ((v8 & 0x3FFFFFFF) <= 2)
      {
        if (v9 == 1)
        {
          v10 = v8 >> 30 == 0;
          v11 = 32;
          v12 = 16;
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_54;
          }

          v10 = v8 >> 30 == 2;
          v11 = 17;
          v12 = 33;
        }
      }

      else
      {
        switch(v9)
        {
          case 3:
            v10 = v8 >> 30 == 2;
            v11 = 18;
            v12 = 34;
            break;
          case 4:
            v10 = v8 >> 30 == 2;
            v11 = 19;
            v12 = 35;
            break;
          case 5:
            v10 = v8 >> 30 == 2;
            v11 = 20;
            v12 = 36;
            break;
          default:
            goto LABEL_54;
        }
      }
    }

    else if ((v8 & 0x3FFFFFFF) > 0xF)
    {
      switch(v9)
      {
        case 16:
          v10 = v8 >> 30 == 2;
          v11 = 24;
          v12 = 40;
          break;
        case 32:
          v10 = v8 >> 30 == 2;
          v11 = 25;
          v12 = 41;
          break;
        case 64:
          v10 = v8 >> 30 == 2;
          v11 = 26;
          v12 = 42;
          break;
        default:
          goto LABEL_54;
      }
    }

    else
    {
      switch(v9)
      {
        case 6:
          v10 = v8 >> 30 == 2;
          v11 = 21;
          v12 = 37;
          break;
        case 7:
          v10 = v8 >> 30 == 2;
          v11 = 22;
          v12 = 38;
          break;
        case 8:
          v10 = v8 >> 30 == 2;
          v11 = 23;
          v12 = 39;
          break;
        default:
          goto LABEL_54;
      }
    }

    if (v10)
    {
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  else
  {
    v4 = 0xFFFFLL;
  }

LABEL_54:
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(&v17, v4);
  v13 = mlir::ArrayAttr::get(v2, &I64IntegerAttr, 1);
  *&v19 = "Scalar";
  *(&v19 + 1) = 6;
  v18 = v13;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v2, &v19, &v18, v14);
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t a1)
{
  v45 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v45);
  if (!v2
    || (v4 = *(v2 + 8)) == 0
    || (v11 = *(v10 + 8)) == 0
    || (v18 = *(v17 + 8)) == 0
    || (v25 = *(v24 + 8)) == 0
    || (v32 = *(v31 + 8)) == 0
    || (v39 = *(v38 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v3);
  }

  v40 = *v39;
  v41 = v39[17];
  v42 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
  v45 = v41;
  v46 = v42;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v40 + 9, &v45);
  v43 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v44 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v39 + 1), v44, v43);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::SymbolRefTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2, BOOL a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v5 = *(**a2 + 32);
  v25 = v27;
  v26 = 0x600000000;
  v6 = a2[1];
  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = v6[4];
    if (v7)
    {
      v8 = v6[3];
      v9 = 16 * v7;
      do
      {
        v10 = *v8;
        v11 = *(**v8 + 136);
        if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v10 = v10[1];
          v11 = *(*v10 + 136);
        }

        if (v11 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v3 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(v10, a2, a3);
        }

        else
        {
          v3 &= 0xFFFFFFFFFFFFFF00;
        }

        if (v11 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v12 = v3;
        }

        else
        {
          v12 = v10;
        }

        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v25, v12);
        v8 += 16;
        v9 -= 16;
      }

      while (v9);
    }
  }

  *&v24 = a2;
  Symbol = mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(&v24);
  v16 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(Symbol, v14, v15);
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = mlir::ArrayAttr::get(v5, v25, v26);
  *&v24 = v17;
  *(&v24 + 1) = v18;
  v23 = v19;
  v21 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v5, &v24, &v23, v20);
  if (v25 != v27)
  {
    free(v25);
  }

  return v21;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::SymbolRefTypeODIXSerializationModel>::getId(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  Symbol = mlir::ODIE::Compiler::CoreML::SymbolRefType::getSymbol(&v6);
  return *(mlir::ODIE::Compiler::CoreML::flattenSymbolRef(Symbol, v3, v4) + 16);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::StringODIXSerializationModel<mlir::ODIE::Compiler::CoreML::ApproximateAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v5 = *(**a2 + 32);
  v6 = a2[2];
  if (v6 > 2)
  {
    v7 = 0;
    v8 = &str_56;
  }

  else
  {
    v7 = qword_25D0A02D8[v6];
    v8 = (&off_2799BECB8)[v6];
  }

  v12 = v3;
  v13 = v4;
  v11 = 261;
  v10[0] = v8;
  v10[1] = v7;
  return mlir::StringAttr::get(v5, v10, a3);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  if (v3 > 4)
  {
    v4 = 0;
    v5 = &str_56;
  }

  else
  {
    v4 = qword_25D0A02F0[v3];
    v5 = (&off_2799BECD0)[v3];
  }

  v6 = *(**a2 + 32);
  v10 = 261;
  v9[0] = v5;
  v9[1] = v4;
  v7 = mlir::StringAttr::get(v6, v9, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v6, v3, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2)
{
  v3 = a2[2];
  v4 = mlir::ODIE::Compiler::CoreML::stringifyScatterMode(a2[2]);
  v5 = *(**a2 + 32);
  v11 = 261;
  v10[0] = v4;
  v10[1] = v6;
  v8 = mlir::StringAttr::get(v5, v10, v7);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v5, v3, v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  v4 = "half_pixel";
  v5 = 10;
  v6 = &str_56;
  v7 = 13;
  if (v3 == 1)
  {
    v6 = "align_corners";
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v5 = v7;
  }

  v8 = *(**a2 + 32);
  v12 = 261;
  if (v3)
  {
    v4 = v6;
  }

  v11[0] = v4;
  v11[1] = v5;
  v9 = mlir::StringAttr::get(v8, v11, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v8, v3, v9);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableAttrInterfaceTraits::FallbackModel<anonymous namespace::EnumODIXSerializationModel<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>>::getAsOdixSerializable(uint64_t a1, unsigned int *a2, const llvm::Twine *a3)
{
  v3 = a2[2];
  v4 = "linear";
  v5 = 6;
  v6 = &str_56;
  v7 = 16;
  if (v3 == 1)
  {
    v6 = "nearest_neighbor";
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v5 = v7;
  }

  v8 = *(**a2 + 32);
  v12 = 261;
  if (v3)
  {
    v4 = v6;
  }

  v11[0] = v4;
  v11[1] = v5;
  v9 = mlir::StringAttr::get(v8, v11, a3);
  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(v8, v3, v9);
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_2::__invoke(uint64_t a1)
{
  v38 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), &v38);
  if (!v2
    || (v4 = *(v2 + 8)) == 0
    || (v11 = *(v10 + 8)) == 0
    || (v18 = *(v17 + 8)) == 0
    || (v25 = *(v24 + 8)) == 0
    || (v32 = *(v31 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v3);
  }

  v33 = *v32;
  v34 = v32[17];
  v35 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v38 = v34;
  v39 = v35;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v33 + 9, &v38);
  v36 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v37 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v32 + 1), v37, v36);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::ContextTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, uint64_t a2)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 32);
  v18 = v2;
  v3 = *(a2 + 16);
  if (!v3)
  {
    LODWORD(v5) = 0;
    v21 = v23;
    HIDWORD(v22) = 6;
LABEL_13:
    v13 = v23;
    goto LABEL_14;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v21 = v23;
  v22 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v5, 8);
    v6 = v22;
    v7 = v21;
    goto LABEL_7;
  }

  if (!v5)
  {
    LODWORD(v3) = 0;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = v23;
LABEL_7:
  v8 = 8 * v5;
  v9 = &v7[v6];
  do
  {
    v10 = *v4;
    v11 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(*v4);
    if (v11)
    {
      v10 = (*v12)(v12, v11);
    }

    *v9++ = v10;
    ++v4;
    v8 -= 8;
  }

  while (v8);
  LODWORD(v3) = v22;
  v13 = v21;
  v2 = v18;
LABEL_14:
  LODWORD(v22) = v3 + v5;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v18, v13 & 0xFFFFFFFFFFFFFFF9 | 2, (v3 + v5));
  *&v20 = "Context";
  *(&v20 + 1) = 7;
  v19 = TypeArrayAttr;
  v16 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v2, &v20, &v19, v15);
  if (v21 != v23)
  {
    free(v21);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::MetaTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v10 = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v4)
  {
    v2 = (*v5)(v5, v4);
  }

  v9 = v2;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v10, &v9 + 2, 1uLL);
  *&v12 = "Meta";
  *(&v12 + 1) = 4;
  v11 = TypeArrayAttr;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v12, &v11, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::TaskTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v18 = v3;
  v4 = a2[2];
  v21 = v23;
  v22 = 0x600000000;
  if (v4 < 7)
  {
    if (!v4)
    {
      v12 = 0;
      v13 = v23;
      goto LABEL_10;
    }

    v5 = 0;
    v6 = v23;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v4, 8);
    v5 = v22;
    v6 = v21;
  }

  v7 = 8 * v4;
  v8 = &v6[v5];
  do
  {
    v9 = *v2;
    v10 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(*v2);
    if (v10)
    {
      v9 = (*v11)(v11, v10);
    }

    *v8++ = v9;
    ++v2;
    v7 -= 8;
  }

  while (v7);
  v12 = v22;
  v13 = v21;
  v3 = v18;
LABEL_10:
  LODWORD(v22) = v12 + v4;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v18, v13 & 0xFFFFFFFFFFFFFFF9 | 2, (v12 + v4));
  *&v20 = "Task";
  *(&v20 + 1) = 4;
  v19 = TypeArrayAttr;
  v16 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v20, &v19, v15);
  if (v21 != v23)
  {
    free(v21);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::TaskResultTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = *(**a2 + 32);
  v10 = v3;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v4)
  {
    v2 = (*v5)(v5, v4);
  }

  v9 = v2;
  TypeArrayAttr = mlir::Builder::getTypeArrayAttr(&v10, &v9 + 2, 1uLL);
  *&v12 = "TaskResult";
  *(&v12 + 1) = 10;
  v11 = TypeArrayAttr;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v12, &v11, v7);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::ODIXSerializableTypeInterfaceTraits::FallbackModel<anonymous namespace::AsyncMemRefTypeODIXSerializationModel>::getAsOdixSerializable(uint64_t a1, void *a2)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = *(**a2 + 32);
  v4 = a2[3];
  v5 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(v4);
  if (v5)
  {
    v4 = (*v6)(v6, v5);
  }

  __src = mlir::TypeAttr::get(v4);
  v25 = v27;
  v26 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v25, &__src, &v23);
  v8 = a2[1];
  v7 = a2[2];
  __src = v24;
  v23 = 0xC00000000;
  if (v7 < 0xD)
  {
    if (!v7)
    {
      v15 = 0;
      v10 = v24;
      goto LABEL_12;
    }

    v9 = 0;
    v10 = v24;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v7, 4);
    v9 = v23;
    v10 = __src;
  }

  v11 = 4 * v9;
  v12 = 8 * v7;
  do
  {
    v14 = *v8++;
    v13 = v14;
    if (v14 == 0x8000000000000000)
    {
      v13 = -1;
    }

    *&v10[v11] = v13;
    v11 += 4;
    v12 -= 8;
  }

  while (v12);
  v15 = v23;
LABEL_12:
  LODWORD(v23) = v15 + v7;
  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v10, (v15 + v7));
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v25, v16);
  *&v21 = "AsyncTensor";
  *(&v21 + 1) = 11;
  v20 = mlir::ArrayAttr::get(v3, v25, v26);
  v18 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v3, &v21, &v20, v17);
  if (__src != v24)
  {
    free(__src);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v18;
}

void mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(mlir::DialectRegistry &)::$_3::__invoke(uint64_t a1)
{
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id;
  v1 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a1 + 360), v9);
  if (!v1 || (v3 = *(v1 + 8)) == 0)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1, v2);
  }

  v4 = *v3;
  v5 = v3[17];
  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();
  v9[0] = v5;
  v9[1] = v6;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v4 + 9, v9);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert((v3 + 1), v8, v7);
}

void *mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::ODIX::ODIXDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::ODIX::ODIXDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::ODIX::ODIXDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::ODIX::ODIXDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::registerODIXOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t *a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.alloc";
    v72 = 10;
    goto LABEL_44;
  }

  v4 = v2;
  if (*(v2 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v5 = (*(v2 + 8) + 32);
  }

  else
  {
    v5 = (v2 + 24);
  }

  v6 = *v5;
  v81 = *(v2 + 16);
  v82 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v6 + 9, &v81);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v4 + 32, v8, v7);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::InferTypeOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v80 = 1283;
    v73 = "exec.infer_type";
LABEL_39:
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = v73;
    v72 = 15;
    goto LABEL_44;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v13 = (*(v9 + 8) + 32);
  }

  else
  {
    v13 = (v9 + 24);
  }

  v14 = *v13;
  v15 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v12;
  v82 = v15;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v14 + 9, &v81);
  v16 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v17 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11 + 32, v17, v16);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, a1);
  if ((v19 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.call";
LABEL_42:
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = v74;
    v72 = 9;
    goto LABEL_44;
  }

  v20 = v18;
  v21 = *(v18 + 16);
  if (v21 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v22 = (*(v18 + 8) + 32);
  }

  else
  {
    v22 = (v18 + 24);
  }

  v23 = *v22;
  v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v21;
  v82 = v24;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v23 + 9, &v81);
  v25 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v26 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v20 + 32, v26, v25);
  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocConstOp,void>::id, a1);
  if ((v28 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.alloc_const";
    v72 = 16;
    goto LABEL_44;
  }

  v29 = v27;
  v30 = *(v27 + 16);
  if (v30 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v31 = (*(v27 + 8) + 32);
  }

  else
  {
    v31 = (v27 + 24);
  }

  v32 = *v31;
  v33 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v30;
  v82 = v33;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v32 + 9, &v81);
  v34 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v35 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v29 + 32, v35, v34);
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, a1);
  if ((v37 & 1) == 0)
  {
    v80 = 1283;
    v73 = "exec.alloc_view";
    goto LABEL_39;
  }

  v38 = v36;
  v39 = *(v36 + 16);
  if (v39 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v40 = (*(v36 + 8) + 32);
  }

  else
  {
    v40 = (v36 + 24);
  }

  v41 = *v40;
  v42 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v39;
  v82 = v42;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v41 + 9, &v81);
  v43 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v44 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v38 + 32, v44, v43);
  v45 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, a1);
  if ((v46 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.copy";
    goto LABEL_42;
  }

  v47 = v45;
  v48 = *(v45 + 16);
  if (v48 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v49 = (*(v45 + 8) + 32);
  }

  else
  {
    v49 = (v45 + 24);
  }

  v50 = *v49;
  v51 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v48;
  v82 = v51;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v50 + 9, &v81);
  v52 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v53 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v47 + 32, v53, v52);
  v54 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::LoadOp,void>::id, a1);
  if ((v55 & 1) == 0)
  {
    v80 = 1283;
    v74 = "exec.load";
    goto LABEL_42;
  }

  v56 = v54;
  v57 = *(v54 + 16);
  if (v57 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v58 = (*(v54 + 8) + 32);
  }

  else
  {
    v58 = (v54 + 24);
  }

  v59 = *v58;
  v60 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v57;
  v82 = v60;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v59 + 9, &v81);
  v61 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v62 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v56 + 32, v62, v61);
  v63 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::GetTypeOp,void>::id, a1);
  if ((v64 & 1) == 0)
  {
    v80 = 1283;
    v77 = "Attempting to attach an interface to an unregistered operation ";
    v78 = "exec.get_type";
    v72 = 13;
LABEL_44:
    v79 = v72;
    v75 = ".";
    v76 = 259;
    llvm::operator+(&v77, &v75, &v81);
    llvm::report_fatal_error(&v81, 1);
  }

  v65 = v63;
  v66 = *(v63 + 16);
  if (v66 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v67 = (*(v63 + 8) + 32);
  }

  else
  {
    v67 = (v63 + 24);
  }

  v68 = *v67;
  v69 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  v81 = v66;
  v82 = v69;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::erase(v68 + 9, &v81);
  v70 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v71 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::KernelBackedOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v65 + 32, v71, v70);
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocOpModel>::getKernelName@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 - 8);
  v8 = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = v6;
  v10 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = v4;
  *(&v8 + 1) = v3;
  v12 = v11;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v8, &v12);
}

double anonymous namespace::getTypeSpecificKernelName(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::ODIX::ODIXSerializableType,mlir::Type,void>>::doCastIfPossible(a3);
  if (v10)
  {
    v21[0] = (*(v11 + 8))(v11, v10);
    v21[1] = v12;
    v21[2] = ".";
    v22 = 1;
    v23 = a4;
    v24 = a5;
    *a1 = a1 + 24;
    *(a1 + 8) = xmmword_25D0A05C0;
    llvm::SmallString<32u>::append(a1, v21, 3);
  }

  else
  {
    v17 = "Type does not provide kernel id: ";
    v18 = 259;
    emitDiag(a2, 2, &v17, v21);
    if (v21[0])
    {
      v19 = 4;
      v20 = a3;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v19, 1);
      v15 = v22 + 24 * v23;
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      LODWORD(v23) = v23 + 1;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a1 + 24;
    result = 0.0;
    *(a1 + 8) = xmmword_25D0A05C0;
  }

  return result;
}

void llvm::SmallString<32u>::append(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  if (a3)
  {
    v6 = 16 * a3;
    v7 = (a2 + 8);
    v8 = 16 * a3;
    v9 = a1[1];
    do
    {
      v10 = *v7;
      v7 += 2;
      v9 += v10;
      v8 -= 16;
    }

    while (v8);
    llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v9);
    v11 = (a2 + 8);
    do
    {
      if (*v11)
      {
        memmove((*a1 + v4), *(v11 - 1), *v11);
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      v4 += v12;
      v11 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v13 = a1[1];

    llvm::SmallVectorImpl<char>::resizeImpl<true>(a1, v13);
  }
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::InferTypeOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = "#";
  v2[1] = 1;
  v3 = *(*(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8) + 16);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A05C0;
  llvm::SmallString<32u>::append(a2, v2, 2);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::InferTypeOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = v6;
  v10 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = v4;
  *(&v8 + 1) = v3;
  v12 = v11;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v8, &v12);
}

void mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CallOpModel>::getKernelName(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v4, &v4[v5]);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CallOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v9[1] = InterfaceFor;
  v4 = *(***(a2 + 24) + 32);
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(&v11, v9);
  *&v14 = v11 & 0xFFFFFFFFFFFFFFF9;
  *(&v14 + 1) = 0;
  v15 = v11 & 0xFFFFFFFFFFFFFFF9;
  v16 = v12;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v17, &v14);
  v5 = *(v9[0] + 36);
  v6 = v9[0] - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v14 = v6;
  v15 = v6;
  v16 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v10, &v14);
  v14 = v17;
  v18 = v10;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, &v14, &v18);
  if (v11 != &v13)
  {
    free(v11);
  }

  return v7;
}

void mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(mlir::ODIE::Compiler::Exec::DPSOpInterface *this, mlir::ODIE::Compiler::Exec::DPSOpInterface *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x600000000;
  if ((*(*a2 + 46) & 0x80) != 0)
  {
    v4 = *(*a2 + 68);
  }

  else
  {
    v4 = 0;
  }

  DpsInits = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(a2);
  if (v6)
  {
    v7 = v6;
    v8 = *(DpsInits + 16);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 0;
    }

    v10 = DpsInits - v9;
    if (v4 - v6 > HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v4 - v6, 8);
    }

    v11 = (v10 >> 5);
    if ((v10 & 0x1FFFFFFFE0) != 0)
    {
      v12 = 0;
      v13 = v11;
      do
      {
        llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v23, *(*a2 + 72) + v12);
        v12 += 32;
        --v13;
      }

      while (v13);
    }

    for (i = v11 + v7; i < v4; ++i)
    {
      llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v23, *(*a2 + 72) + 32 * i);
    }
  }

  else
  {
    if (v4 <= HIDWORD(v24))
    {
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v4, 8);
    }

    v15 = 0;
    do
    {
      llvm::SmallVectorTemplateBase<mlir::OpOperand *,true>::push_back(&v23, *(*a2 + 72) + v15);
      v15 += 32;
      --v4;
    }

    while (v4);
  }

LABEL_19:
  v16 = v23;
  v17 = v24;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  if (v17 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 16, v17, 8);
    v18 = *(this + 2);
    goto LABEL_23;
  }

  if (v17)
  {
    v18 = 0;
LABEL_23:
    v19 = (*this + 8 * v18);
    v20 = 8 * v17;
    do
    {
      v21 = *v16++;
      *v19++ = *(v21 + 24);
      v20 -= 8;
    }

    while (v20);
    v22 = *(this + 2);
    goto LABEL_26;
  }

  v22 = 0;
LABEL_26:
  *(this + 2) = v22 + v17;
  if (v23 != v25)
  {
    free(v23);
  }
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocConstOpModel>::getKernelName@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 - 8);
  v8 = *(a1 + 48);
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocConstOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v11 = mlir::IntegerType::get(v3, 64, 0);
  v4 = *(a2 + 36);
  v5 = a2 - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v7 = v5;
  v8 = v5;
  v9 = v4;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v10, &v7);
  *&v7 = &v11 + 2;
  *(&v7 + 1) = 1;
  v12 = v10;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v3, &v7, &v12);
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocViewOpModel>::getKernelName@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v8 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::AllocViewOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v11[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11[1] = mlir::IntegerType::get(v3, 64, 0);
  v4 = *(a2 + 36);
  v5 = a2 - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v7 = v5;
  v8 = v5;
  v9 = v4;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v10, &v7);
  *&v7 = v11 + 2;
  *(&v7 + 1) = 2;
  v12 = v10;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v3, &v7, &v12);
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CopyOpModel>::getKernelName@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v8 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::CopyOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v9[1] = InterfaceFor;
  v4 = *(***(a2 + 24) + 32);
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInputs(&v11, v9);
  *&v14 = v11 & 0xFFFFFFFFFFFFFFF9;
  *(&v14 + 1) = 0;
  v15 = v11 & 0xFFFFFFFFFFFFFFF9;
  v16 = v12;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v17, &v14);
  v5 = *(v9[0] + 36);
  v6 = v9[0] - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v14 = v6;
  v15 = v6;
  v16 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v10, &v14);
  v14 = v17;
  v18 = v10;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, &v14, &v18);
  if (v11 != &v13)
  {
    free(v11);
  }

  return v7;
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::LoadOpModel>::getKernelName@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v8 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::LoadOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = v6;
  v10 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = v4;
  *(&v8 + 1) = v3;
  v12 = v11;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v8, &v12);
}

double mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::GetTypeOpModel>::getKernelName@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = *(*(a1[9] + 24) + 8);
  v8 = a1[6];
  v5 = mlir::OperationName::stripDialect(&v8);
}

uint64_t mlir::ODIE::Compiler::ODIX::detail::KernelBackedOpInterfaceInterfaceTraits::FallbackModel<anonymous namespace::GetTypeOpModel>::getKernelType(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 68), v3))
  {
    if ((*(a2 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v4 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (!v5)
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = v6;
  v10 = v5;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v11, &v8);
  *&v8 = v4;
  *(&v8 + 1) = v3;
  v12 = v11;
  return mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v2, &v8, &v12);
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::ODIXDialect(mlir::ODIE::Compiler::ODIX::ODIXDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "odix";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286EA2250;
  mlir::MLIRContext::loadDialect<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2, a2, a3, a4);
  mlir::ODIE::Compiler::ODIX::ODIXDialect::initialize(this);
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::~ODIXDialect(mlir::ODIE::Compiler::ODIX::ODIXDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  mlir::MLIRContext::getOrLoadDialect(*v2, "builtin", 7uLL, v3);
  v7 = 0;
  v4 = mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v7, 0);
  v5 = v7;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::ODIX::ODIXDialect::parseType(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v25, a2, 0);
  __p.n128_u64[0] = "reg";
  __p.n128_u64[1] = 3;
  if (v28[2])
  {
    goto LABEL_2;
  }

  v6 = v27;
  if (v27 == 3)
  {
    if (*v26 == 25970 && *(v26 + 2) == 103)
    {
      v12 = *(**(*(*a2 + 32))(a2) + 384);
      v31 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v31);
LABEL_47:
      v28[0] = v5 != 0;
      *&v28[1] = 257;
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  if (v27)
  {
LABEL_14:
    v29 = "type";
    v30 = 4;
    goto LABEL_15;
  }

  (*(*v25[0] + 648))(v25[0], &__p, 1);
  v29 = "type";
  v30 = 4;
  if (v28[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_18;
  }

  v6 = v27;
  if (v27)
  {
LABEL_15:
    if (v6 != 4 || *v26 != 1701869940)
    {
      goto LABEL_17;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_43;
    }

    mlir::FieldParser<std::string,std::string>::parse(a2, &__p);
    v13 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v34, &__p);
    if (v39 == 1 && v38 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    v14 = *a2;
    if (v36)
    {
      if (((*(v14 + 104))(a2, v13) & 1) == 0)
      {
        goto LABEL_43;
      }

      v15 = mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(a2);
      v16 = *a2;
      if (v17)
      {
        v18 = v15;
        if ((*(v16 + 168))(a2))
        {
          v19 = *(*(*a2 + 32))(a2);
          v21 = v35;
          v22 = v34;
          if (v35 < 0)
          {
            v22 = v34[0];
          }

          if (v35 < 0)
          {
            v21 = v34[1];
          }

          __p.n128_u64[0] = v22;
          __p.n128_u64[1] = v21;
          v31 = v18;
          v5 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v19, &__p, &v31, v20);
          goto LABEL_44;
        }

LABEL_43:
        v5 = 0;
LABEL_44:
        if (v36 == 1 && v35 < 0)
        {
          operator delete(v34[0]);
        }

        goto LABEL_47;
      }

      v23 = (*(v16 + 40))(a2);
    }

    else
    {
      v23 = (*(v14 + 40))(a2, v13);
    }

    v31 = v24;
    v33 = 259;
    (*(*a2 + 24))(&__p, a2, v23, &v31);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    goto LABEL_43;
  }

  (*(*v25[0] + 648))(v25[0], &v29, 1);
  if (v28[2])
  {
    goto LABEL_2;
  }

  v6 = v27;
LABEL_17:
  v5 = 0;
  v7 = v26;
  *v28 = 0;
  v28[2] = 1;
LABEL_18:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v25) & 0x100) == 0)
  {
    *v28 = 257;
    (*(*a2 + 24))(&__p, a2, v4, v25);
    if (__p.n128_u64[0])
    {
      if (__p.n128_u64[0])
      {
        v33 = 261;
        v31 = v7;
        v32 = v6;
        mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v31);
        if (__p.n128_u64[0])
        {
          if (__p.n128_u64[0])
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v33 = 261;
            v31 = v9;
            v32 = v10;
            mlir::Diagnostic::operator<<(&__p.n128_i64[1], &v31);
            if (__p.n128_u64[0])
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    return 0;
  }

  return v5;
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::printType(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 2)
    {
      *(v9 + 2) = 103;
      *v9 = 25970;
      v12 = *(v8 + 4) + 3;
LABEL_23:
      *(v8 + 4) = v12;
      return;
    }

    v10 = "reg";
    v11 = 3;
  }

  else
  {
    if (v4 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id)
    {
      return;
    }

    v6 = (*(*a3 + 16))(a3);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 3uLL)
    {
      *v7 = 1701869940;
      *(v6 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v6, "type", 4uLL);
    }

    v13 = (*(*a3 + 16))(a3);
    v14 = *(v13 + 4);
    if (*(v13 + 3) == v14)
    {
      llvm::raw_ostream::write(v13, "<", 1uLL);
    }

    else
    {
      *v14 = 60;
      ++*(v13 + 4);
    }

    (*(*a3 + 80))(a3, a2[1], a2[2]);
    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }

    v17 = (*(*a3 + 16))(a3);
    v18 = *(v17 + 4);
    if (*(v17 + 3) == v18)
    {
      llvm::raw_ostream::write(v17, ":", 1uLL);
    }

    else
    {
      *v18 = 58;
      ++*(v17 + 4);
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }

    (*(*a3 + 40))(a3, a2[3]);
    v8 = (*(*a3 + 16))(a3);
    v21 = *(v8 + 4);
    if (*(v8 + 3) != v21)
    {
      *v21 = 62;
      v12 = *(v8 + 4) + 1;
      goto LABEL_23;
    }

    v10 = ">";
    v11 = 1;
  }

  llvm::raw_ostream::write(v8, v10, v11);
}

uint64_t mlir::ODIE::Compiler::ODIX::EnumAttr::get(uint64_t *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id;
  v6[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail15EnumAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_8EnumAttrEJxNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v10[1] = v6;
  v8 = a2;
  v9 = a3;
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = a2;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr>(&v11, 0, v12, &v12[3] + 8, &v9);
  v7 = &v8;
  v11 = &v8;
  *&v12[0] = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,long long,mlir::StringAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage *)>,mlir::TypeID,long long,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,long long,mlir::StringAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage *)>,mlir::TypeID,long long,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
}

uint64_t mlir::ODIE::Compiler::ODIX::DataRefAttr::get(mlir::ODIE::Compiler::ODIX::DataRefAttr *this, mlir::MLIRContext *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id;
  v7[1] = this;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail18DataRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_11DataRefAttrEJiixEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS7_;
  v10[1] = v7;
  v9[0] = a2 | (a3 << 32);
  v9[1] = a4;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v11 = __PAIR64__(a3, a2);
  v12 = a4;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v11, 0, v13, v14);
  v8 = v9;
  v11 = v9;
  v12 = v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,int,int,long long>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage *)>,mlir::TypeID,int,int,long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,int,int,long long>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage *)>,mlir::TypeID,int,int,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolAttr::get(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id;
  v12[1] = a1;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail17SymbolAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10SymbolAttrEJNS4_10SymbolKindENS1_10StringAttrENS1_12FunctionTypeENS1_9ArrayAttrENS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_;
  v14[1] = v12;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  memset(v20, 0, sizeof(v20));
  v21 = 0xFF51AFD7ED558CCDLL;
  v17 = a2;
  v18 = ((a3 >> 4) ^ (a3 >> 9));
  v19 = (a4 >> 4) ^ (a4 >> 9);
  v15 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v17, &v15, v20, &v20[2] + 8, (a5 >> 4) ^ (a5 >> 9));
  v16 = v15;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v17, &v16, v8, &v20[2] + 8, (v6 >> 4) ^ (v6 >> 9));
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v17, v16, v9, &v20[2] + 8);
  v16 = v13;
  v17 = v13;
  v18 = v14;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v7 + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

uint64_t mlir::ODIE::Compiler::ODIX::SymbolAttr::parse(mlir::AsmParser *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v40 = 0;
  v41 = 0;
  v5 = 0;
  v6 = 0;
  v42 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v43 = 0;
    v44 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v43))
    {
      v22 = (*(*a1 + 40))(a1);
      v57 = "expected a parameter name in struct";
      v59 = 259;
      (*(*a1 + 24))(v50, a1, v22, &v57);
      v23 = v50;
      goto LABEL_84;
    }

    v9 = v43;
    v10 = v44;
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      return 0;
    }

    if (!(v7 & 1 | (v10 != 4)) && *v9 == 1684957547)
    {
      v14 = (*(*a1 + 40))(a1);
      v45 = 0;
      v46 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v45))
      {
        goto LABEL_72;
      }

      if (v46 == 6)
      {
        if (*v45 != 1852990827 || *(v45 + 2) != 27749)
        {
LABEL_62:
          v49 = 257;
          (*(*a1 + 24))(&v57, a1, v14, v48);
          if (v57)
          {
            mlir::Diagnostic::operator<<<10ul>(v58, "expected ");
            if (v57)
            {
              mlir::Diagnostic::operator<<<39ul>(v58, "mlir::ODIE::Compiler::ODIX::SymbolKind");
              if (v57)
              {
                mlir::Diagnostic::operator<<<16ul>(v58, " to be one of: ");
                if (v57)
                {
                  mlir::Diagnostic::operator<<<9ul>(v58, "function");
                  if (v57)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v58, ", ");
                    if (v57)
                    {
                      mlir::Diagnostic::operator<<<7ul>(v58, "kernel");
                      if (v57)
                      {
                        mlir::Diagnostic::operator<<<3ul>(v58, ", ");
                        if (v57)
                        {
                          mlir::Diagnostic::operator<<<9ul>(v58, "delegate");
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
LABEL_72:
          v32 = (*(*a1 + 40))(a1);
          v59 = 259;
          (*(*a1 + 24))(v55, a1, v32, &v57);
          v23 = v55;
LABEL_84:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
          return 0;
        }

        v15 = 1;
      }

      else
      {
        if (v46 != 8)
        {
          goto LABEL_62;
        }

        if (*v45 == 0x6E6F6974636E7566)
        {
          v40 = 0;
          goto LABEL_44;
        }

        if (*v45 != 0x65746167656C6564)
        {
          goto LABEL_62;
        }

        v15 = 2;
      }

      v40 = v15;
LABEL_44:
      v7 = 1;
      continue;
    }

    if (!(v2 & 1 | (v10 != 4)) && *v9 == 1701667182)
    {
      v19 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
      if ((v20 & 1) == 0)
      {
        v37 = (*(*a1 + 40))(a1);
        v59 = 259;
        (*(*a1 + 24))(v54, a1, v37, &v57);
        v23 = v54;
        goto LABEL_84;
      }

      v3 = v19;
      v2 = 1;
    }

    else if (v4 & 1 | (v10 != 4))
    {
      if (v5 & 1 | (v10 != 14))
      {
        if (v42 & 1 | (v10 != 10))
        {
          goto LABEL_76;
        }

        if (*v9 != 0x7475626972747461 || *(v9 + 8) != 29541)
        {
          v10 = 10;
LABEL_76:
          v35 = (*(*a1 + 40))(a1);
          v45 = "duplicate or unknown struct parameter name: ";
          v47 = 259;
          (*(*a1 + 24))(&v57, a1, v35, &v45);
          if (v57)
          {
            v49 = 261;
            v48[0] = v9;
            v48[1] = v10;
            mlir::Diagnostic::operator<<(v58, v48);
          }

LABEL_83:
          v23 = &v57;
          goto LABEL_84;
        }

        v12 = mlir::FieldParser<mlir::DictionaryAttr,mlir::DictionaryAttr>::parse(a1);
        if ((v13 & 1) == 0)
        {
          v36 = (*(*a1 + 40))(a1);
          v59 = 259;
          (*(*a1 + 24))(v51, a1, v36, &v57);
          v23 = v51;
          goto LABEL_84;
        }

        v8 = v12;
        v42 = 1;
      }

      else
      {
        if (*v9 != 0x695F74757074756FLL || *(v9 + 6) != 0x73746E65746E695FLL)
        {
          v10 = 14;
          goto LABEL_76;
        }

        v17 = mlir::FieldParser<mlir::ArrayAttr,mlir::ArrayAttr>::parse(a1);
        if ((v18 & 1) == 0)
        {
          v34 = (*(*a1 + 40))(a1);
          v59 = 259;
          (*(*a1 + 24))(v52, a1, v34, &v57);
          v23 = v52;
          goto LABEL_84;
        }

        v6 = v17;
        v5 = 1;
      }
    }

    else
    {
      if (*v9 != 1701869940)
      {
        v10 = 4;
        goto LABEL_76;
      }

      v57 = 0;
      if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v57))
      {
        v31 = (*(*a1 + 40))(a1);
        v59 = 259;
        (*(*a1 + 24))(v53, a1, v31, &v57);
        v23 = v53;
        goto LABEL_84;
      }

      v41 = v57;
      v4 = 1;
    }
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if ((v7 & 1) == 0)
  {
    v29 = (*(*a1 + 40))(a1);
    v55[0] = "struct is missing required parameter: ";
    v56 = 259;
    (*(*a1 + 24))(&v57, a1, v29, v55);
    if (!v57)
    {
      goto LABEL_83;
    }

    v30 = "kind";
LABEL_82:
    mlir::Diagnostic::operator<<<5ul>(v58, v30);
    goto LABEL_83;
  }

  if ((v2 & 1) == 0)
  {
    v33 = (*(*a1 + 40))(a1);
    v55[0] = "struct is missing required parameter: ";
    v56 = 259;
    (*(*a1 + 24))(&v57, a1, v33, v55);
    if (!v57)
    {
      goto LABEL_83;
    }

    v30 = "name";
    goto LABEL_82;
  }

  if ((v4 & 1) == 0)
  {
    v38 = (*(*a1 + 40))(a1);
    v55[0] = "struct is missing required parameter: ";
    v56 = 259;
    (*(*a1 + 24))(&v57, a1, v38, v55);
    if (!v57)
    {
      goto LABEL_83;
    }

    v30 = "type";
    goto LABEL_82;
  }

  if ((v5 & 1) == 0)
  {
    v39 = (*(*a1 + 40))(a1);
    v55[0] = "struct is missing required parameter: ";
    v56 = 259;
    (*(*a1 + 24))(&v57, a1, v39, v55);
    if (v57)
    {
      mlir::Diagnostic::operator<<<15ul>(v58, "output_intents");
    }

    goto LABEL_83;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v24 = *(*(*a1 + 32))(a1);
  v25 = (*(*a1 + 32))(a1);
  v26 = mlir::DictionaryAttr::get(*v25, 0, 0);
  if (v42)
  {
    v27 = v8;
  }

  else
  {
    v27 = v26;
  }

  return mlir::ODIE::Compiler::ODIX::SymbolAttr::get(v24, v40, v3, v41, v6, v27);
}

llvm::raw_ostream *mlir::ODIE::Compiler::ODIX::SymbolAttr::print(mlir::ODIE::Compiler::ODIX::SymbolAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 6uLL)
  {
    *(v7 + 3) = 540876900;
    *v7 = 1684957547;
    *(v6 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v6, "kind = ", 7uLL);
  }

  v8 = *(*this + 8);
  if (v8 > 2)
  {
    v9 = 0;
    v10 = &byte_25D0A27DF;
  }

  else
  {
    v9 = qword_25D0A0318[v8];
    v10 = (&off_2799BECF8)[v8];
  }

  v11 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v11, v10, v9);
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 8236;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, ", ", 2uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 6uLL)
  {
    *(v15 + 3) = 540876901;
    *v15 = 1701667182;
    *(v14 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v14, "name = ", 7uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 16));
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) - v19 > 6uLL)
  {
    *(v19 + 3) = 540876901;
    *v19 = 1701869940;
    *(v18 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v18, "type = ", 7uLL);
  }

  (*(*a2 + 32))(a2, *(*this + 24));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8236;
    *(v20 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ", ", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 0x10)
  {
    *(v23 + 16) = 32;
    *v23 = *"output_intents = ";
    *(v22 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v22, "output_intents = ", 0x11uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 32));
  v24 = *(*this + 40);
  if (v24 != mlir::DictionaryAttr::get(*(***this + 32), 0, 0))
  {
    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) - v26 > 1uLL)
    {
      *v26 = 8236;
      *(v25 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v25, ", ", 2uLL);
    }

    v27 = (*(*a2 + 16))(a2);
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 0xCuLL)
    {
      qmemcpy(v28, "attributes = ", 13);
      *(v27 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v27, "attributes = ", 0xDuLL);
    }

    v29 = *(*this + 40);
    if (v29 != mlir::DictionaryAttr::get(*(***this + 32), 0, 0))
    {
      (*(*a2 + 40))(a2, *(*this + 40));
    }
  }

  result = (*(*a2 + 16))(a2);
  v31 = *(result + 4);
  if (*(result + 3) == v31)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v31 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::ODIXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v73[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v50, a2, 0);
  v56 = "enum";
  v57 = 4;
  if (v53[2])
  {
    goto LABEL_2;
  }

  v6 = v52;
  if (v52 == 4)
  {
    if (*v51 == 1836412517)
    {
      (*(*a2 + 32))(a2);
      (*(*a2 + 40))(a2);
      if (((*(*a2 + 152))(a2) & 1) == 0)
      {
LABEL_94:
        v5 = 0;
LABEL_95:
        v12 = v5 == 0;
        goto LABEL_96;
      }

      v58 = 0;
      v59 = 0;
      if (mlir::AsmParser::parseKeyword(a2, &v58))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v19 = v58;
          v18 = v59;
          if (((*(*a2 + 136))(a2) & 1) == 0)
          {
            goto LABEL_94;
          }

          if (v15 & 1 | (v18 != 5))
          {
            if (v14 & 1 | (v18 != 9))
            {
              goto LABEL_106;
            }

            if (*v19 != 0x6D614E65756C6176 || v19[8] != 101)
            {
              v18 = 9;
LABEL_106:
              v42 = (*(*a2 + 40))(a2);
              v61[0] = "duplicate or unknown struct parameter name: ";
              v62 = 259;
              (*(*a2 + 24))(&v66, a2, v42, v61);
              if (v66)
              {
                v65 = 261;
                v63 = v19;
                v64[0] = v18;
                mlir::Diagnostic::operator<<(&v67, &v63);
              }

LABEL_115:
              v36 = &v66;
              goto LABEL_93;
            }

            v21 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a2);
            if ((v22 & 1) == 0)
            {
              v43 = (*(*a2 + 40))(a2);
              v68 = 259;
              (*(*a2 + 24))(&v69, a2, v43, &v66);
LABEL_109:
              v36 = &v69;
              goto LABEL_93;
            }

            v16 = v21;
            v14 = 1;
          }

          else
          {
            if (*v19 != 1970037110 || v19[4] != 101)
            {
              v18 = 5;
              goto LABEL_106;
            }

            v66 = 0;
            if ((mlir::AsmParser::parseInteger<long long>(a2, &v66) & 1) == 0)
            {
              v41 = (*(*a2 + 40))(a2);
              v68 = 259;
              (*(*a2 + 24))(&v72, a2, v41, &v66);
              goto LABEL_92;
            }

            v13 = v66;
            v15 = 1;
          }

          if (v17)
          {
            break;
          }

          if (((*(*a2 + 120))(a2) & 1) == 0)
          {
            goto LABEL_94;
          }

          v58 = 0;
          v59 = 0;
          v17 = 1;
          if (!mlir::AsmParser::parseKeyword(a2, &v58))
          {
            goto LABEL_91;
          }
        }

        if (((*(*a2 + 168))(a2) & 1) == 0)
        {
          goto LABEL_94;
        }

        v38 = (*(*a2 + 32))(a2);
        v39 = mlir::ODIE::Compiler::ODIX::EnumAttr::get(*v38, v13, v16);
LABEL_104:
        v5 = v39;
        goto LABEL_95;
      }

LABEL_91:
      v35 = (*(*a2 + 40))(a2);
      v69 = "expected a parameter name in struct";
      v71 = 259;
      (*(*a2 + 24))(&v72, a2, v35, &v69);
LABEL_92:
      v36 = &v72;
LABEL_93:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
      goto LABEL_94;
    }

    goto LABEL_22;
  }

  if (v52)
  {
LABEL_22:
    v54 = "data_ref";
    v55 = 8;
LABEL_23:
    if (v6 != 8 || *v51 != 0x6665725F61746164)
    {
      v72 = "symbol";
      v73[0] = 6;
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    (*(*a2 + 32))(a2);
    (*(*a2 + 40))(a2);
    if (((*(*a2 + 152))(a2) & 1) == 0)
    {
      goto LABEL_94;
    }

    v56 = 0;
    v57 = 0;
    if (mlir::AsmParser::parseKeyword(a2, &v56))
    {
      v24 = 0;
      v25 = 0;
      v48 = 0;
      v26 = 0;
      v27 = 0;
      v49 = 0;
      v28 = 3;
      while (1)
      {
        v30 = v56;
        v29 = v57;
        if (((*(*a2 + 136))(a2) & 1) == 0)
        {
          goto LABEL_94;
        }

        if (v27 & 1 | (v29 != 7))
        {
          v31 = v29 != 6;
          if (!(v24 & 1 | v31))
          {
            if (*v30 == 1868785010 && *(v30 + 2) == 25714)
            {
              LODWORD(v63) = 0;
              if ((mlir::AsmParser::parseInteger<int>(a2, &v63) & 1) == 0)
              {
                v47 = (*(*a2 + 40))(a2);
                v65 = 259;
                (*(*a2 + 24))(&v69, a2, v47, &v63);
                goto LABEL_109;
              }

              v48 = v63;
              v24 = 1;
              goto LABEL_83;
            }

            v31 = 0;
          }

          if ((v26 | v31))
          {
            goto LABEL_110;
          }

          if (*v30 != 1936090735 || *(v30 + 2) != 29797)
          {
            goto LABEL_110;
          }

          v63 = 0;
          if ((mlir::AsmParser::parseInteger<long long>(a2, &v63) & 1) == 0)
          {
            v46 = (*(*a2 + 40))(a2);
            v65 = 259;
            (*(*a2 + 24))(&v66, a2, v46, &v63);
            goto LABEL_115;
          }

          v49 = v63;
          v26 = 1;
        }

        else
        {
          if (*v30 != 1835492723 || *(v30 + 3) != 1953391981)
          {
            v29 = 7;
LABEL_110:
            v44 = (*(*a2 + 40))(a2);
            v58 = "duplicate or unknown struct parameter name: ";
            v60 = 259;
            (*(*a2 + 24))(&v63, a2, v44, &v58);
            if (v63)
            {
              v62 = 261;
              v61[0] = v30;
              v61[1] = v29;
              mlir::Diagnostic::operator<<(v64, v61);
            }

            v36 = &v63;
            goto LABEL_93;
          }

          LODWORD(v63) = 0;
          if ((mlir::AsmParser::parseInteger<int>(a2, &v63) & 1) == 0)
          {
            v45 = (*(*a2 + 40))(a2);
            v65 = 259;
            (*(*a2 + 24))(&v72, a2, v45, &v63);
            goto LABEL_92;
          }

          v25 = v63;
          v27 = 1;
        }

LABEL_83:
        if (!--v28)
        {
          if (((*(*a2 + 168))(a2) & 1) == 0)
          {
            goto LABEL_94;
          }

          v40 = (*(*a2 + 32))(a2);
          v39 = mlir::ODIE::Compiler::ODIX::DataRefAttr::get(*v40, v25, v48, v49);
          goto LABEL_104;
        }

        if (((*(*a2 + 120))(a2) & 1) == 0)
        {
          goto LABEL_94;
        }

        v56 = 0;
        v57 = 0;
        if (!mlir::AsmParser::parseKeyword(a2, &v56))
        {
          goto LABEL_91;
        }
      }
    }

    goto LABEL_91;
  }

  (*(*v50[0] + 648))(v50[0], &v56, 1);
  v54 = "data_ref";
  v55 = 8;
  if (v53[2])
  {
LABEL_2:
    v5 = 0;
LABEL_3:
    v6 = 0;
    v7 = 0;
    goto LABEL_4;
  }

  v6 = v52;
  if (v52)
  {
    goto LABEL_23;
  }

  (*(*v50[0] + 648))(v50[0], &v54, 1);
  v72 = "symbol";
  v73[0] = 6;
  if (v53[2])
  {
    goto LABEL_2;
  }

  v6 = v52;
  if (v52)
  {
LABEL_26:
    if (v6 != 6)
    {
      goto LABEL_90;
    }

    if (*v51 != 1651341683 || *(v51 + 4) != 27759)
    {
      goto LABEL_90;
    }

    v5 = mlir::ODIE::Compiler::ODIX::SymbolAttr::parse(a2);
    v12 = v5 == 0;
LABEL_96:
    v37 = !v12;
    v53[0] = v37;
    *&v53[1] = 257;
    goto LABEL_3;
  }

LABEL_19:
  (*(*v50[0] + 648))(v50[0], &v72, 1);
  if (v53[2])
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_4;
  }

  v6 = v52;
LABEL_90:
  v5 = 0;
  v7 = v51;
  *v53 = 0;
  v53[2] = 1;
LABEL_4:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v50) & 0x100) == 0)
  {
    v68 = 257;
    (*(*a2 + 24))(&v72, a2, v4, &v66);
    if (v72)
    {
      if (v72)
      {
        v71 = 261;
        v69 = v7;
        v70 = v6;
        mlir::Diagnostic::operator<<(v73, &v69);
        if (v72)
        {
          if (v72)
          {
            v8 = *(a1 + 8);
            v9 = *(a1 + 16);
            v71 = 261;
            v69 = v8;
            v70 = v9;
            mlir::Diagnostic::operator<<(v73, &v69);
            if (v72)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
    return 0;
  }

  return v5;
}

void mlir::ODIE::Compiler::ODIX::ODIXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id)
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (*(v8 + 3) - v9 > 3uLL)
    {
      *v9 = 1836412517;
      *(v8 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v8, "enum", 4uLL);
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, "<", 1uLL);
    }

    else
    {
      *v13 = 60;
      ++*(v12 + 4);
    }

    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 7uLL)
    {
      *v15 = 0x203D2065756C6176;
      *(v14 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "value = ", 8uLL);
    }

    v16 = *(a2 + 8);
    v17 = (*(*a3 + 16))(a3);
    llvm::write_integer(v17, v16, 0, 0);
    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if ((*(v20 + 3) - v21) > 0xB)
    {
      *(v21 + 8) = 540876901;
      *v21 = *"valueName = ";
      *(v20 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v20, "valueName = ", 0xCuLL);
    }

    (*(*a3 + 40))(a3, *(a2 + 16));
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id)
      {
        v42 = a2;
        v6 = (*(*a3 + 16))(a3);
        v7 = *(v6 + 4);
        if ((*(v6 + 3) - v7) > 5)
        {
          *(v7 + 4) = 27759;
          *v7 = 1651341683;
          *(v6 + 4) += 6;
        }

        else
        {
          llvm::raw_ostream::write(v6, "symbol", 6uLL);
        }

        mlir::ODIE::Compiler::ODIX::SymbolAttr::print(&v42, a3);
      }

      return;
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 7uLL)
    {
      *v11 = 0x6665725F61746164;
      *(v10 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "data_ref", 8uLL);
    }

    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (*(v22 + 3) == v23)
    {
      llvm::raw_ostream::write(v22, "<", 1uLL);
    }

    else
    {
      *v23 = 60;
      ++*(v22 + 4);
    }

    v24 = (*(*a3 + 16))(a3);
    v25 = *(v24 + 4);
    if ((*(v24 + 3) - v25) > 9)
    {
      *(v25 + 8) = 8253;
      *v25 = *"segment = ";
      *(v24 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v24, "segment = ", 0xAuLL);
    }

    v26 = *(a2 + 8);
    v27 = (*(*a3 + 16))(a3);
    llvm::write_integer(v27, v26, 0, 0);
    v28 = (*(*a3 + 16))(a3);
    v29 = *(v28 + 4);
    if (*(v28 + 3) - v29 > 1uLL)
    {
      *v29 = 8236;
      *(v28 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v28, ", ", 2uLL);
    }

    v30 = (*(*a3 + 16))(a3);
    v31 = *(v30 + 4);
    if ((*(v30 + 3) - v31) > 8)
    {
      *(v31 + 8) = 32;
      *v31 = *"record = ";
      *(v30 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v30, "record = ", 9uLL);
    }

    v32 = *(a2 + 12);
    v33 = (*(*a3 + 16))(a3);
    llvm::write_integer(v33, v32, 0, 0);
    v34 = (*(*a3 + 16))(a3);
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 > 1uLL)
    {
      *v35 = 8236;
      *(v34 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v34, ", ", 2uLL);
    }

    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if ((*(v36 + 3) - v37) > 8)
    {
      *(v37 + 8) = 32;
      *v37 = *"offset = ";
      *(v36 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v36, "offset = ", 9uLL);
    }

    v38 = *(a2 + 16);
    v39 = (*(*a3 + 16))(a3);
    llvm::write_integer(v39, v38, 0, 0);
  }

  v40 = (*(*a3 + 16))(a3);
  v41 = *(v40 + 4);
  if (*(v40 + 3) == v41)
  {

    llvm::raw_ostream::write(v40, ">", 1uLL);
  }

  else
  {
    *v41 = 62;
    ++*(v40 + 4);
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.async_invoke_region", 0x18, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA22D0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC24AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24AB0))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>>();
    _MergedGlobals_60 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC24AB0);
  }

  return _MergedGlobals_60;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC24AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24AC8))
  {
    qword_27FC24AB8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>>();
    unk_27FC24AC0 = v1;
    __cxa_guard_release(&qword_27FC24AC8);
  }

  return qword_27FC24AB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<Empty>]";
  v6 = 137;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v17 = 257;
  mlir::Operation::emitOpError(&v19, a1, v16);
  if (v19)
  {
    mlir::Diagnostic::operator<<<19ul>(v20, "expects parent op ");
  }

  v15 = "'";
  v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v19, &v15);
  v18[0] = "odix.region";
  v18[1] = 11;
  v14[0] = v18;
  v14[1] = 1;
  v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v14);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
  }

  v11 = *(v10 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  if ((v11 & 1) == 0)
  {
LABEL_15:
    v19 = a1;
    v12 = mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::verifyInvariantsImpl(&v19);
  }

  else
  {
LABEL_13:
    v12 = 0;
  }

  return v12 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::BranchOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.branch", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::BranchOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2398;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 4 && **(a3 + 16) == *"dest")
  {
    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = a4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::BranchOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::BranchOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::BranchOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v18 = 257;
    mlir::Operation::emitOpError(&v20, a1, v17);
    if (v20)
    {
      mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
    }

    v16 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
    v19[0] = "odix.region";
    v19[1] = 11;
    v15[0] = v19;
    v15[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v15);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    if (v12 == 1)
    {
      goto LABEL_16;
    }
  }

  v20 = a1;
  if (mlir::ODIE::Compiler::ODIX::BranchOp::verifyInvariantsImpl(&v20))
  {
    v20 = a1;
    v13 = mlir::ODIE::Compiler::ODIX::BranchOp::verify(&v20);
  }

  else
  {
LABEL_16:
    v13 = 0;
  }

  return v13 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.call", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::CallOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2460;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::CallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::ODIX::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::resolveCallable;
  v2[6] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getArgAttrsAttr;
  v2[7] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getResAttrsAttr;
  v2[8] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::setArgAttrsAttr;
  v2[9] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::setResAttrsAttr;
  v2[10] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::removeArgAttrsAttr;
  v2[11] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "identifier", 0xAuLL);
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      result &= ~4uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    return *(a2 + 72);
  }

  else
  {
    return 0;
  }
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::CallOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v18 = 257;
    mlir::Operation::emitOpError(&v20, a1, v17);
    if (v20)
    {
      mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
    }

    v16 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
    v19[0] = "odix.region";
    v19[1] = 11;
    v15[0] = v19;
    v15[1] = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v15);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    if (v11)
    {
      return 0;
    }
  }

  v12 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v12))
  {
    v20 = a1;
    return mlir::ODIE::Compiler::ODIX::CallOp::verifyInvariantsImpl(&v20);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.data_record", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRecordOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2528;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataRecordOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[7] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC24AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24AD8))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl>(void)::Empty>>();
    qword_27FC24AD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC24AD8);
  }

  v10[4] = qword_27FC24AD0;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[6] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC24AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24AF0))
  {
    qword_27FC24AE0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl>(void)::Empty>>();
    *algn_27FC24AE8 = v1;
    __cxa_guard_release(&qword_27FC24AF0);
  }

  return qword_27FC24AE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl<Empty>]";
  v6 = 142;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::DataRecordOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::DataRecordOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v18 = 257;
  mlir::Operation::emitOpError(&v20, a1, v17);
  if (v20)
  {
    mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
  }

  v16 = "'";
  v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
  v19[0] = "odix.data_segment";
  v19[1] = 17;
  v15[0] = v19;
  v15[1] = 1;
  v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v15);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v20 = a1;
    return mlir::ODIE::Compiler::ODIX::DataRecordOp::verifyInvariantsImpl(&v20);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.data_segment", 0x11, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataSegmentOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA25F0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::getRegionKind;
  v2[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::DataSegmentOp>::hasSSADominance;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::DataSegmentOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::DataSegmentOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v19[26] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6))
  {
    v7 = *(a1 + 11);
    if ((v7 & 0x7FFFFF) != 0)
    {
      v8 = 0;
      for (i = (((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10)); ; i += 3)
      {
        if (i != *i)
        {
          v10 = i[1];
          if (i == v10 || i != *(v10 + 8))
          {
            break;
          }
        }

        if ((v7 & 0x7FFFFF) == ++v8)
        {
          return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
        }
      }

      v18 = v8;
      v16 = "expects region #";
      v17 = 259;
      mlir::Operation::emitOpError(v19, a1, &v16);
      v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v19, &v18);
      v12 = v11;
      if (*v11)
      {
        mlir::Diagnostic::operator<<<23ul>((v11 + 1), " to have 0 or 1 blocks");
      }

      v13 = *(v12 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      if (v13)
      {
        return 0;
      }

      LODWORD(v7) = *(a1 + 11);
    }

    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
  }

  return 0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::ODIX::FunctionOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.function", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA26B8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::ODIX::FunctionOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::ODIX::FunctionOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::getRegionKind;
  v2[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::FunctionOp>::hasSSADominance;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::ODIX::FunctionOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::FunctionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolUserOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v19[26] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 11);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) != 0)
  {
    v8 = 0;
    v9 = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    while (1)
    {
      if (v9 != *v9)
      {
        v10 = v9[1];
        if (v9 == v10 || v9 != *(v10 + 8))
        {
          break;
        }
      }

      ++v8;
      v9 += 3;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }

    v18 = v8;
    v16 = "expects region #";
    v17 = 259;
    mlir::Operation::emitOpError(v19, a1, &v16);
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v19, &v18);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<23ul>((v11 + 1), " to have 0 or 1 blocks");
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    if (v13 == 1)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  v19[0] = a1;
  if (!mlir::ODIE::Compiler::ODIX::FunctionOp::verifyInvariantsImpl(v19))
  {
LABEL_17:
    v14 = 0;
    return v14 & 1;
  }

  v19[0] = a1;
  v14 = mlir::ODIE::Compiler::ODIX::FunctionOp::verify(v19);
  return v14 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.get_context", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::GetContextOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2780;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::GetContextOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::GetContextOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::GetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v17 = 257;
  mlir::Operation::emitOpError(&v19, a1, v16);
  if (v19)
  {
    mlir::Diagnostic::operator<<<19ul>(v20, "expects parent op ");
  }

  v15 = "'";
  v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v19, &v15);
  v18[0] = "odix.region";
  v18[1] = 11;
  v14[0] = v18;
  v14[1] = 1;
  v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v14);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
  }

  v11 = *(v10 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v19 = a1;
    return mlir::ODIE::Compiler::ODIX::GetContextOp::verifyInvariantsImpl(&v19);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.header", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::HeaderOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2848;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::getRegionKind;
  v2[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::HeaderOp>::hasSSADominance;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::HeaderOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::HeaderOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v18[26] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v6 = *(a1 + 11);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = 0;
      for (i = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10)); ; i += 3)
      {
        if (i != *i)
        {
          v9 = i[1];
          if (i == v9 || i != *(v9 + 8))
          {
            break;
          }
        }

        if ((v6 & 0x7FFFFF) == ++v7)
        {
          return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
        }
      }

      v17 = v7;
      v15 = "expects region #";
      v16 = 259;
      mlir::Operation::emitOpError(v18, a1, &v15);
      v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v18, &v17);
      v11 = v10;
      if (*v10)
      {
        mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
      }

      v12 = *(v11 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
      if (v12)
      {
        return 0;
      }

      LODWORD(v6) = *(a1 + 11);
    }

    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
  }

  return 0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.invoke_region", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2910;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::InvokeRegionOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::InvokeRegionOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::InvokeRegionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v18 = 257;
  mlir::Operation::emitOpError(&v20, a1, v17);
  if (v20)
  {
    mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
  }

  v16 = "'";
  v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
  v19[0] = "odix.region";
  v19[1] = 11;
  v15[0] = v19;
  v15[1] = 1;
  v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v15);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v20 = a1;
    return mlir::ODIE::Compiler::ODIX::InvokeRegionOp::verifyInvariantsImpl(&v20);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::JumpOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.jump", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::JumpOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA29D8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 4 && **(a3 + 16) == *"dest")
  {
    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = a4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::JumpOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::JumpOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::JumpOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::JumpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v18 = 257;
    mlir::Operation::emitOpError(&v20, a1, v17);
    if (v20)
    {
      mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
    }

    v16 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
    v19[0] = "odix.region";
    v19[1] = 11;
    v15[0] = v19;
    v15[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v15);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    if (v12 == 1)
    {
      goto LABEL_16;
    }
  }

  v20 = a1;
  if (mlir::ODIE::Compiler::ODIX::JumpOp::verifyInvariantsImpl(&v20))
  {
    v20 = a1;
    v13 = mlir::ODIE::Compiler::ODIX::JumpOp::verify(&v20);
  }

  else
  {
LABEL_16:
    v13 = 0;
  }

  return v13 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LabelOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.label", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LabelOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2AA0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LabelOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LabelOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::LabelOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::LabelOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v18 = 257;
  mlir::Operation::emitOpError(&v20, a1, v17);
  if (v20)
  {
    mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
  }

  v16 = "'";
  v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v20, &v16);
  v19[0] = "odix.region";
  v19[1] = 11;
  v15[0] = v19;
  v15[1] = 1;
  v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v15);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v20 = a1;
    return mlir::ODIE::Compiler::ODIX::LabelOp::verifyInvariantsImpl(&v20);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.load_ds", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadDsOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2B68;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadDsOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC24B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B00))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>>();
    qword_27FC24AF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC24B00);
  }

  return qword_27FC24AF8;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC24B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B18))
  {
    qword_27FC24B08 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>>();
    unk_27FC24B10 = v1;
    __cxa_guard_release(&qword_27FC24B18);
  }

  return qword_27FC24B08;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SameOperandsShape<Empty>]";
  v6 = 101;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::LoadDsOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::LoadDsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v20 = 257;
    mlir::Operation::emitOpError(&v22, a1, v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<19ul>(v23, "expects parent op ");
    }

    v18 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v22, &v18);
    v21[0] = "odix.region";
    v21[1] = 11;
    v17[0] = v21;
    v17[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v17);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    if (v12)
    {
      goto LABEL_17;
    }
  }

  v22 = a1;
  if (mlir::ODIE::Compiler::ODIX::LoadDsOp::verifyInvariantsImpl(&v22) && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v13) & 1) != 0)
  {
    v15 = mlir::OpTrait::impl::verifySameOperandsShape(a1, v14);
  }

  else
  {
LABEL_17:
    v15 = 0;
  }

  return v15 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.load_imm", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::LoadImmOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2C30;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == *"imm" && v6 == str_85_2[2])
    {
      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = a4;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::LoadImmOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::LoadImmOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::LoadImmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v23[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 2);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v20 = 257;
    mlir::Operation::emitOpError(&v22, a1, v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<19ul>(v23, "expects parent op ");
    }

    v18 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v22, &v18);
    v21[0] = "odix.region";
    v21[1] = 11;
    v17[0] = v21;
    v17[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v17);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    if (v12)
    {
      goto LABEL_17;
    }
  }

  v22 = a1;
  if (mlir::ODIE::Compiler::ODIX::LoadImmOp::verifyInvariantsImpl(&v22) && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v13) & 1) != 0)
  {
    v15 = mlir::OpTrait::impl::verifySameOperandsShape(a1, v14);
  }

  else
  {
LABEL_17:
    v15 = 0;
  }

  return v15 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::Model(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4[0] = v5;
  v4[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "odix.move", 9, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::MoveOp,void>::id, v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v4);
  *a1 = &unk_286EA2CF8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::MoveOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsShape>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[7] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::MoveOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::MoveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 2);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
  {
    v19 = 257;
    mlir::Operation::emitOpError(&v21, a1, v18);
    if (v21)
    {
      mlir::Diagnostic::operator<<<19ul>(v22, "expects parent op ");
    }

    v17 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v21, &v17);
    v20[0] = "odix.region";
    v20[1] = 11;
    v16[0] = v20;
    v16[1] = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v16);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  v21 = a1;
  if (mlir::ODIE::Compiler::ODIX::MoveOp::verifyInvariantsImpl(&v21) && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v12) & 1) != 0)
  {
    v14 = mlir::OpTrait::impl::verifySameOperandsShape(a1, v13);
  }

  else
  {
LABEL_17:
    v14 = 0;
  }

  return v14 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.program", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ProgramOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2DC0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::getRegionKind;
  v2[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ProgramOp>::hasSSADominance;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::ProgramOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v19[26] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6))
  {
    v7 = *(a1 + 11);
    if ((v7 & 0x7FFFFF) != 0)
    {
      v8 = 0;
      for (i = (((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10)); ; i += 3)
      {
        if (i != *i)
        {
          v10 = i[1];
          if (i == v10 || i != *(v10 + 8))
          {
            break;
          }
        }

        if ((v7 & 0x7FFFFF) == ++v8)
        {
          return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
        }
      }

      v18 = v8;
      v16 = "expects region #";
      v17 = 259;
      mlir::Operation::emitOpError(v19, a1, &v16);
      v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v19, &v18);
      v12 = v11;
      if (*v11)
      {
        mlir::Diagnostic::operator<<<23ul>((v11 + 1), " to have 0 or 1 blocks");
      }

      v13 = *(v12 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
      if (v13)
      {
        return 0;
      }

      LODWORD(v7) = *(a1 + 11);
    }

    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_region_constraint_ODIXOps1(a1, ((a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10), "region", 6, 0);
  }

  return 0;
}

uint64_t mlir::Op<mlir::ODIE::Compiler::ODIX::ProgramOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v4 = mlir::detail::verifySymbolTable(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::RegionOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.region", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2E88;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::RegionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::RegionOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC24B28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B28))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>>();
    qword_27FC24B20 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC24B28);
  }

  return qword_27FC24B20;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC24B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B40))
  {
    qword_27FC24B30 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>>();
    *algn_27FC24B38 = v1;
    __cxa_guard_release(&qword_27FC24B40);
  }

  return qword_27FC24B30;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<Empty>]";
  v6 = 139;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::RegionOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::RegionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v30[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v9 = *(v8 + 16)) == 0 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
  {
    v27 = 257;
    mlir::Operation::emitOpError(&v29, a1, v26);
    if (v29)
    {
      mlir::Diagnostic::operator<<<19ul>(v30, "expects parent op ");
    }

    v25 = "'";
    v10 = mlir::InFlightDiagnostic::operator<<<char const*>(&v29, &v25);
    v28[0] = "odix.function";
    v28[1] = 13;
    v24[0] = v28;
    v24[1] = 1;
    v11 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v10, v24);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<2ul>((v11 + 1), "'");
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 44);
  v15 = v14 & 0x7FFFFF;
  if ((v14 & 0x7FFFFF) != 0)
  {
    v16 = 0;
    v17 = (((a1 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    while (1)
    {
      if (v17 != *v17)
      {
        v18 = v17[1];
        if (v17 == v18 || v17 != *(v18 + 8))
        {
          break;
        }
      }

      ++v16;
      v17 += 3;
      if (v15 == v16)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v24[0]) = v16;
    v26[0] = "expects region #";
    v27 = 259;
    mlir::Operation::emitOpError(&v29, a1, v26);
    v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, v24);
    v20 = v19;
    if (*v19)
    {
      mlir::Diagnostic::operator<<<23ul>((v19 + 1), " to have 0 or 1 blocks");
    }

    v21 = *(v20 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    if (v21)
    {
      return 0;
    }
  }

LABEL_24:
  if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) & 1) == 0)
  {
    return 0;
  }

  v29 = a1;
  return mlir::ODIE::Compiler::ODIX::RegionOp::verifyInvariantsImpl(&v29);
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::Model(void *a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.set_context", 0x10, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SetContextOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA2F50;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SetContextOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::SetContextOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::SetContextOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::RegionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegionOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v17 = 257;
  mlir::Operation::emitOpError(&v19, a1, v16);
  if (v19)
  {
    mlir::Diagnostic::operator<<<19ul>(v20, "expects parent op ");
  }

  v15 = "'";
  v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v19, &v15);
  v18[0] = "odix.region";
  v18[1] = 11;
  v14[0] = v18;
  v14[1] = 1;
  v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v14);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
  }

  v11 = *(v10 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v19 = a1;
    return mlir::ODIE::Compiler::ODIX::SetContextOp::verifyInvariantsImpl(&v19);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::Model(void *a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = v10;
  v9[1] = 0x300000000;
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v4 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::readProperties;
  v4[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::writeProperties;
  v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v5, v4);
  v6 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v6 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::getNameAttr;
  v6[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::setName;
  v6[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::getVisibility;
  v6[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::isNested;
  v6[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::isPrivate;
  v6[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::isPublic;
  v6[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::setVisibility;
  v6[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::setNested;
  v6[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::setPrivate;
  v6[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::setPublic;
  v6[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::getSymbolUses;
  v6[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::symbolKnownUseEmpty;
  v6[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::replaceAllSymbolUses;
  v6[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::isOptionalSymbol;
  v6[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::canDiscardOnUseEmpty;
  v6[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::isDeclaration;
  v7 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v9, v7, v6);
  mlir::OperationName::Impl::Impl(a1, "odix.symbol", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolOp,void>::id, v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v9);
  *a1 = &unk_286EA3018;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::SymbolOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::SymbolOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::SymbolOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (v16[0] = a1, mlir::ODIE::Compiler::ODIX::SymbolOp::verifyInvariantsImpl(v16)) && (mlir::detail::verifySymbol(a1, v6) & 1) != 0 && ((v7 = *(a1 + 2)) == 0 || (v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v9 = *(v8 + 16)) == 0 || (v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(), ((*(**(v9 + 48) + 32))(*(v9 + 48), v10)) || *(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id || (v14 = "symbol's parent must have the SymbolTable trait", v15 = 259, mlir::Operation::emitOpError(v16, a1, &v14), v11 = v17, mlir::InFlightDiagnostic::~InFlightDiagnostic(v16), (v11 & 1) == 0)))
  {
    v16[0] = a1;
    return mlir::ODIE::Compiler::ODIX::SymbolOp::verify(v16);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "odix.value", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ValueOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286EA30E0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OneResult<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::ConditionallySpeculatable::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ODIE::Compiler::ODIX::ValueOp>,mlir::InferTypeOpInterface::Trait<mlir::ODIE::Compiler::ODIX::ValueOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  v12 = *(*a1 + 384);
  v14 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  **a11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v14);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::ODIX::ValueOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  v15 = *(*a1 + 384);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v16 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v15 + 232), v18);
  *v19 = *v16;
  if (!mlir::detail::InferTypeOpInterfaceTrait<mlir::ODIE::Compiler::ODIX::ValueOp>::isCompatibleReturnTypes(v19 & 0xFFFFFFFFFFFFFFF9 | 2, v20, *a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8)))
  {
    v18[0] = "odix.value";
    v18[1] = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v18, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::ODIE::Compiler::ODIX::ValueOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC24B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B50))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl>(void)::Empty>>();
    qword_27FC24B48 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC24B50);
  }

  v10[2] = qword_27FC24B48;
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[10] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC24B68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24B68))
  {
    qword_27FC24B58 = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl>(void)::Empty>>();
    unk_27FC24B60 = v1;
    __cxa_guard_release(&qword_27FC24B68);
  }

  return qword_27FC24B58;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl<Empty>]";
  v6 = 146;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ODIE::Compiler::ODIX::ValueOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::ODIX::ValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::ODIX::RegisterType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::ODIE::Compiler::ODIX::FunctionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::FunctionOp,void>::id)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v19 = 257;
  mlir::Operation::emitOpError(&v21, a1, v18);
  if (v21)
  {
    mlir::Diagnostic::operator<<<19ul>(v22, "expects parent op ");
  }

  v17 = "'";
  v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v21, &v17);
  v20[0] = "odix.function";
  v20[1] = 13;
  v16[0] = v20;
  v16[1] = 1;
  v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v16);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  if ((v12 & 1) == 0)
  {
LABEL_22:
    if (*(a1 + 36))
    {
      v15 = a1 - 16;
    }

    else
    {
      v15 = 0;
    }

    return mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps2(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::ODIX::RegisterType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::ODIX::RegisterType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::ODIX::RegisterType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::ODIX::OperandType>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::ODIX::OperandType>(a1, &v3);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id, 0, v2);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::ODIX::RegisterType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::ODIX::RegisterType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX12RegisterTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX12RegisterTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id, "odix.reg", 8);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::ODIX::RegisterType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler4ODIX12RegisterTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler4ODIX12RegisterTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::ODIX::OperandType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::ODIX::OperandType,mlir::Type,mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractType::AbstractType(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11OperandTypeES2_NSF_6detail18OperandTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v3, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11OperandTypeES2_NSE_6detail18OperandTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id, "odix.type", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11OperandTypeES2_NSF_6detail18OperandTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 24))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11OperandTypeES2_NSE_6detail18OperandTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v4 = *a3;
  }

  v5 = *(**a2 + 32);
  v8 = *(a2 + 8);
  v7 = v4;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(v5, &v8, &v7, a4);
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::ODIX::EnumAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::EnumAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::ODIX::DataRefAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::DataRefAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::SymbolAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id, 0, v2);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::EnumAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::ODIX::EnumAttr,mlir::Attribute,mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX8EnumAttrES2_NSF_6detail15EnumAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX8EnumAttrES2_NSE_6detail15EnumAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id, "odix.enum", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX8EnumAttrES2_NSF_6detail15EnumAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 16))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX8EnumAttrES2_NSE_6detail15EnumAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::ODIE::Compiler::ODIX::EnumAttr::get(*(**a2 + 32), v4, v5);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::DataRefAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::ODIX::DataRefAttr,mlir::Attribute,mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11DataRefAttrES2_NSF_6detail18DataRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX11DataRefAttrES2_NSE_6detail18DataRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::DataRefAttr,void>::id, "odix.data_ref", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::ODIX::SymbolAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::ODIX::SymbolAttr,mlir::Attribute,mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX10SymbolAttrES2_NSF_6detail17SymbolAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX10SymbolAttrES2_NSE_6detail17SymbolAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::SymbolAttr,void>::id, "odix.symbol", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX10SymbolAttrES2_NSF_6detail17SymbolAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  v12 = a3;
  if (a2[2])
  {
    a3(a4);
    a3 = v12;
  }

  if (v10)
  {
    a5(a6, v10);
    a3 = v12;
  }

  if (v9)
  {
    (v12)(a4, v9);
    a3 = v12;
  }

  if (v11)
  {

    (a3)(a4, v11);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler4ODIX10SymbolAttrES2_NSE_6detail17SymbolAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a3;
  if (*(a2 + 16))
  {
    v5 = a3 + 1;
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 24))
  {
    v7 = *a5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 40);
  if (!*(a2 + 32))
  {
    v9 = 0;
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_11:
    v11 = 0;
    return mlir::ODIE::Compiler::ODIX::SymbolAttr::get(*(**a2 + 32), *(a2 + 8), v6, v7, v9, v11);
  }

  v10 = *v5++;
  v9 = v10;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = *v5;
  return mlir::ODIE::Compiler::ODIX::SymbolAttr::get(*(**a2 + 32), *(a2 + 8), v6, v7, v9, v11);
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::ODIX::OperandType,llvm::StringRef,mlir::ArrayAttr>(void *a1, __int128 *a2, uint64_t *a3, unint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id;
  v8[1] = &v9;
  v9 = a1;
  v5 = *a3;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail18OperandTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11OperandTypeEJNS_9StringRefENS1_9ArrayAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v13[1] = v8;
  v11 = *a2;
  v12 = v5;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v14 = llvm::hashing::detail::hash_combine_range_impl<char const>(v11, v11 + *(&v11 + 1), a3, a4);
  v15 = ((v5 >> 4) ^ (v5 >> 9));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v14, 0, v16, v17);
  v10 = &v11;
  v14 = &v11;
  v15 = v13;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::OperandType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage,llvm::StringRef,mlir::ArrayAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ArrayAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage,llvm::StringRef,mlir::ArrayAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ArrayAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v14);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage,llvm::StringRef,mlir::ArrayAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ArrayAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && (!v3 || !memcmp(*(a2 + 8), *v2, v3)) && *(a2 + 24) == *(v2 + 16);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage,llvm::StringRef,mlir::ArrayAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::OperandTypeStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ArrayAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 16);
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v7 = v6;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x20uLL, 3);
  *v8 = 0;
  v8[1] = v5;
  v8[2] = v7;
  v8[3] = v4;
  v9 = *(a1 + 8);
  if (*v9)
  {
    (*v9)(*(v9 + 8), v8);
  }

  return v8;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail18OperandTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_11OperandTypeEJNS_9StringRefENS1_9ArrayAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage,long long,mlir::StringAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::EnumAttrStorage *)>,mlir::TypeID,long long,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail15EnumAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_8EnumAttrEJxNS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage,int,int,long long>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::DataRefAttrStorage *)>,mlir::TypeID,int,int,long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = (*a1)[1];
  v4 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x18uLL, 3);
  *v5 = 0;
  v5[1] = v4;
  v5[2] = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail18DataRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_11DataRefAttrEJiixEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::ODIX::detail::SymbolAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::ODIX::SymbolKind,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v7 = *(*a1 + 3);
  v8 = *(*a1 + 1);
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 0x30uLL, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler4ODIX6detail17SymbolAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10SymbolAttrEJNS4_10SymbolKindENS1_10StringAttrENS1_12FunctionTypeENS1_9ArrayAttrENS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v16, a4);
    if (v16)
    {
      mlir::Diagnostic::operator<<<42ul>(v17, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    return 0;
  }

  v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "region_name", 0xBuLL);
  if (v9)
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v16, a4);
        if (v16)
        {
          if (v16)
          {
            v14 = 0;
            v15 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v14, 1);
            v12 = v18 + 24 * v19;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v19;
          }
        }

        goto LABEL_4;
      }

      *a1 = v10;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "region_name";
  v10[1] = 11;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6E5F6E6F69676572 ? (v4 = *(a3 + 3) == 0x656D616E5F6E6F69) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

uint64_t *mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::setInherentAttr(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6E5F6E6F69676572 && *(a2 + 3) == 0x656D616E5F6E6F69)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
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

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "region_name";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v8, "region_name", 0xB, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return 1;
  }

  a4(&v11, a5);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = a2;
      v9[1] = a3;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<49ul>(v12, "' failed to satisfy constraint: string attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::verifyInvariantsImpl(unsigned int **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (!v3)
  {
    v10 = "requires attribute 'region_name'";
    v11 = 259;
    mlir::Operation::emitOpError(v12, v2, &v10);
    v8 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    return v8;
  }

  v12[0] = v2;
  if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(v3, "region_name", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v5 = v4[17];
    if (v5)
    {
      v6 = 0;
      for (i = *(v4 + 9) + 24; mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps1(*this, (*(*i + 8) & 0xFFFFFFFFFFFFFFF8), v6); i += 32)
      {
        if (v5 == ++v6)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::ODIX::__mlir_ods_local_type_constraint_ODIXOps1(mlir::Operation *a1, const char *a2, unsigned int a3)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v16 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id)
  {
    return 1;
  }

  v15 = 261;
  v14[0] = "operand";
  v14[1] = 7;
  mlir::Operation::emitOpError(&v20, a1, v14);
  if (v20)
  {
    mlir::Diagnostic::operator<<<3ul>(v21, " #");
  }

  v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v16);
  v5 = v4;
  if (*v4)
  {
    v17 = 3;
    v18 = " must be variadic of A register in the ODIX dialect that abstracts away concrete types, but got ";
    v19 = 96;
    v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v17, 1);
    v7 = v5[3] + 24 * *(v5 + 8);
    v8 = *v6;
    *(v7 + 16) = *(v6 + 16);
    *v7 = v8;
    ++*(v5 + 8);
    if (*v5)
    {
      v17 = 4;
      v18 = a2;
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v5 + 3), &v17, 1);
      v10 = v5[3] + 24 * *(v5 + 8);
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++*(v5 + 8);
    }
  }

  v12 = (v5[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  return v12;
}

uint64_t mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::parse(uint64_t a1, void *a2)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = v21;
  v20 = 0x400000000;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v16[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v16);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v18, v5))
  {
    goto LABEL_18;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::ODIX::detail::AsyncInvokeRegionOpGenericAdaptorBase::Properties>(a2);
    *v7 = v18;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v19, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || (v17 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14) & 1) == 0) || (v8 = a2[1], v16[0] = a1, v16[1] = &v17, v16[2] = a2, !mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16)))
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  if (v20)
  {
    v11 = *v10;
    v12 = v19;
    v13 = 32 * v20;
    while (((*(*a1 + 728))(a1, v12, v11, a2 + 2) & 1) != 0)
    {
      v12 += 32;
      v14 = 1;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v14 = 1;
LABEL_19:
  if (v19 != v21)
  {
    free(v19);
  }

  return v14;
}

void mlir::ODIE::Compiler::ODIX::AsyncInvokeRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v11 = 40;
    ++*(v10 + 4);
  }

  v12 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v13 = *(v12 + 17);
    v14 = v12[9];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = (*(*a2 + 16))(a2);
  if (v13)
  {
    v16 = v15;
    (*(*a2 + 160))(a2, *(v14 + 24));
    v17 = v13 - 1;
    if (v17)
    {
      v18 = (v14 + 56);
      do
      {
        v19 = *(v16 + 4);
        if (*(v16 + 3) - v19 > 1uLL)
        {
          *v19 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v20 = *v18;
        v18 += 4;
        (*(*a2 + 160))(a2, v20);
        --v17;
      }

      while (v17);
    }
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(v21 + 4);
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "region_name", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::BranchOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v10[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "dest", 4uLL);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        *a1 = v8;
      }
    }

    return 1;
  }

  else
  {
    a3(&v9, a4);
    if (v9)
    {
      mlir::Diagnostic::operator<<<42ul>(v10, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::ODIX::BranchOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "dest";
  v10[1] = 4;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(a1, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::ODIE::Compiler::ODIX::BranchOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::ODIX::BranchOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1953719652)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::ODIE::Compiler::ODIX::BranchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "dest";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::ODIX::BranchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::ODIX::__mlir_ods_local_attr_constraint_ODIXOps2(v8, "dest", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}