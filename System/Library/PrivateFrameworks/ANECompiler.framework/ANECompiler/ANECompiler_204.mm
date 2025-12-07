const char *llvm::getTypeName<mlir::affine::AffineWriteOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineWriteOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineWriteOpInterface::Trait<Empty>]";
  v6 = 100;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::affine::AffineStoreOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::affine::AffineStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::affine::AffineStoreOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::affine::AffineStoreOp::verify(&v6) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 3 && (*a3 == 24941 ? (v7 = *(a3 + 2) == 112) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 3 && *result == 24941 && *(result + 2) == 112)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "map", 3uLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::affine::AffineApplyOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorLoadOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorLoadOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getValue;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorLoadOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v7 = 261;
  v6[0] = "map";
  v6[1] = 3;
  v4 = mlir::StringAttr::get(Context, v6);
  ZinMirCacheTensors::ZinMirCacheTensors(&v8, v4, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  return v8;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineReadOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl<Empty>]";
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::affine::AffineVectorLoadOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::affine::AffineVectorLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::VectorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::affine::AffineVectorLoadOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::affine::AffineVectorLoadOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 3 && (*a3 == 24941 ? (v7 = *(a3 + 2) == 112) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 3 && *result == 24941 && *(result + 2) == 112)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "map", 3uLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::affine::AffineApplyOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineVectorStoreOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineVectorStoreOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineWriteOpInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineVectorStoreOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineVectorStoreOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineVectorStoreOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v3 = v2;
  *v2 = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRef;
  v2[1] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMemRefType;
  v2[2] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getMapOperands;
  v2[3] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMap;
  v2[4] = mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getValueToStore;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineVectorStoreOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v7 = 261;
  v6[0] = "map";
  v6[1] = 3;
  v4 = mlir::StringAttr::get(Context, v6);
  ZinMirCacheTensors::ZinMirCacheTensors(&v8, v4, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  return v8;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::affine::AffineVectorStoreOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::affine::AffineVectorStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineWriteOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::affine::AffineVectorStoreOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::affine::AffineVectorStoreOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineYieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
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
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineYieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineYieldOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineYieldOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineYieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineYieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::IsTerminator<mlir::affine::AffineYieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::affine::AffineYieldOp>,mlir::OpTrait::ReturnLike<mlir::affine::AffineYieldOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineYieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::affine::AffineYieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>(uint64_t a1, uint64_t a2)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v91;
    v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v80 = v2;
  v92 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v2 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v81 = v2;
  v93 = a1;
  v70 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v70;
  v2 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v82 = v2;
  v94 = a1;
  v61 = v4;
  v71 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v61;
  v3 = v71;
  v2 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v83 = v2;
  v95 = a1;
  v62 = v4;
  v72 = v3;
  v53 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v53;
  v4 = v62;
  v3 = v72;
  v2 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v84 = v2;
  v96 = a1;
  v63 = v4;
  v73 = v3;
  v54 = v5;
  v46 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v46;
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v85 = v2;
  v97 = a1;
  v64 = v4;
  v74 = v3;
  v55 = v5;
  v40 = v7;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v7 = v40;
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v86 = v2;
  v98 = a1;
  v65 = v4;
  v75 = v3;
  v56 = v5;
  v41 = v7;
  v48 = v6;
  v35 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v35;
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v87 = v2;
  v99 = a1;
  v66 = v4;
  v76 = v3;
  v57 = v5;
  v42 = v7;
  v49 = v6;
  v31 = v9;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v9 = v31;
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v89 = v2;
    v101 = a1;
    v68 = v4;
    v78 = v3;
    v59 = v5;
    v44 = v7;
    v51 = v6;
    v33 = v9;
    v38 = v8;
    v26 = v11;
    v29 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v11 = v26;
    v10 = v29;
    v9 = v33;
    v8 = v38;
    v7 = v44;
    v6 = v51;
    v5 = v59;
    v4 = v68;
    v3 = v78;
    v2 = v89;
    a1 = v101;
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v88 = v2;
  v100 = a1;
  v67 = v4;
  v77 = v3;
  v58 = v5;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  v28 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v10 = v28;
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  a1 = v100;
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v90 = v2;
  v102 = a1;
  v69 = v4;
  v79 = v3;
  v60 = v5;
  v45 = v7;
  v52 = v6;
  v34 = v9;
  v39 = v8;
  v27 = v11;
  v30 = v10;
  v25 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v12 = v25;
  v11 = v27;
  v10 = v30;
  v9 = v34;
  v8 = v39;
  v7 = v45;
  v6 = v52;
  v5 = v60;
  v4 = v69;
  v3 = v79;
  v2 = v90;
  a1 = v102;
  return v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::affine::AffineYieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::MemRefsNormalizable>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::affine::AffineYieldOp::verify(&v7) & 1;
}

void anonymous namespace::AffineInlinerInterface::~AffineInlinerInterface(_anonymous_namespace_::AffineInlinerInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::AffineInlinerInterface::isLegalToInline(_anonymous_namespace_::AffineInlinerInterface *this, mlir::Region *a2, mlir::Region **a3, BOOL a4, mlir::IRMapping *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = *(*(*(a2 + 2) + 48) + 16);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id)
  {
    return 0;
  }

  v9 = a3[1];
  if (v9 == a3 || *(v9 + 1) != a3)
  {
    return 0;
  }

  v11 = (v9 + 24);
  v12 = *(v9 + 4);
  if (v12 != (v9 + 24))
  {
    do
    {
      ZinIrHalH13g::~ZinIrHalH13g(v12);
      v16 = v15;
      if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v15))
      {
        InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v16);
        v45 = v16;
        v46 = InterfaceFor;
        if (v16)
        {
          v41 = v43;
          v42 = 0x400000000;
          mlir::ExecutionCostOpInterface::getExecutionCost(&v45, &v41);
          v18 = v42;
          if (v41 != v43)
          {
            free(v41);
          }

          if (!v18)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
      {
        if (mlir::affine::isValidDim())
        {
          if ((*(v16 + 46) & 0x80) != 0)
          {
            v35 = *(v16 + 68);
            v36 = *(v16 + 72);
          }

          else
          {
            v36 = 0;
            v35 = 0;
          }

          mlir::ValueRange::ValueRange(&v41, v36, v35);
          v45 = mlir::affine::isValidDim;
          if ((remainsLegalAfterInline(v41, v42, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, &v45) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((*(v16 + 46) & 0x80) != 0)
          {
            v37 = *(v16 + 68);
            v38 = *(v16 + 72);
          }

          else
          {
            v38 = 0;
            v37 = 0;
          }

          mlir::ValueRange::ValueRange(&v41, v38, v37);
          v45 = mlir::affine::isValidSymbol;
          result = remainsLegalAfterInline(v41, v42, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, &v45);
          if (!result)
          {
            return result;
          }
        }
      }

      else
      {
        if (mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v16) && (v19 = mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(v16), v16))
        {
          v41 = v16;
          v42 = v19;
          Shape = mlir::ShapedType::getShape(&v41);
          ShapedType = mlir::ElementsAttr::getShapedType(&v41);
          v22 = v21;
          NumDims = mlir::AffineMap::getNumDims(&Shape);
          if (v22 >= NumDims)
          {
            v24 = NumDims;
          }

          else
          {
            v24 = v22;
          }
        }

        else
        {
          if (!mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v16))
          {
            return 0;
          }

          v25 = mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(v16);
          if (!v16)
          {
            return 0;
          }

          v41 = v16;
          v42 = v25;
          Shape = mlir::ShapedType::getShape(&v41);
          ShapedType = mlir::ElementsAttr::getShapedType(&v41);
          v27 = v26;
          v28 = mlir::AffineMap::getNumDims(&Shape);
          if (v27 >= v28)
          {
            v24 = v28;
          }

          else
          {
            v24 = v27;
          }
        }

        mlir::ValueRange::ValueRange(&v45, ShapedType, v24);
        v29 = mlir::ElementsAttr::getShapedType(&v41);
        v31 = v30;
        NumSymbols = mlir::AffineMap::getNumSymbols(&Shape);
        v33 = 32 * (v31 - NumSymbols);
        if (v31 <= NumSymbols)
        {
          v33 = 0;
        }

        if (v31 >= NumSymbols)
        {
          v34 = NumSymbols;
        }

        else
        {
          v34 = v31;
        }

        mlir::ValueRange::ValueRange(v44, v33 + v29, v34);
        v39 = mlir::affine::isValidDim;
        if ((remainsLegalAfterInline(v45, v46, a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, &v39) & 1) == 0)
        {
          return 0;
        }

        v39 = mlir::affine::isValidSymbol;
        if ((remainsLegalAfterInline(v44[0], v44[1], a3, a2, a5, llvm::function_ref<BOOL ()(mlir::Value,mlir::Region *)>::callback_fn<BOOL (*)(mlir::Value,mlir::Region *)>, &v39) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_14:
      v12 = *(v12 + 1);
    }

    while (v12 != v11);
  }

  return 1;
}

BOOL anonymous namespace::AffineInlinerInterface::isLegalToInline(_anonymous_namespace_::AffineInlinerInterface *this, mlir::Operation *a2, mlir::Region *a3, BOOL a4, mlir::IRMapping *a5)
{
  v5 = *(a3 + 2);
  {
    mlir::affine::isTopLevelValue();
  }

  if ((*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  v6 = *(*(v5 + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
  {
    return 1;
  }

  return v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id;
}

uint64_t remainsLegalAfterInline(uint64_t a1, uint64_t a2, mlir::Block *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, void, uint64_t), uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v34 = 0;
  if (!a2)
  {
    return 1;
  }

  v13 = 0;
  while (1)
  {
    v14 = mlir::ValueRange::dereference_iterator(&v33, v13);
    v15 = v14;
    v32 = v14;
    if ((~*(v14 + 8) & 7) != 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v30 = v14;
    v31 = v16;
    if (v16)
    {
      ParentRegion = mlir::Value::getParentRegion(&v31);
    }

    else
    {
      ParentRegion = *(mlir::Value::getDefiningOp(&v32) + 16);
      if (ParentRegion)
      {
        ParentRegion = mlir::Block::getParent(ParentRegion);
      }
    }

    if (ParentRegion != a3)
    {
      goto LABEL_13;
    }

    if ((~*(v15 + 8) & 7) != 0)
    {
      break;
    }

    v18 = *(a5 + 4);
    if (!v18)
    {
      goto LABEL_3;
    }

    v19 = *a5;
    v20 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
    v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v20 >> 47) ^ v20);
    v22 = (v18 - 1) & (-348639895 * ((v21 >> 47) ^ v21));
    v23 = *(*a5 + 16 * v22);
    if (v23 != v15)
    {
      v27 = 1;
      while (v23 != -4096)
      {
        v28 = v22 + v27++;
        v22 = v28 & (v18 - 1);
        v23 = *(v19 + 16 * v22);
        if (v23 == v15)
        {
          goto LABEL_18;
        }
      }

LABEL_3:
      if ((a6(a7, 0, a4) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

LABEL_18:
    if (v22 == v18)
    {
      goto LABEL_3;
    }

    if ((a6(a7, *(v19 + 16 * v22 + 8), a4) & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    v13 = v34 + 1;
    v34 = v13;
    if (v13 == a2)
    {
      return 1;
    }
  }

  v32 = 0;
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp);
  v26 = mlir::Value::getDefiningOp(&v30);
  v31 = &v32;
  if ((mlir::detail::constant_op_binder<mlir::Attribute>::match(&v31, v26) & 1) != 0 || InterfaceFor)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::affine::AffineReadOpInterface,mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineReadOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineReadOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLoadOp>>();
    v4 = &unk_1EB28D000;
    v18 = v23;
  }

  v19 = v4[477];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::affine::AffineWriteOpInterface,mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::affine::AffineWriteOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::insertModel<mlir::affine::detail::AffineWriteOpInterfaceInterfaceTraits::Model<mlir::affine::AffineStoreOp>>();
    v4 = &unk_1EB28D000;
    v18 = v23;
  }

  v19 = v4[507];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

BOOL mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::Value>::append<llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>,void>(uint64_t result, int64x2_t *a2, int64x2_t *a3)
{
  v6 = a2->i64[0];
  v7 = a2->i64[1];
  v8 = a3->i64[0];
  v9 = a3->i64[1];
  v10 = 0;
  if (a2->i64[0] != a3->i64[0] || v7 != v9)
  {
    do
    {
      if (v6 == a2[1].i64[0])
      {
        v7 += 8;
      }

      else
      {
        v6 += 8;
      }

      ++v10;
    }

    while (v6 != v8 || v7 != v9);
  }

  v12 = *(result + 8);
  if (v10 + v12 <= *(result + 12))
  {
    v21 = a3[1];
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v10 + v12, 8);
    v8 = a3->i64[0];
    v9 = a3->i64[1];
    v21 = a3[1];
    v12 = *(result + 8);
  }

  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = (*result + 8 * v12);
  if (v22 == v8)
  {
    goto LABEL_16;
  }

  while (1)
  {
    do
    {
      while (1)
      {
        v16 = &unk_1F1A15398;
        do
        {
          while (1)
          {
            v18 = *(v16 - 1);
            v19 = (&v22 + (*v16 >> 1));
            if (*v16)
            {
              break;
            }

            v16 += 2;
            v17 = v18(v19);
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v16 += 2;
          v17 = (*(*v19 + v18))();
        }

        while (!v17);
LABEL_22:
        *v14 = *v17;
        v20 = v22;
        if (v22 == v23.i64[0])
        {
          break;
        }

        *&v22 = v22 + 8;
        ++v14;
        if (v20 + 8 == v8)
        {
          goto LABEL_16;
        }
      }

      if (*(&v22 + 1) != v23.i64[1])
      {
        *(&v22 + 1) += 8;
      }

      ++v14;
    }

    while (v22 != v8);
LABEL_16:
    if (*(&v22 + 1) == v9)
    {
      v15 = vmovn_s64(vmvnq_s8(vceqq_s64(v23, v21)));
      if (((v15.i32[0] | v15.i32[1]) & 1) == 0)
      {
        break;
      }
    }
  }

  *(result + 8) += v10;
}

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<0ul>(void *a1)
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

uint64_t llvm::concat_iterator<mlir::Value,mlir::Value*,mlir::Value*>::getHelper<1ul>(uint64_t a1)
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

uint64_t llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t **a1, uint64_t a2)
{
  v8 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v8) == 6)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, a2);
    v7 = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, 0);
    v7 = v8;
    if (v8)
    {
LABEL_3:
      v4 = *a1;
      result = mlir::AffineDimExpr::getPosition(&v7);
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
LABEL_4:
        *(*v6 + 8 * (result >> 6)) |= 1 << result;
        return result;
      }

LABEL_12:
      *v4 = v6 & 0xFC00000000000001 | (2 * (((1 << result) | (v6 >> 1)) & ~(-1 << (v6 >> 58))));
      return result;
    }
  }

  v8 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v8) != 7)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, 0);
    if (!v8)
    {
      return result;
    }

LABEL_11:
    v4 = a1[1];
    result = mlir::AffineDimExpr::getPosition(&v8);
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, a2);
  if (v8)
  {
    goto LABEL_11;
  }

  return result;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 8;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v13 = 0;
      v16 = 0;
      v27 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = HIDWORD(*a2);
  v10 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v9);
  LODWORD(v10) = -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)));
  v11 = v7 - 1;
  v12 = v10 & (v7 - 1);
  v13 = &v8[4 * v12];
  v14 = *v13;
  if (*a2 == *v13)
  {
LABEL_6:
    if (v6)
    {
      v15 = 8;
    }

    else
    {
      v5 = *(result + 1);
      v15 = result[4];
    }

    *a4 = v13;
    *(a4 + 8) = &v5[4 * v15];
    *(a4 + 16) = 0;
    return result;
  }

  v19 = 0;
  v20 = 1;
  while (v14 != -4096)
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14 == -8192;
    }

    if (v21)
    {
      v19 = v13;
    }

    v22 = v12 + v20++;
    v12 = v22 & v11;
    v13 = &v8[4 * (v22 & v11)];
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_6;
    }
  }

  if (v19)
  {
    v13 = v19;
  }

  v27 = v13;
  if (v6)
  {
    v16 = 8;
  }

  else
  {
    v16 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v16)
  {
    v16 *= 2;
    goto LABEL_34;
  }

  if (v16 + ~(v4 >> 1) - result[1] <= v16 >> 3)
  {
LABEL_34:
    v25 = a2;
    v26 = result;
    v23 = a3;
    v24 = a4;
    llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(result, v16);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(v26, v25, &v27);
    a2 = v25;
    result = v26;
    a3 = v23;
    a4 = v24;
    v4 = *v26;
    v13 = v27;
    v6 = *v26 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v13 != -4096)
  {
    --result[1];
  }

  v17 = *a3;
  *v13 = *a2;
  *(v13 + 1) = v17;
  if (*result)
  {
    v18 = 8;
  }

  else
  {
    v5 = *(result + 1);
    v18 = result[4];
  }

  *a4 = v13;
  *(a4 + 8) = &v5[4 * v18];
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
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
        v9 = (v3 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::grow(uint64_t a1, unsigned int a2)
{
  v32[14] = *MEMORY[0x1E69E9840];
  if (a2 >= 9)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 8)
    {
      v19 = a2;
      v20 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v20;
      *(v20 + 8) = buffer;
      *(v20 + 16) = v19;
    }

    else
    {
      *a1 |= 1u;
    }

    v22 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v5, &v22[v5]);

    llvm::deallocate_buffer(v5, v22);
  }

  v7 = v31;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *(a1 + 16);
    v31[0] = *(a1 + 8);
    v31[1] = v23;
    v7 = v32;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  v24 = *(a1 + 32);
  *v7 = v8;
  v7[1] = v24;
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v25 = *(a1 + 48);
  *v7 = v9;
  v7[1] = v25;
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v11 = *(a1 + 72);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v26 = *(a1 + 64);
  *v7 = v10;
  v7[1] = v26;
  v7 += 2;
  v11 = *(a1 + 72);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 88);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v27 = *(a1 + 80);
  *v7 = v11;
  v7[1] = v27;
  v7 += 2;
  v12 = *(a1 + 88);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_14:
    v13 = *(a1 + 104);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v28 = *(a1 + 96);
  *v7 = v12;
  v7[1] = v28;
  v7 += 2;
  v13 = *(a1 + 104);
  if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_15:
    v14 = *(a1 + 120);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_16;
    }

LABEL_30:
    v30 = *(a1 + 128);
    *v7 = v14;
    v7[1] = v30;
    v7 += 2;
    if (a2 < 9)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v31, v7);
    }

    goto LABEL_17;
  }

LABEL_29:
  v29 = *(a1 + 112);
  *v7 = v13;
  v7[1] = v29;
  v7 += 2;
  v14 = *(a1 + 120);
  if ((v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_30;
  }

LABEL_16:
  if (a2 >= 9)
  {
LABEL_17:
    *a1 &= ~1u;
    v15 = a2;
    v16 = a1;
    v17 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v16;
    *(v16 + 8) = v17;
    *(v16 + 16) = v15;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(a1, v31, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 34;
    v5 = result + 2;
    v7 = 112;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 7;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v14 >> 47) ^ v14);
      v16 = v13 & (-348639895 * ((v15 >> 47) ^ v15));
      v17 = &v12[4 * v16];
      v18 = *v17;
      if (v20 != *v17)
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
          v16 = v24 & v13;
          v17 = &v12[4 * (v24 & v13)];
          v18 = *v17;
          if (v20 == *v17)
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
      v19 = a2[1];
      *v17 = v20;
      *(v17 + 1) = v19;
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>(unint64_t **a1, uint64_t a2)
{
  v8 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v8) == 6)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, a2);
    v7 = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, 0);
    v7 = v8;
    if (v8)
    {
LABEL_3:
      v4 = *a1;
      result = mlir::AffineDimExpr::getPosition(&v7);
      v6 = *v4;
      if ((*v4 & 1) == 0)
      {
LABEL_4:
        *(*v6 + 8 * (result >> 6)) |= 1 << result;
        return result;
      }

LABEL_12:
      *v4 = v6 & 0xFC00000000000001 | (2 * (((1 << result) | (v6 >> 1)) & ~(-1 << (v6 >> 58))));
      return result;
    }
  }

  v8 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v8) != 7)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, 0);
    if (!v8)
    {
      return result;
    }

LABEL_11:
    v4 = a1[1];
    result = mlir::AffineDimExpr::getPosition(&v8);
    v6 = *v4;
    if ((*v4 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v8, a2);
  if (v8)
  {
    goto LABEL_11;
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineApplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v33[8] = *MEMORY[0x1E69E9840];
  v31 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v31);
  v28 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v7 = 0;
    v9 = 0;
    v21 = 0;
    v31 = v33;
    HIDWORD(v32) = 8;
    goto LABEL_18;
  }

  v6 = *(a2 + 68);
  v7 = *(a2 + 72);
  v31 = v33;
  v32 = 0x800000000;
  if (v6 < 9)
  {
    v9 = 0;
    if (!v6)
    {
      v21 = 0;
      goto LABEL_18;
    }

    v8 = v33;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v6, 8);
    v8 = v31 + 8 * v32;
    if (v6 >= 0xD && (v8 >= v7 + 32 * v6 || v7 + 24 >= v31 + 8 * v32 + 8 * v6))
    {
      v11 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v11 = 4;
      }

      v10 = v6 - v11;
      v12 = &v8[v10];
      v13 = (v7 + 88);
      v14 = (v8 + 2);
      v15 = v10;
      do
      {
        v16 = v13 - 8;
        v17 = vld4q_f64(v16);
        v18 = vld4q_f64(v13);
        *(v14 - 1) = v17;
        *v14 = v18;
        v13 += 16;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      v8 = v12;
      goto LABEL_15;
    }
  }

  v10 = 0;
LABEL_15:
  v19 = v6 - v10;
  v20 = (32 * v10) | 0x18;
  do
  {
    *v8++ = *(v7 + v20);
    v20 += 32;
    --v19;
  }

  while (v19);
  v21 = v32;
  v9 = v6;
LABEL_18:
  LODWORD(v32) = v21 + v9;
  composeAffineMapAndOperands(&v28, &v31);
  mlir::affine::canonicalizeMapAndOperands(&v28, &v31);
  simplifyMapWithOperands(&v28, v31, v32);
  v22 = v31;
  if (v28 == Value)
  {
    if (!v9)
    {
LABEL_26:
      v24 = 0;
      if (v31 == v33)
      {
        return v24;
      }

      goto LABEL_20;
    }

    v26 = 0;
    v27 = (v7 + 24);
    while (*v27 == *(v31 + v26))
    {
      v26 += 8;
      v27 += 4;
      if (8 * v9 == v26)
      {
        goto LABEL_26;
      }
    }
  }

  v29[1] = v32;
  v30 = v28;
  v29[0] = v31;
  v23 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(a3 + 1, *(a2 + 24), &v30, v29);
  (*(*a3 + 1))(a3, a2, v23);
  v24 = 1;
  v22 = v31;
  if (v31 != v33)
  {
LABEL_20:
    free(v22);
  }

  return v24;
}

void simplifyMapWithOperands(mlir::arith::FastMathFlagsAttr *a1, uint64_t *a2, unint64_t a3)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x600000000;
  Value = mlir::arith::FastMathFlagsAttr::getValue(a1);
  if (Value > 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, Value, 8);
  }

  Results = mlir::AffineMap::getResults(a1);
  if (v8)
  {
    v9 = Results;
    v10 = 8 * v8;
    do
    {
      v20 = *v9;
      NumDims = mlir::AffineMap::getNumDims(a1);
      NumSymbols = mlir::AffineMap::getNumSymbols(a1);
      simplifyExprAndOperands(&v20, NumDims, NumSymbols, a2, a3);
      v13 = v20;
      v14 = v22;
      if (v22 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 8);
        v14 = v22;
      }

      *(v21 + v14) = v13;
      LODWORD(v22) = v22 + 1;
      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  v15 = mlir::AffineMap::getNumDims(a1);
  v16 = mlir::AffineMap::getNumSymbols(a1);
  v17 = v21;
  v18 = v22;
  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  *a1 = mlir::AffineMap::get(v15, v16, v17, v18, LHS);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t simplifyExprAndOperands(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v82[6] = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v80 = *a1;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v80) >= 5)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, 0);
    v74 = v80;
    if (!v80)
    {
      return result;
    }
  }

  else
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, v10);
    v74 = v80;
    if (!v80)
    {
      return result;
    }
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v74);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v74);
  simplifyExprAndOperands(&LHS, a2, a3, a4, a5);
  simplifyExprAndOperands(&RHS, a2, a3, a4, a5);
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v74);
  AffineBinaryOpExpr = mlir::getAffineBinaryOpExpr(Value, LHS, RHS);
  *a1 = AffineBinaryOpExpr;
  v80 = AffineBinaryOpExpr;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v80) >= 5)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, 0);
    v74 = v80;
    if (!v80)
    {
      return result;
    }
  }

  else
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, AffineBinaryOpExpr);
    v74 = v80;
    if (!v80)
    {
      return result;
    }
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(a1) != 3 && mlir::arith::FastMathFlagsAttr::getValue(a1) != 4)
  {
    result = mlir::arith::FastMathFlagsAttr::getValue(a1);
    if (result != 2)
    {
      return result;
    }
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v74);
  v14 = mlir::AffineBinaryOpExpr::getRHS(&v74);
  RHS = v14;
  v80 = v14;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v80) == 5)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, v14);
    v71 = v80;
    if (!v80)
    {
      return result;
    }
  }

  else
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, 0);
    v71 = v80;
    if (!v80)
    {
      return result;
    }
  }

  result = mlir::AffineBinaryOpExpr::getLHS(&v71);
  if (result < 1)
  {
    return result;
  }

  v66 = result;
  v70 = a4;
  Context = mlir::AffineExpr::getContext(a1);
  v64 = LHS;
  v80 = v82;
  v81 = 0x300000000;
  v77 = v79;
  v78 = 0x300000000;
  v16 = 8 * a5;
  v62 = Context;
  if (a5 < 4)
  {
    if (!a5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, a5, 16);
    if (a5 > HIDWORD(v78))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, a5, 16);
    }
  }

  v17 = 8 * a5;
  do
  {
    v18 = *a4;
    LowerBound = getLowerBound(*a4);
    v21 = v20;
    v22 = v81;
    if (v81 >= HIDWORD(v81))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v81 + 1, 16);
      v22 = v81;
    }

    v23 = (v80 + 16 * v22);
    *v23 = LowerBound;
    v23[1] = v21;
    LODWORD(v81) = v81 + 1;
    UpperBound = getUpperBound(v18);
    v26 = v78;
    if (v78 >= HIDWORD(v78))
    {
      v28 = UpperBound;
      v29 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v78 + 1, 16);
      v25 = v29;
      UpperBound = v28;
      v26 = v78;
    }

    v27 = (v77 + 16 * v26);
    *v27 = UpperBound;
    v27[1] = v25;
    LODWORD(v78) = v78 + 1;
    ++a4;
    v17 -= 8;
  }

  while (v17);
LABEL_27:
  v76 = v64;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v76) == 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v76, v64);
    if (v76)
    {
      goto LABEL_29;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v76, 0);
    if (v76)
    {
LABEL_29:
      BoundForAffineExpr = mlir::AffineBinaryOpExpr::getLHS(&v76);
      v63 = 0;
      v30 = v77;
      if (v77 == v79)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  BoundForAffineExpr = mlir::getBoundForAffineExpr(v64, a2, a3, v80, v81, v77, v78, 0);
  v63 = v32 ^ 1;
  v30 = v77;
  if (v77 != v79)
  {
LABEL_30:
    free(v30);
  }

LABEL_31:
  if (v80 != v82)
  {
    free(v80);
  }

  v31 = LHS;
  v80 = v82;
  v81 = 0x300000000;
  v77 = v79;
  v78 = 0x300000000;
  if (a5 < 4)
  {
    if (!a5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, a5, 16);
    if (a5 > HIDWORD(v78))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, a5, 16);
    }
  }

  v33 = v70;
  do
  {
    v34 = *v33;
    v35 = getLowerBound(*v33);
    v37 = v81;
    if (v81 >= HIDWORD(v81))
    {
      v67 = v36;
      v68 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v81 + 1, 16);
      v36 = v67;
      v35 = v68;
      v37 = v81;
    }

    v38 = (v80 + 16 * v37);
    *v38 = v35;
    v38[1] = v36;
    LODWORD(v81) = v81 + 1;
    v39 = getUpperBound(v34);
    v41 = v78;
    if (v78 >= HIDWORD(v78))
    {
      v69 = v39;
      v43 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v78 + 1, 16);
      v40 = v43;
      v39 = v69;
      v41 = v78;
    }

    v42 = (v77 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    LODWORD(v78) = v78 + 1;
    ++v33;
    v16 -= 8;
  }

  while (v16);
LABEL_46:
  v76 = v31;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v76) == 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v76, v31);
    v44 = v66;
    v75 = v76;
    if (v76)
    {
      goto LABEL_48;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v76, 0);
    v44 = v66;
    v75 = v76;
    if (v76)
    {
LABEL_48:
      v45 = mlir::AffineBinaryOpExpr::getLHS(&v75);
      v46 = 0;
      v47 = BoundForAffineExpr;
      v48 = v63;
      v49 = v77;
      if (v77 == v79)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  v45 = mlir::getBoundForAffineExpr(v31, a2, a3, v80, v81, v77, v78, 1);
  v46 = v51 ^ 1;
  v47 = BoundForAffineExpr;
  v48 = v63;
  v49 = v77;
  if (v77 != v79)
  {
LABEL_49:
    free(v49);
  }

LABEL_50:
  if (v80 != v82)
  {
    free(v80);
  }

  if ((v48 | v46))
  {
    goto LABEL_53;
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(&v74) == 3)
  {
    if (v47)
    {
      v53 = (v47 ^ v44) < 0 ? (v47 + 1) / v44 - 1 : v47 / v44;
    }

    else
    {
      v53 = 0;
    }

    if (v45)
    {
      v59 = (v45 ^ v44) < 0 ? (v45 + 1) / v44 - 1 : v45 / v44;
    }

    else
    {
      v59 = 0;
    }

    if (v53 == v59)
    {
      if (v47)
      {
        v54 = v62;
        if ((v47 ^ v44) < 0)
        {
          v55 = (v47 + 1) / v44 - 1;
          goto LABEL_111;
        }

LABEL_110:
        v55 = v47 / v44;
        goto LABEL_111;
      }

      goto LABEL_109;
    }
  }

  if (mlir::arith::FastMathFlagsAttr::getValue(&v74) == 4)
  {
    if (v47)
    {
      v60 = (v47 ^ v44) < 0 ? v47 / v44 : (v47 - 1) / v44 + 1;
    }

    else
    {
      v60 = 0;
    }

    if (v45)
    {
      v61 = (v45 ^ v44) < 0 ? v45 / v44 : (v45 - 1) / v44 + 1;
    }

    else
    {
      v61 = 0;
    }

    if (v60 == v61)
    {
      if (v47)
      {
        v54 = v62;
        if (((v47 ^ v44) & 0x8000000000000000) == 0)
        {
          v55 = (v47 - 1) / v44 + 1;
          goto LABEL_111;
        }

        goto LABEL_110;
      }

LABEL_109:
      v55 = 0;
      v54 = v62;
      goto LABEL_111;
    }
  }

  result = mlir::arith::FastMathFlagsAttr::getValue(&v74);
  if (result == 2 && v47 < v44 && v45 < v44)
  {
    *a1 = LHS;
    return result;
  }

LABEL_53:
  v75 = 0;
  v76 = 0;
  v50 = LHS;
  v80 = LHS;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v80) >= 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, 0);
    v77 = v80;
    if (!v80)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (mlir::arith::FastMathFlagsAttr::getValue(&v77))
    {
      goto LABEL_65;
    }

    v56 = mlir::AffineBinaryOpExpr::getLHS(&v77);
    v57 = mlir::AffineBinaryOpExpr::getRHS(&v77);
    LargestKnownDivisor = getLargestKnownDivisor(v56, v70);
    result = isNonNegativeBoundedBy(v57, v70, a5, LargestKnownDivisor);
    if ((result & 1) == 0)
    {
      LargestKnownDivisor = getLargestKnownDivisor(v57, v70);
      if (!isNonNegativeBoundedBy(v56, v70, a5, LargestKnownDivisor))
      {
        goto LABEL_65;
      }

      result = v56;
      v56 = v57;
      v57 = result;
    }

    v75 = v57;
    v76 = v56;
    if (v44 % LargestKnownDivisor || (result = mlir::arith::FastMathFlagsAttr::getValue(&v74), result != 3))
    {
      if (LargestKnownDivisor % v44)
      {
        return result;
      }

      result = mlir::arith::FastMathFlagsAttr::getValue(&v74);
      if (result != 2)
      {
        return result;
      }

      result = mlir::AffineExpr::operator%(&v75, v71);
    }

    else
    {
      result = mlir::AffineExpr::floorDiv(&v76, v71);
    }

LABEL_112:
    *a1 = result;
    return result;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v80, v50);
  v77 = v80;
  if (v80)
  {
    goto LABEL_64;
  }

LABEL_65:
  if (isNonNegativeBoundedBy(LHS, v70, a5, v44) && mlir::arith::FastMathFlagsAttr::getValue(&v74) == 3 || (result = getLargestKnownDivisor(LHS, v70), !(result % v44)) && (result = mlir::arith::FastMathFlagsAttr::getValue(&v74), result == 2))
  {
    v54 = mlir::AffineExpr::getContext(a1);
    v55 = 0;
LABEL_111:
    result = mlir::getAffineConstantExpr(v55, v54, v52);
    goto LABEL_112;
  }

  return result;
}

BOOL isNonNegativeBoundedBy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Value = a1;
  if (mlir::arith::FastMathFlagsAttr::getValue(&Value) != 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, 0);
    v15 = Value;
    if (Value)
    {
      goto LABEL_3;
    }

LABEL_10:
    Value = a1;
    if (mlir::arith::FastMathFlagsAttr::getValue(&Value) == 6)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, a1);
      v15 = Value;
      if (!Value)
      {
        return 0;
      }
    }

    else
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, 0);
      v15 = Value;
      if (!Value)
      {
        return 0;
      }
    }

    Position = mlir::AffineDimExpr::getPosition(&v15);
    v11 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * Position));
    v14 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = v11 + 64;
      Value = *(v11 + 2 * ((*(v11 + 11) >> 23) & 1) + 8);
      Value = mlir::AffineMapAttr::getValue(&Value);
      if (mlir::AffineMap::isSingleConstant(&Value))
      {
        Value = *&v13[16 * ((*(v12 + 11) >> 23) & 1)];
        Value = mlir::AffineMapAttr::getValue(&Value);
        if ((mlir::AffineMap::getSingleConstantResult(&Value) & 0x8000000000000000) == 0)
        {
          Value = *&v13[16 * ((*(v12 + 11) >> 23) & 1) + 16];
          Value = mlir::AffineMapAttr::getValue(&Value);
          if (mlir::AffineMap::isSingleConstant(&Value) && mlir::affine::AffineForOp::getConstantUpperBound(&v14) <= a4)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, a1);
  v15 = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

LABEL_3:
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v15);
  return LHS >= 0 && LHS < a4;
}

unint64_t getLargestKnownDivisor(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  LargestKnownDivisor = mlir::AffineExpr::getLargestKnownDivisor(&v21);
  v4 = v21;
  Value = v21;
  if (mlir::arith::FastMathFlagsAttr::getValue(&Value) == 6)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, v4);
    v20 = Value;
    if (!Value)
    {
      return LargestKnownDivisor;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&Value, 0);
    v20 = Value;
    if (!Value)
    {
      return LargestKnownDivisor;
    }
  }

  Position = mlir::AffineDimExpr::getPosition(&v20);
  v7 = mlir::affine::getForInductionVarOwner(*(a2 + 8 * Position));
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = v7 + 64;
  Value = *(v7 + 2 * ((*(v7 + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::isSingleConstant(&Value))
  {
    Value = *&v9[16 * ((*(v8 + 11) >> 23) & 1)];
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (!mlir::AffineMap::getSingleConstantResult(&Value))
    {
      v24 = *&v9[16 * ((*(v8 + 11) >> 23) & 1) + 8];
      mlir::IntegerAttr::getValue(&v24, &Value);
      if (v23 > 0x40)
      {
        v19 = *Value;
        MEMORY[0x1AC55A040]();
        return v19;
      }

      else if (v23)
      {
        return Value << -v23 >> -v23;
      }

      else
      {
        return 0;
      }
    }
  }

  Value = *&v9[16 * ((*(v8 + 11) >> 23) & 1)];
  Value = mlir::AffineMapAttr::getValue(&Value);
  LargestKnownDivisorOfMapExprs = mlir::AffineMap::getLargestKnownDivisorOfMapExprs(&Value);
  v24 = *&v9[16 * ((*(v8 + 11) >> 23) & 1) + 8];
  mlir::IntegerAttr::getValue(&v24, &Value);
  if (v23 > 0x40)
  {
    v17 = *Value;
    MEMORY[0x1AC55A040]();
    if (v17 >= 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = -v17;
    }

    if (LargestKnownDivisorOfMapExprs >= v12)
    {
      LargestKnownDivisor = v12;
    }

    else
    {
      LargestKnownDivisor = LargestKnownDivisorOfMapExprs;
    }

    if (LargestKnownDivisorOfMapExprs > v12)
    {
      v12 = LargestKnownDivisorOfMapExprs;
    }

    if (LargestKnownDivisor)
    {
      goto LABEL_21;
    }

    return v12;
  }

  if (v23)
  {
    v11 = Value << -v23 >> -v23;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  if (LargestKnownDivisorOfMapExprs >= v12)
  {
    LargestKnownDivisor = v12;
  }

  else
  {
    LargestKnownDivisor = LargestKnownDivisorOfMapExprs;
  }

  if (LargestKnownDivisorOfMapExprs > v12)
  {
    v12 = LargestKnownDivisorOfMapExprs;
  }

  if (!LargestKnownDivisor)
  {
    return v12;
  }

LABEL_21:
  v13 = v12 % LargestKnownDivisor;
  if (!v13)
  {
    return LargestKnownDivisor;
  }

  v14 = v13 >> __clz(__rbit64(v13));
  v15 = LargestKnownDivisor;
  do
  {
    v16 = v15 >> __clz(__rbit64(v15));
    v15 = v16 - v14;
    if (v14 > v16)
    {
      v15 = v14 - v16;
    }

    if (v14 >= v16)
    {
      v14 = v16;
    }
  }

  while (v15);
  return v14 << __clz(__rbit64(v13 | LargestKnownDivisor));
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v15 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v22, v23, v21, v10, v11, v12, v13, v14, v20, *v21, *&v21[8], *&v21[16], *&v21[24], *&v21[32], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11]);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v16 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v22, v16, v23[0], v23[1]);
  v17 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v18;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::AffineForEmptyLoopFolder::~AffineForEmptyLoopFolder(_anonymous_namespace_::AffineForEmptyLoopFolder *this)
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::AffineForEmptyLoopFolder::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void))
{
  v47[4] = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v5 = v4 - 8;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = v5 + 32;
  if (v6 == v7 || *(v6 + 8) != v7)
  {
    return 0;
  }

  if (!*(a2 + 36))
  {
    return 1;
  }

  v10 = TrivialConstantTripCount;
  v12 = v11;
  if ((v11 & 1) != 0 && !TrivialConstantTripCount)
  {
    v13 = *(a2 + 44);
    v14 = (v3 + 16 * ((v13 >> 23) & 1));
    v15 = v14[6];
    v16 = v14[7];
    v17 = v14[8];
    if ((v13 & 0x800000) != 0)
    {
      v18 = *(a2 + 72);
    }

    else
    {
      v18 = 0;
    }

    mlir::ValueRange::ValueRange(&v45, v18 + 32 * (v16 + v15), (v17 + v16 + v15) - (v16 + v15));
    (**a3)();
    return 1;
  }

  v19 = *(a2 + 40);
  v20 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v45 = v47;
  v46 = 0x400000000;
  v21 = *(((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v19 + 8);
  if (v21)
  {
    v22 = (v21 - 8);
  }

  else
  {
    v22 = 0;
  }

  mlir::Block::getTerminator(v22);
  v24 = a2;
  v25 = *(((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v25)
  {
    v26 = v25 - 8;
  }

  else
  {
    v26 = 0;
  }

  if ((*(v23 + 46) & 0x80) == 0 || (v27 = *(v23 + 68), !v27))
  {
LABEL_38:
    mlir::ValueRange::ValueRange(&v44, v45, v46);
    (**a3)();
    result = 1;
    goto LABEL_39;
  }

  v41 = v10;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = *(v26 + 48);
  v32 = *(v26 + 56);
  v33 = &v32[-v31];
  v34 = (v31 + 8);
  do
  {
    v36 = *(*(v23 + 72) + 32 * v28 + 24);
    v37 = v34;
    if (v33 != 8)
    {
      v37 = v34;
      while (*v37 != v36)
      {
        v37 += 8;
        if (v37 == v32)
        {
          v37 = v32;
          break;
        }
      }
    }

    if (v37 == v32)
    {
      v35 = v46;
      v29 = 1;
      if (v46 < HIDWORD(v46))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v38 = ((v37 - v34) >> 3);
      v30 |= v28 != v38;
      v36 = *(*(v24 + 72) + 32 * (*(v24 + 108) + *(v24 + 104)) + 32 * v38 + 24);
      v35 = v46;
      if (v46 < HIDWORD(v46))
      {
        goto LABEL_24;
      }
    }

    v40 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v35 + 1, 8);
    v23 = v40;
    v24 = a2;
    v35 = v46;
LABEL_24:
    *(v45 + v35) = v36;
    LODWORD(v46) = v46 + 1;
    ++v28;
  }

  while (v28 != v27);
  if ((v12 & 1) != 0 || ((v29 | v30) & 1) == 0)
  {
    if ((v12 & (v41 > 1) & v30) != 0)
    {
      result = 0;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  result = 0;
LABEL_39:
  if (v45 != v47)
  {
    v39 = result;
    free(v45);
    return v39;
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerSetAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::SimplifyDeadElse::~SimplifyDeadElse(_anonymous_namespace_::SimplifyDeadElse *this)
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyDeadElse::matchAndRewrite(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2 + 16;
  v4 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  if (*(v4 + 24) == v4 + 24)
  {
    return 0;
  }

  v5 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  v6 = v5 - 8;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v6 + 40);
  v8 = v6 + 32;
  if (v7 == v8 || *(v7 + 8) != v8 || a2[9])
  {
    return 0;
  }

  (*(*a3 + 40))(a3);
  v12 = *(((&v3[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 32);
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

  (*(*a3 + 24))(a3, v13);
  (*(*a3 + 48))(a3, a2);
  return 1;
}

void anonymous namespace::AlwaysTrueOrFalseIf::~AlwaysTrueOrFalseIf(_anonymous_namespace_::AlwaysTrueOrFalseIf *this)
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

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::AlwaysTrueOrFalseIf::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "condition", 9), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "condition", 9uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v7 = InherentAttr;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v29 = v7;
  Value = mlir::AffineMapAttr::getValue(&v29);
  v29 = Value;
  if (mlir::IntegerSet::isEmptyIntegerSet(&v29))
  {
    v11 = *(a2 + 44);
    if (*(a2 + 36))
    {
      v12 = (v11 >> 23) & 1;
      v13 = (v11 >> 21) & 0x7F8;
      v14 = 32 * *(a2 + 40);
    }

    else
    {
      v12 = (v11 >> 23) & 1;
      v13 = (v11 >> 21) & 0x7F8;
      v14 = 32 * *(a2 + 40);
      v18 = ((a2 + 16 * v12 + v13 + 71) & 0xFFFFFFFFFFFFFFF8) + v14;
      if (*(v18 + 24) == v18 + 24)
      {
        (*(*a3 + 16))(a3, a2);
        return 1;
      }
    }

    v19 = (((a2 + 16 * v12 + v13 + 71) & 0xFFFFFFFFFFFFFFF8) + v14);
    v20 = 8;
LABEL_17:
    v21 = *&v19[v20];
    if (v21)
    {
      v22 = (v21 - 8);
    }

    else
    {
      v22 = 0;
    }

    mlir::Block::getTerminator(v22);
    v24 = v23;
    mlir::ValueRange::ValueRange(&v29, 0, 0);
    mlir::RewriterBase::inlineBlockBefore(a3, v22, a2, v29, v30);
    if ((*(v24 + 46) & 0x80) != 0)
    {
      v25 = *(v24 + 72);
      v26 = *(v24 + 68);
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    mlir::ValueRange::ValueRange(&v29, v25, v26);
    (**a3)(a3, a2, v29, v30);
    (*(*a3 + 16))(a3, v24);
    return 1;
  }

  v29 = Value;
  if (mlir::IntegerSet::getNumEqualities(&v29, v9, v10) != 1 || mlir::IntegerSet::getNumInequalities(&v29, v15, v16))
  {
    return 0;
  }

  Constraint = mlir::IntegerSet::getConstraint(&v29, 0);
  v27 = mlir::AffineExpr::operator==(&Constraint, 0);
  result = 0;
  if (v27)
  {
    v19 = v29;
    v20 = 2;
    goto LABEL_17;
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[8] = *MEMORY[0x1E69E9840];
  v34 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v34);
  v30 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v34 = v36;
    v35 = 0x800000000;
    v7 = -1;
    v8 = 32;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v7, 8);
    v9 = v35;
    v10 = v34;
    v11 = v34 + 8 * v35;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 1;
  v8 = *(a2 + 72) + 32;
  v34 = v36;
  v35 = 0x800000000;
  if ((v6 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 1)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v36;
  v11 = v36;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v35;
  v9 = v7;
LABEL_18:
  LODWORD(v35) = v23 + v9;
  composeAffineMapAndOperands(&v30, &v34);
  mlir::affine::canonicalizeMapAndOperands(&v30, &v34);
  simplifyMapWithOperands(&v30, v34, v35);
  v24 = v34;
  if (v30 == Value)
  {
    if (!v9)
    {
LABEL_26:
      v26 = 0;
      if (v34 == v36)
      {
        return v26;
      }

      goto LABEL_20;
    }

    v28 = 0;
    v29 = (v8 + 24);
    while (*v29 == *(v34 + v28))
    {
      ++v28;
      v29 += 4;
      if (v9 == v28)
      {
        goto LABEL_26;
      }
    }
  }

  v32[1] = v35;
  v33 = v30;
  v31 = *(*(a2 + 72) + 24);
  v32[0] = v34;
  v25 = mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v31, &v33, v32);
  (*(*a3 + 8))(a3, a2, v25);
  v26 = 1;
  v24 = v34;
  if (v34 != v36)
  {
LABEL_20:
    free(v24);
  }

  return v26;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineLoadOp,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v21, v22, v20);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a4;
  v15 = mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::affine::AffineLoadOp::build(v15, v21, v13, v14, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v17;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties]";
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

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v36);
  v31 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v36 = v38;
    v37 = 0x800000000;
    v7 = -2;
    v8 = 64;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v7, 8);
    v9 = v37;
    v10 = v36;
    v11 = v36 + 8 * v37;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 2;
  v8 = *(a2 + 72) + 64;
  v36 = v38;
  v37 = 0x800000000;
  if ((v6 - 2) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 2)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v38;
  v11 = v38;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v37;
  v9 = v7;
LABEL_18:
  LODWORD(v37) = v23 + v9;
  composeAffineMapAndOperands(&v31, &v36);
  mlir::affine::canonicalizeMapAndOperands(&v31, &v36);
  simplifyMapWithOperands(&v31, v36, v37);
  v24 = v36;
  if (v31 == Value)
  {
    if (!v9)
    {
LABEL_26:
      v27 = 0;
      if (v36 == v38)
      {
        return v27;
      }

      goto LABEL_20;
    }

    v29 = 0;
    v30 = (v8 + 24);
    while (*v30 == *(v36 + v29))
    {
      ++v29;
      v30 += 4;
      if (v9 == v29)
      {
        goto LABEL_26;
      }
    }
  }

  v34[1] = v37;
  v35 = v31;
  v25 = *(a2 + 72);
  v33 = *(v25 + 24);
  v34[0] = v36;
  v32 = *(v25 + 56);
  v26 = mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v33, &v32, &v35, v34);
  (*(*a3 + 8))(a3, a2, v26);
  v27 = 1;
  v24 = v36;
  if (v36 != v38)
  {
LABEL_20:
    free(v24);
  }

  return v27;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::affine::AffineStoreOp::build(v18, v24, v15, v16, v17, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineStoreOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::arith::FastMathFlagsAttr::getValue(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v15 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v22, v23, v21, v10, v11, v12, v13, v14, v20, *v21, *&v21[8], *&v21[16], *&v21[24], *&v21[32], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11]);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v16 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v22, v16, v23[0], v23[1]);
  v17 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v18;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v25);
  v25 = v27;
  v26 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v26;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v25;
        v11 = v7;
        v12 = v25;
        if (v7)
        {
          v13 = 8 * v7;
          v12 = v25;
          while (*v12 != v9)
          {
            ++v12;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        if (v12 == (v25 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v26))
      {
        v14 = Results;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v11 + 1, 8);
        Results = v14;
        v11 = v26;
        v10 = v25;
      }

      v10[v11] = v9;
      v7 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_12:
  if (v7 == mlir::arith::FastMathFlagsAttr::getValue(&Value))
  {
    v15 = 0;
    v16 = v25;
    if (v25 == v27)
    {
      return v15;
    }

    goto LABEL_18;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v23 = mlir::AffineMap::get(NumDims, NumSymbols, v25, v26, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v19 = *(a2 + 68);
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  mlir::ValueRange::ValueRange(v28, v20, v19);
  v21 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v23, v28);
  (*(*a3 + 1))(a3, a2, v21);
  v15 = 1;
  v16 = v25;
  if (v25 != v27)
  {
LABEL_18:
    free(v16);
  }

  return v15;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMinOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void MergeAffineMinMaxOp<mlir::affine::AffineMinOp>::~MergeAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMinOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMinOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

uint64_t canonicalizeMapExprAndTermOrder(mlir::AffineMap *a1)
{
  v76[8] = *MEMORY[0x1E69E9840];
  v74 = v76;
  v75 = 0x100000000;
  Results = mlir::AffineMap::getResults(a1);
  if (v3)
  {
    v4 = Results;
    v5 = (Results + 8 * v3);
    while (1)
    {
      if (!mlir::AffineExpr::isPureAffine(v4))
      {
        goto LABEL_50;
      }

      NumDims = mlir::AffineMap::getNumDims(a1);
      NumSymbols = mlir::AffineMap::getNumSymbols(a1);
      mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(&v69, NumDims, NumSymbols);
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v69, *v4) & 1) == 0 || (v8 = *(v71[0] - 72), v9 = mlir::AffineMap::getNumDims(a1), v8 != v9 + mlir::AffineMap::getNumSymbols(a1) + 1))
      {
        v14 = 0;
        v69 = &unk_1F19FC1B8;
        v15 = v72;
        if (v72 == v73)
        {
          goto LABEL_13;
        }

LABEL_12:
        free(v15);
        goto LABEL_13;
      }

      v10 = *(v71[0] - 80);
      v66 = v10;
      v11 = *(v71[0] - 72);
      v65 = &v10[8 * v11];
      if (v75 < HIDWORD(v75))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long const*,long long const*>(&v74, &v66, &v65);
      v14 = 1;
      v69 = &unk_1F19FC1B8;
      v15 = v72;
      if (v72 != v73)
      {
        goto LABEL_12;
      }

LABEL_13:
      v16 = __p;
      if (__p)
      {
        v17 = v71[0];
        if (v71[0] == __p)
        {
          operator delete(__p);
          if ((v14 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          do
          {
            v19 = *(v17 - 10);
            v17 -= 80;
            v18 = v19;
            if (v17 + 16 != v19)
            {
              free(v18);
            }
          }

          while (v17 != v16);
          v71[0] = v16;
          operator delete(__p);
          if ((v14 & 1) == 0)
          {
            goto LABEL_50;
          }
        }
      }

      else if (!v14)
      {
        goto LABEL_50;
      }

      v4 = (v4 + 8);
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    v12 = v74 + 64 * v75;
    *v12 = v12 + 2;
    v12[1] = 0x600000000;
    if (v11 < 7)
    {
      if (!v11)
      {
        v20 = 0;
LABEL_25:
        *(v12 + 2) = v20 + v11;
        LODWORD(v75) = v75 + 1;
        v14 = 1;
        v69 = &unk_1F19FC1B8;
        v15 = v72;
        if (v72 != v73)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v12 + 2, v11, 8);
      v13 = *(v12 + 2);
    }

    memcpy((*v12 + 8 * v13), v10, 8 * v11);
    v20 = *(v12 + 2);
    goto LABEL_25;
  }

LABEL_30:
  v21 = v74;
  v22 = v75;
  v23 = (v74 + 64 * v75);
  if (v75)
  {
    if (v75 == 1)
    {
      v24 = 0;
      goto LABEL_74;
    }

    v26 = v74 + 64;
    v25 = *v74;
    while (1)
    {
      v27 = *(v21 + 8);
      v28 = v21[18];
      v29 = v21[2];
      v21 = v26;
      if (v29 >= v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      v31 = v25;
      v32 = v27;
      if (v30)
      {
        v33 = 8 * v30;
        v31 = v25;
        v32 = v27;
        v34 = &v27[v30];
        while (*v32 == *v31)
        {
          ++v32;
          ++v31;
          v33 -= 8;
          if (!v33)
          {
            v32 = v34;
            break;
          }
        }
      }

      if (v31 != &v25[v29] && (v32 == &v27[v28] || *v32 < *v31))
      {
        break;
      }

      v26 = (v21 + 16);
      v25 = v27;
      if (v21 + 16 == v23)
      {
        goto LABEL_50;
      }
    }
  }

  if (v21 == v23)
  {
LABEL_50:
    v24 = 0;
    v22 = v75;
    v21 = v74;
    if (v75)
    {
      goto LABEL_74;
    }

LABEL_51:
    if (v21 == v76)
    {
      return v24;
    }

LABEL_52:
    free(v21);
    return v24;
  }

  Value = mlir::arith::FastMathFlagsAttr::getValue(a1);
  v36 = Value;
  v69 = v71;
  __p = 0xC00000000;
  if (Value >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, Value, 4);
    v37 = v69;
    v38 = (v69 + 4 * __p);
    if (v36 < 8)
    {
LABEL_49:
      v39 = 0;
      v40 = v38;
      do
      {
LABEL_59:
        *v40 = v39;
        v40 += 4;
        ++v39;
      }

      while (v36 != v39);
LABEL_60:
      v47 = __p;
      goto LABEL_61;
    }

LABEL_56:
    v39 = v36 & 0xFFFFFFF8;
    v40 = &v38->i8[4 * v39];
    v42 = v38 + 1;
    v43 = xmmword_1A75A3B20;
    v44.i64[0] = 0x400000004;
    v44.i64[1] = 0x400000004;
    v45.i64[0] = 0x800000008;
    v45.i64[1] = 0x800000008;
    v46 = v39;
    do
    {
      v42[-1] = v43;
      *v42 = vaddq_s32(v43, v44);
      v43 = vaddq_s32(v43, v45);
      v42 += 2;
      v46 -= 8;
    }

    while (v46);
    if (v39 == v36)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (Value)
  {
    v37 = v71;
    v38 = v71;
    if (v36 < 8)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

  v47 = 0;
  v37 = v71;
LABEL_61:
  v49 = (v47 + v36);
  v48 = v49 == 0;
  LODWORD(__p) = v49;
  v50 = v37 + v49;
  v66 = &v74;
  v51 = 126 - 2 * __clz(v49);
  if (v48)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51;
  }

  std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v37, v50, &v66, v52, 1);
  v66 = v68;
  v67 = 0x600000000;
  if (__p)
  {
    v53 = v69;
    v54 = 4 * __p;
    do
    {
      v55 = mlir::AffineMap::getResult(a1, *v53);
      v56 = v67;
      if (v67 >= HIDWORD(v67))
      {
        v57 = v55;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, v67 + 1, 8);
        v55 = v57;
        v56 = v67;
      }

      *(v66 + v56) = v55;
      LODWORD(v67) = v67 + 1;
      ++v53;
      v54 -= 4;
    }

    while (v54);
  }

  v58 = mlir::AffineMap::getNumDims(a1);
  v59 = mlir::AffineMap::getNumSymbols(a1);
  v60 = v66;
  v61 = v67;
  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  *a1 = mlir::AffineMap::get(v58, v59, v60, v61, LHS);
  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v24 = 1;
  v22 = v75;
  v21 = v74;
  if (!v75)
  {
    goto LABEL_51;
  }

LABEL_74:
  v63 = &v21[16 * v22 - 16];
  v64 = -64 * v22;
  do
  {
    if (v63 + 2 != *v63)
    {
      free(*v63);
    }

    v63 -= 8;
    v64 += 64;
  }

  while (v64);
  v21 = v74;
  if (v74 != v76)
  {
    goto LABEL_52;
  }

  return v24;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(unint64_t result, unsigned int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v312 = a2 - 3;
  v313 = a2 - 2;
  i = v9;
  v311 = a2;
  while (1)
  {
    v9 = i;
    v12 = a2 - i;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v141 = **a3;

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, v10, v141);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, v10, a3);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(i, i + 1, i + 2, i + 3, v10, a3);
      }

      goto LABEL_10;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      break;
    }

LABEL_10:
    if (v12 <= 23)
    {
      v156 = *a3;
      if (a5)
      {
        if (i == a2)
        {
          return result;
        }

        v157 = i + 1;
        if (i + 1 == a2)
        {
          return result;
        }

        v158 = *v156;
        v159 = i;
        while (1)
        {
          v161 = v159;
          v159 = v157;
          v163 = *v161;
          v162 = v161[1];
          v164 = v158 + (v162 << 6);
          v165 = v158 + (v163 << 6);
          v166 = *v164;
          v167 = *(v164 + 8);
          v168 = *v165;
          v169 = *(v165 + 8);
          v170 = v169 >= v167 ? *(v164 + 8) : v169;
          if (v170)
          {
            break;
          }

          result = v168;
          v172 = *v164;
          if (v168 != v168 + 8 * v169)
          {
            goto LABEL_235;
          }

LABEL_223:
          v157 = v159 + 1;
          if (v159 + 1 == a2)
          {
            return result;
          }
        }

        v171 = 8 * v170;
        result = v168;
        v172 = *v164;
        v173 = &v166[v170];
        while (*v172 == *result)
        {
          ++v172;
          result += 8;
          v171 -= 8;
          if (!v171)
          {
            v172 = v173;
            break;
          }
        }

        if (result == v168 + 8 * v169)
        {
          goto LABEL_223;
        }

LABEL_235:
        if (v172 == &v166[v167] || *v172 < *result)
        {
          v161[1] = v163;
          v160 = i;
          if (v161 != i)
          {
            v174 = v161;
            do
            {
              v176 = *--v174;
              v175 = v176;
              v177 = v158 + (v176 << 6);
              v178 = *(v164 + 8);
              v179 = *v177;
              result = *(v177 + 8);
              if (result >= v178)
              {
                v180 = *(v164 + 8);
              }

              else
              {
                v180 = result;
              }

              if (v180)
              {
                v181 = 8 * v180;
                v182 = v179;
                v183 = v166;
                v184 = &v166[v180];
                while (*v183 == *v182)
                {
                  ++v183;
                  ++v182;
                  v181 -= 8;
                  if (!v181)
                  {
                    v183 = v184;
                    break;
                  }
                }
              }

              else
              {
                v182 = v179;
                v183 = v166;
              }

              if (v182 == &v179[result] || v183 != &v166[v178] && *v183 >= *v182)
              {
                v160 = v161;
                goto LABEL_222;
              }

              *v161 = v175;
              v161 = v174;
            }

            while (v174 != i);
            v160 = i;
          }

LABEL_222:
          *v160 = v162;
        }

        goto LABEL_223;
      }

      if (i == a2)
      {
        return result;
      }

      v286 = i + 1;
      if (i + 1 == a2)
      {
        return result;
      }

      v287 = *v156;
      while (1)
      {
        v288 = v9;
        v9 = v286;
        v290 = *v288;
        v289 = v288[1];
        v291 = v287 + (v289 << 6);
        v292 = v287 + (v290 << 6);
        v293 = *v291;
        v294 = *(v291 + 8);
        v295 = *v292;
        v296 = *(v292 + 8);
        v297 = v296 >= v294 ? *(v291 + 8) : v296;
        if (v297)
        {
          break;
        }

        v299 = v295;
        result = *v291;
        if (v295 != &v295[v296])
        {
          goto LABEL_388;
        }

LABEL_376:
        v286 = v9 + 1;
        if (v9 + 1 == a2)
        {
          return result;
        }
      }

      v298 = 8 * v297;
      v299 = v295;
      result = *v291;
      v300 = v293 + 8 * v297;
      while (*result == *v299)
      {
        result += 8;
        ++v299;
        v298 -= 8;
        if (!v298)
        {
          result = v300;
          break;
        }
      }

      if (v299 == &v295[v296])
      {
        goto LABEL_376;
      }

LABEL_388:
      if (result == v293 + 8 * v294 || *result < *v299)
      {
        v301 = v9;
        do
        {
          *v301 = v290;
          v301 = v288;
          v302 = *--v288;
          LODWORD(v290) = v302;
          v303 = v287 + (v302 << 6);
          v304 = *(v291 + 8);
          v305 = *v303;
          result = *(v303 + 8);
          if (result >= v304)
          {
            v306 = *(v291 + 8);
          }

          else
          {
            v306 = *(v303 + 8);
          }

          if (v306)
          {
            v307 = 8 * v306;
            v308 = *v303;
            v309 = v293;
            v310 = (v293 + 8 * v306);
            while (*v309 == *v308)
            {
              ++v309;
              ++v308;
              v307 -= 8;
              if (!v307)
              {
                v309 = v310;
                break;
              }
            }
          }

          else
          {
            v308 = *v303;
            v309 = v293;
          }
        }

        while (v308 != &v305[result] && (v309 == (v293 + 8 * v304) || *v309 < *v308));
        *v301 = v289;
      }

      goto LABEL_376;
    }

    if (!a4)
    {
      if (i == a2)
      {
        return result;
      }

      v185 = (v12 - 2) >> 1;
      v186 = v185;
      while (1)
      {
        v188 = v186;
        if (v185 < v186)
        {
          goto LABEL_258;
        }

        v189 = (2 * v186) | 1;
        v190 = &i[v189];
        v191 = **a3;
        if (2 * v188 + 2 < v12)
        {
          v192 = v191 + (*v190 << 6);
          v193 = v191 + (v190[1] << 6);
          v194 = *v192;
          v195 = *(v192 + 8);
          v196 = *v193;
          v197 = *(v193 + 8);
          if (v197 >= v195)
          {
            v198 = v195;
          }

          else
          {
            v198 = v197;
          }

          if (v198)
          {
            v199 = 8 * v198;
            v200 = v196;
            v201 = v194;
            v202 = &v194[v198];
            do
            {
              if (*v201 != *v200)
              {
                goto LABEL_269;
              }

              ++v201;
              ++v200;
              v199 -= 8;
            }

            while (v199);
            v201 = v202;
LABEL_269:
            if (v200 == &v196[v197])
            {
              goto LABEL_275;
            }

LABEL_272:
            if (v201 == &v194[v195] || *v201 < *v200)
            {
              ++v190;
              v189 = 2 * v188 + 2;
            }

            goto LABEL_275;
          }

          v200 = v196;
          v201 = v194;
          if (v196 != &v196[v197])
          {
            goto LABEL_272;
          }
        }

LABEL_275:
        v203 = *v190;
        v204 = i[v188];
        v205 = v191 + (v203 << 6);
        v206 = v191 + (v204 << 6);
        result = *v205;
        v207 = *(v205 + 8);
        v208 = *v206;
        v209 = *(v206 + 8);
        if (v209 >= v207)
        {
          v210 = v207;
        }

        else
        {
          v210 = *(v206 + 8);
        }

        if (v210)
        {
          v211 = 8 * v210;
          v212 = *v206;
          v213 = result;
          v214 = (result + 8 * v210);
          do
          {
            if (*v213 != *v212)
            {
              goto LABEL_283;
            }

            ++v213;
            ++v212;
            v211 -= 8;
          }

          while (v211);
          v213 = v214;
LABEL_283:
          if (v212 == &v208[v209])
          {
LABEL_288:
            i[v188] = v203;
            if (v185 < v189)
            {
LABEL_256:
              v187 = v190;
LABEL_257:
              *v187 = v204;
              goto LABEL_258;
            }

            while (2)
            {
              v215 = 2 * v189;
              v189 = (2 * v189) | 1;
              v187 = &i[v189];
              v216 = v215 + 2;
              if (v216 < v12)
              {
                v217 = v191 + (*v187 << 6);
                v218 = v191 + (v187[1] << 6);
                v219 = *v217;
                v220 = *(v217 + 8);
                v221 = *v218;
                v222 = *(v218 + 8);
                if (v222 >= v220)
                {
                  v223 = v220;
                }

                else
                {
                  v223 = v222;
                }

                if (v223)
                {
                  v224 = 8 * v223;
                  v225 = v221;
                  v226 = v219;
                  v227 = &v219[v223];
                  do
                  {
                    if (*v226 != *v225)
                    {
                      goto LABEL_300;
                    }

                    ++v226;
                    ++v225;
                    v224 -= 8;
                  }

                  while (v224);
                  v226 = v227;
LABEL_300:
                  if (v225 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                else
                {
                  v225 = v221;
                  v226 = v219;
                  if (v221 == &v221[v222])
                  {
                    goto LABEL_306;
                  }
                }

                if (v226 == &v219[v220] || *v226 < *v225)
                {
                  ++v187;
                  v189 = v216;
                }
              }

LABEL_306:
              result = *v187;
              v228 = v191 + (result << 6);
              v229 = *v228;
              v230 = *(v228 + 8);
              v231 = *(v206 + 8);
              if (v231 >= v230)
              {
                v232 = v230;
              }

              else
              {
                v232 = *(v206 + 8);
              }

              if (v232)
              {
                v233 = 8 * v232;
                v234 = v208;
                v235 = v229;
                v236 = &v229[v232];
                do
                {
                  if (*v235 != *v234)
                  {
                    goto LABEL_314;
                  }

                  ++v235;
                  ++v234;
                  v233 -= 8;
                }

                while (v233);
                v235 = v236;
LABEL_314:
                if (v234 == &v208[v231])
                {
LABEL_290:
                  *v190 = result;
                  v190 = v187;
                  if (v185 < v189)
                  {
                    goto LABEL_257;
                  }

                  continue;
                }
              }

              else
              {
                v234 = v208;
                v235 = v229;
                if (v208 == &v208[v231])
                {
                  goto LABEL_290;
                }
              }

              break;
            }

            if (v235 == &v229[v230] || *v235 < *v234)
            {
              goto LABEL_256;
            }

            goto LABEL_290;
          }
        }

        else
        {
          v212 = *v206;
          v213 = result;
          if (v208 == &v208[v209])
          {
            goto LABEL_288;
          }
        }

        result += 8 * v207;
        if (v213 != result)
        {
          result = *v213;
          if (*v213 >= *v212)
          {
            goto LABEL_288;
          }
        }

LABEL_258:
        v186 = v188 - 1;
        if (!v188)
        {
          while (1)
          {
            v238 = 0;
            v239 = *i;
            v240 = *a3;
            v241 = i;
            do
            {
              v242 = v241;
              v243 = &v241[v238];
              v241 = v243 + 1;
              v244 = 2 * v238;
              v238 = (2 * v238) | 1;
              v245 = v244 + 2;
              if (v245 >= v12)
              {
                goto LABEL_324;
              }

              v247 = v243[2];
              v246 = v243 + 2;
              v248 = *v240 + (*(v246 - 1) << 6);
              v249 = *v240 + (v247 << 6);
              v250 = *v248;
              result = *(v248 + 8);
              v251 = *v249;
              v252 = *(v249 + 8);
              if (v252 >= result)
              {
                v253 = result;
              }

              else
              {
                v253 = v252;
              }

              if (!v253)
              {
                v255 = v251;
                v256 = v250;
                if (v251 == &v251[v252])
                {
                  goto LABEL_324;
                }

LABEL_337:
                if (v256 == &v250[result] || (result = *v255, *v256 < *v255))
                {
                  v241 = v246;
                  v238 = v245;
                }

                goto LABEL_324;
              }

              v254 = 8 * v253;
              v255 = v251;
              v256 = v250;
              v257 = &v250[v253];
              while (*v256 == *v255)
              {
                ++v256;
                ++v255;
                v254 -= 8;
                if (!v254)
                {
                  v256 = v257;
                  break;
                }
              }

              if (v255 != &v251[v252])
              {
                goto LABEL_337;
              }

LABEL_324:
              *v242 = *v241;
            }

            while (v238 <= ((v12 - 2) >> 1));
            if (v241 == --a2)
            {
              *v241 = v239;
              goto LABEL_321;
            }

            *v241 = *a2;
            *a2 = v239;
            v258 = (v241 - i + 4) >> 2;
            v259 = v258 - 2;
            if (v258 >= 2)
            {
              v260 = v259 >> 1;
              v261 = &i[v259 >> 1];
              v262 = *v261;
              v263 = *v241;
              v264 = **a3;
              v265 = v264 + (v262 << 6);
              v266 = v264 + (v263 << 6);
              result = *v265;
              v267 = *(v265 + 8);
              v268 = *v266;
              v269 = *(v266 + 8);
              if (v269 >= v267)
              {
                v270 = v267;
              }

              else
              {
                v270 = *(v266 + 8);
              }

              if (v270)
              {
                v271 = 8 * v270;
                v272 = *v266;
                v273 = result;
                v274 = (result + 8 * v270);
                while (*v273 == *v272)
                {
                  ++v273;
                  ++v272;
                  v271 -= 8;
                  if (!v271)
                  {
                    v273 = v274;
                    break;
                  }
                }

                if (v272 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              else
              {
                v272 = *v266;
                v273 = result;
                if (v268 == &v268[v269])
                {
                  goto LABEL_321;
                }
              }

              result += 8 * v267;
              if (v273 == result || (result = *v273, *v273 < *v272))
              {
                *v241 = v262;
                if (v259 >= 2)
                {
                  while (1)
                  {
                    v276 = v260 - 1;
                    v260 = (v260 - 1) >> 1;
                    v275 = &i[v260];
                    v277 = *v275;
                    v278 = v264 + (v277 << 6);
                    result = *v278;
                    v279 = *(v278 + 8);
                    v280 = *(v266 + 8);
                    v281 = v280 >= v279 ? v279 : *(v266 + 8);
                    if (v281)
                    {
                      v282 = 8 * v281;
                      v283 = v268;
                      v284 = result;
                      v285 = (result + 8 * v281);
                      while (*v284 == *v283)
                      {
                        ++v284;
                        ++v283;
                        v282 -= 8;
                        if (!v282)
                        {
                          v284 = v285;
                          break;
                        }
                      }
                    }

                    else
                    {
                      v283 = v268;
                      v284 = result;
                    }

                    if (v283 == &v268[v280])
                    {
                      break;
                    }

                    result += 8 * v279;
                    if (v284 != result)
                    {
                      result = *v284;
                      if (*v284 >= *v283)
                      {
                        break;
                      }
                    }

                    *v261 = v277;
                    v261 = &i[v260];
                    if (v276 <= 1)
                    {
                      goto LABEL_357;
                    }
                  }
                }

                v275 = v261;
LABEL_357:
                *v275 = v263;
              }
            }

LABEL_321:
            if (v12-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = &i[v12 >> 1];
    v15 = **a3;
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(&v9[v12 >> 1], v9, v10, v15);
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if ((a5 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_23:
      v24 = *v20;
      v25 = *(v20 + 8);
LABEL_28:
      v32 = &v24[v25];
      v33 = v9;
      do
      {
        v34 = v33;
        v36 = *(v33 + 4);
        v33 += 4;
        v35 = v36;
        v37 = v19 + (v36 << 6);
        v38 = *v37;
        v39 = *(v37 + 8);
        if (v25 >= v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = v25;
        }

        if (v40)
        {
          v41 = 8 * v40;
          v42 = v24;
          v43 = v38;
          v44 = &v38[v40];
          while (*v43 == *v42)
          {
            ++v43;
            ++v42;
            v41 -= 8;
            if (!v41)
            {
              v43 = v44;
              break;
            }
          }
        }

        else
        {
          v42 = v24;
          v43 = v38;
        }
      }

      while (v42 != v32 && (v43 == &v38[v39] || *v43 < *v42));
      v45 = a2;
      if (v34 != v9)
      {
        while (1)
        {
          while (1)
          {
            v46 = *--v45;
            v47 = v19 + (v46 << 6);
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = v25 >= v49 ? v49 : v25;
            if (!v50)
            {
              break;
            }

            v51 = 8 * v50;
            v52 = v24;
            v53 = v48;
            v54 = &v48[v50];
            while (*v53 == *v52)
            {
              ++v53;
              ++v52;
              v51 -= 8;
              if (!v51)
              {
                v53 = v54;
                break;
              }
            }

            if (v52 != v32)
            {
              goto LABEL_53;
            }
          }

          v52 = v24;
          v53 = v48;
          if (v24 != v32)
          {
LABEL_53:
            if (v53 == &v48[v49] || *v53 < *v52)
            {
              goto LABEL_73;
            }
          }
        }
      }

      v45 = a2;
      if (v33 < a2)
      {
        v45 = a2;
        while (1)
        {
          v55 = *--v45;
          v56 = v19 + (v55 << 6);
          v57 = *v56;
          v58 = *(v56 + 8);
          if (v25 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v25;
          }

          if (v59)
          {
            v60 = 8 * v59;
            v61 = v24;
            v62 = v57;
            v63 = &v57[v59];
            while (*v62 == *v61)
            {
              ++v62;
              ++v61;
              v60 -= 8;
              if (!v60)
              {
                v62 = v63;
                break;
              }
            }

            if (v61 == v32)
            {
              goto LABEL_58;
            }

LABEL_70:
            if (v62 == &v57[v58] || v33 >= v45 || *v62 < *v61)
            {
              break;
            }
          }

          else
          {
            v61 = v24;
            v62 = v57;
            if (v24 != v32)
            {
              goto LABEL_70;
            }

LABEL_58:
            if (v33 >= v45)
            {
              break;
            }
          }
        }
      }

LABEL_73:
      if (v33 >= v45)
      {
        goto LABEL_103;
      }

      v64 = *v45;
      v65 = v35;
      v66 = v33;
      v67 = v45;
      while (2)
      {
        *v66 = v64;
        *v67 = v65;
        v68 = *(v20 + 8);
        v69 = &v24[v68];
        do
        {
          v34 = v66;
          v70 = v66[1];
          ++v66;
          v65 = v70;
          v71 = v19 + (v70 << 6);
          v72 = *v71;
          v73 = *(v71 + 8);
          if (v68 >= v73)
          {
            v74 = v73;
          }

          else
          {
            v74 = *(v20 + 8);
          }

          if (v74)
          {
            v75 = 8 * v74;
            v76 = v24;
            v77 = v72;
            v78 = &v72[v74];
            while (*v77 == *v76)
            {
              ++v77;
              ++v76;
              v75 -= 8;
              if (!v75)
              {
                v77 = v78;
                break;
              }
            }
          }

          else
          {
            v76 = v24;
            v77 = v72;
          }
        }

        while (v76 != v69 && (v77 == &v72[v73] || *v77 < *v76));
        do
        {
          do
          {
            while (1)
            {
              v79 = *--v67;
              v64 = v79;
              v80 = v19 + (v79 << 6);
              v81 = *v80;
              v82 = *(v80 + 8);
              v83 = v68 >= v82 ? v82 : *(v20 + 8);
              if (v83)
              {
                break;
              }

              v85 = v24;
              v86 = v81;
              if (v24 != v69)
              {
                goto LABEL_100;
              }
            }

            v84 = 8 * v83;
            v85 = v24;
            v86 = v81;
            v87 = &v81[v83];
            while (*v86 == *v85)
            {
              ++v86;
              ++v85;
              v84 -= 8;
              if (!v84)
              {
                v86 = v87;
                break;
              }
            }
          }

          while (v85 == v69);
LABEL_100:
          ;
        }

        while (v86 != &v81[v82] && *v86 >= *v85);
        if (v66 < v67)
        {
          continue;
        }

        break;
      }

LABEL_103:
      if (v34 != v9)
      {
        *v9 = *v34;
      }

      *v34 = v18;
      if (v33 < v45)
      {
LABEL_108:
        result = std::__introsort<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,false>(v9, v34, a3, a4, a5 & 1);
        a5 = 0;
        i = v34 + 1;
      }

      else
      {
        v88 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v9, v34, a3);
        i = v34 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(v34 + 1, a2, a3);
        if (result)
        {
          a2 = v34;
          if (v88)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v88)
        {
          goto LABEL_108;
        }
      }
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9, &v9[v12 >> 1], v10, v15);
      v16 = &v9[v13];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 1, v16 - 1, v313, **a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v9 + 2, &v9[v13 + 1], v312, **a3);
      a2 = v311;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(v16 - 1, v14, &v9[v13 + 1], **a3);
      v17 = *v9;
      *v9 = *v16;
      *v16 = v17;
      --a4;
      v18 = *v9;
      v19 = **a3;
      v20 = v19 + (v18 << 6);
      if (a5)
      {
        goto LABEL_23;
      }

LABEL_14:
      v21 = v19 + (*(v9 - 1) << 6);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *v20;
      v25 = *(v20 + 8);
      if (v25 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = *(v20 + 8);
      }

      if (v26)
      {
        v27 = 8 * v26;
        v28 = *v20;
        v29 = v22;
        v30 = &v22[v26];
        while (*v29 == *v28)
        {
          ++v29;
          ++v28;
          v27 -= 8;
          if (!v27)
          {
            v29 = v30;
            break;
          }
        }
      }

      else
      {
        v28 = *v20;
        v29 = v22;
      }

      v31 = &v24[v25];
      if (v28 != v31 && (v29 == &v22[v23] || *v29 < *v28))
      {
        goto LABEL_28;
      }

      v89 = v19 + (*v10 << 6);
      v90 = *v89;
      v91 = *(v89 + 8);
      if (v91 >= v25)
      {
        v92 = *(v20 + 8);
      }

      else
      {
        v92 = v91;
      }

      v93 = v90;
      v94 = *v20;
      if (v92)
      {
        v95 = 8 * v92;
        v93 = v90;
        v94 = *v20;
        v96 = &v24[v92];
        while (*v94 == *v93)
        {
          ++v94;
          ++v93;
          v95 -= 8;
          if (!v95)
          {
            v94 = v96;
            break;
          }
        }
      }

      result = v90 + 8 * v91;
      if (v93 != result && (v94 == v31 || *v94 < *v93))
      {
        i = v9;
        while (1)
        {
          while (1)
          {
            v97 = i[1];
            ++i;
            v98 = v19 + (v97 << 6);
            v99 = *v98;
            v100 = *(v98 + 8);
            v101 = v100 >= v25 ? *(v20 + 8) : v100;
            if (!v101)
            {
              break;
            }

            v102 = 8 * v101;
            result = v99;
            v103 = *v20;
            v104 = &v24[v101];
            while (*v103 == *result)
            {
              ++v103;
              result += 8;
              v102 -= 8;
              if (!v102)
              {
                v103 = v104;
                break;
              }
            }

            if (result != v99 + 8 * v100)
            {
              goto LABEL_132;
            }
          }

          result = v99;
          v103 = *v20;
          if (v99 != v99 + 8 * v100)
          {
LABEL_132:
            if (v103 == v31 || *v103 < *result)
            {
              goto LABEL_151;
            }
          }
        }
      }

      for (i = v9 + 1; i < a2; ++i)
      {
        v105 = v19 + (*i << 6);
        v106 = *v105;
        v107 = *(v105 + 8);
        if (v107 >= v25)
        {
          v108 = *(v20 + 8);
        }

        else
        {
          v108 = v107;
        }

        if (v108)
        {
          v109 = 8 * v108;
          result = v106;
          v110 = *v20;
          v111 = &v24[v108];
          while (*v110 == *result)
          {
            ++v110;
            result += 8;
            v109 -= 8;
            if (!v109)
            {
              v110 = v111;
              break;
            }
          }

          if (result == v106 + 8 * v107)
          {
            continue;
          }
        }

        else
        {
          result = v106;
          v110 = *v20;
          if (v106 == v106 + 8 * v107)
          {
            continue;
          }
        }

        if (v110 == v31 || *v110 < *result)
        {
          break;
        }
      }

LABEL_151:
      v112 = a2;
      if (i < a2)
      {
        for (j = a2; ; --j)
        {
          if (v91 >= v25)
          {
            v115 = *(v20 + 8);
          }

          else
          {
            v115 = v91;
          }

          result = v90;
          v116 = *v20;
          if (v115)
          {
            v117 = 8 * v115;
            result = v90;
            v116 = *v20;
            v118 = &v24[v115];
            while (*v116 == *result)
            {
              ++v116;
              result += 8;
              v117 -= 8;
              if (!v117)
              {
                v116 = v118;
                break;
              }
            }
          }

          v112 = j - 1;
          if (result == v90 + 8 * v91 || v116 != v31 && *v116 >= *result)
          {
            break;
          }

          v114 = v19 + (*(j - 2) << 6);
          v90 = *v114;
          v91 = *(v114 + 8);
        }
      }

      if (i < v112)
      {
        v119 = *i;
        v120 = *v112;
        do
        {
          *i = v120;
          *v112 = v119;
          v121 = *(v20 + 8);
          v122 = &v24[v121];
          do
          {
            do
            {
              while (1)
              {
                v123 = i[1];
                ++i;
                v119 = v123;
                v124 = v19 + (v123 << 6);
                v125 = *v124;
                v126 = *(v124 + 8);
                v127 = v126 >= v121 ? *(v20 + 8) : v126;
                if (v127)
                {
                  break;
                }

                v129 = v125;
                v130 = v24;
                if (v125 != &v125[v126])
                {
                  goto LABEL_180;
                }
              }

              v128 = 8 * v127;
              v129 = v125;
              v130 = v24;
              v131 = &v24[v127];
              while (*v130 == *v129)
              {
                ++v130;
                ++v129;
                v128 -= 8;
                if (!v128)
                {
                  v130 = v131;
                  break;
                }
              }
            }

            while (v129 == &v125[v126]);
LABEL_180:
            ;
          }

          while (v130 != v122 && *v130 >= *v129);
          while (1)
          {
            v132 = *--v112;
            v120 = v132;
            v133 = v19 + (v132 << 6);
            v134 = *v133;
            result = *(v133 + 8);
            if (result >= v121)
            {
              v135 = *(v20 + 8);
            }

            else
            {
              v135 = result;
            }

            if (v135)
            {
              v136 = 8 * v135;
              v137 = v134;
              v138 = v24;
              v139 = &v24[v135];
              while (*v138 == *v137)
              {
                ++v138;
                ++v137;
                v136 -= 8;
                if (!v136)
                {
                  v138 = v139;
                  break;
                }
              }
            }

            else
            {
              v137 = v134;
              v138 = v24;
            }

            if (v137 == &v134[result])
            {
              break;
            }

            if (v138 != v122)
            {
              result = *v137;
              if (*v138 >= *v137)
              {
                break;
              }
            }
          }
        }

        while (i < v112);
      }

      v140 = i - 1;
      if (i - 1 != v9)
      {
        *v9 = *v140;
      }

      a5 = 0;
      *v140 = v18;
    }
  }

  v142 = *(a2 - 1);
  v143 = *i;
  v144 = **a3;
  v145 = v144 + (v142 << 6);
  v146 = v144 + (v143 << 6);
  v147 = *v145;
  v148 = *(v145 + 8);
  v149 = *v146;
  v150 = *(v146 + 8);
  v151 = *v146 + 8 * v150;
  if (v150 >= v148)
  {
    v152 = v148;
  }

  else
  {
    v152 = v150;
  }

  if (v152)
  {
    v153 = 8 * v152;
    v154 = v147;
    v155 = &v147[v152];
    while (1)
    {
      result = *v149;
      if (*v154 != *v149)
      {
        break;
      }

      ++v154;
      ++v149;
      v153 -= 8;
      if (!v153)
      {
        v154 = v155;
        break;
      }
    }
  }

  else
  {
    v154 = v147;
  }

  if (v149 != v151 && (v154 == &v147[v148] || *v154 < *v149))
  {
    *i = v142;
    *(a2 - 1) = v143;
  }

  return result;
}

_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a4 + (v4 << 6);
  v7 = a4 + (v5 << 6);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *v7 + 8 * v11;
  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v7 + 8);
  }

  v14 = *v7;
  v15 = v8;
  if (v13)
  {
    v16 = 8 * v13;
    v14 = *v7;
    v15 = v8;
    v17 = &v8[v13];
    while (*v15 == *v14)
    {
      ++v15;
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v15 = v17;
        break;
      }
    }
  }

  v18 = &v8[v9];
  if (v14 != v12 && (v15 == v18 || *v15 < *v14))
  {
    v19 = *a3;
    v20 = a4 + (v19 << 6);
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v9 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v9;
    }

    if (v23)
    {
      v24 = 8 * v23;
      v25 = v21;
      v26 = &v21[v23];
      while (*v25 == *v8)
      {
        ++v25;
        ++v8;
        v24 -= 8;
        if (!v24)
        {
          v25 = v26;
          break;
        }
      }

      if (v8 == v18)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = v21;
      if (v8 == v18)
      {
LABEL_47:
        *result = v4;
        *a2 = v5;
        v48 = *a3;
        v49 = a4 + (v48 << 6);
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v7 + 8);
        v53 = &v10[v52];
        if (v52 >= v51)
        {
          v54 = v51;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          v55 = 8 * v54;
          v56 = v50;
          v57 = &v50[v54];
          while (1)
          {
            result = *v10;
            if (*v56 != *v10)
            {
              break;
            }

            ++v56;
            ++v10;
            v55 -= 8;
            if (!v55)
            {
              v56 = v57;
              break;
            }
          }
        }

        else
        {
          v56 = v50;
        }

        if (v10 != v53 && (v56 == &v50[v51] || *v56 < *v10))
        {
          *a2 = v48;
          *a3 = v5;
        }

        return result;
      }
    }

    if (v25 == &v21[v22] || *v25 < *v8)
    {
      *result = v19;
      *a3 = v5;
      return result;
    }

    goto LABEL_47;
  }

  v27 = *a3;
  v28 = a4 + (v27 << 6);
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v9 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v9;
  }

  if (!v31)
  {
    v33 = v29;
    if (v8 == v18)
    {
      return result;
    }

    goto LABEL_33;
  }

  v32 = 8 * v31;
  v33 = v29;
  v34 = &v29[v31];
  while (*v33 == *v8)
  {
    ++v33;
    ++v8;
    v32 -= 8;
    if (!v32)
    {
      v33 = v34;
      break;
    }
  }

  if (v8 != v18)
  {
LABEL_33:
    if (v33 == &v29[v30] || *v33 < *v8)
    {
      *a2 = v27;
      *a3 = v4;
      v35 = *a2;
      v36 = *result;
      v37 = a4 + (v35 << 6);
      v38 = a4 + (v36 << 6);
      v39 = *v37;
      v40 = *(v37 + 8);
      v41 = *v38;
      v42 = *(v38 + 8);
      v43 = *v38 + 8 * v42;
      if (v42 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        v45 = 8 * v44;
        v46 = v39;
        v47 = &v39[v44];
        while (*v46 == *v41)
        {
          ++v46;
          ++v41;
          v45 -= 8;
          if (!v45)
          {
            v46 = v47;
            break;
          }
        }
      }

      else
      {
        v46 = v39;
      }

      if (v41 != v43 && (v46 == &v39[v40] || *v46 < *v41))
      {
        *result = v35;
        *a2 = v36;
      }
    }
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, **a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = v13 + (v11 << 6);
  v15 = v13 + (v12 << 6);
  v16 = *v14;
  v17 = *(v14 + 8);
  v18 = *v15;
  v19 = *(v15 + 8);
  v20 = *v15 + 8 * v19;
  if (v19 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  if (!v21)
  {
    v23 = v16;
    if (v18 == v20)
    {
      return result;
    }

LABEL_12:
    if (v23 != &v16[v17] && *v23 >= *v18)
    {
      return result;
    }

    *a3 = v11;
    *a4 = v12;
    v25 = *a3;
    v26 = *a2;
    v27 = v13 + (v25 << 6);
    v28 = v13 + (v26 << 6);
    v29 = *v27;
    v30 = *(v27 + 8);
    v31 = *v28;
    v32 = *(v28 + 8);
    v33 = *v28 + 8 * v32;
    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      v35 = 8 * v34;
      v36 = v29;
      v37 = &v29[v34];
      while (1)
      {
        result = *v36;
        if (*v36 != *v31)
        {
          break;
        }

        ++v36;
        ++v31;
        v35 -= 8;
        if (!v35)
        {
          v36 = v37;
          break;
        }
      }

      if (v31 == v33)
      {
        return result;
      }
    }

    else
    {
      v36 = v29;
      if (v31 == v33)
      {
        return result;
      }
    }

    if (v36 == &v29[v30] || *v36 < *v31)
    {
      *a2 = v25;
      *a3 = v26;
      v38 = *a2;
      v39 = *a1;
      v40 = v13 + (v38 << 6);
      v41 = v13 + (v39 << 6);
      v42 = *v40;
      v43 = *(v40 + 8);
      v44 = *v41;
      v45 = *(v41 + 8);
      v46 = *v41 + 8 * v45;
      if (v45 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        v48 = 8 * v47;
        v49 = v42;
        v50 = &v42[v47];
        while (1)
        {
          result = *v44;
          if (*v49 != *v44)
          {
            break;
          }

          ++v49;
          ++v44;
          v48 -= 8;
          if (!v48)
          {
            v49 = v50;
            break;
          }
        }
      }

      else
      {
        v49 = v42;
      }

      if (v44 != v46 && (v49 == &v42[v43] || *v49 < *v44))
      {
        *a1 = v38;
        *a2 = v39;
      }
    }

    return result;
  }

  v22 = 8 * v21;
  v23 = v16;
  v24 = &v16[v21];
  while (1)
  {
    result = *v23;
    if (*v23 != *v18)
    {
      break;
    }

    ++v23;
    ++v18;
    v22 -= 8;
    if (!v22)
    {
      v23 = v24;
      break;
    }
  }

  if (v18 != v20)
  {
    goto LABEL_12;
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = v15 + (v13 << 6);
  v17 = v15 + (v14 << 6);
  v18 = *v16;
  v19 = *(v16 + 8);
  v20 = *v17;
  v21 = *(v17 + 8);
  v22 = *v17 + 8 * v21;
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  if (!v23)
  {
    v25 = v18;
    if (v20 == v22)
    {
      return result;
    }

LABEL_12:
    if (v25 != &v18[v19] && *v25 >= *v20)
    {
      return result;
    }

    *a4 = v13;
    *a5 = v14;
    v27 = *a4;
    v28 = *a3;
    v29 = v15 + (v27 << 6);
    v30 = v15 + (v28 << 6);
    v31 = *v29;
    v32 = *(v29 + 8);
    v33 = *v30;
    v34 = *(v30 + 8);
    v35 = *v30 + 8 * v34;
    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    if (v36)
    {
      v37 = 8 * v36;
      v38 = v31;
      v39 = &v31[v36];
      while (1)
      {
        result = *v38;
        if (*v38 != *v33)
        {
          break;
        }

        ++v38;
        ++v33;
        v37 -= 8;
        if (!v37)
        {
          v38 = v39;
          break;
        }
      }

      if (v33 == v35)
      {
        return result;
      }
    }

    else
    {
      v38 = v31;
      if (v33 == v35)
      {
        return result;
      }
    }

    if (v38 == &v31[v32] || *v38 < *v33)
    {
      *a3 = v27;
      *a4 = v28;
      v40 = *a3;
      v41 = *a2;
      v42 = v15 + (v40 << 6);
      v43 = v15 + (v41 << 6);
      v44 = *v42;
      v45 = *(v42 + 8);
      v46 = *v43;
      v47 = *(v43 + 8);
      v48 = *v43 + 8 * v47;
      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      if (v49)
      {
        v50 = 8 * v49;
        v51 = v44;
        v52 = &v44[v49];
        while (1)
        {
          result = *v51;
          if (*v51 != *v46)
          {
            break;
          }

          ++v51;
          ++v46;
          v50 -= 8;
          if (!v50)
          {
            v51 = v52;
            break;
          }
        }
      }

      else
      {
        v51 = v44;
      }

      if (v46 != v48 && (v51 == &v44[v45] || *v51 < *v46))
      {
        *a2 = v40;
        *a3 = v41;
        v53 = *a2;
        v54 = *a1;
        v55 = v15 + (v53 << 6);
        v56 = v15 + (v54 << 6);
        v57 = *v55;
        v58 = *(v55 + 8);
        v59 = *v56;
        v60 = *(v56 + 8);
        v61 = *v56 + 8 * v60;
        if (v60 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          v63 = 8 * v62;
          v64 = v57;
          v65 = &v57[v62];
          while (1)
          {
            result = *v59;
            if (*v64 != *v59)
            {
              break;
            }

            ++v64;
            ++v59;
            v63 -= 8;
            if (!v63)
            {
              v64 = v65;
              break;
            }
          }
        }

        else
        {
          v64 = v57;
        }

        if (v59 != v61 && (v64 == &v57[v58] || *v64 < *v59))
        {
          *a1 = v53;
          *a2 = v54;
        }
      }
    }

    return result;
  }

  v24 = 8 * v23;
  v25 = v18;
  v26 = &v18[v23];
  while (1)
  {
    result = *v25;
    if (*v25 != *v20)
    {
      break;
    }

    ++v25;
    ++v20;
    v24 -= 8;
    if (!v24)
    {
      v25 = v26;
      break;
    }
  }

  if (v20 != v22)
  {
    goto LABEL_12;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, **a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
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
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = v7 + (v5 << 6);
      v9 = v7 + (v6 << 6);
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *v9;
      v13 = *(v9 + 8);
      v14 = *v9 + 8 * v13;
      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        v16 = 8 * v15;
        v17 = v10;
        v18 = &v10[v15];
        while (*v17 == *v12)
        {
          ++v17;
          ++v12;
          v16 -= 8;
          if (!v16)
          {
            v17 = v18;
            break;
          }
        }
      }

      else
      {
        v17 = v10;
      }

      if (v12 != v14 && (v17 == &v10[v11] || *v17 < *v12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v20 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,canonicalizeMapExprAndTermOrder(mlir::AffineMap &)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, **a3);
  v23 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = **a3;
  while (1)
  {
    v26 = *v23;
    v27 = *v20;
    v28 = v25 + (v26 << 6);
    v29 = v25 + (v27 << 6);
    v30 = *v28;
    v31 = *(v28 + 8);
    v32 = *v29;
    v33 = *(v29 + 8);
    v34 = v33 >= v31 ? *(v28 + 8) : v33;
    if (v34)
    {
      break;
    }

    v36 = v32;
    v37 = *v28;
    if (v32 != &v32[v33])
    {
      goto LABEL_33;
    }

LABEL_21:
    v20 = v23++;
    if (v23 == a2)
    {
      return 1;
    }
  }

  v35 = 8 * v34;
  v36 = v32;
  v37 = *v28;
  v38 = &v30[v34];
  while (*v37 == *v36)
  {
    ++v37;
    ++v36;
    v35 -= 8;
    if (!v35)
    {
      v37 = v38;
      break;
    }
  }

  if (v36 == &v32[v33])
  {
    goto LABEL_21;
  }

LABEL_33:
  if (v37 != &v30[v31] && *v37 >= *v36)
  {
    goto LABEL_21;
  }

  *v23 = v27;
  v39 = v20;
  while (1)
  {
    v41 = *--v39;
    v40 = v41;
    v42 = v25 + (v41 << 6);
    v43 = *(v28 + 8);
    v44 = *v42;
    v45 = *(v42 + 8);
    v46 = v45 >= v43 ? *(v28 + 8) : v45;
    if (v46)
    {
      v47 = 8 * v46;
      v48 = v44;
      v49 = v30;
      v50 = &v30[v46];
      while (*v49 == *v48)
      {
        ++v49;
        ++v48;
        v47 -= 8;
        if (!v47)
        {
          v49 = v50;
          break;
        }
      }
    }

    else
    {
      v48 = v44;
      v49 = v30;
    }

    if (v48 == &v44[v45] || v49 != &v30[v43] && *v49 >= *v48)
    {
      break;
    }

    *v20 = v40;
    v20 = v39;
    if (v39 == a1)
    {
      v20 = a1;
      break;
    }
  }

  *v20 = v26;
  if (++v24 != 8)
  {
    goto LABEL_21;
  }

  return v23 + 1 == a2;
}

void *CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::~CanonicalizeSingleResultAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t CanonicalizeSingleResultAffineMinMaxOp<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v5 = a2 + 64;
  v10[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v10[0] = mlir::AffineMapAttr::getValue(v10);
  if (mlir::arith::FastMathFlagsAttr::getValue(v10) != 1)
  {
    return 0;
  }

  v10[0] = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v10[0] = v7;
  v10[1] = v6;
  v8 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap,mlir::OperandRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v8);
  return 1;
}

void *DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::~DeduplicateAffineMinMaxExpressions(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t DeduplicateAffineMinMaxExpressions<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v25);
  v25 = v27;
  v26 = 0x400000000;
  Results = mlir::AffineMap::getResults(&Value);
  v7 = v26;
  if (v6)
  {
    v8 = &Results[v6];
    do
    {
      while (1)
      {
        v9 = *Results;
        v10 = v25;
        v11 = v7;
        v12 = v25;
        if (v7)
        {
          v13 = 8 * v7;
          v12 = v25;
          while (*v12 != v9)
          {
            ++v12;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        if (v12 == (v25 + 8 * v7))
        {
          break;
        }

        if (++Results == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      if (v7 >= HIDWORD(v26))
      {
        v14 = Results;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v11 + 1, 8);
        Results = v14;
        v11 = v26;
        v10 = v25;
      }

      v10[v11] = v9;
      v7 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++Results;
    }

    while (Results != v8);
  }

LABEL_12:
  if (v7 == mlir::arith::FastMathFlagsAttr::getValue(&Value))
  {
    v15 = 0;
    v16 = v25;
    if (v25 == v27)
    {
      return v15;
    }

    goto LABEL_18;
  }

  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v23 = mlir::AffineMap::get(NumDims, NumSymbols, v25, v26, a3[1]);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v19 = *(a2 + 68);
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  mlir::ValueRange::ValueRange(v28, v20, v19);
  v21 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &v23, v28);
  (*(*a3 + 1))(a3, a2, v21);
  v15 = 1;
  v16 = v25;
  if (v25 != v27)
  {
LABEL_18:
    free(v16);
  }

  return v15;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineMaxOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
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

void *MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void MergeAffineMinMaxOp<mlir::affine::AffineMaxOp>::~MergeAffineMinMaxOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,8u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineMaxOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineMaxOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::~CanonicalizeAffineMinMaxOpExprAndTermOrder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t CanonicalizeAffineMinMaxOpExprAndTermOrder<mlir::affine::AffineMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v10);
  if ((canonicalizeMapExprAndTermOrder(&Value) & 1) == 0)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v10, v6, v5);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::AffineMap &,mlir::ValueRange>(a3 + 1, *(a2 + 24), &Value, v10);
  (*(*a3 + 1))(a3, a2, v7);
  return 1;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffinePrefetchOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v42[8] = *MEMORY[0x1E69E9840];
  v5 = a2 + 64;
  v40 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  Value = mlir::AffineMapAttr::getValue(&v40);
  v32 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v40 = v42;
    v41 = 0x800000000;
    v8 = -1;
    v9 = 32;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v8, 8);
    v10 = v41;
    v11 = v40;
    v12 = v40 + 8 * v41;
    if (v8 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 68);
  v8 = v7 - 1;
  v9 = *(a2 + 72) + 32;
  v40 = v42;
  v41 = 0x800000000;
  if ((v7 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v10 = 0;
  if (v7 == 1)
  {
    v24 = 0;
    goto LABEL_18;
  }

  v11 = v42;
  v12 = v42;
  if (v8 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v12 >= v9 + 32 * v8 || v9 + 24 >= &v11[v8 + v10])
  {
    v14 = v8 & 3;
    if ((v8 & 3) == 0)
    {
      v14 = 4;
    }

    v13 = v8 - v14;
    v15 = &v12[v13];
    v16 = (v9 + 88);
    v17 = (v12 + 2);
    v18 = v13;
    do
    {
      v19 = v16 - 8;
      v20 = vld4q_f64(v19);
      v21 = vld4q_f64(v16);
      *(v17 - 1) = v20;
      *v17 = v21;
      v16 += 16;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    v12 = v15;
    goto LABEL_15;
  }

LABEL_9:
  v13 = 0;
LABEL_15:
  v22 = v8 - v13;
  v23 = (32 * v13) | 0x18;
  do
  {
    *v12++ = *(v9 + v23);
    v23 += 32;
    --v22;
  }

  while (v22);
  v24 = v41;
  v10 = v8;
LABEL_18:
  LODWORD(v41) = v24 + v10;
  composeAffineMapAndOperands(&v32, &v40);
  mlir::affine::canonicalizeMapAndOperands(&v32, &v40);
  simplifyMapWithOperands(&v32, v40, v41);
  v25 = v40;
  if (v32 == Value)
  {
    if (!v10)
    {
LABEL_25:
      v29 = 0;
      if (v40 == v42)
      {
        return v29;
      }

      goto LABEL_29;
    }

    v27 = 0;
    v28 = (v9 + 24);
    while (*v28 == *(v40 + v27))
    {
      ++v27;
      v28 += 4;
      if (v10 == v27)
      {
        goto LABEL_25;
      }
    }
  }

  v35[1] = v41;
  v36 = v32;
  v34 = *(*(a2 + 72) + 24);
  v35[0] = v40;
  v37 = *(a2 + 88);
  v33 = mlir::BoolAttr::getValue(&v37);
  v39 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  mlir::IntegerAttr::getValue(&v39, &v37);
  if (v38 > 0x40)
  {
    v26 = *v37;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    LODWORD(v26) = v37;
  }

  LODWORD(v39) = v26;
  v37 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1));
  LOBYTE(v37) = mlir::BoolAttr::getValue(&v37);
  v30 = mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(a3 + 1, *(a2 + 24), &v34, &v36, v35, &v33, &v39, &v37);
  ((*a3)[1])(a3, a2, v30);
  v29 = 1;
  v25 = v40;
  if (v40 != v42)
  {
LABEL_29:
    free(v25);
  }

  return v29;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t a5, unsigned __int8 *a6, unsigned int *a7, char *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffinePrefetchOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &,BOOL,unsigned int,BOOL>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::affine::AffinePrefetchOp::build(a1, v25, *a3, *a4, *a5, *(a5 + 8), *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffinePrefetchOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "affine.yield", 12);
  mlir::ValueRange::ValueRange(v6, 0, 0);
  mlir::OperationState::addOperands(v5, v6[0], v6[1]);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

llvm::raw_ostream *mlir::affine::AffineParallelOp::print(mlir::OpAsmPrinter &)::$_1::operator()<mlir::Attribute const>(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  Int = mlir::IntegerAttr::getInt(&v15);
  v4 = mlir::arith::symbolizeAtomicRMWKind(Int);
  v5 = *a1;
  v6 = (*(*v5 + 16))(v5);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++v6[4];
  }

  v8 = mlir::arith::stringifyAtomicRMWKind(v4);
  v10 = v9;
  v11 = (*(*v5 + 16))(v5);
  if (v10 <= *(v11 + 24) - *(v11 + 32))
  {
    if (v10)
    {
      v12 = v11;
      memcpy(*(v11 + 32), v8, v10);
      *(v12 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v11, v8, v10);
  }

  result = (*(*v5 + 16))(v5);
  v14 = *(result + 4);
  if (*(result + 3) == v14)
  {
    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  *v14 = 34;
  ++*(result + 4);
  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t *a1)
{
  v35[9] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v34[0] = v35;
  v34[1] = 0x400000000;
  v35[8] = 4;
  (*(**a1 + 40))(*a1);
  v2 = *a1;
  NoneType = mlir::Builder::getNoneType(a1[1], v3);
  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v23, NoneType, "reduce", 6uLL, v34))
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v23);
    v7 = mlir::arith::symbolizeAtomicRMWKind(AttrData, v6);
    if (v8)
    {
      v9 = a1[2];
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1[1], v7);
      v11 = *(v9 + 8);
      if (v11 >= *(v9 + 12))
      {
        v22 = I64IntegerAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 16), v11 + 1, 8);
        I64IntegerAttr = v22;
        LODWORD(v11) = *(v9 + 8);
      }

      *(*v9 + 8 * v11) = I64IntegerAttr;
      ++*(v9 + 8);
      v12 = 1;
    }

    else
    {
      (*(**a1 + 24))(&v24);
      if (v24)
      {
        mlir::Diagnostic::operator<<(&v25, v23);
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
      if (v24)
      {
        mlir::InFlightDiagnostic::report(&v24);
      }

      if (v33 == 1)
      {
        if (v32 != &v33)
        {
          free(v32);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v31;
          v16 = __p;
          if (v31 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v31 = v14;
          operator delete(v16);
        }

        v17 = v28;
        if (v28)
        {
          v18 = v29;
          v19 = v28;
          if (v29 != v28)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
              }
            }

            while (v18 != v17);
            v19 = v28;
          }

          v29 = v17;
          operator delete(v19);
        }

        if (v26 != &v27)
        {
          free(v26);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  return v12;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorLoadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v37 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v37);
  v32 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v37 = v39;
    v38 = 0x800000000;
    v7 = -1;
    v8 = 32;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v7, 8);
    v9 = v38;
    v10 = v37;
    v11 = v37 + 8 * v38;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 1;
  v8 = *(a2 + 72) + 32;
  v37 = v39;
  v38 = 0x800000000;
  if ((v6 - 1) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 1)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v39;
  v11 = v39;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v38;
  v9 = v7;
LABEL_18:
  LODWORD(v38) = v23 + v9;
  composeAffineMapAndOperands(&v32, &v37);
  mlir::affine::canonicalizeMapAndOperands(&v32, &v37);
  simplifyMapWithOperands(&v32, v37, v38);
  v24 = v37;
  if (v32 == Value)
  {
    if (!v9)
    {
LABEL_29:
      v28 = 0;
      if (v37 == v39)
      {
        return v28;
      }

      goto LABEL_23;
    }

    v30 = 0;
    v31 = (v8 + 24);
    while (*v31 == *(v37 + v30))
    {
      ++v30;
      v31 += 4;
      if (v9 == v30)
      {
        goto LABEL_29;
      }
    }
  }

  v35[1] = v38;
  v36 = v32;
  v35[0] = v37;
  if (*(a2 + 36))
  {
    v25 = a2 - 16;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(*(a2 + 72) + 24);
  v34 = v26;
  v27 = mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v34, &v33, &v36, v35);
  (*(*a3 + 8))(a3, a2, v27);
  v28 = 1;
  v24 = v37;
  if (v37 != v39)
  {
LABEL_23:
    free(v24);
  }

  return v28;
}