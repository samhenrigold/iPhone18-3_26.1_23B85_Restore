uint64_t addGraphToList(uint64_t InterfaceFor, uint64_t a2, void *a3)
{
  v5 = InterfaceFor;
  v21[6] = *MEMORY[0x277D85DE8];
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v19 = v21;
  v21[0] = v5;
  v21[1] = InterfaceFor;
  v20 = 0x300000001;
  v6 = v5;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6)
    {
      break;
    }

    if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
    {
      v9 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
      llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(&v19, v6, v9);
    }
  }

  *&v16 = a2;
  *(&v16 + 1) = &v19;
  v17 = a3;
  v18 = &v16;
  v10 = mlir::detail::walk<mlir::ForwardIterator>(v5, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL14addGraphToListNS1_4ODIE8Compiler6CoreML7GraphOpERNS1_21SymbolTableCollectionERN12_GLOBAL__N_118ExternalModulePlanEE3__0NSE_8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v18, 1);
  v11 = v19;
  if (v10)
  {
    if (v20)
    {
      v12 = 16 * v20;
      v13 = v19 - 16;
      do
      {
        v16 = *&v13[v12];
        llvm::SetVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::SymbolOpInterface,0u>,llvm::DenseSet<mlir::SymbolOpInterface,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>>,0u>::insert(a3, &v16);
        v12 -= 16;
      }

      while (v12);
      v14 = 1;
      v11 = v19;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v11 != v21)
  {
    free(v11);
  }

  return v14;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZL14addGraphToListNS1_4ODIE8Compiler6CoreML7GraphOpERNS1_21SymbolTableCollectionERN12_GLOBAL__N_118ExternalModulePlanEE3__0NSE_8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESU_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::Operation *a2)
{
  v13[26] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = *a1;
    v12 = a2;
    v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v12, *v4);
    if (!v5)
    {
      v5 = v12;
      v10 = "could not resolve the callee";
      v11 = 259;
      goto LABEL_8;
    }

    v6 = v5;
    v7 = v5[6][2];
    if (v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      v8 = *(v4 + 8);
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
      llvm::SmallVectorTemplateBase<mlir::SymbolOpInterface,true>::push_back(v8, v6, InterfaceFor);
      return 1;
    }

    else
    {
      if (v7 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
      {
        v10 = "unknown callee kind, found while externalizing graphs";
        v11 = 259;
LABEL_8:
        mlir::Operation::emitError(v13, v5, &v10);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
        return 0;
      }

      return addGraphToList(v5, *v4, *(v4 + 16));
    }
  }

  return result;
}

uint64_t **llvm::StringMap<mlir::OwningOpRef<mlir::ModuleOp>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v14 = buffer;
  v15 = buffer + 2;
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  *(v15 + a3) = 0;
  *v14 = a3;
  v14[1] = 0;
  *i = v14;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void anonymous namespace::FoldConstexprOpsPass::~FoldConstexprOpsPass(_anonymous_namespace_::FoldConstexprOpsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::FoldConstexprOpsPass::runOnOperation(_anonymous_namespace_::FoldConstexprOpsPass *this)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v17 = v19;
  v18 = 0x600000000;
  v14[0] = &v17;
  v12 = v14;
  mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v12, 1);
  v11 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  memset(v16.__m_.__opaque, 0, sizeof(v16.__m_.__opaque));
  v16.__m_.__sig = 850045863;
  v12 = &v11;
  v13[0] = v14;
  v4[0] = v17;
  v6 = &v12;
  v7 = v4;
  v3 = atomic_load(&v11);
  if (v3)
  {
    LOWORD(v10) = 257;
    mlir::Operation::emitError(&v12, (v2 & 0xFFFFFFFFFFFFFFF8), &v6);
    if (v12)
    {
      mlir::Diagnostic::operator<<<44ul>(v13, " Failed to perform folding of constexpr ops");
    }
  }

  else
  {
    v7 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v6 = &unk_286E76228;
    v12 = v14;
    v13[0] = &v6;
    v4[0] = &v12;
    if (mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__2NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v4, 1))
    {
      goto LABEL_8;
    }

    v5 = 257;
    mlir::Operation::emitError(&v12, (v2 & 0xFFFFFFFFFFFFFFF8), v4);
    if (v12)
    {
      mlir::Diagnostic::operator<<<37ul>(v13, " Failed to fold constexpr operations");
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  *(this + 5) |= 4uLL;
LABEL_8:
  std::mutex::~mutex(&v16);
  MEMORY[0x25F891030](v14[0], 8);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(**a1, a2);
  }

  return 1;
}

void llvm::function_ref<void ()(unsigned long)>::callback_fn<void llvm::parallelForEach<mlir::Operation **,anonymous namespace::FoldConstexprOpsPass::runOnOperation(void)::$_1>(mlir::Operation **,mlir::Operation **,anonymous namespace::FoldConstexprOpsPass::runOnOperation(void)::$_1)::{lambda(unsigned long)#1}>(uint64_t *a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1[1] + 8 * a2);
  v29 = v31;
  v30 = 0x600000000;
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 68);
    if (v4)
    {
      v5 = (*(v3 + 72) + 24);
      while (1)
      {
        v6 = *v5;
        v25[0] = 0;
        v25[1] = 0;
        v26 = v25;
        if ((~*(v6 + 8) & 7) == 0)
        {
          v6 = 0;
        }

        if (v6)
        {
          v7 = *(v6 + 8) & 7;
          if (v7 != 6)
          {
            v9 = v6 + 16 * v7 + 16;
LABEL_11:
            if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, v9))
            {
              v10 = v25[0];
            }

            else
            {
              v10 = 0;
            }

            goto LABEL_14;
          }

          v8 = v6 + 24 * *(v6 + 16);
          v9 = v8 + 120;
          if (v8 != -120)
          {
            goto LABEL_11;
          }
        }

        v10 = 0;
LABEL_14:
        llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v29, v10);
        v5 += 4;
        if (!--v4)
        {
          v11 = v29;
          v12 = v30;
          goto LABEL_17;
        }
      }
    }
  }

  v12 = 0;
  v11 = v31;
LABEL_17:
  v26 = v28;
  v27 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::tryFoldOperation(v3, v11, v12, &v26, 0x7FFFFFFFFFFFFFFFLL))
  {
    if (v27 != 1 || (v13 = *v26, *v26 <= 7))
    {
      v23[0] = "Constant folding of this op succeeded but the result is unexpected";
      v24 = 259;
      mlir::Operation::emitError(v25, v3, v23);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
      atomic_store(1u, *v2);
      goto LABEL_31;
    }

    v14 = *(v2 + 8);
    v15 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v16 = *v15;
      v17 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
    }

    else
    {
      v18 = 0;
    }

    std::mutex::lock((v14 + 24));
    v23[0] = 0;
    v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*v14, *(v14 + 16), v3, v23);
    v20 = v23[0];
    if (v19)
    {
      goto LABEL_30;
    }

    v25[0] = v23[0];
    v21 = *(v14 + 8);
    v22 = *(v14 + 16);
    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
    }

    else if (v22 + ~v21 - *(v14 + 12) > v22 >> 3)
    {
LABEL_27:
      *(v14 + 8) = v21 + 1;
      if (*v20 != -4096)
      {
        --*(v14 + 12);
      }

      v20[1] = 0;
      v20[2] = 0;
      *v20 = v3;
LABEL_30:
      v20[1] = v15;
      v20[2] = v18;
      std::mutex::unlock((v14 + 24));
      goto LABEL_31;
    }

    llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::grow(v14, v22);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*v14, *(v14 + 16), v3, v25);
    v21 = *(v14 + 8);
    v20 = v25[0];
    goto LABEL_27;
  }

LABEL_31:
  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
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
        v6 = (a1 + 24 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
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

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>,mlir::Operation *,mlir::TypedAttr,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::TypedAttr>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_120FoldConstexprOpsPass14runOnOperationEvE3__2NS1_4ODIE8Compiler8CoreMLAX21ConstexprLutToDenseOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t ***a1, mlir::Operation *this)
{
  v18[26] = *MEMORY[0x277D85DE8];
  result = 1;
  if (this && *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
  {
    v5 = *a1;
    v6 = *(*v5 + 4);
    if (v6)
    {
      v7 = **v5;
      v8 = v6 - 1;
      v9 = (v6 - 1) & ((this >> 4) ^ (this >> 9));
      v10 = *(v7 + 24 * v9);
      if (v10 == this)
      {
LABEL_5:
        v17 = *(v7 + 24 * v9 + 8);
        if (v17)
        {
          *(v5[1] + 3) = vextq_s8(*(this + 8), *(this + 8), 8uLL);
          v11 = v5[1];
          v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr &>((v11 + 1), *(this + 3), &v17);
          (*(*v11 + 8))(v11, this, v12);
          return 1;
        }
      }

      else
      {
        v13 = 1;
        while (v10 != -4096)
        {
          v14 = v9 + v13++;
          v9 = v14 & v8;
          v10 = *(v7 + 24 * v9);
          if (v10 == this)
          {
            goto LABEL_5;
          }
        }
      }
    }

    v15 = "Constant folding of this op succeeded but the result is unexpected";
    v16 = 259;
    mlir::Operation::emitError(v18, this, &v15);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    return 0;
  }

  return result;
}

mlir::Pass **std::unique_ptr<anonymous namespace::ExternalizeToBundlePass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA4598;
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeToBundleBase<anonymous namespace::ExternalizeToBundlePass>::ExternalizeToBundleBase(uint64_t a1)
{
  *(a1 + 16) = "coreml.module";
  *(a1 + 24) = 13;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA4598;
  *&v3 = "The name of the output bundle";
  *(&v3 + 1) = 29;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "out-dir", 7, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  return a1;
}

void anonymous namespace::ExternalizeToBundlePass::~ExternalizeToBundlePass(_anonymous_namespace_::ExternalizeToBundlePass *this)
{
  *this = &unk_286EA4598;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4598;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void anonymous namespace::ExternalizeToBundlePass::runOnOperation(_anonymous_namespace_::ExternalizeToBundlePass *this)
{
  v5[25] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v3[16] = 257;
  mlir::Operation::emitError(&v4, (v2 & 0xFFFFFFFFFFFFFFF8), v3);
  if (v4)
  {
    mlir::Diagnostic::operator<<<60ul>(v5, "cannot externalize to native bundle, not built with codegen");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v4);
  *(this + 5) |= 4uLL;
}

BOOL mlir::OperationPass<mlir::ODIE::Compiler::CoreML::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 24))
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(v2 + 16), *(a1 + 16), v3) == 0;
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::ExternalizeToBundleBase<anonymous namespace::ExternalizeToBundlePass>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::LLVM::LLVMDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ub::UBDialect>(a2);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA4678;
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 816);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 576);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::InsertTargetSpecBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec>::InsertTargetSpecBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA4678;
  *&v3 = "LLVM style target to compile for. E.g., arm64-macos-macos14";
  *(&v3 + 1) = 59;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "target-triple", 13, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  *&v3 = "An SOC identifier. E.g., h14g";
  *(&v3 + 1) = 29;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 576), (a1 + 144), "target-soc", 10, &v3);
  *(a1 + 576) = &unk_286E98FD0;
  *(a1 + 800) = &unk_286E99050;
  *&v3 = "A dictionary to store delegate related infomation";
  *(&v3 + 1) = 49;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 816), (a1 + 144), "target-delegate", 15, &v3);
  *(a1 + 816) = &unk_286E98FD0;
  *(a1 + 1040) = &unk_286E99050;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec::~InsertTargetSpec(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::InsertTargetSpec *this)
{
  *this = &unk_286EA4678;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 816);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA4678;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 816);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::InsertTargetSpec::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::InsertTargetSpec *this)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v27 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = &v27;
  v33[0] = v30;
  mlir::detail::walk<mlir::ForwardIterator>(v27, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116InsertTargetSpec14runOnOperationEvE3__0NSC_6CoreML12TargetSpecOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, v33, 1);
  v2 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v3 = mlir::DictionaryAttr::get(v2, 0, 0);
  if (*(this + 1048) == 1)
  {
    v4 = *(this + 959);
    if (v4 < 0)
    {
      if (!*(this + 118))
      {
        goto LABEL_15;
      }
    }

    else if (!*(this + 959))
    {
      goto LABEL_15;
    }

    if (v4 >= 0)
    {
      v5 = this + 936;
    }

    else
    {
      v5 = *(this + 117);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 959);
    }

    else
    {
      v6 = *(this + 118);
    }

    v7 = mlir::parseAttribute(v5, v6, v2, 0, 0, 0);
    if (!v7 || (v3 = v7, *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id))
    {
      v33[0] = "fail to parse delegate-target in target spec";
      v34 = 259;
      mlir::Operation::emitError(v32, v27, v33);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
      return;
    }
  }

LABEL_15:
  v24[0] = *(***(v27 + 3) + 32);
  v24[1] = 0;
  v25 = *(v27 + 2);
  v26 = v27;
  v8 = *(this + 479);
  if (v8 >= 0)
  {
    v9 = (this + 456);
  }

  else
  {
    v9 = *(this + 57);
  }

  if (v8 >= 0)
  {
    v10 = *(this + 479);
  }

  else
  {
    v10 = *(this + 58);
  }

  v11 = *(this + 719);
  if (v11 >= 0)
  {
    v12 = this + 696;
  }

  else
  {
    v12 = *(this + 87);
  }

  if (v11 >= 0)
  {
    v13 = *(this + 719);
  }

  else
  {
    v13 = *(this + 88);
  }

  v14 = mlir::DictionaryAttr::get(v2, 0, 0);
  v16 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(v2, v9, v10, v12, v13, v14, v3, v15, &byte_25D0A27DF, 0);
  v17 = *(((v27 + 16 * ((*(v27 + 11) >> 23) & 1) + ((*(v27 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10) + 8);
  if (v17)
  {
    v18 = v17 - 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v18 + 40);
  v25 = v18;
  v26 = v19;
  v20 = *(v27 + 3);
  v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecOp,void>::id, *(**v20 + 32));
  if ((v22 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "coreml.target_spec";
    v30[3] = 18;
    v29 = 259;
    llvm::operator+(v30, &v28, v33);
    llvm::report_fatal_error(v33, 1);
  }

  v33[0] = v20;
  v33[1] = v21;
  v33[2] = &v34;
  v33[3] = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[2] = 0;
  v40[1] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v40[6] = 0;
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(v33) = v16;
  v23 = mlir::Operation::create(v33);
  mlir::OpBuilder::insert(v24, v23);
  mlir::OperationState::~OperationState(v33);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler10Transforms12_GLOBAL__N_116InsertTargetSpec14runOnOperationEvE3__0NSC_6CoreML12TargetSpecOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(void ******a1, uint64_t a2)
{
  v5[26] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecOp,void>::id)
    {
      v2 = ***a1;
      v3 = "target_spec op already exists in module.";
      v4 = 259;
      mlir::Operation::emitError(v5, v2, &v3);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
    }
  }
}

void anonymous namespace::MarkCompositeOpsForInliningPass::~MarkCompositeOpsForInliningPass(_anonymous_namespace_::MarkCompositeOpsForInliningPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MarkCompositeOpsForInliningPass::runOnOperation(_anonymous_namespace_::MarkCompositeOpsForInliningPass *this)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v38[0] = *(***(v2 + 24) + 32);
  v38[1] = 0;
  v39 = 0uLL;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  v46 = v36;
  v47 = &v40;
  v48 = &v43;
  v34[0] = &v46;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131MarkCompositeOpsForInliningPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, v34, 1))
  {
    v35 = 257;
    mlir::Operation::emitError(&v46, v2, v34);
    if (v46)
    {
      mlir::Diagnostic::operator<<<68ul>(&v47, "unable to walk over all graphs and mark composite ops as inlineable");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    *(this + 5) |= 4uLL;
  }

  if (v41)
  {
    if (v42)
    {
      v3 = 8 * v42;
      v4 = v40;
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v4;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v4 = v40;
    }

    v5 = &v40[v42];
    while (v4 != v5)
    {
      v6 = v4;
      v7 = v4 + 1;
      v4 = v5;
      if (v7 != v5)
      {
        v4 = v7;
        while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          if (++v4 == v5)
          {
            v4 = v5;
            break;
          }
        }
      }

      v33 = *v6;
      v8 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v33, v36);
      if (v8)
      {
        if (*(v8[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v32 = v9;
      v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(&v43, &v32);
      if (v10 && v10 != &v43[v45])
      {
        v11 = mlir::Operation::clone(v32, 3);
        SymbolTable = mlir::SymbolTableCollection::getSymbolTable(v36, v2);
        mlir::SymbolTable::insert(SymbolTable, v11, v32);
        v39 = vextq_s8(*(v33 + 8), *(v33 + 8), 8uLL);
        if ((*(v33 + 46) & 0x80) != 0)
        {
          v13 = *(v33 + 17);
          v14 = *(v33 + 9) & 0xFFFFFFFFFFFFFFF9 | 2;
        }

        else
        {
          v13 = 0;
          v14 = 2;
        }

        v15 = *(v33 + 3);
        v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(v38, *(**v15 + 32));
        v46 = v15;
        v47 = v16;
        v48 = v50;
        v49 = 0x400000000;
        v50[4] = v51;
        v50[5] = 0x400000000;
        v51[4] = v52;
        v51[5] = 0x400000000;
        v52[8] = 4;
        v52[9] = v53;
        v52[10] = 0x100000000;
        v53[1] = v54;
        v53[2] = 0x100000000;
        v54[1] = 0;
        v54[2] = 0;
        v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v54[4] = 0;
        v54[6] = 0;
        mlir::ODIE::Compiler::CoreML::InvokeOp::build(v38, &v46, v11, v14, v13);
        v17 = mlir::Operation::create(&v46);
        mlir::OpBuilder::insert(v38, v17);
        v18 = *(*(v17 + 6) + 16);
        mlir::OperationState::~OperationState(&v46);
        if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(v33 + 9);
        v21 = (v33 - 16);
        if (!v20)
        {
          v21 = 0;
        }

        v34[0] = v21;
        v34[1] = v20;
        v22 = *(v19 + 9);
        v23 = (v19 - 16);
        if (!v22)
        {
          v23 = 0;
        }

        v46 = v23;
        v47 = v22;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v34, &v46);
        v24 = v33;
        if (*(v33 + 2))
        {
          *(v33 + 2) = 0;
          v26 = *v24;
          v25 = *(v24 + 1);
          *v25 = *v24;
          *(v26 + 8) = v25;
          *v24 = 0;
          *(v24 + 1) = 0;
        }

        mlir::Operation::destroy(v24);
      }
    }
  }

LABEL_40:
  if (v44)
  {
    if (v45)
    {
      v27 = 8 * v45;
      v28 = v43;
      while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v28 = v43;
    }

    v29 = &v43[v45];
    if (v28 != v29)
    {
LABEL_48:
      v30 = *v28++;
      *(v30 + 16 * ((*(v30 + 44) >> 23) & 1) + 88) = 0;
      mlir::Operation::removeAttr(v30, "composite_op", 0xC);
      while (v28 != v29)
      {
        if ((*v28 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v28 != v29)
          {
            goto LABEL_48;
          }

          break;
        }

        ++v28;
      }
    }
  }

LABEL_53:
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v36);
  MEMORY[0x25F891030](v36[0], 8);
  MEMORY[0x25F891030](v40, 8);
  return MEMORY[0x25F891030](v43, 8);
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_131MarkCompositeOpsForInliningPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML8InvokeOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t *a1, mlir::ODIE::Compiler *a2)
{
  v18[25] = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
  {
    v4 = *a1;
    v16 = a2;
    v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v16, *v4);
    if (!v5)
    {
      return 1;
    }

    v6 = v5;
    v7 = *(v5[6] + 16);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
    v9 = v7 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? v5 : 0;
    v15 = v9;
    if (!v8)
    {
      return 1;
    }

    Attr = mlir::Operation::getAttr(v5, "composite_op", 0xCuLL);
    if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 1;
    }

    if (mlir::ODIE::Compiler::isOperationDelegated(v16, v11))
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v17, *(v4 + 8), &v16);
      return 1;
    }

    if (*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 88))
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(v4 + 16), &v15, &v17);
      return 1;
    }

    v14[16] = 257;
    mlir::Operation::emitError(&v17, v6, v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<14ul>(v18, "composite op ");
    }

    v12 = mlir::Operation::getAttr(v6, "composite_op", 0xCuLL);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v17)
    {
      mlir::Diagnostic::operator<<(v18, v13);
      if (v17)
      {
        mlir::Diagnostic::operator<<<35ul>(v18, " does not have noinline attribute.");
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    return 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, void *a2, unint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a2, *(a2 + 4), *a3, &v12);
  v7 = v12;
  if (result)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v9 = *(a2 + 2);
  v10 = *(a2 + 4);
  if (4 * v9 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v9 - *(a2 + 3) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a2, *(a2 + 4), *a3, &v13);
    v9 = *(a2 + 2);
    v7 = v13;
  }

  *(a2 + 2) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 3);
  }

  *v7 = *a3;
  v8 = 1;
LABEL_8:
  v11 = *a2 + 8 * *(a2 + 4);
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 8 * v7);
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
        v8 = (a1 + 8 * (v15 & v6));
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

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 1;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>,mlir::ODIE::Compiler::CoreML::InvokeOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::InvokeOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::InvokeOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::InvokeOp>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 1;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::InsertIntoBucketImpl<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 8 * v8);
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
        v9 = (v4 + 8 * (v15 & v7));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::InsertIntoBucketImpl<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t a1, void *a2, void *a3)
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

  llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::grow(uint64_t **a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::moveFromOldBuckets(a1, v4, &v4[v3]);

    JUMPOUT(0x25F891030);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
    v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 1) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 2;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::LookupBucketFor<mlir::ODIE::Compiler::CoreML::GraphOp>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 8 * v7);
    if (*a2 == v8)
    {
      return v3 + 8 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 8 * v7);
      if (*a2 == v8)
      {
        return v3 + 8 * v7;
      }
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::MarkMutableConstantsBase<anonymous namespace::MarkMutableConstantsPass>::MarkMutableConstantsBase(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *a1 = &unk_286EA47C8;
  v2 = a1 + 336;
  *&v6 = "The action to take when we encounter a graph with constants marked as 'mutable'";
  *(&v6 + 1) = 79;
  v4 = 1;
  v5 = &v4;
  __src[0] = "hoistToArg";
  __src[1] = 10;
  v11 = "hoist mutable weights to graph arguments";
  v12 = 40;
  v13 = "insertOptimizationBarrier";
  v14 = 25;
  v10 = 0;
  v15 = 1;
  v16 = "insert an optimization barrier after each mutable weight";
  v17 = 56;
  v7[0] = v8;
  v7[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(v7, __src, &v18);
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(v2, (a1 + 144), "action", 6, &v6, &v5, v7);
  *(a1 + 336) = &unk_286EA4838;
  *(a1 + 928) = &unk_286EA48B8;
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  return a1;
}

void anonymous namespace::MarkMutableConstantsPass::~MarkMutableConstantsPass(_anonymous_namespace_::MarkMutableConstantsPass *this)
{
  *this = &unk_286EA47C8;
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA47C8;
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::MarkMutableConstantsPass::runOnOperation(_anonymous_namespace_::MarkMutableConstantsPass *this)
{
  v83[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  mlir::CallGraph::CallGraph(v66, v2);
  if (*(this + 114))
  {
    goto LABEL_22;
  }

  LODWORD(v54) = 0;
  v55 = 0;
  v56 = 0;
  LODWORD(v57) = 0;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitOne(&v54, v68);
  llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v54);
  v53 = 0;
  v51 = 0u;
  *__p = 0u;
  *v49 = 0u;
  *v50 = 0u;
  memset(v48, 0, sizeof(v48));
  if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v54, v48))
  {
LABEL_9:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v50[1])
    {
      *&v51 = v50[1];
      operator delete(v50[1]);
    }

    if (v49[0])
    {
      v49[1] = v49[0];
      operator delete(v49[0]);
    }

    MEMORY[0x25F891030](*(&v48[0] + 1), 8);
    if (v61)
    {
      *(&v61 + 1) = v61;
      operator delete(v61);
    }

    if (*(&v59 + 1))
    {
      *&v60 = *(&v59 + 1);
      operator delete(*(&v59 + 1));
    }

    if (v58)
    {
      *(&v58 + 1) = v58;
      operator delete(v58);
    }

    MEMORY[0x25F891030](v55, 8);
LABEL_22:
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v40 = xmmword_2799BED20;
    v41 = xmmword_2799BED10;
    v64 = 0u;
    v65 = 0u;
    *v63 = 0u;
    v75 = &v41;
    v76 = v63;
    v54 = &v75;
    mlir::detail::walk<mlir::ForwardIterator>(v2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_124MarkMutableConstantsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v54, 1);
    v37[0] = *(***(v2 + 24) + 32);
    v37[1] = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v35[0] = this;
    v35[1] = &v36;
    v35[2] = v37;
    v35[3] = &v40;
    v33[1] = 0;
    v33[0] = 0;
    v34 = 0;
    for (i = *(&v65 + 1); *(&v65 + 1); i = *(&v65 + 1))
    {
      *&v48[0] = *(*(v63[1] + ((v65 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v65 & 0x1FF));
      *&v65 = v65 + 1;
      *(&v65 + 1) = i - 1;
      if (v65 >= 0x400)
      {
        operator delete(*v63[1]);
        v63[1] = v63[1] + 8;
        *&v65 = v65 - 512;
      }

      v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::doFind<mlir::ODIE::Compiler::CoreML::GraphOp>(v33, v48);
      if (!v8 || v8 == v33[0] + 8 * v34)
      {
        Attr = mlir::Operation::getAttr(*&v48[0], v40, *(&v40 + 1));
        if (Attr)
        {
          v10 = Attr;
          if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && *(this + 114) != 1)
          {
            v11 = *(*&v48[0] + 24);
            LOWORD(v58) = 257;
            emitDiag(v11, 1, &v54, &v75);
            if (v75)
            {
              mlir::Diagnostic::operator<<<22ul>(&v76, "user-specified scope ");
              if (v75)
              {
                LODWORD(v54) = 0;
                v55 = v10;
                v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v54, 1);
                v13 = v78 + 24 * LODWORD(v79[0]);
                v14 = *v12;
                *(v13 + 16) = *(v12 + 16);
                *v13 = v14;
                ++LODWORD(v79[0]);
                if (v75)
                {
                  mlir::Diagnostic::operator<<<58ul>(&v76, " is unused when hoisting mutable 'constants' to arguments");
                }
              }
            }

            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
          }
        }

        v75 = v35;
        v76 = v48;
        v77 = v66;
        v78 = v42;
        v79[0] = &v40;
        v79[1] = v63;
        mlir::Operation::removeAttr(*&v48[0], v41, *(&v41 + 1));
        mlir::Operation::removeAttr(*&v48[0], v40, *(&v40 + 1));
        llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>,mlir::ODIE::Compiler::CoreML::GraphOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::GraphOp,void>,llvm::detail::DenseSetPair<mlir::ODIE::Compiler::CoreML::GraphOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(v33, v48, &v75);
      }
    }

    SymbolTable = mlir::SymbolTableCollection::getSymbolTable(v42, v2);
    v16 = *SymbolTable;
    v46 = 0;
    v44 = v16;
    v45[0] = 0;
    v45[1] = 0;
    llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::copyFrom(v45, SymbolTable + 8);
    v47 = *(SymbolTable + 32);
    if (v36 == 1 && !mlir::SymbolTable::lookup(&v44, "ANESupport", 0xA))
    {
      v17 = *(((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40) + 8);
      if (v17)
      {
        v18 = v17 - 8;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v18 + 40);
      v38 = v18;
      v39 = v19;
      v20 = *(v2 + 24);
      v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id, *(**v20 + 32));
      if ((v22 & 1) == 0)
      {
        LOWORD(v58) = 1283;
        v56 = "coreml.import";
        v57 = 13;
        LOWORD(v49[0]) = 259;
        llvm::operator+(&v54, v48, &v75);
        llvm::report_fatal_error(&v75, 1);
      }

      v75 = v20;
      v76 = v21;
      v77 = v79;
      v78 = 0x400000000;
      v79[4] = v80;
      v79[5] = 0x400000000;
      v80[4] = v81;
      v80[5] = 0x400000000;
      v81[8] = 4;
      v81[9] = v82;
      v81[10] = 0x100000000;
      v82[1] = v83;
      v82[2] = 0x100000000;
      v83[2] = 0;
      v83[1] = 0;
      v83[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v83[4] = 0;
      v83[6] = 0;
      mlir::ODIE::Compiler::CoreML::ImportOp::build(v37, &v75, "ANESupport", 0xA);
      v23 = mlir::Operation::create(&v75);
      mlir::OpBuilder::insert(v37, v23);
      mlir::OperationState::~OperationState(&v75);
    }

    MEMORY[0x25F891030](v45[0], 8);
    MEMORY[0x25F891030](v33[0], 8);
    v24 = v63[1];
    v25 = v64;
    *(&v65 + 1) = 0;
    v26 = (v64 - v63[1]) >> 3;
    if (v26 >= 3)
    {
      do
      {
        operator delete(*v24);
        v25 = v64;
        v24 = (v63[1] + 8);
        v63[1] = v24;
        v26 = (v64 - v24) >> 3;
      }

      while (v26 > 2);
    }

    if (v26 == 1)
    {
      v27 = 256;
    }

    else
    {
      if (v26 != 2)
      {
        goto LABEL_51;
      }

      v27 = 512;
    }

    *&v65 = v27;
LABEL_51:
    if (v24 != v25)
    {
      do
      {
        v28 = *v24++;
        operator delete(v28);
      }

      while (v24 != v25);
      if (v64 != v63[1])
      {
        *&v64 = v64 + ((v63[1] - v64 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (v63[0])
    {
      operator delete(v63[0]);
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v42);
    v29 = v42[0];
    goto LABEL_58;
  }

  while (1)
  {
    v3 = **(&v59 + 1);
    if (v60 - *(&v59 + 1) > 8uLL)
    {
      break;
    }

    v4 = *(v3 + 14);
    if (v4)
    {
      v5 = v3[6];
      v6 = 8 * v4;
      while (v3 != (*v5 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      break;
    }

LABEL_8:
    llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v54);
    if (!llvm::iterator_facade_base<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>,std::forward_iterator_tag,std::vector<mlir::CallGraphNode *> const,long,std::vector<mlir::CallGraphNode *> const*,std::vector<mlir::CallGraphNode *> const&>::operator!=(&v54, v48))
    {
      goto LABEL_9;
    }
  }

  if (v3 && (v31 = *v3) != 0 && (v32 = *(v31 + 16)) != 0)
  {
    LOWORD(v47) = 257;
    mlir::Operation::emitError(v63, v32, &v44);
    if (v63[0])
    {
      mlir::Diagnostic::operator<<<65ul>(&v63[1], "found cyclic call graph unsuitable for hoistToArg beginning here");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v75, v63);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v63);
    if (v60 != *(&v59 + 1) + 8)
    {
      mlir::Diagnostic::attachNote(&v76, *(*(**(*(&v59 + 1) + 8) + 16) + 24), 1);
    }

    *(this + 5) |= 4uLL;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
  }

  else
  {
    LOWORD(v65) = 257;
    mlir::Operation::emitError(&v75, v2, v63);
    if (v75)
    {
      mlir::Diagnostic::operator<<<50ul>(&v76, "found cyclic call graph unsuitable for hoistToArg");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
    *(this + 5) |= 4uLL;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50[1])
  {
    *&v51 = v50[1];
    operator delete(v50[1]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  MEMORY[0x25F891030](*(&v48[0] + 1), 8);
  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  if (*(&v59 + 1))
  {
    *&v60 = *(&v59 + 1);
    operator delete(*(&v59 + 1));
  }

  if (v58)
  {
    *(&v58 + 1) = v58;
    operator delete(v58);
  }

  v29 = v55;
LABEL_58:
  MEMORY[0x25F891030](v29, 8);
  if (v73 != &v74)
  {
    free(v73);
  }

  if ((v71[40] & 1) == 0)
  {
    MEMORY[0x25F891030](v72, 8);
  }

  if (v70 != v71)
  {
    free(v70);
  }

  if ((v68[8] & 1) == 0)
  {
    MEMORY[0x25F891030](v69, 8);
  }

  llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>::~SmallVector(&v67);
  return MEMORY[0x25F891030](v66[0], 8);
}

void mlir::Pass::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);
}

{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);

  JUMPOUT(0x25F891040);
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_124MarkMutableConstantsPass14runOnOperationEvE3__0NS1_4ODIE8Compiler6CoreML7GraphOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v5[3] = v2;
    v5[4] = v3;
    v4 = *result;
    v5[0] = a2;
    if (mlir::Operation::hasAttr(a2, **v4, *(*v4 + 8)))
    {
      std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(*(v4 + 8), v5);
    }
  }
}

void std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(unint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0x200)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v5 - v4 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(v12);
    }

    a1[4] = v7 - 512;
    v13 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<mlir::ODIE::Compiler::CoreML::GraphOp *>::emplace_back<mlir::ODIE::Compiler::CoreML::GraphOp *&>(a1, &v13);
    v4 = a1[1];
    v8 = a1[5] + a1[4];
  }

  *(*(v4 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++a1[5];
}

void std::__split_buffer<mlir::ODIE::Compiler::CoreML::GraphOp *>::emplace_back<mlir::ODIE::Compiler::CoreML::GraphOp *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(v11);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::Compiler::CoreML::GraphOp *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::MarkMutableConstantsPass::runOnOperation(void)::$_1>(uint64_t **a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v5 = *a1;
    v6 = *a1[1];
    v7 = **a1;
    v61 = 0;
    v62 = 0;
    *&v66 = &v61;
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v66, a2))
    {
      v8 = (*(v62 + 16))(v62, v61);
      v10 = (*(v9 + 8))(v9, v8);
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v23 = v10[2], v23 != 1) && (v23 != 32 ? (v24 = v23 == 1073741856) : (v24 = 1), !v24))
      {
        if (*(v7 + 456) == 1)
        {
          *v5[1] = 1;
          v11 = v5[2];
          Attr = mlir::Operation::getAttr(v6, *v5[3], *(v5[3] + 8));
          if (Attr)
          {
            if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v14 = Attr;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          *(v11 + 16) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
          *&v66 = "ANESupport";
          v69 = 259;
          v25 = mlir::StringAttr::get(*v11, &v66, v13);
          v63[0] = "markMutable";
          v64 = 259;
          v27 = mlir::StringAttr::get(*v11, v63, v26);
          v65[0] = mlir::SymbolRefAttr::get(v27, 0, 0, v28);
          v30 = mlir::SymbolRefAttr::get(v25, v65, 1, v29);
          v31 = *(**v11 + 384);
          *&v66 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
          v32 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v31 + 232), &v66);
          v33 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
          *&v66 = v33;
          if (v33)
          {
            v34 = *v33;
            v35 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
            v33 = mlir::detail::InterfaceMap::lookup(v34 + 8, v35);
          }

          *(&v66 + 1) = v33;
          v63[0] = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v30 + 32), v30, v32, &v66, 1);
          v63[1] = v36;
          v37 = *(a2 + 24);
          v38 = *(a2 + 36);
          v39 = a2 - 16;
          if (!v38)
          {
            v39 = 0;
          }

          v66 = v39;
          v67 = v39;
          v68 = v38;
          v65[0] = v39;
          v65[1] = v38;
          v40 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::TypedAttr &,mlir::ResultRange>(v11, v37, &v66, v63, v65);
          v41 = v40;
          if (v14)
          {
            mlir::Operation::setAttr(v40, "scope", 5, v14);
          }

          v42 = *(a2 + 36);
          v43 = *(v41 + 36);
          if (v42)
          {
            v44 = a2 - 16;
          }

          else
          {
            v44 = 0;
          }

          if (v43)
          {
            v45 = (v41 - 16);
          }

          else
          {
            v45 = 0;
          }

          if (v42 && v43)
          {
            v46 = 0;
            v47 = v43 - 1;
            v48 = v42 - 1;
            v49 = a2 - 16;
            v50 = (v41 - 16);
            while (1)
            {
              v51 = v44;
              v52 = v45;
              if (!v46)
              {
                goto LABEL_56;
              }

              v53 = *(a2 - 8) & 7;
              v54 = a2 - 16;
              v55 = v46;
              if (v53 != 6)
              {
                v56 = (5 - v53);
                v51 = v49;
                v55 = v46 - v56;
                if (v46 <= v56)
                {
                  goto LABEL_51;
                }

                v54 = a2 - 16 - 16 * v56;
              }

              v51 = v54 - 24 * v55;
LABEL_51:
              v57 = *(v41 - 8) & 7;
              v58 = v41 - 16;
              v59 = v46;
              if (v57 == 6)
              {
                goto LABEL_54;
              }

              v60 = (5 - v57);
              v59 = v46 - v60;
              if (v46 > v60)
              {
                v58 = v41 - 16 - 16 * v60;
LABEL_54:
                v52 = (v58 - 24 * v59);
                goto LABEL_56;
              }

              v52 = v50;
LABEL_56:
              *&v66 = v51;
              *(&v66 + 1) = v52;
              mlir::Value::replaceAllUsesExcept(&v66, v52, v41);
              if (v48 != v46)
              {
                v50 -= 2;
                v49 -= 16;
                v20 = v47 == v46++;
                if (!v20)
                {
                  continue;
                }
              }

              return;
            }
          }
        }

        else
        {
          raiseToArg(a2);
        }
      }
    }
  }

  else
  {
    v15 = llvm::DefaultDoCastIfPossible<mlir::CallOpInterface,mlir::Operation *,llvm::CastInfo<mlir::CallOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
    if (v15)
    {
      v17 = mlir::CallGraph::resolveCallable(a1[2], v15, v16, a1[3]);
      if (v17)
      {
        if (*v17)
        {
          v18 = *(*v17 + 16);
          if (v18)
          {
            v19 = *(*(v18 + 48) + 16);
            v20 = v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id;
            v21 = v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? *(*v17 + 16) : 0;
            *&v66 = v21;
            if (v20)
            {
              v22 = mlir::Operation::getAttr(*a1[1], *a1[4], a1[4][1]);
              if (v22 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
              {
                mlir::Operation::setAttr(v18, *a1[4], a1[4][1], v22);
              }

              std::deque<mlir::ODIE::Compiler::CoreML::GraphOp>::push_back(a1[5], &v66);
            }
          }
        }
      }
    }
  }
}

void raiseToArg(mlir::Operation *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a1;
  while (1)
  {
    v3 = *(v2 + 2);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v4)
    {
      break;
    }

    v2 = *(v4 + 16);
    if (!v2 || *(*(v2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:
  v5 = *(v2 + 2);
  v6 = *(***(v2 + 3) + 32);
  v40[0] = v6;
  v40[1] = 0;
  v41 = v5;
  v42 = v2;
  Attr = mlir::Operation::getAttr(a1, "coreml.constant_uid", 0x13uLL);
  if (!Attr || (IntegerAttr = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id))
  {
    v9 = mlir::IntegerType::get(v6, 64, 2);
    IntegerAttr = mlir::Builder::getIntegerAttr(v40, v9, a1);
    mlir::Operation::setAttr(a1, "coreml.constant_uid", 0x13, IntegerAttr);
  }

  v10 = v2 + 64;
  v11 = *(v2 + 11);
  v12 = (v11 >> 23) & 1;
  v13 = *(v2 + 2 * v12 + 8);
  if (!v13 || (v14 = *(v13 + 16)) == 0)
  {
LABEL_24:
    v21 = (&v10[16 * v12 + 7 + ((v11 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10);
    v22 = *(a1 - 1);
    if ((v22 & 7) == 7)
    {
      v23 = 0;
    }

    else
    {
      v23 = a1 - 16;
    }

    if ((v22 & 7) == 7)
    {
      goto LABEL_28;
    }

    v25 = *(v23 + 1) & 7;
    if (v25 == 6)
    {
      v26 = &v23[24 * *(v23 + 2) + 120];
      if (!v26)
      {
LABEL_28:
        v24 = (a1 + 16);
        goto LABEL_34;
      }
    }

    else
    {
      v26 = &v23[16 * v25 + 16];
    }

    v24 = (v26 + 24);
LABEL_34:
    v27 = *(v21 + 8);
    if (v27)
    {
      v28 = (v27 - 8);
    }

    else
    {
      v28 = 0;
    }

    mlir::Block::addArgument(v28, v22 & 0xFFFFFFFFFFFFFFF8, *v24);
  }

  v15 = 0;
  v16 = *(v13 + 8);
  v17 = v16 + 8 * v14;
  while (1)
  {
    if (*v16)
    {
      v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*v16 + 8), *(*v16 + 8) + 16 * *(*v16 + 16), "coreml.constant_uid", 0x13uLL);
      if (v19)
      {
        v20 = *(v18 + 8);
        if (v20 && *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      if (IntegerAttr == v20)
      {
        break;
      }
    }

    ++v15;
    v16 += 8;
    if (v16 == v17)
    {
      v11 = *(v2 + 11);
      v12 = (v11 >> 23) & 1;
      goto LABEL_24;
    }
  }

  v38 = *((&v10[16 * ((*(v2 + 11) >> 23) & 1) + 7 + ((*(v2 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10) + 8);
  if (v38)
  {
    v39 = v38 - 8;
  }

  else
  {
    v39 = 0;
  }

  v44 = *(*(v39 + 48) + 8 * v15);
  mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(a1 - 2, &v44);
  v31 = v2;
  while (1)
  {
    v29 = *(v31 + 16);
    if (!v29)
    {
      break;
    }

    v30 = *(v29 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v30)
    {
      break;
    }

    v31 = *(v30 + 16);
    if (!v31 || *(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_44;
    }
  }

  v31 = 0;
LABEL_44:
  mlir::SymbolTable::getSymbolUses(v2, &v44, v31);
  if (v46 == 1)
  {
    v32 = v44;
    v33 = v45;
    if (v44 == v45)
    {
      goto LABEL_51;
    }

    do
    {
      v34 = *v32;
      v41 = *(*v32 + 16);
      v42 = v34;
      v35 = mlir::OpBuilder::clone(v40, a1);
      v36 = v35;
      if ((*(v34 + 46) & 0x80) != 0)
      {
        v37 = *(v34 + 68);
        v43 = v35 - 4;
        mlir::detail::OperandStorage::setOperands((v34 + 64), v34, v37, 0, &v43, 1);
      }

      raiseToArg(v36);
      v32 += 2;
    }

    while (v32 != v33);
    if (v46)
    {
      v32 = v44;
LABEL_51:
      if (v32)
      {
        v45 = v32;
        operator delete(v32);
      }
    }
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CallOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::TypedAttr &,mlir::ResultRange>(uint64_t **a1, uint64_t a2, __int128 *a3, uint64_t *a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id, *(**a2 + 32));
  if ((v11 & 1) == 0)
  {
    v18 = 1283;
    *&v17 = "coreml.llo.call";
    *(&v17 + 1) = 15;
    v26 = 259;
    llvm::operator+(&v16, v25, v19);
    llvm::report_fatal_error(v19, 1);
  }

  v19[0] = a2;
  v19[1] = v10;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  v12 = a3[1];
  v16 = *a3;
  v17 = v12;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v25, &v16);
  mlir::ODIE::Compiler::CoreML::CallOp::build(a1, v19, v25[0], v25[1], *a4, a4[1], *a5 & 0xFFFFFFFFFFFFFFF9 | 4, a5[1], 0, 0, 0);
  v13 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::copyFrom(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F891030](*a1, 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    buffer = llvm::allocate_buffer((16 * v5), 8uLL);
    *a1 = buffer;
    *(a1 + 8) = *(a2 + 8);
    v7 = *a2;
    v8 = 16 * *(a1 + 16);

    return memcpy(buffer, v7, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t *llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::operator=<mlir::ODIE::Compiler::Action>(uint64_t a1, _DWORD *a2)
{
  *(a1 + 120) = *a2;
  v2 = a1 + 120;
  v3 = *(a1 + 584);
  if (v3)
  {
    (*(*v3 + 48))(v3);
    return v2;
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return mlir::ODIE::Compiler::Transforms::impl::createOutlineCompositeOps(v5);
  }
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::OutlineCompositeOpsPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::OutlineCompositeOpsPass::~OutlineCompositeOpsPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::OutlineCompositeOpsPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::OutlineCompositeOpsBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::OutlineCompositeOpsPass>::getDependentDialects(uint64_t a1, uint64_t **a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::ODIE::Compiler::TorchImport::TorchImportDialect>(a2);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::OutlineCompositeOpsPass::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::OutlineCompositeOpsPass *this)
{
  v132[8] = *MEMORY[0x277D85DE8];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v124.__r_.__value_.__r.__words[0] = &v91;
  v124.__r_.__value_.__l.__size_ = &v92;
  if (v91 == 1)
  {
    *(this + 5) |= 4uLL;
    goto LABEL_139;
  }

  v89[0] = 0;
  v89[1] = 0;
  v90 = 0;
  SymbolTable = mlir::SymbolTableCollection::getSymbolTable(v89, v2);
  v87 = 0;
  v86[0] = 0;
  v86[1] = 0;
  llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::copyFrom(v86, SymbolTable + 8);
  v88 = *(SymbolTable + 32);
  if (v93)
  {
    if (v94)
    {
      v4 = 304 * v94;
      v5 = v92;
      while (*v5 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v5 += 304;
        v4 -= 304;
        if (!v4)
        {
          goto LABEL_138;
        }
      }
    }

    else
    {
      v5 = v92;
    }

    v6 = v92 + 304 * v94;
    if (v5 != v6)
    {
      v84 = v2;
LABEL_12:
      v7 = *v5;
      __n = *(v5 + 8);
      v9 = *(v2 + 2);
      v8 = *(v2 + 3);
      v105[0] = *(**v8 + 32);
      v105[1] = 0;
      v106 = v9;
      v107 = v2;
      v10 = *(**v8 + 32);
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v118 = v120;
      v119 = 0x600000000;
      v101 = 0u;
      memset(v100, 0, sizeof(v100));
      v11 = *(v5 + 248);
      if (v11)
      {
        __s2 = v7;
        v12 = *(v5 + 240);
        v13 = 8 * v11;
        do
        {
          v14 = *v12++;
          v124.__r_.__value_.__r.__words[0] = v14;
          std::deque<mlir::Operation *>::push_back(v100, &v124);
          v13 -= 8;
        }

        while (v13);
        v15 = *(&v101 + 1);
        v95 = v99;
        v96 = 4;
        v97 = 0;
        v98 = 1;
        if (*(&v101 + 1))
        {
          while (1)
          {
            v16 = *(*(v100[1] + ((v101 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v101 & 0x1FF));
            *&v101 = v101 + 1;
            *(&v101 + 1) = v15 - 1;
            if (v101 >= 0x400)
            {
              operator delete(*v100[1]);
              v100[1] += 8;
              *&v101 = v101 - 512;
            }

            if (llvm::SmallPtrSetImplBase::contains_imp(&v95, v16))
            {
              goto LABEL_58;
            }

            llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v95, v16, &v124);
            v17 = *(*(v16 + 48) + 8);
            v18 = *(v17 + 16);
            v19 = *(v17 + 24);
            if (v19 != 34)
            {
              break;
            }

            if (memcmp(v18, "TorchImport.label_tensor_as_output", 0x22uLL))
            {
              goto LABEL_28;
            }

            AttrFromOpOr = mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(v16, "id", 2, 0);
            if ((v21 & 1) == 0 || *(AttrFromOpOr + 24) != __n || __n && memcmp(*(AttrFromOpOr + 16), __s2, __n))
            {
              goto LABEL_28;
            }

LABEL_29:
            if ((*(v16 + 46) & 0x80) != 0)
            {
              v22 = *(v16 + 68);
              if (v22)
              {
                v23 = 0;
                v24 = *(v16 + 72);
                do
                {
                  v25 = *(v24 + 32 * v23 + 24);
                  v109.__r_.__value_.__r.__words[0] = v25;
                  if ((~*(v25 + 8) & 7) == 0)
                  {
                    v25 = 0;
                  }

                  if (!v25)
                  {
                    v114 = 0;
LABEL_56:
                    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v102, &v109, &v124);
                    goto LABEL_57;
                  }

                  v26 = *(v25 + 8) & 7;
                  if (v26 == 6)
                  {
                    v27 = v25 + 24 * *(v25 + 16);
                    v28 = (v27 + 120);
                    v114 = (v27 + 120);
                    if (v27 == -120)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    v28 = (v25 + 16 * v26 + 16);
                    v114 = v28;
                  }

                  v29 = *(v28[6] + 8);
                  v30 = *(v29 + 16);
                  v31 = *(v29 + 24);
                  if (v31 == 34)
                  {
                    v32 = "TorchImport.label_tensor_as_output";
                    v33 = 34;
                  }

                  else
                  {
                    if (v31 != 33)
                    {
                      goto LABEL_45;
                    }

                    v32 = "TorchImport.label_tensor_as_input";
                    v33 = 33;
                  }

                  if (!memcmp(v30, v32, v33))
                  {
                    goto LABEL_54;
                  }

LABEL_45:
                  v34 = *(v5 + 184);
                  if (!v34)
                  {
                    goto LABEL_54;
                  }

                  v35 = *(v5 + 176);
                  v36 = 8 * v34 - 8;
                  do
                  {
                    v37 = *v35++;
                    v38 = mlir::Operation::isBeforeInBlock(v37, v28);
                    v39 = !v38 || v36 == 0;
                    v36 -= 8;
                  }

                  while (!v39);
                  if (!v38)
                  {
                    goto LABEL_56;
                  }

                  v28 = v114;
                  if (v114)
                  {
LABEL_54:
                    if (!llvm::SmallPtrSetImplBase::contains_imp(&v95, v28))
                    {
                      std::deque<mlir::Operation *>::push_back(v100, &v114);
                    }
                  }

LABEL_57:
                  ++v23;
                }

                while (v23 != v22);
              }
            }

LABEL_58:
            v15 = *(&v101 + 1);
            if (!*(&v101 + 1))
            {
              goto LABEL_61;
            }
          }

          if (v19 == 33 && !memcmp(v18, "TorchImport.label_tensor_as_input", 0x21uLL))
          {
            goto LABEL_58;
          }

LABEL_28:
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v118, v16);
          goto LABEL_29;
        }
      }

      else
      {
        v95 = v99;
        v96 = 4;
        v97 = 0;
        v98 = 1;
      }

LABEL_61:
      mlir::ODIE::Compiler::Transforms::getSortedListOfIO(&v114, *(v5 + 176), *(v5 + 184));
      mlir::ODIE::Compiler::Transforms::getSortedListOfIO(&v110, *(v5 + 240), *(v5 + 248));
      v40 = v117 & v113;
      if (v117 & v113)
      {
        v41 = v114;
        v42 = v110;
        v43 = v111;
        v124.__r_.__value_.__r.__words[0] = &v124.__r_.__value_.__r.__words[2];
        v124.__r_.__value_.__l.__size_ = 0x600000000;
        v109.__r_.__value_.__r.__words[0] = &v109.__r_.__value_.__r.__words[2];
        v109.__r_.__value_.__l.__size_ = 0x600000000;
        if (v115)
        {
          v44 = 8 * v115;
          do
          {
            v45 = *v41++;
            v46 = v45 - 16;
            if (!*(v45 + 36))
            {
              v46 = 0;
            }

            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v124, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
            v44 -= 8;
          }

          while (v44);
        }

        if (v103)
        {
          if (v104)
          {
            v47 = 8 * v104;
            v48 = v102;
            while ((*v48 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              ++v48;
              v47 -= 8;
              if (!v47)
              {
                goto LABEL_82;
              }
            }
          }

          else
          {
            v48 = v102;
          }

          v49 = &v102[v104];
          if (v49 != v48)
          {
            v50 = *v48;
            do
            {
              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v124, *(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
              do
              {
                if (++v48 == v49)
                {
                  goto LABEL_82;
                }

                v50 = *v48;
              }

              while ((*v48 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v48 != v49);
          }
        }

LABEL_82:
        if (v43)
        {
          v51 = 8 * v43;
          do
          {
            v52 = *v42++;
            v53 = v52 - 16;
            if (!*(v52 + 36))
            {
              v53 = 0;
            }

            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v109, *(v53 + 8) & 0xFFFFFFFFFFFFFFF8);
            v51 -= 8;
          }

          while (v51);
        }

        *&__p = v124.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&__p + 1) = LODWORD(v124.__r_.__value_.__r.__words[1]);
        *&v121 = v109.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&v121 + 1) = LODWORD(v109.__r_.__value_.__r.__words[1]);
        v54 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v10, &__p, &v121);
        if (v109.__r_.__value_.__l.__data_ != &v109.__r_.__value_.__r.__words[2])
        {
          free(v109.__r_.__value_.__l.__data_);
        }

        if (v124.__r_.__value_.__l.__data_ != &v124.__r_.__value_.__r.__words[2])
        {
          free(v124.__r_.__value_.__l.__data_);
        }

        if (v119)
        {
          v55 = 0;
          v56 = v118;
          v124.__r_.__value_.__r.__words[0] = &v124.__r_.__value_.__r.__words[2];
          v57 = 8 * v119;
          v124.__r_.__value_.__l.__size_ = 0x600000000;
          do
          {
            llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&v124, *(*&v56[v55] + 24));
            v55 += 8;
          }

          while (v57 != v55);
          v58 = mlir::FusedLoc::get(v124.__r_.__value_.__l.__data_, LODWORD(v124.__r_.__value_.__r.__words[1]), 0, *(***(*v56 + 24) + 32));
          if (v124.__r_.__value_.__l.__data_ != &v124.__r_.__value_.__r.__words[2])
          {
            free(v124.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v58 = *(*v10 + 616);
        }

        v59 = *(**(v5 + 240) + 16);
        if (v59)
        {
          v59 = *(v59 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v59)
          {
            v59 = *(v59 + 16);
          }
        }

        v106 = *(v59 + 16);
        v107 = v59;
        if ((atomic_load_explicit(_MergedGlobals_64, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_64))
        {
          std::random_device::random_device[abi:nn200100](&v124);
          v68 = arc4random();
          qword_27FC24E78 = v68;
          v69 = 2;
          v70 = 1;
          do
          {
            v71 = 0x5851F42D4C957F2DLL * (v68 ^ (v68 >> 62));
            v68 = v71 + v70;
            _MergedGlobals_64[v69] = v69 + v71 - 1;
            ++v70;
            ++v69;
          }

          while (v69 != 313);
          qword_27FC25838 = 0;
          std::random_device::~random_device(&v124);
          __cxa_guard_release(_MergedGlobals_64);
        }

        std::string::basic_string[abi:nn200100]<0>(&v124, "composite_op_");
        v60 = std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(&qword_27FC24E78);
        std::to_string(&v109, v60);
        if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = &v109;
        }

        else
        {
          v61 = v109.__r_.__value_.__r.__words[0];
        }

        if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v109.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v109.__r_.__value_.__l.__size_;
        }

        v63 = std::string::append(&v124, v61, size);
        v64 = v63->__r_.__value_.__r.__words[2];
        __p = *&v63->__r_.__value_.__l.__data_;
        v123 = v64;
        v63->__r_.__value_.__l.__size_ = 0;
        v63->__r_.__value_.__r.__words[2] = 0;
        v63->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v124.__r_.__value_.__l.__data_);
        }

        v65 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(v105, *(**v58 + 32));
        v124.__r_.__value_.__r.__words[0] = v58;
        v124.__r_.__value_.__l.__size_ = v65;
        v124.__r_.__value_.__r.__words[2] = &v126;
        v125 = 0x400000000;
        v127 = v129;
        v128 = 0x400000000;
        v129[4] = v130;
        v129[5] = 0x400000000;
        v130[8] = 4;
        v130[9] = v131;
        v130[10] = 0x100000000;
        v131[1] = v132;
        v131[2] = 0x100000000;
        v132[1] = 0;
        v132[2] = 0;
        v132[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v132[4] = 0;
        if (v123 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v123 >= 0)
        {
          v67 = SHIBYTE(v123);
        }

        else
        {
          v67 = *(&__p + 1);
        }

        v132[6] = 0;
        mlir::ODIE::Compiler::CoreML::GraphOp::build(v105, &v124, p_p, v67, v54, 0, 0, 0, 0, 0, 0, 0);
      }

      v2 = v84;
      if ((v113 & 1) != 0 && v110 != &v112)
      {
        free(v110);
      }

      if (v117 == 1 && v114 != &v116)
      {
        free(v114);
      }

      if ((v98 & 1) == 0)
      {
        free(v95);
      }

      std::deque<mlir::Operation *>::~deque[abi:nn200100](v100);
      if (v118 != v120)
      {
        free(v118);
      }

      MEMORY[0x25F891030](v102, 8);
      if (v40)
      {
        while (1)
        {
          v5 += 304;
          if (v5 == v6)
          {
            break;
          }

          if (*v5 < 0xFFFFFFFFFFFFFFFELL)
          {
            if (v5 != v6)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }

      else
      {
        v72 = *(v84 + 3);
        v124.__r_.__value_.__r.__words[0] = "Failed to outline composite ops";
        v126 = 259;
        emitDiag(v72, 2, &v124, v108);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v108);
        *(this + 5) |= 4uLL;
      }
    }
  }

LABEL_138:
  MEMORY[0x25F891030](v86[0], 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v89);
  MEMORY[0x25F891030](v89[0], 8);
LABEL_139:
  v73 = v92;
  if (v94)
  {
    v74 = 0;
    v75 = 304 * v94;
    do
    {
      if (*(v73 + v74) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v76 = v73 + v74;
        v77 = *(v73 + v74 + 240);
        if ((v73 + v74 + 256) != v77)
        {
          free(v77);
        }

        v78 = *(v76 + 176);
        if ((v76 + 192) != v78)
        {
          free(v78);
        }

        v79 = v73 + v74;
        v80 = *(v73 + v74 + 112);
        if ((v73 + v74 + 128) != v80)
        {
          free(v80);
        }

        v81 = *(v79 + 48);
        if ((v79 + 64) != v81)
        {
          free(v81);
        }
      }

      v74 += 304;
    }

    while (v75 != v74);
    v73 = v92;
  }

  return MEMORY[0x25F891030](v73, 8);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Transforms::anonymous namespace::OutlineCompositeOpsPass::runOnOperation(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 48) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6 == 34)
  {
    v7 = "TorchImport.label_tensor_as_output";
    v8 = *(v4 + 16);
    v9 = 34;
  }

  else
  {
    if (v6 != 33)
    {
      return 1;
    }

    v7 = "TorchImport.label_tensor_as_input";
    v8 = *(v4 + 16);
    v9 = 33;
  }

  if (memcmp(v8, v7, v9))
  {
    return 1;
  }

  AttrFromOpOr = mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(a2, "id", 2, 0);
  v12 = v11;
  v13 = mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(a2, "op_name", 7, 0);
  v15 = v14;
  v16 = mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(a2, "name", 4, 0);
  v18 = v17;
  v19 = mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(a2, "attributes", 0xA, 1);
  if ((v18 & 1) != 0 && (v12 & 1) != 0 && (v15 & 1) != 0 && (*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2 && *(a2 + 36) == 1)
  {
    v21 = v20;
    v34 = v19;
    v36 = *(AttrFromOpOr + 16);
    v22 = *(v13 + 16);
    v23 = *(v13 + 24);
    v25 = *(v16 + 16);
    v24 = *(v16 + 24);
    *v26 = v22;
    v26[1] = v23;
    if (v6 == 33 && !memcmp(v5, "TorchImport.label_tensor_as_input", 0x21uLL))
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v29 + 160, a2);
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(v30 + 32, v25, v24);
      if (v21)
      {
        v31 = *(v34 + 16);
        v32 = *(v34 + 24);
        *(v33 + 16) = v31;
        *(v33 + 24) = v32;
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v27 + 224, a2);
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(v28 + 96, v25, v24);
    }

    return 1;
  }

  result = 0;
  **a1 = 1;
  return result;
}

unint64_t mlir::ODIE::Compiler::Transforms::getAttrFromOpOr(uint64_t a1, const void *a2, const char *a3, char a4)
{
  v16[25] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a1, a2, a3);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v11 = Attr & 0xFFFFFFFFFFFFFF00;
    v10 = Attr;
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      v9 = *(a1 + 24);
      v14 = 257;
      emitDiag(v9, 2, v13, &v15);
      if (v15)
      {
        mlir::Diagnostic::operator<<<49ul>(v16, "Couldn't find valid composite op attr with name ");
        if (v15)
        {
          v14 = 261;
          v13[0] = a2;
          v13[1] = a3;
          mlir::Diagnostic::operator<<(v16, v13);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
    }

    v10 = 0;
    v11 = 0;
  }

  return v11 | v10;
}

unint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>,llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>::operator[](void *a1, _OWORD *a2)
{
  v9 = 0;
  v5 = v9;
  if (v4)
  {
    return v5 + 16;
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
    v6 = *(a1 + 2);
    v5 = v10;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -1)
  {
    --*(a1 + 3);
  }

  *v5 = *a2;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 48) = v5 + 64;
  *(v5 + 60) = 3;
  *(v5 + 112) = v5 + 128;
  *(v5 + 124) = 3;
  *(v5 + 176) = v5 + 192;
  *(v5 + 188) = 6;
  *(v5 + 240) = v5 + 256;
  *(v5 + 252) = 6;
  return v5 + 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>,llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 304 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 304 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>,llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::ODIE::Compiler::Transforms::anonymous namespace::CompositeOpMetadata>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((304 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 304 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 38;
        v11 -= 304;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 0;
      v13 = 304 * v3;
      do
      {
        v14 = v4 + v12;
        if (*(v4 + v12) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v27 = 0;
          v15 = v27;
          *v27 = *v14;
          v16 = *(v14 + 32);
          v15[1] = *(v14 + 16);
          v15[2] = v16;
          *(v15 + 6) = v15 + 4;
          *(v15 + 7) = 0x300000000;
          if (*(v14 + 56))
          {
            llvm::SmallVectorImpl<llvm::StringRef>::operator=((v15 + 3), v4 + v12 + 48);
          }

          *(v15 + 14) = v15 + 8;
          *(v15 + 15) = 0x300000000;
          v17 = v4 + v12;
          if (*(v4 + v12 + 120))
          {
            llvm::SmallVectorImpl<llvm::StringRef>::operator=((v15 + 7), v17 + 112);
          }

          *(v15 + 22) = v15 + 12;
          *(v15 + 23) = 0x600000000;
          if (*(v17 + 184))
          {
            llvm::SmallVectorImpl<mlir::Operation *>::operator=((v15 + 11), v4 + v12 + 176);
          }

          *(v15 + 30) = v15 + 16;
          v18 = (v15 + 15);
          *(v18 + 8) = 0x600000000;
          v19 = v4 + v12;
          if (*(v4 + v12 + 248))
          {
            llvm::SmallVectorImpl<mlir::Operation *>::operator=(v18, v19 + 240);
          }

          ++*(a1 + 8);
          v20 = *(v19 + 240);
          if ((v19 + 256) != v20)
          {
            free(v20);
          }

          v21 = v4 + v12;
          v22 = *(v4 + v12 + 176);
          if ((v4 + v12 + 192) != v22)
          {
            free(v22);
          }

          v23 = *(v21 + 112);
          if ((v21 + 128) != v23)
          {
            free(v23);
          }

          v24 = *(v4 + v12 + 48);
          if ((v4 + v12 + 64) != v24)
          {
            free(v24);
          }
        }

        v12 += 304;
      }

      while (v13 != v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 304 * v25;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 38;
      v26 -= 304;
    }

    while (v26);
  }

  return result;
}

void mlir::ODIE::Compiler::Transforms::getSortedListOfIO(uint64_t a1, mlir::Operation **a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = v33;
  v32 = 0x300000000;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[a3];
    do
    {
      v6 = *v4;
      v7 = *(*(*v4 + 9) + 56);
      v29 = 0;
      v34 = &v29;
      if ((~*(v7 + 8) & 7) == 0)
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_30;
      }

      v8 = *(v7 + 8) & 7;
      if (v8 == 6)
      {
        v9 = v7 + 24 * *(v7 + 16);
        v10 = v9 + 120;
        if (v9 == -120)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v10 = v7 + 16 * v8 + 16;
      }

      if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v34, v10))
      {
        goto LABEL_29;
      }

      v11 = (*(*(v29 + 16) + 24))();
      if (v12)
      {
        v13 = 8 * v12;
        v14 = 1;
        do
        {
          v15 = *v11++;
          v14 *= v15;
          v13 -= 8;
        }

        while (v13);
        if (v14 != 1)
        {
LABEL_29:
          v6 = *v4;
LABEL_30:
          v34 = "Expected constant input for index.";
          v37 = 259;
          mlir::Operation::emitOpError(v30, v6, &v34);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
          *a1 = 0;
          *(a1 + 64) = 0;
          goto LABEL_34;
        }
      }

      mlir::DenseElementsAttr::tryGetValues<int,void>(&v29, &v34);
      if (v35)
      {
        v16 = 0;
      }

      else
      {
        v16 = v36[0];
      }

      v17 = *(v34 + v16);
      v18 = *v4;
      v19 = v32;
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 16);
        v19 = v32;
      }

      v20 = v31 + 16 * v19;
      *v20 = v17;
      v20[1] = v18;
      v21 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      ++v4;
    }

    while (v4 != v5);
    v23 = v31;
    v22 = v31 + 16 * v21;
    if (v21)
    {
      v24 = 126 - 2 * __clz(v21);
      goto LABEL_24;
    }
  }

  else
  {
    v22 = v33;
    v23 = v33;
  }

  v24 = 0;
LABEL_24:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,false>(v23, v22, v24, 1);
  v34 = v36;
  v35 = 0x600000000;
  if (v32)
  {
    v25 = 16 * v32;
    v26 = (v31 + 8);
    do
    {
      v27 = *v26;
      v26 += 2;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v34, v27);
      v25 -= 16;
    }

    while (v25);
    v28 = v35;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v28)
    {
      llvm::SmallVectorImpl<mlir::Operation *>::operator=(a1, &v34);
    }
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  *(a1 + 64) = 1;
  if (v34 != v36)
  {
    free(v34);
  }

LABEL_34:
  if (v31 != v33)
  {
    free(v31);
  }
}

void mlir::ODIE::Compiler::Transforms::getBoundaryOpInput(void *result, uint64_t *a2, uint64_t a3)
{
  *result = result + 2;
  result[1] = 0x600000000;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(result, *(*(v6 + 72) + 24));
      v5 -= 8;
    }

    while (v5);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OutputOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v11[0] = v12;
  v11[1] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v11, *a3 & 0xFFFFFFFFFFFFFFF9, 0, *a3 & 0xFFFFFFFFFFFFFFF9, *(a3 + 8));
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  j = v7;
  while (1)
  {
    v7 = j;
    v10 = (a2 - j) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(j, (j + 16), (a2 - 16));
        case 4:
          result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(j, (j + 16), (j + 32));
          v44 = *(a2 - 16);
          v45 = *(j + 32);
          if (v44 >= v45)
          {
            if (v45 < v44)
            {
              return result;
            }

            v47 = *(a2 - 8);
            v46 = *(j + 40);
            if (v47 >= v46)
            {
              return result;
            }
          }

          else
          {
            v46 = *(j + 40);
            v47 = *(a2 - 8);
          }

          *(j + 32) = v44;
          *(a2 - 16) = v45;
          *(j + 40) = v47;
          *(a2 - 8) = v46;
          v48 = *(j + 32);
          v49 = *(j + 16);
          if (v48 >= v49)
          {
            if (v49 < v48)
            {
              return result;
            }

            v51 = *(j + 40);
            v50 = *(j + 24);
            if (v51 >= v50)
            {
              return result;
            }
          }

          else
          {
            v50 = *(j + 24);
            v51 = *(j + 40);
          }

          *(j + 16) = v48;
          *(j + 32) = v49;
          *(j + 24) = v51;
          *(j + 40) = v50;
          v52 = *j;
          if (v48 >= *j)
          {
            if (v52 < v48)
            {
              return result;
            }

            v53 = *(j + 8);
            if (v51 >= v53)
            {
              return result;
            }
          }

          else
          {
            v53 = *(j + 8);
          }

          *j = v48;
          *(j + 16) = v52;
          *(j + 8) = v51;
          *(j + 24) = v53;
          return result;
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(j, j + 16, j + 32, j + 48, (a2 - 16));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v54 = *(a2 - 16);
        v55 = *j;
        if (v54 >= *j)
        {
          if (v55 < v54)
          {
            return result;
          }

          v57 = *(a2 - 8);
          v56 = *(j + 8);
          if (v57 >= v56)
          {
            return result;
          }
        }

        else
        {
          v56 = *(j + 8);
          v57 = *(a2 - 8);
        }

        *j = v54;
        *(a2 - 16) = v55;
        *(j + 8) = v57;
        *(a2 - 8) = v56;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return result;
      }

      v73 = (v10 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 >= v74)
        {
          v76 = (2 * v74) | 1;
          v77 = j + 16 * v76;
          if (2 * v75 + 2 < v10)
          {
            v78 = *(v77 + 16);
            if (*v77 < v78 || v78 >= *v77 && *(v77 + 8) < *(v77 + 24))
            {
              v77 += 16;
              v76 = 2 * v75 + 2;
            }
          }

          v79 = j + 16 * v75;
          v80 = *v77;
          v81 = *v79;
          if (*v77 >= *v79)
          {
            if (v81 < v80)
            {
              v82 = *(v79 + 8);
              v83 = *(v77 + 8);
LABEL_147:
              *v79 = v80;
              *(v79 + 8) = v83;
              if (v73 >= v76)
              {
                while (1)
                {
                  v85 = 2 * v76;
                  v76 = (2 * v76) | 1;
                  v84 = j + 16 * v76;
                  v86 = v85 + 2;
                  if (v86 < v10)
                  {
                    result = *(v84 + 16);
                    if (*v84 < result || result >= *v84 && (result = *(v84 + 8), result < *(v84 + 24)))
                    {
                      v84 += 16;
                      v76 = v86;
                    }
                  }

                  v87 = *v84;
                  if (*v84 < v81)
                  {
                    break;
                  }

                  v88 = *(v84 + 8);
                  if (v81 >= v87 && v88 < v82)
                  {
                    break;
                  }

                  *v77 = v87;
                  *(v77 + 8) = v88;
                  v77 = v84;
                  if (v73 < v76)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v84 = v77;
LABEL_149:
              *v84 = v81;
              *(v84 + 8) = v82;
              goto LABEL_150;
            }

            v83 = *(v77 + 8);
            v82 = *(v79 + 8);
            if (v83 >= v82)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v74 = v75 - 1;
        if (!v75)
        {
          while (1)
          {
            v92 = 0;
            v93 = *j;
            v94 = *(j + 8);
            v95 = j;
            do
            {
              v96 = v95;
              v97 = v95 + 16 * v92;
              v95 = v97 + 16;
              v98 = 2 * v92;
              v92 = (2 * v92) | 1;
              v99 = v98 + 2;
              if (v99 < v10)
              {
                result = *(v97 + 32);
                v100 = *(v97 + 16);
                if (v100 < result || result >= v100 && (result = *(v97 + 24), result < *(v97 + 40)))
                {
                  v95 = v97 + 32;
                  v92 = v99;
                }
              }

              *v96 = *v95;
              *(v96 + 8) = *(v95 + 8);
            }

            while (v92 <= ((v10 - 2) >> 1));
            if (v95 == a2 - 16)
            {
              *v95 = v93;
              *(v95 + 8) = v94;
            }

            else
            {
              *v95 = *(a2 - 16);
              *(v95 + 8) = *(a2 - 8);
              *(a2 - 16) = v93;
              *(a2 - 8) = v94;
              v101 = (v95 - j + 16) >> 4;
              v102 = v101 - 2;
              if (v101 >= 2)
              {
                v103 = v102 >> 1;
                v104 = j + 16 * (v102 >> 1);
                v105 = *v104;
                v106 = *v95;
                if (*v104 < *v95)
                {
                  v91 = *(v95 + 8);
                  v90 = *(v104 + 8);
LABEL_179:
                  *v95 = v105;
                  *(v95 + 8) = v90;
                  if (v102 >= 2)
                  {
                    while (1)
                    {
                      v108 = v103 - 1;
                      v103 = (v103 - 1) >> 1;
                      v107 = j + 16 * v103;
                      v109 = *v107;
                      if (*v107 >= v106)
                      {
                        if (v106 < v109)
                        {
                          break;
                        }

                        v110 = *(v107 + 8);
                        if (v110 >= v91)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v110 = *(v107 + 8);
                      }

                      *v104 = v109;
                      *(v104 + 8) = v110;
                      v104 = j + 16 * v103;
                      if (v108 <= 1)
                      {
                        goto LABEL_186;
                      }
                    }
                  }

                  v107 = v104;
LABEL_186:
                  *v107 = v106;
                  *(v107 + 8) = v91;
                  goto LABEL_188;
                }

                if (v106 >= v105)
                {
                  v90 = *(v104 + 8);
                  v91 = *(v95 + 8);
                  if (v90 < v91)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_188:
            a2 -= 16;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = j + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>((v7 + 16 * (v10 >> 1)), v7, (a2 - 16));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(v7, (v7 + 16 * (v10 >> 1)), (a2 - 16));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>((v7 + 16), (v12 - 16), (a2 - 32));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>((v7 + 32), (v7 + 16 + 16 * v11), (a2 - 48));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      v14 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
    }

    --a3;
    v15 = *v7;
    if ((a4 & 1) != 0 || (v16 = *(v7 - 16), v16 < v15))
    {
LABEL_19:
      v18 = 0;
      v19 = *(v7 + 8);
      while (1)
      {
        v20 = *(v7 + v18 + 16);
        if (v20 >= v15 && (v15 < v20 || *(v7 + v18 + 24) >= v19))
        {
          break;
        }

        v18 += 16;
      }

      v21 = v7 + v18 + 16;
      if (v18)
      {
        v22 = *v8;
        for (i = a2 - 16; v22 >= v15 && (v15 < v22 || *(i + 8) >= v19); i -= 16)
        {
          v24 = *(i - 16);
          v22 = v24;
        }
      }

      else
      {
        i = a2;
        if (v21 < a2)
        {
          v25 = *v8;
          i = a2 - 16;
          if (*v8 >= v15)
          {
            i = a2 - 16;
            do
            {
              if (v15 >= v25)
              {
                if (v21 >= i || *(i + 8) < v19)
                {
                  break;
                }
              }

              else if (v21 >= i)
              {
                break;
              }

              v26 = *(i - 16);
              i -= 16;
              v25 = v26;
            }

            while (v26 >= v15);
          }
        }
      }

      if (v21 >= i)
      {
        j = v21;
      }

      else
      {
        v27 = *i;
        j = v21;
        v28 = i;
        do
        {
          *j = v27;
          *v28 = v20;
          v29 = *(j + 8);
          *(j + 8) = *(v28 + 8);
          *(v28 + 8) = v29;
          do
          {
            do
            {
              v30 = *(j + 16);
              j += 16;
              v20 = v30;
            }

            while (v30 < v15);
          }

          while (v15 >= v20 && *(j + 8) < v19);
          do
          {
            v31 = *(v28 - 16);
            v28 -= 16;
            v27 = v31;
          }

          while (v31 >= v15 && (v15 < v27 || *(v28 + 8) >= v19));
        }

        while (j < v28);
      }

      if (j - 16 != v7)
      {
        *v7 = *(j - 16);
        *(v7 + 8) = *(j - 8);
      }

      *(j - 16) = v15;
      *(j - 8) = v19;
      if (v21 < i)
      {
LABEL_56:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,false>(v7, j - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v32 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *>(v7, j - 16);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *>(j, a2);
        if (result)
        {
          a2 = j - 16;
          if (v32)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v32)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v15 < v16)
      {
        v17 = *(v7 + 8);
      }

      else
      {
        v17 = *(v7 + 8);
        if (*(v7 - 8) < v17)
        {
          goto LABEL_19;
        }
      }

      v33 = *v8;
      if (v15 < *v8 || v33 >= v15 && v17 < *(a2 - 8))
      {
        j = v7;
        do
        {
          v35 = *(j + 16);
          j += 16;
          v34 = v35;
        }

        while (v15 >= v35 && (v34 < v15 || v17 >= *(j + 8)));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = a2 - 16; v15 < v33 || v33 >= v15 && v17 < *(k + 8); k -= 16)
        {
          v37 = *(k - 16);
          v33 = v37;
        }
      }

      if (j < k)
      {
        v38 = *j;
        v39 = *k;
        do
        {
          *j = v39;
          *k = v38;
          v40 = *(j + 16);
          j += 16;
          v38 = v40;
          v41 = *(j - 8);
          *(j - 8) = *(k + 8);
          *(k + 8) = v41;
          while (v15 >= v38 && (v38 < v15 || v17 >= *(j + 8)))
          {
            v42 = *(j + 16);
            j += 16;
            v38 = v42;
          }

          do
          {
            do
            {
              v43 = *(k - 16);
              k -= 16;
              v39 = v43;
            }

            while (v15 < v43);
          }

          while (v39 >= v15 && v17 < *(k + 8));
        }

        while (j < k);
      }

      if (j - 16 != v7)
      {
        *v7 = *(j - 16);
        *(v7 + 8) = *(j - 8);
      }

      a4 = 0;
      *(j - 16) = v15;
      *(j - 8) = v17;
    }
  }

  v58 = j + 16;
  v60 = j == a2 || v58 == a2;
  if ((a4 & 1) == 0)
  {
    if (v60)
    {
      return result;
    }

    for (m = j + 8; ; m += 16)
    {
      v113 = v7;
      v7 = v58;
      v114 = *(v113 + 16);
      v115 = *v113;
      if (v114 < *v113)
      {
        break;
      }

      if (v115 >= v114)
      {
        v116 = *(v113 + 24);
        if (v116 < *(v113 + 8))
        {
          goto LABEL_201;
        }
      }

LABEL_209:
      v58 = v7 + 16;
      if (v7 + 16 == a2)
      {
        return result;
      }
    }

    v116 = *(v113 + 24);
LABEL_201:
    for (n = m; ; n -= 16)
    {
      *(n + 8) = v115;
      *(n + 16) = *n;
      v115 = *(n - 24);
      if (v114 >= v115 && (v115 < v114 || v116 >= *(n - 16)))
      {
        break;
      }
    }

    *(n - 8) = v114;
    *n = v116;
    goto LABEL_209;
  }

  if (v60)
  {
    return result;
  }

  v61 = 0;
  v62 = j;
  while (2)
  {
    v63 = v62;
    v62 = v58;
    v64 = *(v63 + 16);
    v65 = *v63;
    if (v64 >= *v63)
    {
      if (v65 < v64)
      {
        goto LABEL_133;
      }

      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
      if (v66 >= v67)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
    }

    *(v63 + 16) = v65;
    *(v62 + 8) = v67;
    v68 = j;
    if (v63 == j)
    {
      goto LABEL_132;
    }

    v69 = v61;
    while (2)
    {
      v70 = *(j + v69 - 16);
      if (v64 < v70)
      {
        v71 = *(j + v69 - 8);
        goto LABEL_126;
      }

      if (v70 >= v64)
      {
        v68 = j + v69;
        v71 = *(j + v69 - 8);
        if (v66 >= v71)
        {
          goto LABEL_132;
        }

LABEL_126:
        v63 -= 16;
        v72 = j + v69;
        *v72 = v70;
        *(v72 + 8) = v71;
        v69 -= 16;
        if (!v69)
        {
          v68 = j;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v68 = v63;
LABEL_132:
    *v68 = v64;
    *(v68 + 8) = v66;
LABEL_133:
    v58 = v62 + 16;
    v61 += 16;
    if (v62 + 16 != a2)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(int *result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 1) < *(result + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 1);
      *(result + 1) = v6;
      *(a3 + 1) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v15 = *(a2 + 1);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 1);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 1);
    *(result + 1) = v15;
    *(a2 + 1) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 1);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 1) = v18;
    *(a3 + 1) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 1);
    v9 = *(a2 + 1);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 1) = v10;
  *(a3 + 1) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 1);
    v14 = *(a2 + 1);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 1) = v14;
    *(a2 + 1) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 1);
    v13 = *(result + 1);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,mlir::Operation *> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

std::random_device *std::random_device::random_device[abi:nn200100](std::random_device *a1)
{
  std::string::basic_string[abi:nn200100]<0>(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void *std::pair<llvm::SmallVector<mlir::Type,6u>,llvm::SmallVector<mlir::Location,6u>>::pair[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>&,llvm::SmallVector<mlir::Location,6u>&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::Type>::operator=(a1, a2);
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::Location>::operator=((a1 + 8), a3);
  }

  return a1;
}

uint64_t **mlir::ResultRange::replaceAllUsesWith<llvm::ArrayRef<mlir::Value>>(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    v5 = result;
    v6 = 0;
    v7 = 8 * a4 - 8;
    v8 = a2 - 1;
    v9 = result;
    while (1)
    {
      v10 = v5;
      if (!v6)
      {
        goto LABEL_10;
      }

      v11 = v5;
      v12 = v6;
      if (v5)
      {
        v13 = v5[1] & 7;
        v11 = v5;
        v12 = v6;
        if (v13 != 6)
        {
          v14 = (5 - v13);
          v10 = v9;
          v12 = v6 - v14;
          if (v6 <= v14)
          {
            goto LABEL_10;
          }

          v11 = &v5[-2 * v14];
        }
      }

      v10 = &v11[-3 * v12];
LABEL_10:
      v16 = *(a3 + 8 * v6);
      result = mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v10, &v16);
      if (v8 != v6)
      {
        ++v6;
        v15 = v7;
        v7 -= 8;
        v9 -= 2;
        if (v15)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteHardwareBackedIOToGraphBoundaries>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *v2 = &unk_286EA49D8;
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 1872);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 1632);
    mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(v2 + 1368);
    mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(v2 + 1104);
    mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(v2 + 840);
    mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(v2 + 576);
    mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(v2 + 336);
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::Transforms::impl::PromoteHardwareBackedIOToGraphBoundariesBase<mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteHardwareBackedIOToGraphBoundaries>::PromoteHardwareBackedIOToGraphBoundariesBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286EA49D8;
  *&v3 = "The name of the graph to force to hardware-backed IO.";
  *(&v3 + 1) = 53;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 336), (a1 + 144), "force-graph-name", 16, &v3);
  *(a1 + 336) = &unk_286E98FD0;
  *(a1 + 560) = &unk_286E99050;
  *&v3 = "The arguments to force to hardware-backed IO.";
  *(&v3 + 1) = 45;
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::ListOption<llvm::cl::desc>(a1 + 576, (a1 + 144), "force-argument-idxs", 19, &v3);
  *(a1 + 576) = &unk_286EA4A48;
  *(a1 + 816) = &unk_286EA4AC8;
  *&v3 = "The results to force to hardware-backed IO.";
  *(&v3 + 1) = 43;
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::ListOption<llvm::cl::desc>(a1 + 840, (a1 + 144), "force-result-idxs", 17, &v3);
  *(a1 + 840) = &unk_286EA4A48;
  *(a1 + 1080) = &unk_286EA4AC8;
  *&v3 = "The alignments of the hardware-backed IO.";
  *(&v3 + 1) = 41;
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::ListOption<llvm::cl::desc>(a1 + 1104, (a1 + 144), "alignments", 10, &v3);
  *(a1 + 1104) = &unk_286EA4C78;
  *(a1 + 1344) = &unk_286EA4CF8;
  *&v3 = "The interleave of the hardware-backed IO.";
  *(&v3 + 1) = 41;
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::ListOption<llvm::cl::desc>(a1 + 1368, (a1 + 144), "interleave", 10, &v3);
  *(a1 + 1368) = &unk_286EA4C78;
  *(a1 + 1608) = &unk_286EA4CF8;
  *&v3 = "The parameter name to use for the hardware-backed IO.";
  *(&v3 + 1) = 53;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 1632), (a1 + 144), "parameter-name", 14, &v3);
  *(a1 + 1632) = &unk_286E98FD0;
  *(a1 + 1856) = &unk_286E99050;
  *&v3 = "The allocation type of the hardware-backed IO.";
  *(&v3 + 1) = 46;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>((a1 + 1872), (a1 + 144), "allocation-type", 15, &v3);
  *(a1 + 1872) = &unk_286E98FD0;
  *(a1 + 2096) = &unk_286E99050;
  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteHardwareBackedIOToGraphBoundaries::~PromoteHardwareBackedIOToGraphBoundaries(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::PromoteHardwareBackedIOToGraphBoundaries *this)
{
  *this = &unk_286EA49D8;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1872);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1632);
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(this + 1368);
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(this + 1104);
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(this + 840);
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286EA49D8;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1872);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1632);
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(this + 1368);
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(this + 1104);
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(this + 840);
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(this + 576);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteHardwareBackedIOToGraphBoundaries::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::PromoteHardwareBackedIOToGraphBoundaries *this)
{
  v189 = *MEMORY[0x277D85DE8];
  v2 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
  v3 = *(this + 479);
  if (v3 < 0)
  {
    v4 = *(this + 58);
  }

  else
  {
    v4 = *(this + 479);
  }

  if (!v4)
  {
LABEL_168:
    v138 = *(**v2 + 32);
    *&__p[8] = 0u;
    v159 = 0u;
    *__p = v138;
    v160 = v162;
    v161 = 0x600000000;
    v162[6] = 0;
    v162[7] = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v167 = 40;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 40;
    operator new();
  }

  v155 = v157;
  v156 = 0x300000000;
  v5 = *(this + 57);
  if (v3 < 0)
  {
    v3 = *(this + 58);
  }

  else
  {
    v5 = this + 456;
  }

  *__p = v5;
  *&__p[8] = v3;
  llvm::StringRef::split(__p, &v155, 46, -1, 1);
  v152 = v154;
  v153 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::resizeImpl<false>(&v152, v156 - 1);
  v7 = v155;
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  if (v156 != 1)
  {
    v9 = v155 + 16 * v156;
    v10 = *(***(v8 + 24) + 32);
    v11 = v152;
    v12 = v155 + 16;
    do
    {
      v13 = *v12;
      v14 = *(v12 + 1);
      v12 += 16;
      WORD4(v159) = 261;
      *__p = v13;
      *&__p[8] = v14;
      v15 = mlir::StringAttr::get(v10, __p, v6);
      *v11++ = mlir::SymbolRefAttr::get(v15, 0, 0, v16);
    }

    while (v12 != v9);
    v7 = v155;
    v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(***(v8 + 24) + 32);
  v19 = *v7;
  v18 = v7[1];
  v20 = v152;
  v21 = v153;
  WORD4(v159) = 261;
  *__p = v19;
  *&__p[8] = v18;
  v22 = mlir::StringAttr::get(v17, __p, v6);
  v24 = mlir::SymbolRefAttr::get(v22, v20, v21, v23);
  v146[0] = 0;
  v146[1] = 0;
  v147 = 0;
  v25 = mlir::SymbolTableCollection::lookupSymbolIn(v146, *(this + 5) & 0xFFFFFFFFFFFFFFF8, v24);
  if (!v25 || ((v26 = *(v25[2].__r_.__value_.__r.__words[0] + 16), v27 = v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id, v26 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id) ? (v28 = 0) : (v28 = v25), !v27))
  {
    v175 = "failed to find graph named ";
    LOWORD(v179) = 259;
    emitDiag(v2, 2, &v175, __p);
    if (*__p)
    {
      LOWORD(v184) = 260;
      v180 = this + 456;
      mlir::Diagnostic::operator<<(&__p[8], &v180);
      if (*__p)
      {
        mlir::Diagnostic::operator<<<13ul>(&__p[8], " parsed as (");
        if (*__p)
        {
          LODWORD(v180) = 0;
          v181 = v24;
          v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v159, &v180, 1);
          v30 = v159 + 24 * DWORD2(v159);
          v31 = *v29;
          *(v30 + 16) = *(v29 + 16);
          *v30 = v31;
          ++DWORD2(v159);
          if (*__p)
          {
            mlir::Diagnostic::operator<<<3ul>(&__p[8], ").");
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
    *(this + 5) |= 4uLL;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v146);
    MEMORY[0x25F891030](v146[0], 8);
    if (v152 != v154)
    {
      free(v152);
    }

    if (v155 != v157)
    {
      free(v155);
    }

    return;
  }

  v145 = v28;
  v151 = v25;
  v32 = *(*(&v25[3].__r_.__value_.__l.__size_ + 2 * ((HIDWORD(v25[1].__r_.__value_.__r.__words[2]) >> 23) & 1)) + 8);
  v33 = *(v32 + 16);
  v34 = &v33[8 * *(v32 + 8)];
  v180 = &v182;
  v181 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v180, v33, v34);
  v143 = v32;
  v35 = (*(v32 + 16) + 8 * *(v32 + 8));
  v36 = &v35[8 * *(v32 + 12)];
  v175 = &v177;
  v176 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v175, v35, v36);
  mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getAllParamDecls(&v151, &v172);
  v37 = v172;
  v38 = v173;
  if (v173)
  {
    v39 = *(this + 1775);
    if (v39 >= 0)
    {
      v40 = this + 1752;
    }

    else
    {
      v40 = *(this + 219);
    }

    if (v39 >= 0)
    {
      v41 = *(this + 1775);
    }

    else
    {
      v41 = *(this + 220);
    }

    v42 = 8 * v173;
    v43 = v172;
    while (1)
    {
      v44 = *(*v43 + 8);
      if (*(v44 + 24) == v41 && (!v41 || !memcmp(*(v44 + 16), v40, v41)))
      {
        break;
      }

      v43 += 8;
      v42 -= 8;
      if (!v42)
      {
        v45 = 0;
        goto LABEL_43;
      }
    }
  }

  else
  {
    v43 = v172;
  }

  if (v43 == &v37[8 * v38])
  {
    v45 = 0;
  }

  else
  {
    v45 = mlir::ODIE::Compiler::CoreML::ParamRefAttr::get(*v43);
  }

LABEL_43:
  v46 = *(this + 2015);
  if (v46 >= 0)
  {
    v47 = this + 1992;
  }

  else
  {
    v47 = *(this + 249);
  }

  if (v46 >= 0)
  {
    v48 = *(this + 2015);
  }

  else
  {
    v48 = *(this + 250);
  }

  v49 = mlir::ODIE::Compiler::CoreMLAX::convertToEnum(v47, v48);
  v50 = *(this + 1775);
  if (v50 < 0)
  {
    v50 = *(this + 220);
  }

  if (v50)
  {
    if (v45)
    {
      if ((v49 & 0x100000000) != 0)
      {
        data = v151[1].__r_.__value_.__l.__data_;
        v188 = 257;
        emitDiag(data, 1, &v187, __p);
        if (*__p)
        {
          mlir::Diagnostic::operator<<<75ul>(&__p[8], "found allocation type alongside parameter, allocation type will be ignored");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
      }

      if (*(this + 153) != *(this + 154))
      {
        v52 = v151[1].__r_.__value_.__l.__data_;
        v188 = 257;
        emitDiag(v52, 1, &v187, __p);
        if (*__p)
        {
          mlir::Diagnostic::operator<<<65ul>(&__p[8], "found alignments alongside parameter, alignments will be ignored");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
      }

      if (*(this + 186) != *(this + 187))
      {
        v53 = v151[1].__r_.__value_.__l.__data_;
        v188 = 257;
        emitDiag(v53, 1, &v187, __p);
        if (*__p)
        {
          mlir::Diagnostic::operator<<<65ul>(&__p[8], "found interleave alongside parameter, interleave will be ignored");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
      }

      goto LABEL_68;
    }

    v84 = v151[1].__r_.__value_.__l.__data_;
    v188 = 257;
    emitDiag(v84, 2, &v187, __p);
    if (*__p)
    {
      mlir::Diagnostic::operator<<<32ul>(&__p[8], "referring to invalid parameter ");
      if (*__p)
      {
        v188 = 260;
        v187.__r_.__value_.__r.__words[0] = this + 1752;
        mlir::Diagnostic::operator<<(&__p[8], &v187.__r_.__value_.__l.__data_);
      }
    }

LABEL_99:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
    v82 = 0;
    v83 = 0;
    v81 = 0;
    goto LABEL_100;
  }

  if ((v49 & 0x100000000) == 0)
  {
    v54 = v151[1].__r_.__value_.__l.__data_;
    v188 = 257;
    emitDiag(v54, 2, &v187, __p);
    if (*__p)
    {
      mlir::Diagnostic::operator<<<25ul>(&__p[8], "invalid allocation type.");
    }

    goto LABEL_99;
  }

LABEL_68:
  v55 = *(this + 87);
  v56 = *(this + 88);
  if (v55 == v56)
  {
LABEL_81:
    v67 = *(this + 120);
    v68 = *(this + 121);
    if (v67 == v68)
    {
LABEL_94:
      v79 = *(**v143 + 32);
      *__p = v180 & 0xFFFFFFFFFFFFFFF9 | 2;
      *&__p[8] = v181;
      v187.__r_.__value_.__r.__words[0] = v175 & 0xFFFFFFFFFFFFFFF9 | 2;
      v187.__r_.__value_.__l.__size_ = v176;
      v80 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v79, __p, &v187);
      v81 = v80 & 0xFFFFFFFFFFFFFF00;
      v82 = v80;
      v83 = 1;
      goto LABEL_100;
    }

    while (1)
    {
      v69 = *v67;
      v150 = v69;
      v70 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
      v71 = v151[1].__r_.__value_.__l.__data_;
      llvm::to_string<long long>(&v187, &v150);
      v72 = std::string::insert(&v187, 0, "result ");
      v73 = v72->__r_.__value_.__r.__words[2];
      *__p = *&v72->__r_.__value_.__l.__data_;
      *&__p[16] = v73;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v74 = __p;
      }

      else
      {
        v74 = *__p;
      }

      if (__p[23] >= 0)
      {
        v75 = __p[23];
      }

      else
      {
        v75 = *&__p[8];
      }

      ForcedType = mlir::ODIE::Compiler::Transforms::createForcedType(v70, v71, v74, v75, *(v175 + v69), v45, *(this + 153), (*(this + 154) - *(this + 153)) >> 3, *(this + 186), (*(this + 187) - *(this + 186)) >> 3, v49);
      v78 = v77;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }

      if ((v78 & 1) == 0)
      {
        break;
      }

      *(v175 + v69) = ForcedType;
      if (++v67 == v68)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    while (1)
    {
      v57 = *v55;
      v150 = v57;
      v58 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
      v59 = v151[1].__r_.__value_.__l.__data_;
      llvm::to_string<long long>(&v187, &v150);
      v60 = std::string::insert(&v187, 0, "operand ");
      v61 = v60->__r_.__value_.__r.__words[2];
      *__p = *&v60->__r_.__value_.__l.__data_;
      *&__p[16] = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v62 = __p;
      }

      else
      {
        v62 = *__p;
      }

      if (__p[23] >= 0)
      {
        v63 = __p[23];
      }

      else
      {
        v63 = *&__p[8];
      }

      v64 = mlir::ODIE::Compiler::Transforms::createForcedType(v58, v59, v62, v63, *(v180 + 8 * v57), v45, *(this + 153), (*(this + 154) - *(this + 153)) >> 3, *(this + 186), (*(this + 187) - *(this + 186)) >> 3, v49);
      v66 = v65;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v187.__r_.__value_.__l.__data_);
      }

      if ((v66 & 1) == 0)
      {
        break;
      }

      *(v180 + 8 * v57) = v64;
      if (++v55 == v56)
      {
        goto LABEL_81;
      }
    }
  }

  v82 = 0;
  v83 = 0;
  v81 = 0;
LABEL_100:
  if (v172 != &v174)
  {
    free(v172);
  }

  if (v175 != &v177)
  {
    free(v175);
  }

  if (v180 != &v182)
  {
    free(v180);
  }

  if (v83)
  {
    v141 = v83;
    v85 = v81 | v82;
    v176 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    v178 = 0;
    v179 = 0;
    v177 = 0;
    v175 = &unk_286E76228;
    v86 = *(v85 + 16);
    v87 = *(v85 + 8);
    v88 = v145;
    v150 = v145;
    v144 = v145 + 64;
    v89 = *(((v145 + 64 + 16 * ((*(v145 + 44) >> 23) & 1) + ((*(v145 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v145 + 40) + 8);
    v90 = (v89 - 8);
    if (!v89)
    {
      v90 = 0;
    }

    v92 = v90[5];
    v91 = v90[6];
    v178 = v90;
    v179 = v92;
    v148 = &v150;
    v93 = v90[7];
    v172 = &v149;
    v173 = &v148;
    *__p = &__p[16];
    *&__p[8] = 0x300000000;
    v142 = v85;
    if (v87 && v93 != v91)
    {
      v94 = v86 & 0xFFFFFFFFFFFFFFF9 | 2;
      v95 = (v93 - v91) >> 3;
      v96 = (v91 & 0xFFFFFFFFFFFFFFF9);
      v97 = v87 - 1;
      if (v87 - 1 >= (v95 - 1))
      {
        v97 = v95 - 1;
      }

      v139 = v97 + 1;
      if (v97 < 3)
      {
        v98 = 0;
        v99 = &__p[16];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], v97 + 1, 16);
        v98 = *&__p[8];
        v99 = *__p;
      }

      v100 = 0;
      v101 = 0;
      v180 = v96;
      v181 = 0;
      v182 = v94;
      v183 = 0;
      v184 = &v172;
      v185 = &v175;
      v102 = &v99[16 * v98];
      LOBYTE(v186) = 1;
      do
      {
        v103 = mlir::ValueRange::dereference_iterator(&v180, v101);
        v104 = mlir::TypeRange::dereference_iterator(v182, v100);
        v105 = (*(v103 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v105 == v104)
        {
          v106 = 0;
        }

        else
        {
          v107 = v104;
          v108 = v185;
          v109 = **v184[1];
          (*(*v185 + 5))(v185, v109);
          *(v103 + 8) = *(v103 + 8) & 7 | v107;
          (*(*v108 + 48))(v108, v109);
          v110 = mlir::ODIE::Compiler::Transforms::materializeFromHardwareBackedTensorConversion(v108, v103, v105);
          if ((~*(v110 + 8) & 7) != 0)
          {
            v111 = v110;
          }

          else
          {
            v111 = 0;
          }

          if (v111)
          {
            v112 = *(v111 + 8) & 7;
            if (v112 == 6)
            {
              v111 += 24 * *(v111 + 16) + 120;
            }

            else
            {
              v111 += 16 * v112 + 16;
            }
          }

          v187.__r_.__value_.__r.__words[0] = v111;
          v151 = &v187;
          mlir::RewriterBase::replaceUsesWithIf(v108, v103, v110, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &v151, 0);
          v106 = 1;
        }

        *v102 = 0;
        v102[8] = v106;
        v101 = v181 + 1;
        v100 = v183 + 1;
        v181 = v101;
        ++v183;
        v102 += 16;
      }

      while (v101 != v95 && v100 != v87);
      *&__p[8] += v139;
      v88 = v145;
      v85 = v142;
      if (*__p != &__p[16])
      {
        free(*__p);
      }
    }

    v178 = 0;
    v179 = 0;
    v114 = *(v85 + 16);
    v116 = *(v85 + 8);
    v115 = *(v85 + 12);
    v117 = *(((v144 + 16 * ((*(v88 + 44) >> 23) & 1) + ((*(v88 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v88 + 40) + 8);
    if (v117)
    {
      v118 = v117 - 8;
    }

    else
    {
      v118 = 0;
    }

    v119 = *(v118 + 32);
    v178 = *(v119 + 16);
    v179 = v119;
    if ((*(v119 + 46) & 0x80) != 0 && (v120 = *(v119 + 72), v121 = *(v119 + 68), *__p = &__p[16], *&__p[8] = 0x300000000, v115) && v121)
    {
      v122 = v114 + 8 * v116;
      v123 = v115 - 1;
      v124 = (v121 - 1) & 0x7FFFFFFFFFFFFFFLL;
      if (v115 - 1 < v124)
      {
        v124 = v115 - 1;
      }

      v140 = v124 + 1;
      if (v124 < 3)
      {
        v125 = 0;
        v126 = &__p[16];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], v124 + 1, 16);
        v125 = *&__p[8];
        v126 = *__p;
      }

      v127 = 0;
      v128 = v122 & 0xFFFFFFFFFFFFFFF9;
      v129 = &v126[16 * v125];
      v130 = 32 * v121 - 32;
      do
      {
        v131 = mlir::TypeRange::dereference_iterator(v128 | 2, v127);
        v132 = v120[3];
        if ((*(v132 + 8) & 0xFFFFFFFFFFFFFFF8) == v131)
        {
          v133 = 0;
        }

        else
        {
          v134 = mlir::ODIE::Compiler::Transforms::materializeToHardwareBackedTensorConversion(&v175, v132, v131);
          (*(v175 + 5))(&v175, v119);
          v135 = v120[1];
          if (v135)
          {
            v136 = *v120;
            *v135 = *v120;
            if (v136)
            {
              *(v136 + 8) = v120[1];
            }
          }

          v120[3] = v134;
          v120[1] = v134;
          v137 = *v134;
          *v120 = *v134;
          if (v137)
          {
            *(v137 + 8) = v120;
          }

          *v134 = v120;
          (*(v175 + 6))(&v175, v119);
          v133 = 1;
        }

        *v129 = 0;
        v129[8] = v133;
        if (!v130)
        {
          break;
        }

        v120 += 4;
        v129 += 16;
        v130 -= 32;
        v27 = v123 == v127++;
      }

      while (!v27);
      *&__p[8] += v140;
      if (*__p != &__p[16])
      {
        free(*__p);
      }
    }

    else
    {
      *&__p[8] = 0;
    }

    v178 = 0;
    v179 = 0;
    v178 = *(v145 + 16);
    v179 = v145;
    (*(v175 + 5))(&v175, v145);
    *(v144 + 16 * ((*(v145 + 44) >> 23) & 1) + 16) = mlir::TypeAttr::get(v142);
    (*(v175 + 6))(&v175, v145);
    mlir::ODIE::Compiler::Transforms::updateCallerSignatures(&v175, v145, v142);
    v83 = v141;
  }

  else
  {
    *(this + 5) |= 4uLL;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v146);
  MEMORY[0x25F891030](v146[0], 8);
  if (v152 != v154)
  {
    free(v152);
  }

  if (v155 != v157)
  {
    free(v155);
  }

  if (v83)
  {
    v2 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24);
    goto LABEL_168;
  }
}

uint64_t mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::ListOption<llvm::cl::desc>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10 = llvm::cl::Option::Option(a1, 1, 0);
  *(v10 + 168) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 120) = 0u;
  *v10 = &unk_286EA4BC8;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 176) = 0;
  *(v10 + 200) = &unk_286E79150;
  *(v10 + 208) = &unk_286EA4C30;
  *(v10 + 232) = v10 + 208;
  llvm::cl::Option::setArgStr(v10, a3, a4, v11, v12, v13);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v15);
  *(a1 + 32) = *a5;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 248) = 0;
  *a1 = &unk_286EA4B08;
  *(a1 + 240) = &unk_286EA4B88;
  *(a1 + 256) = &unk_286E79150;
  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 168) = 1;
  }

  v15[0] = a1 + 240;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v15);
  return a1;
}

BOOL mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  v11[4] = v6;
  v11[5] = v7;
  *(a1 + 248) = 1;
  v9 = a1;
  v10[0] = a1 + 256;
  v11[0] = a3;
  v11[1] = a4;
  v10[1] = a1;
  v10[2] = v11;
  v10[3] = &v9;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<unsigned int>,mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(unsigned int const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<unsigned int> &,mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(unsigned int const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v10) & 1) == 0;
}

void mlir::Pass::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<unsigned int,BOOL,llvm::cl::parser<unsigned int>>::setDefault(void *a1)
{
  v2 = (a1 + 15);
  v1 = a1[15];
  a1[23] = a1[22];
  a1[16] = v1;
  v3 = a1[18];
  v4 = a1[19];
  while (v3 != v4)
  {
    std::vector<unsigned int>::push_back[abi:nn200100](v2, (v3 + 8));
    v3 += 16;
  }
}

llvm::raw_ostream *mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::print(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  if (*(result + 168) != 1)
  {
    goto LABEL_12;
  }

  v4 = *(result + 18);
  v5 = *(result + 19) - v4;
  v6 = v5 >> 4;
  v7 = *(result + 15);
  if (v5 >> 4 != (*(result + 16) - v7) >> 2)
  {
    goto LABEL_12;
  }

  if ((v5 & 0xFFFFFFFF0) != 0)
  {
    v8 = 0;
    v9 = (v5 >> 4);
    v10 = (v4 + 12);
    while (*v10 == 1 && *(v10 - 1) == *(v7 + 4 * v8))
    {
      ++v8;
      v10 += 16;
      if (v9 == v8)
      {
        LODWORD(v8) = v6;
        break;
      }
    }

    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v6 != v11)
  {
LABEL_12:
    result = llvm::raw_ostream::operator<<(this, *(result + 2), *(result + 3));
    v12 = *(result + 4);
    if (*(result + 3) - v12 > 1uLL)
    {
      *v12 = 31549;
      *(result + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "={", 2uLL);
    }

    v13 = *(v3 + 15);
    v14 = *(v3 + 16);
    if (v13 != v14)
    {
      v16 = *v13;
      v15 = v13 + 1;
      for (result = write_unsigned<unsigned long long>(this, v16, 0, 0, 0); v15 != v14; result = write_unsigned<unsigned long long>(this, v18, 0, 0, 0))
      {
        v17 = *(this + 4);
        if (*(this + 3) == v17)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v17 = 44;
          ++*(this + 4);
        }

        v18 = *v15++;
      }
    }

    v19 = *(this + 4);
    if (*(this + 3) == v19)
    {

      return llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v19 = 125;
      ++*(this + 4);
    }
  }

  return result;
}

void **mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((a1 + 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 2);
  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void **non-virtual thunk tomlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>((a1 - 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 2);
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA4BC8;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<unsigned int,BOOL,llvm::cl::parser<unsigned int>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v6 = a2;
  v10 = 0;
  v11 = a2;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  if ((llvm::cl::parser<unsigned int>::parse(a1 + 200, a1, a3, a4, a5, a6, &v10) & 1) == 0)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 120), &v10);
    *(a1 + 12) = v6;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v11);
    v8 = *(a1 + 232);
    if (v8)
    {
      (*(*v8 + 48))(v8, &v10);
    }

    else
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      llvm::cl::list<unsigned int,BOOL,llvm::cl::parser<unsigned int>>::~list(v9);
    }
  }
}

void llvm::cl::list<unsigned int,BOOL,llvm::cl::parser<unsigned int>>::~list(uint64_t a1)
{
  *a1 = &unk_286EA4BC8;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA4BC8;
  std::__function::__value_func<void ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<unsigned int>,mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(unsigned int const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<unsigned int> &,mlir::detail::PassOptions::ListOption<unsigned int,llvm::cl::parser<unsigned int>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(unsigned int const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v6 = 0;
  v4 = llvm::cl::parser<unsigned int>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3, &v6);
  result = 0;
  if ((v4 & 1) == 0)
  {
    std::vector<unsigned int>::push_back[abi:nn200100]((**(a1 + 24) + 120), &v6);
    return 1;
  }

  return result;
}

void **std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::ListOption<llvm::cl::desc>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10 = llvm::cl::Option::Option(a1, 1, 0);
  *(v10 + 168) = 0;
  *(v10 + 152) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 120) = 0u;
  *v10 = &unk_286EA4DF8;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 176) = 0;
  *(v10 + 200) = &unk_286E79120;
  *(v10 + 208) = &unk_286EA4E60;
  *(v10 + 232) = v10 + 208;
  llvm::cl::Option::setArgStr(v10, a3, a4, v11, v12, v13);
  llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a1 + 88), a2, v15);
  *(a1 + 32) = *a5;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 248) = 0;
  *a1 = &unk_286EA4D38;
  *(a1 + 240) = &unk_286EA4DB8;
  *(a1 + 256) = &unk_286E79120;
  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 168) = 1;
  }

  v15[0] = a1 + 240;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), v15);
  return a1;
}

BOOL mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  v11[4] = v6;
  v11[5] = v7;
  *(a1 + 248) = 1;
  v9 = a1;
  v10[0] = a1 + 256;
  v11[0] = a3;
  v11[1] = a4;
  v10[1] = a1;
  v10[2] = v11;
  v10[3] = &v9;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<long long>,mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(long long const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<long long> &,mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(long long const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v10) & 1) == 0;
}

void mlir::Pass::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<long long,BOOL,llvm::cl::parser<long long>>::setDefault(void *result)
{
  v2 = (result + 15);
  v1 = result[15];
  result[23] = result[22];
  result[16] = v1;
  v3 = result[18];
  v4 = result[19];
  while (v3 != v4)
  {
    llvm::cl::list_storage<long long,BOOL>::addValue<long long>(v2, (v3 + 8));
    v3 += 24;
  }
}

llvm::raw_ostream *mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::print(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  if (*(result + 168) != 1)
  {
    goto LABEL_12;
  }

  v4 = *(result + 18);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(result + 19) - v4) >> 3);
  v6 = *(result + 15);
  if (v5 != (*(result + 16) - v6) >> 3)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 16);
    while (*v8 == 1 && *(v8 - 1) == *(v6 + 8 * v7))
    {
      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        LODWORD(v7) = v5;
        break;
      }
    }

    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 != v9)
  {
LABEL_12:
    result = llvm::raw_ostream::operator<<(this, *(result + 2), *(result + 3));
    v10 = *(result + 4);
    if (*(result + 3) - v10 > 1uLL)
    {
      *v10 = 31549;
      *(result + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "={", 2uLL);
    }

    v11 = *(v3 + 15);
    v12 = *(v3 + 16);
    if (v11 != v12)
    {
      v14 = *v11;
      v13 = v11 + 1;
      for (result = llvm::write_integer(this, v14, 0, 0); v13 != v12; result = llvm::write_integer(this, v16, 0, 0))
      {
        v15 = *(this + 4);
        if (*(this + 3) == v15)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v15 = 44;
          ++*(this + 4);
        }

        v16 = *v13++;
      }
    }

    v17 = *(this + 4);
    if (*(this + 3) == v17)
    {

      return llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v17 = 125;
      ++*(this + 4);
    }
  }

  return result;
}

void **mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>((a1 + 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void **non-virtual thunk tomlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>((a1 - 120), *(a2 - 120), *(a2 - 112), (*(a2 - 112) - *(a2 - 120)) >> 3);
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286EA4DF8;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void llvm::cl::list<long long,BOOL,llvm::cl::parser<long long>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t a6)
{
  v6 = a2;
  v11 = a2;
  v10 = 0;
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    *(a1 + 128) = *(a1 + 120);
    *(a1 + 168) = 0;
  }

  if ((llvm::cl::parser<long long>::parse(a1 + 200, a1, a3, a4, a5, a6, &v10) & 1) == 0)
  {
    llvm::cl::list_storage<long long,BOOL>::addValue<long long>((a1 + 120), &v10);
    *(a1 + 12) = v6;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v11);
    v8 = *(a1 + 232);
    if (v8)
    {
      (*(*v8 + 48))(v8, &v10);
    }

    else
    {
      v9 = std::__throw_bad_function_call[abi:nn200100]();
      llvm::cl::list<long long,BOOL,llvm::cl::parser<long long>>::~list(v9);
    }
  }
}

void llvm::cl::list<long long,BOOL,llvm::cl::parser<long long>>::~list(uint64_t a1)
{
  *a1 = &unk_286EA4DF8;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286EA4DF8;
  std::__function::__value_func<void ()(long long const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void llvm::cl::list_storage<long long,BOOL>::addValue<long long>(const void **a1, uint64_t *a2)
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
      std::vector<long long>::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(a1, v12);
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
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<long long>,mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(long long const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<long long> &,mlir::detail::PassOptions::ListOption<long long,llvm::cl::parser<long long>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(long long const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v5 = 0;
  if (llvm::cl::parser<long long>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3, &v5))
  {
    return 0;
  }

  llvm::cl::list_storage<long long,BOOL>::addValue<long long>((**(a1 + 24) + 120), &v5);
  return 1;
}

void **std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<long long>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15++ = v16;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void mlir::ODIE::Compiler::Transforms::updateCallerSignatures(uint64_t a1, mlir::SymbolTable *this, uint64_t a3)
{
  v4 = this;
  v57[8] = *MEMORY[0x277D85DE8];
  while (1)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      break;
    }

    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v7)
    {
      break;
    }

    this = *(v7 + 16);
    if (!this || *(*(this + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  this = 0;
LABEL_8:
  mlir::SymbolTable::getSymbolUses(v4, &v37, this);
  if (v39 == 1)
  {
    v9 = v37;
    v8 = v38;
    if (v37 == v38)
    {
      goto LABEL_47;
    }

    v10 = &v49;
    v11 = &v46;
    v35 = v38;
    do
    {
      v12 = *v9;
      if (*v9)
      {
        v13 = *(*(*v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v40 = *v9;
        if ((*(v12 + 46) & 0x80) != 0)
        {
          v14 = *(v12 + 68);
          v15 = *(v12 + 72);
        }

        else
        {
          v15 = 0;
          v14 = 0;
        }

        v16 = v10;
        v47 = v10;
        v48 = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v47, v15, 0, v15, v14);
        v17 = *(v40 + 36);
        if (v17)
        {
          v18 = v40 - 16;
        }

        else
        {
          v18 = 0;
        }

        v19 = v11;
        v44 = v11;
        v45 = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v44, v18, 0, v18, v17);
        v36 = *(a1 + 24);
        v20 = v40;
        *(a1 + 24) = *(v40 + 16);
        *(a1 + 32) = v20;
        mlir::ODIE::Compiler::Transforms::materializeConversions<mlir::Value,mlir::ValueRange,mlir::Value (&)(mlir::RewriterBase &,mlir::Value,mlir::Type)>(&v41, a1, mlir::ODIE::Compiler::Transforms::materializeToHardwareBackedTensorConversion, v47 & 0xFFFFFFFFFFFFFFF9, v48, *(a3 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(a3 + 8));
        v21 = *(v40 + 24);
        CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(&v40);
        v24 = v23;
        v25 = *(a3 + 12);
        v26 = *(a3 + 16) + 8 * *(a3 + 8);
        v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::InvokeOp>(a1 + 8, *(**v21 + 32));
        v50 = v21;
        v51 = v27;
        v52[0] = v53;
        v52[1] = 0x400000000;
        v53[4] = v54;
        v53[5] = 0x400000000;
        v54[4] = v55;
        v54[5] = 0x400000000;
        v55[8] = 4;
        v55[9] = v56;
        v55[10] = 0x100000000;
        v56[1] = v57;
        v56[2] = 0x100000000;
        v57[1] = 0;
        v57[2] = 0;
        v57[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v57[4] = 0;
        v57[6] = 0;
        mlir::ODIE::Compiler::CoreML::InvokeOp::build(a1 + 8, &v50, CalleeAttr, v24, v26 & 0xFFFFFFFFFFFFFFF9 | 2, v25, v41 & 0xFFFFFFFFFFFFFFF9, v42);
        v28 = mlir::Operation::create(&v50);
        mlir::OpBuilder::insert((a1 + 8), v28);
        v29 = *(*(v28 + 6) + 16);
        mlir::OperationState::~OperationState(&v50);
        if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        v31 = *(v30 + 9);
        v32 = (v30 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
        if (v31)
        {
          v33 = v32;
        }

        else
        {
          v33 = 4;
        }

        if (v45)
        {
          v34 = v44 & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v34 = 0;
        }

        mlir::ODIE::Compiler::Transforms::materializeConversions<mlir::Value,mlir::ValueRange,mlir::Value (&)(mlir::RewriterBase &,mlir::Value,mlir::Type)>(&v50, a1, mlir::ODIE::Compiler::Transforms::materializeFromHardwareBackedTensorConversion, v33, v31, v34, v45);
        (**a1)(a1, v40, v50 & 0xFFFFFFFFFFFFFFF9, v51);
        if (v50 != v52)
        {
          free(v50);
        }

        if (v41 != &v43)
        {
          free(v41);
        }

        v10 = v16;
        v11 = v19;
        if (v36)
        {
          *(a1 + 24) = v36;
        }

        else
        {
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
        }

        if (v44 != v19)
        {
          free(v44);
        }

        if (v47 != v16)
        {
          free(v47);
        }

        v8 = v35;
      }

      v9 += 16;
    }

    while (v9 != v8);
    if (v39)
    {
      v9 = v37;
LABEL_47:
      if (v9)
      {
        v38 = v9;
        operator delete(v9);
      }
    }
  }
}

uint64_t mlir::ODIE::Compiler::Transforms::createForcedType(uint64_t *a1, void *a2, const char *a3, const char *a4, void *a5, uint64_t *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, int a11)
{
  v35[24] = *MEMORY[0x277D85DE8];
  if (*(*a5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = a6;
    if (!a6)
    {
      v20 = a5[2];
      v33 = v35;
      v34 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v33, v20 + 1, 1);
      v21 = (a8 ? a7 : v33);
      v22 = a8 ? a8 : v34;
      v23 = a10 ? a9 : v33;
      v24 = a10 ? a10 : v34 - 1;
      v25 = a5[4];
      if (v25)
      {
        v26 = *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id ? a5[4] : 0;
      }

      else
      {
        v26 = 0;
      }

      v15 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(a1, v21, v22, v23, v24, a11, v26);
      if (v33 != v35)
      {
        free(v33);
      }
    }

    v27 = a5[1];
    v28 = a5[2];
    v29 = a5[3];
    v33 = a2;
    v35[1] = &llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::CallbacksHolder<mlir::detail::getDefaultDiagnosticEmitFn(mlir::Location const&)::$_0,mlir::detail::getDefaultDiagnosticEmitFn(mlir::Location const&)::$_0,void>::Callbacks + 2;
    v14 = mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<llvm::unique_function<mlir::InFlightDiagnostic ()(void)>>, &v33, *(**v29 + 32), v27, v28, v29, v15);
    llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::~UniqueFunctionBase(&v33);
  }

  else
  {
    v32 = 257;
    emitDiag(a2, 2, v31, &v33);
    if (v33)
    {
      v32 = 261;
      v31[0] = a3;
      v31[1] = a4;
      mlir::Diagnostic::operator<<(&v34, v31);
      if (v33)
      {
        mlir::Diagnostic::operator<<<25ul>(&v34, " is not a ranked tensor.");
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    return 0;
  }

  return v14;
}

void llvm::to_string<long long>(void *a1, unint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_286E79D28;
  v10 = a1;
  llvm::raw_ostream::SetUnbuffered(&v3);
  llvm::write_integer(&v3, *a2, 0, 0);
  llvm::raw_ostream::~raw_ostream(&v3);
}

uint64_t llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<llvm::unique_function<mlir::InFlightDiagnostic ()(void)>>(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

uint64_t mlir::ODIE::Compiler::Transforms::materializeFromHardwareBackedTensorConversion(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v37[8] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = a2;
  v6 = *(a2 + 8);
  if (*(*(v6 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v7)
    {
      v8 = (*v7)[17];
      if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
      {
        v9 = *(*v7[2] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
      }

      else
      {
        v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
      }

      LODWORD(v7) = v9;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v10 = *(*a3 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = a3[4];
    if (v17)
    {
      v18 = (*v17)[17];
      v19 = v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id ? *(*v17[2] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id : v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
      v24 = v19;
      if ((v7 & v24) == 1)
      {
        if ((~v6 & 7) != 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          goto LABEL_45;
        }

        v26 = *(v25 + 8) & 7;
        if (v26 == 6)
        {
          v27 = v25 + 24 * *(v25 + 16) + 120;
          if (!v27)
          {
LABEL_45:
            v28 = (a2 + 32);
LABEL_48:
            v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::Type &,mlir::Value &>((a1 + 8), *v28, &v30, &v31);
LABEL_49:
            if (*(v23 + 9))
            {
              return v23 - 16;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          v27 = v25 + 16 * v26 + 16;
        }

        v28 = (v27 + 24);
        goto LABEL_48;
      }
    }
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    if ((~v6 & 7) != 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (!v15)
      {
LABEL_24:
        v16 = a2 + 32;
LABEL_30:
        v20 = *v16;
        v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>(a1 + 8, *(***v16 + 32));
        v32[0] = v20;
        v32[1] = v21;
        v32[2] = v33;
        v32[3] = 0x400000000;
        v33[4] = v34;
        v33[5] = 0x400000000;
        v34[4] = v35;
        v34[5] = 0x400000000;
        v35[8] = 4;
        v35[9] = v36;
        v35[10] = 0x100000000;
        v36[1] = v37;
        v36[2] = 0x100000000;
        v37[1] = 0;
        v37[2] = 0;
        v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v37[4] = 0;
        v37[6] = 0;
        mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::build(a1 + 8, v32, a3, v4);
        v22 = mlir::Operation::create(v32);
        mlir::OpBuilder::insert((a1 + 8), v22);
        if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        mlir::OperationState::~OperationState(v32);
        goto LABEL_49;
      }
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }

    v16 = v15 + 24;
    goto LABEL_30;
  }

  return v4;
}

mlir::Operation *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CastOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v8;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  mlir::ODIE::Compiler::CoreMLAX::CastOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  return v10;
}

char *mlir::ODIE::Compiler::Transforms::materializeToHardwareBackedTensorConversion(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v37[8] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = a2;
  v6 = *(a2 + 8);
  v7 = *(*(v6 & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v8)
    {
      v9 = (*v8)[17];
      if (v9 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
      {
        v10 = *(*v8[2] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
      }

      else
      {
        v10 = v9 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
      }

      LODWORD(v8) = v10;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v11 = a3[4];
    if (v11)
    {
      v12 = (*v11)[17];
      if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
      {
        v13 = *(*v11[2] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
      }

      else
      {
        v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
      }

      v14 = v13;
      if ((v8 & v14) == 1)
      {
        if ((~v6 & 7) != 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = 0;
        }

        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = *(v15 + 8) & 7;
        if (v16 == 6)
        {
          v17 = v15 + 24 * *(v15 + 16) + 120;
          if (!v17)
          {
LABEL_25:
            v18 = (a2 + 32);
LABEL_42:
            v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::Type &,mlir::Value &>((a1 + 8), *v18, &v30, &v31);
LABEL_49:
            if (*(v25 + 9))
            {
              return v25 - 16;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
          v17 = v15 + 16 * v16 + 16;
        }

        v18 = (v17 + 24);
        goto LABEL_42;
      }

      v19 = v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v20 = v19;
      if ((v20 & v14) == 1)
      {
        if ((~v6 & 7) != 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = 0;
        }

        if (!v21)
        {
          goto LABEL_39;
        }

        v22 = *(v21 + 8) & 7;
        if (v22 == 6)
        {
          v23 = v21 + 24 * *(v21 + 16) + 120;
          if (!v23)
          {
LABEL_39:
            v24 = a2 + 32;
LABEL_45:
            v26 = *v24;
            v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(a1 + 8, *(***v24 + 32));
            v32[0] = v26;
            v32[1] = v27;
            v32[2] = v33;
            v32[3] = 0x400000000;
            v33[4] = v34;
            v33[5] = 0x400000000;
            v34[4] = v35;
            v34[5] = 0x400000000;
            v35[8] = 4;
            v35[9] = v36;
            v35[10] = 0x100000000;
            v36[1] = v37;
            v36[2] = 0x100000000;
            v37[1] = 0;
            v37[2] = 0;
            v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v37[4] = 0;
            v37[6] = 0;
            mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a1 + 8, v32, a3, v4);
            v28 = mlir::Operation::create(v32);
            mlir::OpBuilder::insert((a1 + 8), v28);
            if (*(*(v28 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
            {
              v25 = v28;
            }

            else
            {
              v25 = 0;
            }

            mlir::OperationState::~OperationState(v32);
            goto LABEL_49;
          }
        }

        else
        {
          v23 = v21 + 16 * v22 + 16;
        }

        v24 = v23 + 24;
        goto LABEL_45;
      }
    }
  }

  return v4;
}

void *mlir::ODIE::Compiler::Transforms::materializeConversions<mlir::Value,mlir::ValueRange,mlir::Value (&)(mlir::RewriterBase &,mlir::Value,mlir::Type)>(void *result, uint64_t a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = result;
  v31 = *MEMORY[0x277D85DE8];
  v9 = result + 2;
  *result = result + 2;
  result[1] = 0x600000000;
  if (a5 && a7)
  {
    v13 = a7 - 1;
    v14 = a5 - 1;
    if (a7 - 1 >= (a5 - 1))
    {
      v15 = a5 - 1;
    }

    else
    {
      v15 = a7 - 1;
    }

    v16 = v15 + 1;
    if (v15 < 6)
    {
      v17 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, v9, v15 + 1, 8);
      v17 = *(v8 + 2);
      v9 = *v8;
    }

    v19 = 0;
    v24 = a4;
    v25 = 0;
    v26 = a6;
    v27 = 0;
    v28 = a3;
    v29 = a2;
    v20 = &v9[v17];
    v30 = 1;
    do
    {
      v21 = mlir::ValueRange::dereference_iterator(&v24, v19);
      v22 = mlir::TypeRange::dereference_iterator(a6, v19);
      result = a3(a2, v21, v22);
      v20[v19] = result;
      v25 = v19 + 1;
      v27 = v19 + 1;
      if (v14 == v19)
      {
        break;
      }
    }

    while (v13 != v19++);
    v18 = *(v8 + 2) + v16;
  }

  else
  {
    v18 = 0;
  }

  *(v8 + 2) = v18;
  return result;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteIOTypesPattern::~PromoteIOTypesPattern(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::PromoteIOTypesPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteIOTypesPattern::matchAndRewrite(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3 + 24;
  v6 = *(a3 + 24);
  v7 = (((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
  if (*v7 == v7)
  {
    v35 = 0;
    v36 = 0;
    v37 = 1;
  }

  else
  {
    v44 = a3 + 24;
    v8 = v7[1];
    if (v8)
    {
      v9 = (v8 - 8);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9[6];
    v11 = v9[7];
    v40 = v11 - v10;
    v42 = (a2 + 64);
    v43 = *(a3 + 24);
    if (v11 != v10)
    {
      v12 = v9[6];
      v13 = v12;
      do
      {
        v14 = **v13;
        if (v14 && !*v14)
        {
          v15 = v14[2];
          if (v15 && *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
          {
            v17 = *(*(*v13 + 16) + 24) & 0xFFFFFFFFFFFFFFF8;
            if (v17)
            {
              v18 = *(v17 + 16);
            }

            else
            {
              v18 = 0;
            }

            (*(*a3 + 40))(a3, v18);
            if (*(v15 + 36))
            {
              v19 = v15 - 16;
            }

            else
            {
              v19 = 0;
            }

            *(*v13 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFF8 | *(*v13 + 8) & 7;
            (*(*a3 + 48))(a3, v18);
            v20 = *(*v13 + 16);
            v21 = *(v20 + 40);
            *(a3 + 24) = v20;
            *(a3 + 32) = v21;
            (**a3)(a3, v15, v12, 1);
          }
        }

        v13 += 8;
        v12 += 8;
      }

      while (v13 != v11);
    }

    v22 = v40 >> 3;
    v23 = v9[4];
    if ((*(v23 + 46) & 0x80) != 0)
    {
      v24 = *(v23 + 72);
      v25 = *(v23 + 68);
      if (!v25)
      {
        goto LABEL_36;
      }

      v41 = v40 >> 3;
      v26 = 32 * v25;
      v27 = (v24 + 24);
      while (1)
      {
        v28 = *v27;
        if ((~*(*v27 + 8) & 7) == 0)
        {
          v28 = 0;
        }

        if (!v28)
        {
          goto LABEL_34;
        }

        v29 = *(v28 + 8) & 7;
        if (v29 != 6)
        {
          break;
        }

        v30 = v28 + 24 * *(v28 + 16);
        v31 = v30 + 120;
        if (v30 != -120)
        {
          goto LABEL_32;
        }

LABEL_34:
        v27 += 4;
        v26 -= 32;
        if (!v26)
        {
          v22 = v41;
          goto LABEL_36;
        }
      }

      v31 = v28 + 16 * v29 + 16;
LABEL_32:
      if (*(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
      {
        *&v46 = *(*(v31 + 72) + 24);
        (**a3)(a3);
      }

      goto LABEL_34;
    }

    v24 = 0;
    v25 = 0;
LABEL_36:
    v32 = v10 & 0xFFFFFFFFFFFFFFF8;
    if (v11 == v10)
    {
      v32 = 0;
    }

    v33 = *(***(*&v42[4 * ((*(a2 + 11) >> 23) & 1) + 4] + 8) + 32);
    *&v46 = v32;
    *(&v46 + 1) = v22;
    *&v45 = v24 & 0xFFFFFFFFFFFFFFF9 | 4;
    *(&v45 + 1) = v25;
    v34 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v33, &v46, &v45);
    if (v34 == *(*&v42[4 * ((*(a2 + 11) >> 23) & 1) + 4] + 8))
    {
      v35 = 0;
      v36 = 0;
      v37 = 1;
    }

    else
    {
      v38 = v34;
      (*(*a3 + 40))(a3, a2);
      *&v42[4 * ((*(a2 + 11) >> 23) & 1) + 4] = mlir::TypeAttr::get(v38);
      (*(*a3 + 48))(a3, a2);
      v37 = 0;
      v36 = v38 & 0xFFFFFFFFFFFFFF00;
      v35 = v38;
    }

    v5 = v44;
    v6 = v43;
  }

  if (v6)
  {
    *v5 = v6;
    if (v37)
    {
      return 0;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    if (v37)
    {
      return 0;
    }
  }

  mlir::ODIE::Compiler::Transforms::updateCallerSignatures(a3, a2, v36 | v35);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::PromoteIOTypesPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::PromoteIOTypesPattern]";
  v6 = 140;
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

void mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyOrCastIntoInterpreterRegion::~FuseCopyOrCastIntoInterpreterRegion(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::FuseCopyOrCastIntoInterpreterRegion *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyOrCastIntoInterpreterRegion::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a2 + 64;
  v6 = *(a2 + 44);
  v7 = (v6 >> 23) & 1;
  v8 = *(a2 + 64 + 16 * v7 + 8);
  if (*(v8 + 24) == 11)
  {
    v9 = *(v8 + 16);
    v10 = *v9;
    v11 = *(v9 + 3);
    if (v10 == 0x6572707265746E49 && v11 == 0x7265746572707265)
    {
      if ((v6 & 0x800000) != 0 && (v15 = *(a2 + 68), v15))
      {
        v16 = 0;
        v17 = *(a2 + 72);
        v18 = 32 * v15;
        v19 = v17;
        do
        {
          v20 = v19[3];
          if ((~*(v20 + 8) & 7) != 0)
          {
            v21 = v19[3];
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v22 = *(v21 + 8) & 7;
            if (v22 == 6)
            {
              v23 = (v21 + 24 * *(v21 + 16) + 120);
            }

            else
            {
              v23 = (v21 + 16 * v22 + 16);
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = *v20;
          if (v24 && v23 && !*v24)
          {
            v25 = *(v23[6] + 16);
            v26 = v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
            if (v26 || v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
            {
              v28 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
              if (v28)
              {
                v29 = v28 - 8;
              }

              else
              {
                v29 = 0;
              }

              mlir::RewriterBase::moveOpBefore(a3, v23, v29, *(v29 + 40));
              (*(*a3 + 40))(a3, a2);
              v30 = *(v23[9] + 24);
              v31 = v19[1];
              if (v31)
              {
                v32 = *v19;
                *v31 = *v19;
                if (v32)
                {
                  *(v32 + 8) = v19[1];
                }
              }

              v19[3] = v30;
              v19[1] = v30;
              v33 = *v30;
              *v19 = *v30;
              if (v33)
              {
                *(v33 + 8) = v19;
              }

              *v30 = v19;
              v34 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
              if (v34)
              {
                v35 = v34 - 8;
              }

              else
              {
                v35 = 0;
              }

              v36 = v19[2];
              if ((*(v36 + 46) & 0x80) != 0)
              {
                v37 = *(v36 + 72);
              }

              else
              {
                v37 = 0;
              }

              v38 = *(*(v35 + 48) + 8 * ((v17 - v37) >> 5));
              *(v38 + 8) = *(v19[3] + 8) & 0xFFFFFFFFFFFFFFF8 | *(v38 + 8) & 7;
              v39 = v23[9];
              v40 = v39[1];
              if (v40)
              {
                v41 = *v39;
                *v40 = *v39;
                if (v41)
                {
                  *(v41 + 8) = v39[1];
                }
              }

              v39[3] = v38;
              v39[1] = v38;
              v42 = *v38;
              *v39 = *v38;
              if (v42)
              {
                v42[1] = v39;
              }

              *v38 = v39;
              v71[0] = v23;
              v73 = v71;
              mlir::RewriterBase::replaceUsesWithIf(a3, v38, v23 - 2, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &v73, 0);
              (*(*a3 + 48))(a3, a2);
              v16 = 1;
            }
          }

          v19 += 4;
          v17 += 4;
          v18 -= 32;
        }

        while (v18);
        v6 = *(a2 + 44);
        v7 = (v6 >> 23) & 1;
      }

      else
      {
        v16 = 0;
      }

      v43 = *(a2 + 36);
      v44 = *(((v5 + 16 * v7 + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
      if (v44)
      {
        v45 = v44 - 8;
      }

      else
      {
        v45 = 0;
      }

      if (v43)
      {
        v46 = (a2 - 16);
      }

      else
      {
        v46 = 0;
      }

      if (!v43)
      {
        return v16 & 1;
      }

      v47 = 0;
      v48 = *(v45 + 32);
      for (i = v46; ; i -= 2)
      {
        v50 = v46;
        if (v47)
        {
          v51 = *(a2 - 8) & 7;
          v52 = (a2 - 16);
          v53 = v47;
          if (v51 == 6)
          {
            goto LABEL_68;
          }

          v54 = (5 - v51);
          v50 = i;
          v53 = v47 - v54;
          if (v47 > v54)
          {
            break;
          }
        }

LABEL_69:
        v55 = *(*v50 + 16);
        if (v55)
        {
          v56 = **v50 == 0;
        }

        else
        {
          v56 = 0;
        }

        if (v56)
        {
          v57 = *(*(v55 + 48) + 16);
          v58 = v57 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id || v57 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
          if (v58 || v57 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
          {
            mlir::RewriterBase::moveOpBefore(a3, *(*v50 + 16), v48[2], v48);
            (*(*a3 + 40))(a3, a2);
            v60 = v50[1] & 7;
            if (v60 == 6)
            {
              v60 = (*(v50 + 4) + 6);
            }

            v61 = v48[9];
            v62 = *(v61 + 32 * v60 + 24);
            v63 = (v61 + 32 * v60);
            v64 = v63[1];
            if (v64)
            {
              v65 = *v63;
              *v64 = *v63;
              if (v65)
              {
                *(v65 + 8) = v63[1];
              }
            }

            v63[3] = v55 - 16;
            v63[1] = v55 - 16;
            v66 = *(v55 - 16);
            *v63 = v66;
            if (v66)
            {
              *(v66 + 8) = v63;
            }

            *(v55 - 16) = v63;
            v50[1] = *(v55 - 8) & 0xFFFFFFFFFFFFFFF8 | v50[1] & 7;
            v67 = *(v55 + 72);
            v68 = v67[1];
            if (v68)
            {
              v69 = *v67;
              *v68 = *v67;
              if (v69)
              {
                *(v69 + 8) = v67[1];
              }
            }

            v67[3] = v62;
            v67[1] = v62;
            v70 = *v62;
            *v67 = *v62;
            if (v70)
            {
              *(v70 + 8) = v67;
            }

            *v62 = v67;
            v71[0] = v48;
            v73 = v71;
            mlir::RewriterBase::replaceUsesWithIf(a3, (v55 - 16), v50, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &v73, 0);
            (*(*a3 + 48))(a3, a2);
            v16 = 1;
          }
        }

        if (v43 == ++v47)
        {
          return v16 & 1;
        }
      }

      v52 = &v46[-2 * v54];
LABEL_68:
      v50 = &v52[-3 * v53];
      goto LABEL_69;
    }
  }

  v71[0] = "not tagged for interpreter";
  v72 = 259;
  v73 = v71;
  v13 = a3[2];
  if (v13)
  {
    if (v13[2] == 1)
    {
      (*(*v13 + 88))(v13, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &>(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v73);
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Transforms::anonymous namespace::FuseCopyOrCastIntoInterpreterRegion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Transforms::(anonymous namespace)::FuseCopyOrCastIntoInterpreterRegion]";
  v6 = 154;
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

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Transforms::anonymous namespace::RemoveSymbolicTypesPass>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::RemoveSymbolicTypesPass::~RemoveSymbolicTypesPass(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::RemoveSymbolicTypesPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Transforms::anonymous namespace::RemoveSymbolicTypesPass::runOnOperation(mlir::ODIE::Compiler::Transforms::_anonymous_namespace_::RemoveSymbolicTypesPass *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  v6 = &unk_286EA4FC8;
  v7 = 0;
  v8 = &v6;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::push_back[abi:nn200100](&v3[1] + 1, &v6);
  std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](&v6);
  v2 = *(this + 5);
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::recursivelyReplaceElementsIn(v3, v2 & 0xFFFFFFFFFFFFFFF8, 1, 0, 1);
  mlir::Operation::removeAttr(v2 & 0xFFFFFFFFFFFFFFF8, "TorchImport.RangeConstraints", 0x1C);
  MEMORY[0x25F891030](v4, 8);
  v6 = &v3[1] + 1;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = v3;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler10Transforms12_GLOBAL__N_123RemoveSymbolicTypesPass14runOnOperationEvE3__0NS2_16RankedTensorTypeENS2_4TypeESE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA4FC8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler10Transforms12_GLOBAL__N_123RemoveSymbolicTypesPass14runOnOperationEvE3__0NS2_16RankedTensorTypeENS2_4TypeESE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EEclEOSF_@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  result = *a1;
  if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = *(result + 32);
    if (v5 && *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v6 = *(result + 24);
      v9 = *(result + 8);
      v7 = 0;
      v8 = v6;
      result = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v9, &v8, &v7);
    }

    *a2 = result;
    v4 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v4;
  return result;
}

void mlir::ODIE::Compiler::Transforms::createResolveImports(uint64_t a1)
{
  v2[6] = *MEMORY[0x277D85DE8];
  v1[0] = v2;
  v1[1] = 0x200000000;
  if (*(a1 + 8))
  {
    llvm::SmallVectorImpl<std::string>::operator=(v1, a1);
  }

  mlir::ODIE::Compiler::Transforms::impl::createResolveImports();
}

void resolveImportFile(mlir::Location,std::__fs::filesystem::path,llvm::ArrayRef<std::__fs::filesystem::path>,llvm::ArrayRef<llvm::StringRef>)::$_0::operator()(std::string *a1, uint64_t *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(&v21, 0, sizeof(v21));
  __ec.__val_ = 0;
  v6 = std::system_category();
  __ec.__cat_ = v6;
  v7 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *v7, *(v7 + 1));
  }

  else
  {
    v8 = *v7;
    v19.__r_.__value_.__r.__words[2] = *(v7 + 2);
    *&v19.__r_.__value_.__l.__data_ = v8;
  }

  v9 = a2[1];
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v12 = 16 * v10;
    while (1)
    {
      v18 = *v11;
      llvm::StringRef::str(&v18, &__p);
      __replacement = __p;
      memset(&__p, 0, sizeof(__p));
      std::__fs::filesystem::path::replace_extension(&v19, &__replacement);
      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      std::__fs::filesystem::operator/[abi:nn200100](&__replacement, &v19, a3);
      std::__fs::filesystem::__status(&__replacement, &__ec);
      v13 = __p.__pn_.__r_.__value_.__s.__data_[0];
      if (__p.__pn_.__r_.__value_.__s.__data_[0])
      {
        __ec.__val_ = 0;
        __ec.__cat_ = v6;
      }

      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
        if (v13)
        {
LABEL_16:
          if (v13 != 255)
          {
            std::__fs::filesystem::operator/[abi:nn200100](&__replacement, &v19, a3);
            if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v21.__pn_.__r_.__value_.__l.__data_);
            }

            v21 = __replacement;
            if (__ec.__val_)
            {
              v16 = *a2[2];
              v23 = 257;
              emitDiag(v16, 1, &__p, &__replacement);
              if (__replacement.__pn_.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<16ul>(&__replacement.__pn_.__r_.__value_.__l.__size_, "while checking ");
                if (__replacement.__pn_.__r_.__value_.__r.__words[0])
                {
                  mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(&__replacement.__pn_.__r_.__value_.__l.__size_, &v21, ", ");
                  if (__replacement.__pn_.__r_.__value_.__r.__words[0])
                  {
                    mlir::Diagnostic::operator<<<17ul>(&__replacement.__pn_.__r_.__value_.__l.__size_, " for existence: ");
                  }
                }
              }

              std::error_code::message(&v17, &__ec);
              if (__replacement.__pn_.__r_.__value_.__r.__words[0])
              {
                v23 = 260;
                __p.__pn_.__r_.__value_.__r.__words[0] = &v17;
                mlir::Diagnostic::operator<<(&__replacement.__pn_.__r_.__value_.__l.__size_, &__p.__pn_.__r_.__value_.__l.__data_);
              }

              a1->__r_.__value_.__s.__data_[0] = 0;
              a1[1].__r_.__value_.__s.__data_[0] = 0;
              if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v17.__r_.__value_.__l.__data_);
              }

              goto LABEL_45;
            }
          }
        }
      }

      else if (__p.__pn_.__r_.__value_.__s.__data_[0])
      {
        goto LABEL_16;
      }

      ++v11;
      v12 -= 16;
      if (!v12)
      {
        if (*(a2[1] + 8))
        {
          goto LABEL_26;
        }

        break;
      }
    }
  }

  if (std::__fs::filesystem::path::__extension(*a2).__size_)
  {
    std::__fs::filesystem::operator/[abi:nn200100](&__replacement, *a2, a3);
    if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    }

    v21 = __replacement;
  }

LABEL_26:
  size = HIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]);
  if ((v21.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__pn_.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::__fs::filesystem::__status(&v21, &__ec);
    if ((__replacement.__pn_.__r_.__value_.__r.__words[0] & 0x10000000000) != 0)
    {
      if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a1, v21.__pn_.__r_.__value_.__l.__data_, v21.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        *a1 = v21;
      }

      a1[1].__r_.__value_.__s.__data_[0] = 1;
    }

    else
    {
      v15 = *a2[2];
      v23 = 257;
      emitDiag(v15, 1, &__p, &__replacement);
      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        mlir::Diagnostic::appendRange<std::__fs::filesystem::path>(&__replacement.__pn_.__r_.__value_.__l.__size_, &v21, ", ");
        if (__replacement.__pn_.__r_.__value_.__r.__words[0])
        {
          mlir::Diagnostic::operator<<<30ul>(&__replacement.__pn_.__r_.__value_.__l.__size_, " is not readable by this user");
        }
      }

      a1->__r_.__value_.__s.__data_[0] = 0;
      a1[1].__r_.__value_.__s.__data_[0] = 0;
LABEL_45:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__replacement);
    }
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
  }
}

double std::__fs::filesystem::path::parent_path[abi:nn200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3__0NS2_13SymbolRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISJ_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSG_E_NS_9allocatorISU_EEFNSL_INSM_ISG_SN_EEEESG_EE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EA5010;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3__0NS2_13SymbolRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISJ_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSG_E_NS_9allocatorISU_EEFNSL_INSM_ISG_SN_EEEESG_EEclEOSG_(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v6 = *(**(a1 + 8) + 16 * ((*(**(a1 + 8) + 44) >> 23) & 1) + 72);
    v7 = *(**(a1 + 8) + 16 * ((*(**(a1 + 8) + 44) >> 23) & 1) + 80);
    if (v7[1] != v6 && *(v4 + 8) == v6)
    {
      v8 = v7[2];
      v9 = &v8[8 * v7[3]];
      v11 = v13;
      v12 = 0x600000000;
      llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(&v11, v8, v9);
      llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(&v11, *(v4 + 16), (*(v4 + 16) + 8 * *(v4 + 24)));
      v4 = mlir::SymbolRefAttr::get(v7[1], v11, v12, v10);
      if (v11 != v13)
      {
        free(v11);
      }
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<readBytecodeImport(mlir::ODIE::Compiler::CoreML::ImportOp,llvm::MemoryBufferRef)::$_1>(uint64_t **a1, mlir::Operation *a2)
{
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn(*a1, a2, 1, 0, 1);
  mlir::Operation::getAttrDictionary(a2);
  operator new();
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEEUlNS2_13SymbolRefAttrEE_SE_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFNS2_10WalkResultESG_EE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EA5058;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEEUlNS2_13SymbolRefAttrEE_SE_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFNS2_10WalkResultESG_EEclEOSG_(uint64_t **a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v6 = *a2;
    if (isSymbolExpectedInImport(v3, *a1[1]))
    {
      v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](a1[2], &v6);
      if (*(v4 + 8) <= 9u)
      {
        llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(v4, *(*a1[3] + 24));
      }
    }
  }

  return 1;
}

BOOL isSymbolExpectedInImport(void *a1, uint64_t a2)
{
  v2 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = a1[1];
  if (v3 == *(v2 + 72))
  {
    return 1;
  }

  v4 = *(v2 + 80);
  if (v4[1] != v3)
  {
    return 0;
  }

  v5 = v4[3];
  if (a1[3] < v5)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = a1[2];
  v8 = v4[2];
  v9 = 8 * v5 - 8;
  do
  {
    v11 = *v7++;
    v10 = v11;
    v12 = *v8++;
    result = v12 == v10;
    v13 = v12 != v10 || v9 == 0;
    v9 -= 8;
  }

  while (!v13);
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](void *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 4), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 8;
  }

  v11 = v10;
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
    llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 4), *a2, &v11);
    v6 = *(a1 + 2);
    v5 = v11;
  }

  *(a1 + 2) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 3);
  }

  v8 = *a2;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 88) = 0u;
  *v5 = v8;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0xA00000000;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 104 * v5);
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
        v6 = (a1 + 104 * (v13 & v4));
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

uint64_t *llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((104 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 104 * v10 - 104;
      v13 = vdupq_n_s64(v12 / 0x68);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[13] = -4096;
        }

        v11 += 2;
        result += 26;
      }

      while (((v12 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 104 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0xA00000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<mlir::Location>::operator=(v19, (v15 - 2));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 13;
        v16 -= 104;
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
    v23 = 104 * v21 - 104;
    v24 = vdupq_n_s64(v23 / 0x68);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *result = -4096;
      }

      if (v25.i8[4])
      {
        result[13] = -4096;
      }

      v22 += 2;
      result += 26;
    }

    while (((v23 / 0x68 + 2) & 0x7FFFFFFFFFFFFFELL) != v22);
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEENKUlNS2_5ValueEE_clESE_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSI_E_NS_9allocatorISR_EEFNS2_10WalkResultESI_EE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EA50A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEENKUlNS2_5ValueEE_clESE_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSI_E_NS_9allocatorISR_EEFNS2_10WalkResultESI_EEclEOSI_(uint64_t **a1, uint64_t a2)
{
  v3 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v11 = *a2;
    if (isSymbolExpectedInImport(v3, *a1[1]))
    {
      v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](a1[2], &v11);
      if (*(v4 + 8) <= 9u)
      {
        v5 = *a1[3];
        if ((~*(v5 + 8) & 7) != 0)
        {
          v6 = *a1[3];
        }

        else
        {
          v6 = 0;
        }

        if (!v6)
        {
          goto LABEL_10;
        }

        v7 = *(v6 + 8) & 7;
        if (v7 == 6)
        {
          v8 = v6 + 24 * *(v6 + 16) + 120;
          if (!v8)
          {
LABEL_10:
            v9 = (v5 + 32);
LABEL_13:
            llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(v4, *v9);
            return 1;
          }
        }

        else
        {
          v8 = v6 + 16 * v7 + 16;
        }

        v9 = (v8 + 24);
        goto LABEL_13;
      }
    }
  }

  return 1;
}

double _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL18readBytecodeImportNS1_4ODIE8Compiler6CoreML8ImportOpENS_15MemoryBufferRefEE3__4NS1_17SymbolOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(unint64_t ***a1, mlir::SymbolOpInterface *a2)
{
  v3 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2, a2);
  if (v3)
  {
    v6 = *a1;
    v7.n128_u64[0] = v3;
    v7.n128_u64[1] = v4;
    if (*(*(v3 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      *&result = std::deque<mlir::SymbolOpInterface>::push_back(*v6, &v7).n128_u64[0];
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::LookupBucketFor<mlir::SymbolOpInterface>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
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
        v6 = (a1 + 24 * (v13 & v4));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::InsertIntoBucketImpl<mlir::SymbolOpInterface>(uint64_t a1, uint64_t *a2, void *a3)
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

  llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), *a2, &v8);
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

uint64_t *llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A0570;
        result += 3;
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::LookupBucketFor<mlir::SymbolOpInterface>(*a1, *(a1 + 16), v14, &v18);
          v15 = v18;
          *v18 = *v13;
          *(v15 + 4) = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 24 * v16;
    do
    {
      *result = xmmword_25D0A0570;
      result += 3;
      v17 -= 24;
    }

    while (v17);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolOpInterface const&>,std::tuple<llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>&>>(uint64_t a1, _OWORD **a2, uint64_t *a3)
{
  v12 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 80, &v12);
  v8 = &v7[80 * *(a1 + 8)];
  v9 = *a3;
  *v8 = **a2;
  *(v8 + 3) = 0x600000000;
  *(v8 + 2) = v8 + 32;
  v10 = (v8 + 16);
  if (*(v9 + 8))
  {
    llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::operator=(v10, v9);
  }

  llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::moveElementsForGrow(a1, v7);
  v11 = v12;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v11;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v4 = *a1;
    v5 = *a1 + 80 * v2;
    v6 = (a2 + 16);
    v7 = v4 + 16;
    do
    {
      *(v6 - 1) = *(v7 - 16);
      *v6 = v6 + 2;
      v6[1] = 0x600000000;
      if (*(v7 + 8))
      {
        v6 = llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::operator=(v6, v7);
      }

      v8 = v7 - 16;
      v6 += 10;
      v7 += 80;
    }

    while (v8 + 80 != v5);
    v9 = *(a1 + 2);
    if (v9)
    {
      v10 = (*a1 + 80 * v9 - 64);
      v11 = -80 * v9;
      do
      {
        if (v10 + 2 != *v10)
        {
          free(*v10);
        }

        v10 -= 10;
        v11 += 80;
      }

      while (v11);
    }
  }
}