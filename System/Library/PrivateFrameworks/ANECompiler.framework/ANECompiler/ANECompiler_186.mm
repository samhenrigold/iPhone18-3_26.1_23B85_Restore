uint64_t mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::InsertOp>,mlir::OpTrait::OneResult<mlir::tensor::InsertOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::InsertOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::OpInvariants<mlir::tensor::InsertOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::InsertOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::InsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::InsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::InsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::InsertOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::InsertOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28D000;
    v5 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::InsertOp>,mlir::OpTrait::OneResult<mlir::tensor::InsertOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::InsertOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::OpInvariants<mlir::tensor::InsertOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::InsertOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::InsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::InsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::InsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::InsertOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::InsertOp>>();
    v4 = &unk_1EB28D000;
    v18 = v23;
  }

  v19 = v4[297];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void anonymous namespace::ChainedTensorBitcast::~ChainedTensorBitcast(_anonymous_namespace_::ChainedTensorBitcast *this)
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

uint64_t anonymous namespace::ChainedTensorBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
    {
      v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v8 = *(*(result + 72) + 24);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>((a3 + 8), *(a2 + 24), &v9, &v8);
      (*(*a3 + 8))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
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

void anonymous namespace::ChainedTensorCast::~ChainedTensorCast(_anonymous_namespace_::ChainedTensorCast *this)
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

uint64_t anonymous namespace::ChainedTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(*(result + 72) + 24) + 8);
      v7 = result;
      v8 = *(result - 8);
      v13 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v9 = v13;
      v10 = joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v8 & 0xFFFFFFFFFFFFFFF8);
      result = joinShapes(v10, v9);
      if (result)
      {
        if (result == joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v9))
        {
          v12 = *(*(v7 + 72) + 24);
          v11 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(a2 + 24), &v13, &v12);
          (*(*a3 + 8))(a3, a2, v11);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t joinShapes(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23[4] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v20 = a1;
  if (!mlir::TensorType::hasRank(&v20))
  {
    return v2;
  }

  if (!mlir::TensorType::hasRank(&v19))
  {
    return v20;
  }

  mlir::ArrayAttr::getValue(&v20);
  v4 = v3;
  mlir::ArrayAttr::getValue(&v19);
  if (v4 != v5)
  {
    return 0;
  }

  v21 = v23;
  v22 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v4, 8);
  }

  if (v4 < 1)
  {
    v13 = v22;
LABEL_21:
    v14 = v21;
    v15 = v13;
    ElementType = mlir::TensorType::getElementType(&v20);
    v2 = mlir::RankedTensorType::get(v14, v15, ElementType, 0);
    v17 = v21;
    if (v21 != v23)
    {
      goto LABEL_22;
    }

    return v2;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(mlir::ArrayAttr::getValue(&v20) + 8 * v6);
    v8 = *(mlir::ArrayAttr::getValue(&v19) + 8 * v6);
    if (v7 == 0x8000000000000000)
    {
      goto LABEL_13;
    }

    Value = mlir::ArrayAttr::getValue(&v20);
    if (v8 != 0x8000000000000000)
    {
      break;
    }

    v11 = v22;
    v12 = HIDWORD(v22);
    v8 = *(Value + 8 * v6);
LABEL_14:
    if (v11 >= v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v11 + 1, 8);
      v11 = v22;
    }

    *(v21 + v11) = v8;
    v13 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    if (v4 == ++v6)
    {
      goto LABEL_21;
    }
  }

  v10 = *(Value + 8 * v6);
  if (v10 == *(mlir::ArrayAttr::getValue(&v19) + 8 * v6))
  {
    v8 = *(mlir::ArrayAttr::getValue(&v20) + 8 * v6);
LABEL_13:
    v11 = v22;
    v12 = HIDWORD(v22);
    goto LABEL_14;
  }

  v2 = 0;
  v17 = v21;
  if (v21 == v23)
  {
    return v2;
  }

LABEL_22:
  free(v17);
  return v2;
}

void anonymous namespace::TensorCastExtractSlice::~TensorCastExtractSlice(_anonymous_namespace_::TensorCastExtractSlice *this)
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

uint64_t anonymous namespace::TensorCastExtractSlice::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v45 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v45);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v6 = DefiningOp;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v36 = v6;
  v7 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  if (!v8 || !a2 || !v6 || !mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v7))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v35);
  v11 = v10;
  v45 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = mlir::ArrayAttr::getValue(&v45);
  if (v11 != v13 || (result = memcmp(Value, v12, 8 * v11), result))
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v36, &v45);
    v39[0] = *(v36 + 16 * ((*(v36 + 44) >> 23) & 1) + 72);
    v15 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v39);
    v17 = v16;
    if (*(v36 + 36))
    {
      v18 = v36 - 16;
    }

    else
    {
      v18 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = mlir::ArrayAttr::getValue(v39);
    mlir::computeRankReductionMask(v15, v17, v19, v20, 0, v41);
    v21 = v46;
    if (!v46)
    {
LABEL_19:
      v34 = *(*(v36 + 72) + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v36, v39);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v36, v37);
      v22 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3 + 1, *(a2 + 24), &v35, &v34, v39, &v45, v37);
      (*(*a3 + 1))(a3, a2, v22);
      if (v37[0] != &v38)
      {
        free(v37[0]);
      }

      if (v39[0] != &v40)
      {
        free(v39[0]);
      }

      if (v44 == 1 && (v41[0] & 1) == 0)
      {
        llvm::deallocate_buffer(v42, (4 * v43));
      }

      if (v45 != v47)
      {
        free(v45);
      }

      return 1;
    }

    v23 = 0;
    v24 = 0;
    while (1)
    {
      if (v44 != 1)
      {
        goto LABEL_43;
      }

      if (v41[0])
      {
        v25 = &v42;
        v26 = 3;
        v27 = (37 * v24) & 3;
        v28 = *(&v42 + v27);
        if (v28 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (!v43)
        {
          goto LABEL_43;
        }

        v25 = v42;
        v26 = v43 - 1;
        v27 = (v43 - 1) & (37 * v24);
        v28 = *(v42 + v27);
        if (v28 != v24)
        {
LABEL_39:
          v30 = 1;
          while (v28 != -1)
          {
            v31 = v27 + v30++;
            v27 = v31 & v26;
            v28 = v25[v27];
            if (v28 == v24)
            {
              goto LABEL_33;
            }
          }

LABEL_43:
          v29 = v23 + 1;
          v32 = *(mlir::ArrayAttr::getValue(&v35) + 8 * v23);
          if (v32 != 0x8000000000000000)
          {
            IndexAttr = mlir::Builder::getIndexAttr(a3 + 1, v32);
            v45[v24] = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_34;
        }
      }

LABEL_33:
      v29 = v23;
LABEL_34:
      ++v24;
      v23 = v29;
      if (v24 == v21)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::ExtractSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = v6 + a2;
  if (v7 > *(a1 + 12))
  {
    v14 = *a1 + (v6 << 6);
    if (*a1 <= a3 && v14 > a3)
    {
      v16 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v7);
      v3 = *a1 + v16;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    v9 = (*a1 + (v8 << 6));
    v10 = a2;
    while (1)
    {
      v12 = v9 + 2;
      *v9 = v9 + 2;
      v9[1] = 0x600000000;
      if (v9 == v3)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 8);
      if (!*(v3 + 8))
      {
        goto LABEL_7;
      }

      if (v13 < 7)
      {
        v11 = *(v3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v9 + 2, *(v3 + 8), 8);
        v11 = *(v3 + 8);
        if (!v11)
        {
          goto LABEL_6;
        }

        v12 = *v9;
      }

      memcpy(v12, *v3, 8 * v11);
LABEL_6:
      *(v9 + 2) = v13;
LABEL_7:
      v9 += 8;
      if (!--v10)
      {
        LODWORD(v8) = *(a1 + 8);
        break;
      }
    }
  }

  *(a1 + 8) = v8 + a2;
}

void anonymous namespace::SingleInputConcatOp::~SingleInputConcatOp(_anonymous_namespace_::SingleInputConcatOp *this)
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

void anonymous namespace::DimOfCastOp::~DimOfCastOp(_anonymous_namespace_::DimOfCastOp *this)
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

uint64_t anonymous namespace::DimOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(result + 72) + 24);
      v8 = *(*(a2 + 72) + 56);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(a3 + 1, *(a2 + 24), &v9, &v8);
      (*(*a3 + 1))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::DimOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
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

void anonymous namespace::DimOfDestStyleOp::~DimOfDestStyleOp(_anonymous_namespace_::DimOfDestStyleOp *this)
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

uint64_t anonymous namespace::DimOfDestStyleOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  v6 = DefiningOp;
  if (DefiningOp)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
    {
      v15 = 0;
      v16 = 0;
      return 0;
    }

    DefiningOp = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  }

  v15 = v6;
  v16 = DefiningOp;
  if (!v6)
  {
    return 0;
  }

  if (v17 && (*(v17 + 8) & 7) == 6)
  {
    v7 = *(v17 + 16) + 6;
  }

  else
  {
    v7 = *(v17 + 8) & 7;
  }

  mlir::DestinationStyleOpInterface::getDpsInitsMutable(v18, &v15);
  v8 = mlir::MutableOperandRange::operator[](v18, v7);
  if (v19 != v20)
  {
    free(v19);
  }

  (*(*a3 + 40))(a3, a2);
  v9 = *(a2 + 72);
  v10 = *(v8 + 24);
  v11 = v9[1];
  if (v11)
  {
    v12 = *v9;
    *v11 = *v9;
    if (v12)
    {
      *(v12 + 8) = v11;
    }
  }

  v9[3] = v10;
  v13 = *v10;
  *v9 = *v10;
  v9[1] = v10;
  if (v13)
  {
    *(v13 + 8) = v9;
  }

  *v10 = v9;
  (*(*a3 + 48))(a3, a2);
  return 1;
}

void anonymous namespace::DimOfReshapeOp::~DimOfReshapeOp(_anonymous_namespace_::DimOfReshapeOp *this)
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

uint64_t anonymous namespace::DimOfReshapeOp::matchAndRewrite(uint64_t a1, ZinIrHalH13g *a2, uint64_t a3)
{
  v17 = *(*(a2 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
  {
    return 0;
  }

  v7 = *(a2 + 2);
  v8 = DefiningOp;
  ZinIrHalH13g::~ZinIrHalH13g(a2);
  v10 = *(v9 + 8);
  *(a3 + 24) = v7;
  *(a3 + 32) = v10;
  v11 = *(a2 + 3);
  v12 = *(*(v8 + 72) + 56);
  v15 = *(*(a2 + 9) + 56);
  v16 = v12;
  v13 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>((a3 + 8), v11, &v16, &v15);
  v17 = v13 - 16;
  v14 = *(a2 - 1);
  if ((v14 ^ *(v13 - 1)) >= 8)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFF8;
    v17 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v11, &v16, &v17) - 16;
  }

  (**a3)(a3, a2, &v17, 1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::tensor::ExtractOp::build(v11, v18, *a3, a4, 1uLL);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void anonymous namespace::FoldEmptyTensorWithCastOp::~FoldEmptyTensorWithCastOp(_anonymous_namespace_::FoldEmptyTensorWithCastOp *this)
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

uint64_t anonymous namespace::FoldEmptyTensorWithCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(mlir::IndexType **, uint64_t, ZinIrHalH13g *))
{
  v34[6] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  result = mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v32 = *(*(a2 + 72) + 24);
    result = mlir::Value::getDefiningOp(&v32);
    if (result)
    {
      v6 = *(*(result + 48) + 16);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        v7 = result;
      }

      else
      {
        v7 = 0;
      }

      v25 = v7;
      if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        return 0;
      }

      v24 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v24);
      v10 = v9;
      mlir::tensor::EmptyOp::getMixedSizes(&v25, &v32);
      v29 = v31;
      v30 = 0x600000000;
      v11 = v33;
      if (v33 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v33, 8);
        v11 = v33;
      }

      if (!v10 || !v11)
      {
LABEL_31:
        v26[0] = mlir::AffineBinaryOpExpr::getRHS(&v24);
        v19 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>((a3 + 1), *(a2 + 24), &v29, v26);
        (*a3)[1](a3, a2, v19);
        result = 1;
        v20 = v29;
        if (v29 == v31)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v12 = v32;
      v13 = 8 * v11 - 8;
      v14 = 8 * v10 - 8;
      while (1)
      {
        v15 = *Value;
        if ((*v12 & 4) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v12 & 0xFFFFFFFFFFFFFFF8;
        }

        if (v16)
        {
          if (v15 == 0x8000000000000000 || (v26[0] = v16, v15 != mlir::IntegerAttr::getInt(v26)))
          {
            v26[0] = "mismatch in static value of shape of empty tensor result and cast result";
            v27 = 259;
            v28 = v26;
            v23 = a3[2];
            if (v23 && instruction::util::IsTasklet(v23))
            {
              (*(*v23 + 88))(v23, *(v7 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::EmptyOp &>(mlir::tensor::EmptyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v28);
            }

            result = 0;
            v20 = v29;
            if (v29 == v31)
            {
LABEL_33:
              if (v32 != v34)
              {
                v22 = result;
                free(v32);
                return v22;
              }

              return result;
            }

LABEL_32:
            v21 = result;
            free(v20);
            result = v21;
            goto LABEL_33;
          }

          v17 = v30;
          if (v30 < HIDWORD(v30))
          {
LABEL_22:
            *(v29 + v17) = v16;
            LODWORD(v30) = v30 + 1;
            if (!v14)
            {
              goto LABEL_31;
            }

            goto LABEL_23;
          }
        }

        else if (v15 == 0x8000000000000000)
        {
          v17 = v30;
          v16 = *v12;
          if (v30 < HIDWORD(v30))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v16 = mlir::Builder::getIndexAttr(a3 + 1, *Value) & 0xFFFFFFFFFFFFFFFBLL;
          v17 = v30;
          if (v30 < HIDWORD(v30))
          {
            goto LABEL_22;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v17 + 1, 8);
        *(v29 + v30) = v16;
        LODWORD(v30) = v30 + 1;
        if (!v14)
        {
          goto LABEL_31;
        }

LABEL_23:
        ++Value;
        ++v12;
        v18 = v13;
        v13 -= 8;
        v14 -= 8;
        if (!v18)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return result;
}

void anonymous namespace::FoldEmptyTensorWithDimOp::~FoldEmptyTensorWithDimOp(_anonymous_namespace_::FoldEmptyTensorWithDimOp *this)
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

uint64_t anonymous namespace::FoldEmptyTensorWithDimOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t *, uint64_t))
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  v7 = v6;
  v19 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v19);
  v9 = DefiningOp;
  if (DefiningOp)
  {
    v10 = *(*(DefiningOp + 48) + 16);
    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
    {
      v11 = DefiningOp;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id && (v7 & 1) != 0 && (*(DefiningOp + 36) ? (v12 = DefiningOp - 16) : (v12 = 0), v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8, *(mlir::ArrayAttr::getValue(&v19) + 8 * ConstantIntValue) == 0x8000000000000000))
    {
      v13 = ConstantIntValue;
      if (ConstantIntValue)
      {
        v14 = 0;
        LODWORD(v15) = 0;
        v16 = 8 * v13;
        do
        {
          if (*(v9 + 36))
          {
            v17 = v9 - 16;
          }

          else
          {
            v17 = 0;
          }

          v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::ArrayAttr::getValue(&v19) + v14) == 0x8000000000000000)
          {
            v15 = (v15 + 1);
          }

          else
          {
            v15 = v15;
          }

          v14 += 8;
        }

        while (v16 != v14);
      }

      else
      {
        v15 = 0;
      }

      v19 = *(*(v11 + 72) + 32 * v15 + 24);
      v9 = 1;
      (**a3)(a3, a2, &v19, 1);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void anonymous namespace::ReplaceEmptyTensorStaticShapeDims::~ReplaceEmptyTensorStaticShapeDims(_anonymous_namespace_::ReplaceEmptyTensorStaticShapeDims *this)
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

uint64_t foldDynamicToStaticDimSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v26 = a1;
  v30[0] = a2;
  v30[1] = a3;
  Value = mlir::ArrayAttr::getValue(&v26);
  v7 = v5;
  v27 = v29;
  v28 = 0x600000000;
  v8 = (8 * v5) >> 3;
  if (v8 < 7)
  {
    v9 = 0;
    v10 = 8 * v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v8, 8);
  v9 = v28;
  v10 = 8 * v7;
  if (v7)
  {
LABEL_5:
    memcpy(v27 + 8 * v9, Value, v10);
    v9 = v28;
  }

LABEL_6:
  LODWORD(v28) = v9 + (v10 >> 3);
  mlir::ArrayAttr::getValue(&v26);
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = 0;
    for (i = 0; i != v12; ++i)
    {
      if (*(mlir::ArrayAttr::getValue(&v26) + 8 * i) == 0x8000000000000000)
      {
        v15 = (v13 + 1);
        v16 = mlir::ValueRange::dereference_iterator(v30, v13);
        ConstantIntValue = mlir::getConstantIntValue(v16 | 4);
        if ((v18 & 1) == 0 || (ConstantIntValue & 0x8000000000000000) != 0)
        {
          v19 = *(a4 + 8);
          if (v19 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v19 + 1, 8);
            v19 = *(a4 + 8);
          }

          *(*a4 + 8 * v19) = v16;
          ++*(a4 + 8);
        }

        else
        {
          *(v27 + i) = ConstantIntValue;
        }
      }

      else
      {
        v15 = v13;
      }

      v13 = v15;
    }
  }

  v20 = v27;
  v21 = v28;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v26);
  Values = mlir::SparseElementsAttr::getValues(&v26);
  result = mlir::RankedTensorType::get(v20, v21, RHS, Values);
  if (v27 != v29)
  {
    v25 = result;
    free(v27);
    return v25;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::EmptyOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(v18, v23, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v18, v23[0], v23[1]);
  v12 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, &v22, v20 + 1, 8);
    v12 = v20;
  }

  *(v19 + 8 * v12) = v11;
  ++v20;
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v23[28] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4 - 16;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  v12 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v23, v21 + 1, 8);
    v12 = v21;
  }

  *(v20 + 8 * v12) = v11;
  ++v21;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v26 = *a4;
  v27 = a4[1];
  if (v26 == 1)
  {
    v28 = *(a4 + 1);
  }

  else
  {
    (*(**(a4 + 1) + 16))(&v28);
  }

  v29 = *(a4 + 2);
  v22 = *a5;
  v23 = a5[1];
  if (*a5 == 1)
  {
    v9 = *(a5 + 2);
    v24 = *(a5 + 1);
    v25 = v9;
    v10 = v26;
    if (v26 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    (*(**(a5 + 1) + 16))(&v24);
    v9 = *(a5 + 2);
    v25 = v9;
    v10 = v26;
    if (v26 != 1)
    {
LABEL_6:
      v11 = 0;
      v12 = v28;
      v28 = 0;
      v13 = v22;
      if (v22 != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  v11 = v28;
  v12 = v28;
  v13 = v22;
  if (v22 != 1)
  {
LABEL_7:
    v14 = v24;
    v24 = 0;
    v15 = v27;
    v16 = v29;
    v17 = v23;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_11:
  v14 = v24;
  v15 = v27;
  v16 = v29;
  v17 = v23;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

LABEL_14:
  *a1 = v10;
  *(a1 + 1) = v15;
  if (v10)
  {
    *(a1 + 8) = v12;
    *(a1 + 16) = v16;
    *(a1 + 24) = v13;
    *(a1 + 25) = v17;
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_19:
    *(a1 + 32) = v14;
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  (*(*v12 + 16))(v12);
  *(a1 + 16) = v16;
  *(a1 + 24) = v13;
  *(a1 + 25) = v17;
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_16:
  (*(*v14 + 16))(v14);
  *(a1 + 40) = v9;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  (*(*v14 + 8))(v14);
  if (v10)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_22:
  if ((v22 & 1) == 0)
  {
    v18 = v24;
    v24 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if ((v26 & 1) == 0)
  {
    v19 = v28;
    v28 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  return a1;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v4 = a2;
  mlir::Attribute::print(&v4, a1, 0);
  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *result, const void *a2, size_t a3)
{
  v4 = *(result + 4);
  if (a3 <= *(result + 3) - v4)
  {
    if (a3)
    {
      v5 = result;
      memcpy(v4, a2, a3);
      result = v5;
      *(v5 + 4) += a3;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, a2, a3);
  }

  return result;
}

void anonymous namespace::ExtractFromTensorCast::~ExtractFromTensorCast(_anonymous_namespace_::ExtractFromTensorCast *this)
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

uint64_t anonymous namespace::ExtractFromTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      if (*(*(*(*(*(result + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = *(*(result + 72) + 24);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v6 = *(a2 + 72);
          v7 = *(a2 + 68) - 1;
        }

        else
        {
          v6 = 0;
          v7 = -1;
        }

        v9[0] = v6 + 32;
        v9[1] = v7;
        v8 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v10, v9);
        (*(*a3 + 8))(a3, a2, v8);
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(v18, v19, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v12 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::tensor::ExtractOp::build(v12, v18, v11, v19[0], v19[1]);
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

void anonymous namespace::ExtractElementFromIndexCast::~ExtractElementFromIndexCast(_anonymous_namespace_::ExtractElementFromIndexCast *this)
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

uint64_t anonymous namespace::ExtractElementFromIndexCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v11[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = result;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(result + 72) + 24));
      v12 = *(*(v7 + 72) + 24);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v8 = *(a2 + 72);
        v9 = *(a2 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v11[0] = v8 + 32;
      v11[1] = v9;
      v13 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>((a3 + 8), v5, &ElementTypeOrSelf, &v12, v11);
      v11[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>((a3 + 8), *(a2 + 24), v11, &v13);
      (*(*a3 + 8))(a3, a2, v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(v23, v28, v22);
  }

  mlir::OperationState::OperationState(v23, a2, v11);
  v13 = *a3;
  v14 = *a4;
  mlir::ValueRange::ValueRange(v28, *a5, *(a5 + 8));
  v15 = v28[0];
  v16 = v28[1];
  v22[0] = v14;
  mlir::OperationState::addOperands(v23, v22, 1uLL);
  mlir::OperationState::addOperands(v23, v15, v16);
  v17 = v25;
  if (v25 >= v26)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, &v27, v25 + 1, 8);
    v17 = v25;
  }

  *(v24 + 8 * v17) = v13;
  ++v25;
  v18 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v19;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

void anonymous namespace::ExtractFromTensorGenerate::~ExtractFromTensorGenerate(_anonymous_namespace_::ExtractFromTensorGenerate *this)
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

uint64_t anonymous namespace::ExtractFromTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v34);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
    {
      v7 = DefiningOp;
      if (mlir::wouldOpBeTriviallyDead(DefiningOp, v6))
      {
        v35 = 0;
        v34[0] = 0;
        v34[1] = 0;
        v38 = 0;
        v36 = 0;
        v37 = 0;
        v41 = 0;
        v39 = 0;
        v40 = 0;
        v8 = *(((v7 + 16 * ((*(v7 + 11) >> 23) & 1) + ((*(v7 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 10) + 8);
        if (v8)
        {
          v9 = v8 - 8;
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v9 + 48);
        v11 = *(v9 + 56);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v12 = *(a2 + 72);
          v13 = *(a2 + 68) - 1;
          if (v11 == v10 || *(a2 + 68) == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          v13 = -1;
          if (v11 == v10)
          {
            goto LABEL_18;
          }
        }

        v15 = v13 - 1;
        v16 = (v12 + 56);
        v17 = v10 + 8;
        do
        {
          v18 = *v16;
          v16 += 4;
          v42 = *(v17 - 8);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v34, &v42) = v18;
          v20 = v15-- != 0;
          if (v17 == v11)
          {
            break;
          }

          v17 += 8;
        }

        while (v20);
LABEL_18:
        v21 = *(v9 + 40);
        v22 = (v9 + 32);
        if (v21 != (v9 + 32))
        {
          for (i = *v22; v21 != i; v21 = *(v21 + 1))
          {
            ZinIrHalH13g::~ZinIrHalH13g(v21);
            mlir::OpBuilder::clone((a3 + 8), v24, v34);
          }
        }

        mlir::Block::getTerminator(v9);
        v26 = *(*(v25 + 72) + 24);
        if (v35)
        {
          v27 = 0x9DDFEA08EB382D69 * ((8 * *(*(v25 + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(v25 + 72) + 24)));
          v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
          v29 = (-348639895 * ((v28 >> 47) ^ v28)) & (v35 - 1);
          v30 = *(v34[0] + 2 * v29);
          if (v30 == v26)
          {
LABEL_23:
            if (v29 != v35)
            {
              v26 = *(v34[0] + 2 * v29 + 1);
            }
          }

          else
          {
            v32 = 1;
            while (v30 != -4096)
            {
              v33 = v29 + v32++;
              v29 = v33 & (v35 - 1);
              v30 = *(v34[0] + 2 * v29);
              if (v30 == v26)
              {
                goto LABEL_23;
              }
            }
          }
        }

        v42 = v26;
        (**a3)(a3, a2, &v42, 1);
        llvm::deallocate_buffer(v39, (16 * v41));
      }
    }
  }

  return 0;
}

void anonymous namespace::StaticTensorGenerate::~StaticTensorGenerate(_anonymous_namespace_::StaticTensorGenerate *this)
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

void mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v11, a2, v7);
    mlir::ValueRange::ValueRange(v12, *a4, *(a4 + 8));
    mlir::OperationState::addOperands(v11, v12[0], v12[1]);
    mlir::OperationState::addRegion(v11);
  }

  mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(v11, v12, v10);
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(uint64_t ***a1, const char **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  mlir::Operation::emitOpError(**a1, a2, v12);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(uint64_t ***a1, const char **a2)
{
  v21 = *MEMORY[0x1E69E9840];
  mlir::Operation::emitOpError(**a1, a2, v12);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v40 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v40);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v35 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v34[0] = mlir::TensorType::operator mlir::ShapedType(&v40);
    v34[1] = v10;
    if (mlir::hasNonIdentityLayout(*(*(*(v35 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v36 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v11 = *(v36 + 36) ? v36 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v35, &v40);
    v13 = v40;
    v14 = v41;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v36, &v37);
    mlir::composeReassociationIndices(v13, v14, v37, v38, &v43);
    v15 = v37;
    if (v38)
    {
      v16 = v37 + 32 * v38 - 16;
      v17 = -32 * v38;
      do
      {
        v18 = *(v16 - 2);
        if (v16 != v18)
        {
          free(v18);
        }

        v16 -= 32;
        v17 += 32;
      }

      while (v17);
      v15 = v37;
    }

    if (v15 != &v39)
    {
      free(v15);
    }

    v19 = v40;
    if (v41)
    {
      v20 = v40 + 32 * v41 - 16;
      v21 = -32 * v41;
      do
      {
        v22 = *(v20 - 2);
        if (v20 != v22)
        {
          free(v22);
        }

        v20 -= 32;
        v21 += 32;
      }

      while (v21);
      v19 = v40;
    }

    if (v19 != v42)
    {
      free(v19);
    }

    if (v46 != 1)
    {
      return 0;
    }

    else
    {
      v40 = *(v36 + 16 * ((*(v36 + 44) >> 23) & 1) + 72);
      v23 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40);
      v25 = v24;
      if ((*(v36 + 46) & 0x80) != 0)
      {
        v26 = *(v36 + 72);
        v27 = *(v36 + 68) - 1;
      }

      else
      {
        v26 = 0;
        v27 = -1;
      }

      mlir::ValueRange::ValueRange(&v37, v26 + 32, v27);
      mlir::getMixedValues(v23, v25, v37, v38, a3 + 1, &v40);
      v28 = v36;
      v37 = *(*(v35 + 72) + 24);
      v29 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3 + 1, *(v36 + 24), v34, &v37, &v43, &v40);
      ((*a3)[1])(a3, v28, v29);
      if (v40 != v42)
      {
        free(v40);
      }

      if (v46)
      {
        v30 = v43;
        if (v44)
        {
          v31 = &v43[4 * v44 - 2];
          v32 = -32 * v44;
          do
          {
            v33 = *(v31 - 16);
            if (v31 != v33)
            {
              free(v33);
            }

            v31 -= 32;
            v32 += 32;
          }

          while (v32);
          v30 = v43;
        }

        if (v30 != &v45)
        {
          free(v30);
        }
      }

      return 1;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6);
  ((*a1)[1])(a1, a2, v8);
  return v8;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::tensor::ExpandShapeOp::build(a1, v21, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v67[16] = *MEMORY[0x1E69E9840];
  v56 = a2;
  v65 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? DefiningOp : 0;
  v55 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = DefiningOp;
  v65 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  v54[1] = v10;
  v11 = *(a2 + 36) ? a2 - 16 : 0;
  v65 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v53[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  v53[1] = v12;
  if (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v13 = *(v9 + 36) ? v9 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v54);
  v16 = v15;
  mlir::ShapedType::getShape(v53);
  if (v54[0] == v53[0])
  {
    return 0;
  }

  v18 = v17;
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v55, &v65);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v56, &v62);
  if (v16 <= v18)
  {
    v31 = v62;
    v32 = v63;
    v33 = v65;
    v34 = v66;
    Shape = mlir::ShapedType::getShape(v53);
    v37 = v36;
    v38 = mlir::ShapedType::getShape(v54);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v31, v32, v33, v34, Shape, v37, v60, v38, v39);
    if (v61 == 1)
    {
      v58[0] = *(v56 + 16 * ((*(v56 + 44) >> 23) & 1) + 72);
      v40 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v58);
      v42 = v41;
      if ((*(v56 + 46) & 0x80) != 0)
      {
        v43 = *(v56 + 72);
        v44 = *(v56 + 68) - 1;
      }

      else
      {
        v43 = 0;
        v44 = -1;
      }

      mlir::ValueRange::ValueRange(v57, v43 + 32, v44);
      mlir::getMixedValues(v40, v42, v57[0], v57[1], a3 + 1, v58);
      v57[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3, v56, v53, v57, v60, v58);
      if (v58[0] != v59)
      {
        free(v58[0]);
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v60;
  }

  else
  {
    v19 = v65;
    v20 = v66;
    v21 = v62;
    v22 = v63;
    v23 = mlir::ShapedType::getShape(v54);
    v25 = v24;
    v26 = mlir::ShapedType::getShape(v53);
    mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::findCollapsingReassociation(v19, v20, v21, v22, v23, v25, v58, v26, v27);
    if (v59[32] == 1)
    {
      v60[0] = *(*(v55 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v56, v53, v60, v58);
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v58;
  }

  std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(v29);
  v45 = v62;
  if (v63)
  {
    v46 = v62 + 32 * v63 - 16;
    v47 = -32 * v63;
    do
    {
      v48 = *(v46 - 2);
      if (v46 != v48)
      {
        free(v48);
      }

      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v45 = v62;
  }

  if (v45 != &v64)
  {
    free(v45);
  }

  v49 = v65;
  if (v66)
  {
    v50 = &v65[4 * v66 - 2];
    v51 = -32 * v66;
    do
    {
      v52 = *(v50 - 2);
      if (v50 != v52)
      {
        free(v52);
      }

      v50 -= 4;
      v51 += 32;
    }

    while (v51);
    v49 = v65;
  }

  if (v49 != v67)
  {
    free(v49);
  }

  return v28;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v27, &v29, v24);
  }

  mlir::OperationState::OperationState(v27, a2, v11);
  v13 = *a3;
  v14 = *a5;
  v15 = *(a5 + 8);
  v25 = *a4;
  v26 = v13;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v14, v15);
  v17 = mlir::Attribute::getContext(v27);
  v31 = 261;
  v29 = "reassociation";
  v30 = 13;
  v18 = mlir::StringAttr::get(v17, &v29);
  ZinMirCacheTensors::ZinMirCacheTensors(v24, v18, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(&v28, v24[0], v24[1]);
  v19 = mlir::ValueRange::ValueRange(&v29, &v26, 1uLL);
  mlir::tensor::CollapseShapeOp::build(v19, v27, v29, v30, &v25, 1uLL, 0, 0);
  v20 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v21;
}

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *a1)
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  v17 = v5;
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v15, result);
    result = 0;
    if (v7)
    {
      if (v16)
      {
        result = mlir::DenseElementsAttr::isSplat(&v16);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
          v11 = v10;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v16);
          v17 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawStringData, v13);
          v14 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v17);
          (*(*a3 + 8))(a3, a2, v14);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v10)
  {
    v11 = *(v9 + 24);
  }

  else
  {
    v11 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v18, v10, v11);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *a1)
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, a3, 1uLL);
  mlir::arith::ExtSIOp::build(v11, v17, v18[0], v18[1], a4, 1uLL, 0, 0);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
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

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::Builder::getI32VectorAttr();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::ElementsAttr::getShapedType(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::ElementsAttr::getShapedType(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(v18, v23, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v18, v23[0], v23[1]);
  v12 = v20;
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, &v22, v20 + 1, 8);
    v12 = v20;
  }

  *(v19 + 8 * v12) = v11;
  ++v20;
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

void anonymous namespace::FoldDimOfExpandShape::~FoldDimOfExpandShape(_anonymous_namespace_::FoldDimOfExpandShape *this)
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

uint64_t anonymous namespace::FoldDimOfExpandShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v35 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = result;
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = ConstantIntValue;
  v13 = *(v9 + 36) ? v9 - 16 : 0;
  v34 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(mlir::ArrayAttr::getValue(&v34) + 8 * v12) != 0x8000000000000000)
  {
    return 0;
  }

  CorrespondingSourceDim = mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(&v35, v12);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v35, &v36);
  v14 = v36;
  v15 = v36 + 32 * CorrespondingSourceDim;
  v39 = v41;
  v40 = 0x200000000;
  v16 = *(v15 + 2);
  if (&v39 != v15 && v16 != 0)
  {
    if (v16 < 3)
    {
      v19 = v41;
      v18 = *(v15 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, *(v15 + 2), 8);
      v18 = *(v15 + 2);
      if (!v18)
      {
LABEL_23:
        LODWORD(v40) = v16;
        v14 = v36;
        goto LABEL_24;
      }

      v19 = v39;
    }

    memcpy(v19, *v15, 8 * v18);
    goto LABEL_23;
  }

LABEL_24:
  if (v37)
  {
    v20 = &v14[4 * v37 - 2];
    v21 = -32 * v37;
    do
    {
      v22 = *(v20 - 16);
      if (v20 != v22)
      {
        free(v22);
      }

      v20 -= 32;
      v21 += 32;
    }

    while (v21);
    v14 = v36;
  }

  if (v14 != &v38)
  {
    free(v14);
  }

  if (v40)
  {
    v23 = v39;
    v24 = 8 * v40;
    v25 = 1;
    do
    {
      if (*v23 != v12)
      {
        v26 = *v23;
        v25 *= *(mlir::ArrayAttr::getValue(&v34) + 8 * v26);
      }

      ++v23;
      v24 -= 8;
    }

    while (v24);
  }

  else
  {
    v25 = 1;
  }

  v27 = *(a2 + 24);
  AffineSymbolExpr = *(*(v35 + 72) + 24);
  v36 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(a3 + 1, v27, &AffineSymbolExpr, &CorrespondingSourceDim) - 16;
  Context = mlir::Attribute::getContext((a2 + 24));
  AffineSymbolExpr = mlir::getAffineSymbolExpr(0, Context, v29);
  v31 = mlir::AffineExpr::floorDiv(&AffineSymbolExpr, v25);
  v30 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(a3 + 1, *(a2 + 24), &v31, &v36);
  (*(*a3 + 1))(a3, a2, v30);
  if (v39 != v41)
  {
    free(v39);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v15 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v22, v21, v20, v10, v11, v12, v13, v14, v19, *v20, *&v20[8], *&v20[16], *&v20[24], *&v20[32], *v21, *&v21[8], *&v21[16], *&v21[24], *&v21[32], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6]);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  mlir::affine::AffineApplyOp::build(a1, v22, a3, 1, a4, 1uLL);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

void anonymous namespace::FoldDimOfCollapseShape::~FoldDimOfCollapseShape(_anonymous_namespace_::FoldDimOfCollapseShape *this)
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

uint64_t anonymous namespace::FoldDimOfCollapseShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v42 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v42);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v38 = v8;
  if (!v7)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = ConstantIntValue;
  v12 = *(v38 + 36) ? v38 - 16 : 0;
  v37 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(mlir::ArrayAttr::getValue(&v37) + 8 * v11) != 0x8000000000000000)
  {
    return 0;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v38, &v42);
  v13 = v42;
  v14 = v42 + 32 * v11;
  v45 = v47;
  v46 = 0x200000000;
  v15 = *(v14 + 2);
  if (&v45 != v14 && v15 != 0)
  {
    if (v15 < 3)
    {
      v18 = v47;
      v17 = *(v14 + 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, *(v14 + 2), 8);
      v17 = *(v14 + 2);
      if (!v17)
      {
LABEL_23:
        LODWORD(v46) = v15;
        v13 = v42;
        goto LABEL_24;
      }

      v18 = v45;
    }

    memcpy(v18, *v14, 8 * v17);
    goto LABEL_23;
  }

LABEL_24:
  if (v43)
  {
    v19 = &v13[32 * v43 - 16];
    v20 = -32 * v43;
    do
    {
      v21 = *(v19 - 16);
      if (v19 != v21)
      {
        free(v21);
      }

      v19 -= 32;
      v20 += 32;
    }

    while (v20);
    v13 = v42;
  }

  if (v13 != v44)
  {
    free(v13);
  }

  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = 0;
  if (v46)
  {
    v22 = 0;
    v23 = v45;
    v24 = 8 * v46;
    do
    {
      v25 = *(a2 + 24);
      v35 = *(*(v38 + 72) + 24);
      v26 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(a3 + 1, v25, &v35, v23);
      v28 = v43;
      if (v43 >= HIDWORD(v43))
      {
        v32 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 8);
        v26 = v32;
        v28 = v43;
      }

      *(v42 + v28) = v26 - 16;
      LODWORD(v43) = v43 + 1;
      AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(a3 + 1, v22, v27);
      v30 = v40;
      if (v40 >= HIDWORD(v40))
      {
        v33 = AffineSymbolExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v40 + 1, 8);
        AffineSymbolExpr = v33;
        v30 = v40;
      }

      *(v39 + v30) = AffineSymbolExpr;
      LODWORD(v40) = v40 + 1;
      v31 = *(v39 + v40 - 1);
      if (v36)
      {
        v31 = mlir::AffineExpr::operator*(&v36, v31);
      }

      v36 = v31;
      v22 = (v22 + 1);
      ++v23;
      v24 -= 8;
    }

    while (v24);
  }

  v34 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(a3 + 1, *(a2 + 24), &v36, &v42);
  (*(*a3 + 1))(a3, a2, v34);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v15 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v21, v22, v20, v10, v11, v12, v13, v14, v19, *v20, *&v20[8], *&v20[16], *&v20[24], *&v20[32], v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11]);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  mlir::ValueRange::ValueRange(v22, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v21, a3, 1, v22[0], v22[1]);
  v16 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v31 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v10 = result;
    v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::TensorType::operator mlir::ShapedType(&v36);
    v30[1] = v11;
    if (mlir::hasNonIdentityLayout(*(*(*(v10 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v12 = *(a2 + 36) ? a2 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::memref::CollapseShapeOp::getReassociationIndices(&v31, &v36);
    v14 = v36;
    v15 = v37;
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v32, &v33);
    mlir::composeReassociationIndices(v14, v15, v33, v34, &v39);
    v16 = v33;
    if (v34)
    {
      v17 = v33 + 32 * v34 - 16;
      v18 = -32 * v34;
      do
      {
        v19 = *(v17 - 2);
        if (v17 != v19)
        {
          free(v19);
        }

        v17 -= 32;
        v18 += 32;
      }

      while (v18);
      v16 = v33;
    }

    if (v16 != &v35)
    {
      free(v16);
    }

    v20 = v36;
    if (v37)
    {
      v21 = v36 + 32 * v37 - 16;
      v22 = -32 * v37;
      do
      {
        v23 = *(v21 - 2);
        if (v21 != v23)
        {
          free(v23);
        }

        v21 -= 32;
        v22 += 32;
      }

      while (v22);
      v20 = v36;
    }

    if (v20 != &v38)
    {
      free(v20);
    }

    if (v42 != 1)
    {
      return 0;
    }

    else
    {
      v24 = v32;
      v36 = *(*(v31 + 72) + 24);
      v25 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3 + 1, *(v32 + 24), v30, &v36, &v39);
      ((*a3)[1])(a3, v24, v25);
      if (v42)
      {
        v26 = v39;
        if (v40)
        {
          v27 = &v39[4 * v40 - 2];
          v28 = -32 * v40;
          do
          {
            v29 = *(v27 - 16);
            if (v27 != v29)
            {
              free(v29);
            }

            v27 -= 32;
            v28 += 32;
          }

          while (v28);
          v26 = v39;
        }

        if (v26 != &v41)
        {
          free(v26);
        }
      }

      return 1;
    }
  }

  return result;
}

void *mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *a1)
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

void mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *a1)
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

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v54[16] = *MEMORY[0x1E69E9840];
  v42 = a2;
  v52 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v52);
  if (!DefiningOp)
  {
    return 0;
  }

  v5 = *(*(DefiningOp + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v7 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? DefiningOp : 0;
  v41 = v7;
  if (!v6)
  {
    return 0;
  }

  v52 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v40[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v40[1] = v8;
  v9 = *(v42 + 36) ? v42 - 16 : 0;
  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v39[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v39[1] = v10;
  if (mlir::hasNonIdentityLayout(*(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v41 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v11 = *(v41 + 36) ? v41 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v40);
  v14 = v13;
  mlir::ShapedType::getShape(v39);
  if (v40[0] == v39[0])
  {
    return 0;
  }

  v16 = v15;
  v52 = v54;
  v53 = 0x400000000;
  v49 = v51;
  v50 = 0x400000000;
  if (v14 <= v15)
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
  }

  else
  {
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v41, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::memref::CollapseShapeOp::getReassociationIndices(&v42, &v46);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v49, &v46);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
  v46 = v48;
  v47 = 0x400000000;
  if (v50)
  {
    v19 = 0;
    v20 = v49;
    v21 = v49 + 32 * v50;
    while (1)
    {
      v22 = 0;
      v43 = v45;
      v44 = 0x200000000;
      v23 = 4 * v19;
      while (1)
      {
        if (v19 >= v53)
        {
LABEL_30:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v46, &v43);
          v25 = 1;
          v26 = v43;
          if (v43 == v45)
          {
            goto LABEL_32;
          }

LABEL_31:
          free(v26);
          goto LABEL_32;
        }

        v24 = *(v52[v23] + 8 * LODWORD(v52[v23 + 1]) - 8);
        if (v24 > *(*v20 + 8 * *(v20 + 2) - 8))
        {
          break;
        }

        if (v22 >= HIDWORD(v44))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v22 + 1, 8);
          v22 = v44;
        }

        *(v43 + v22) = v19;
        v22 = v44 + 1;
        LODWORD(v44) = v44 + 1;
        v23 += 4;
        ++v19;
        if (v24 == *(*v20 + 8 * *(v20 + 2) - 8))
        {
          goto LABEL_30;
        }
      }

      v25 = 0;
      v26 = v43;
      if (v43 != v45)
      {
        goto LABEL_31;
      }

LABEL_32:
      if ((v25 & 1) == 0)
      {
        break;
      }

      v20 += 32;
      if (v20 == v21)
      {
        goto LABEL_37;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_37:
    if (v14 <= v16)
    {
      v43 = *(*(v41 + 72) + 24);
      if (v14 < v16)
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, v42, v39, &v43, &v46);
      }

      else
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(a3, v42, v39, &v43);
      }
    }

    else
    {
      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v42, v39, &v43, &v46);
    }

    v17 = 1;
  }

  v27 = v46;
  if (v47)
  {
    v28 = v46 + 32 * v47 - 16;
    v29 = -32 * v47;
    do
    {
      v30 = *(v28 - 2);
      if (v28 != v30)
      {
        free(v30);
      }

      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v27 = v46;
  }

  if (v27 != v48)
  {
    free(v27);
  }

  v31 = v49;
  if (v50)
  {
    v32 = v49 + 32 * v50 - 16;
    v33 = -32 * v50;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      v32 -= 32;
      v33 += 32;
    }

    while (v33);
    v31 = v49;
  }

  if (v31 != v51)
  {
    free(v31);
  }

  v35 = v52;
  if (v53)
  {
    v36 = &v52[4 * v53 - 2];
    v37 = -32 * v53;
    do
    {
      v38 = *(v36 - 2);
      if (v36 != v38)
      {
        free(v38);
      }

      v36 -= 4;
      v37 += 32;
    }

    while (v37);
    v35 = v52;
  }

  if (v35 != v54)
  {
    free(v35);
  }

  return v17;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  (*(*a1 + 1))(a1, a2, v7);
  return v7;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::tensor::ExpandShapeOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
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

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *a1)
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  v17 = v5;
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v15, result);
    result = 0;
    if (v7)
    {
      if (v16)
      {
        result = mlir::DenseElementsAttr::isSplat(&v16);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
          v11 = v10;
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v16);
          v17 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawStringData, v13);
          v14 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v17);
          (*(*a3 + 8))(a3, a2, v14);
          return 1;
        }
      }
    }
  }

  return result;
}

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *a1)
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *a1)
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

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::Builder::getI32VectorAttr();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::ElementsAttr::getShapedType(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::ElementsAttr::getShapedType(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

void anonymous namespace::FoldCollapseOfCastOp::~FoldCollapseOfCastOp(_anonymous_namespace_::FoldCollapseOfCastOp *this)
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

uint64_t anonymous namespace::FoldCollapseOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[16] = *MEMORY[0x1E69E9840];
  v26 = a2;
  v30 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v6 = DefiningOp;
  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v7 = *(*(*(v6 + 72) + 24) + 8);
    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v26, &v30);
    mlir::getSymbolLessAffineMaps(v30, v31, &v27);
    v8 = v30;
    if (v31)
    {
      v9 = v30 + 32 * v31 - 16;
      v10 = -32 * v31;
      do
      {
        v11 = *(v9 - 2);
        if (v9 != v11)
        {
          free(v11);
        }

        v9 -= 32;
        v10 += 32;
      }

      while (v10);
      v8 = v30;
    }

    if (v8 != v32)
    {
      free(v8);
    }

    v12 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v7 & 0xFFFFFFFFFFFFFFF8, v27, v28);
    v30 = v12;
    if (v27 != &v29)
    {
      free(v27);
    }

    if (*(v26 + 36))
    {
      v13 = v26 - 16;
    }

    else
    {
      v13 = 0;
    }

    if (v12 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v14 = v26;
      (*(*a3 + 40))(a3, v26);
      v15 = *(v26 + 72);
      v16 = *(*(v6 + 72) + 24);
      v17 = v15[1];
      if (v17)
      {
        v18 = *v15;
        *v17 = *v15;
        if (v18)
        {
          *(v18 + 8) = v17;
        }
      }

      v15[3] = v16;
      v15[1] = v16;
      v19 = *v16;
      *v15 = *v16;
      if (v19)
      {
        *(v19 + 8) = v15;
      }

      *v16 = v15;
      (*(*a3 + 48))(a3, v14);
    }

    else
    {
      v20 = *(v26 + 24);
      v25 = *(*(v6 + 72) + 24);
      v24 = *(v26 + 16 * ((*(v26 + 44) >> 23) & 1) + 64);
      v27 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>((a3 + 8), v20, &v30, &v25, &v24);
      v21 = v26;
      if (*(v26 + 36))
      {
        v22 = v26 - 16;
      }

      else
      {
        v22 = 0;
      }

      v25 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a3 + 8), *(v21 + 24), &v25, &v27);
      (*(*a3 + 8))(a3, v21, v23);
    }

    return 1;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::tensor::CollapseShapeOp::build(v13, v20, *a3, *a4, *a5);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(llvm::APFloatBase *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= a2 && v5 + 32 * v4 > a2)
    {
      v10 = a2 - v5;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v10;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + 32 * *(a1 + 2);
  v8 = *(v2 + 8);
  v7 = (v2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v6 + 8, v7);
  }

  ++*(a1 + 2);
}

void *mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

uint64_t SliceCanonicalizer::operator()(uint64_t a1, uint64_t (***a2)(void, uint64_t, char **, uint64_t), uint64_t a3, uint64_t a4)
{
  if (*(a4 + 36))
  {
    v6 = a4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (*(a3 + 36))
  {
    v8 = a3 - 16;
  }

  else
  {
    v8 = 0;
  }

  v7 = *(NextResultAtOffset + 1);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) ^ v7) >= 8)
  {
    v9 = *(a3 + 24);
    if (*(a3 + 36))
    {
      v10 = a3 - 16;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    NextResultAtOffset = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 1), v9, &v12, &NextResultAtOffset) - 16;
  }

  return (**a2)(a2, a3, &NextResultAtOffset, 1);
}

void anonymous namespace::ExtractSliceOpCastFolder::~ExtractSliceOpCastFolder(_anonymous_namespace_::ExtractSliceOpCastFolder *this)
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

uint64_t anonymous namespace::ExtractSliceOpCastFolder::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, mlir::MLIRContext **a3)
{
  v5 = *(a2 + 68);
  if (v5)
  {
    v6 = (*(a2 + 72) + 24);
    do
    {
      v7 = *v6;
      ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
      v40 = v7;
      DefiningOp = mlir::Value::getDefiningOp(&v40);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v8);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v6 += 4;
    }

    while (--v5);
  }

  v40 = *(*(a2 + 72) + 24);
  v9 = mlir::Value::getDefiningOp(&v40);
  if (!v9)
  {
    return 0;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v10 = v9;
  if (!mlir::tensor::preservesStaticInformation(*(v9 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v11 = *(a2 + 24);
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v42 = *(*(v10 + 72) + 24);
  v43 = v13;
  v14 = a2 + 64;
  v15 = *(a2 + 44);
  v16 = a2 + 64 + 16 * ((v15 >> 23) & 1);
  v17 = *(v16 + 24);
  v18 = *(v16 + 28);
  if ((v15 & 0x800000) != 0)
  {
    v19 = (v18 + v17);
    v40 = *(a2 + 72) + 32 * v17;
    v41 = v19 - v17;
    v20 = (*(v16 + 32) + v19);
    v38 = *(a2 + 72) + 32 * v19;
    v39 = v20 - v19;
    v21 = *(a2 + 72);
  }

  else
  {
    v21 = 0;
    v33 = (v18 + v17);
    v40 = 32 * v17;
    v41 = v33 - v17;
    v20 = (*(v16 + 32) + v33);
    v38 = 32 * v33;
    v39 = v20 - v33;
  }

  v22 = v21 + 32 * v20;
  v23 = (*(v16 + 36) + v20) - v20;
  v37[0] = v22;
  v37[1] = v23;
  v36[0] = *v16;
  v36[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v36);
  v36[1] = v24;
  v35[0] = *(v14 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v35[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v35);
  v35[1] = v25;
  v34[0] = *(v14 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  v34[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v34);
  v34[1] = v26;
  v27 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(a3 + 1, v11, &v43, &v42, &v40, &v38, v37, v36, v35, v34);
  v44 = v27 - 16;
  v28 = *(v27 - 1);
  if (*(a2 + 36))
  {
    v29 = a2 - 16;
  }

  else
  {
    v29 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) ^ v28) >= 8)
  {
    if (*(a2 + 36))
    {
      v30 = a2 - 16;
    }

    else
    {
      v30 = 0;
    }

    v40 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v44 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 1), v11, &v40, &v44) - 16;
  }

  v31 = 1;
  (**a3)(a3, a2, &v44, 1);
  return v31;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v28, v30, v29);
  }

  mlir::OperationState::OperationState(v28, a2, v19);
  v21 = *a3;
  v22 = *a4;
  mlir::ValueRange::ValueRange(v30, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v27, *a7, *(a7 + 8));
  mlir::tensor::ExtractSliceOp::build(a1, v28, v21, v22, v30[0], v30[1], v29[0], v29[1], v27[0], v27[1], *a8, *(a8 + 8), *a9, *(a9 + 8), *a10, *(a10 + 8));
  v23 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v24;
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::InsertSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, mlir::MLIRContext **a3)
{
  v99[6] = *MEMORY[0x1E69E9840];
  v84 = a2;
  v4 = *(a2 + 68);
  if (v4)
  {
    v5 = (*(a2 + 72) + 24);
    do
    {
      v6 = *v5;
      ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
      v97 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v97);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v7);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v5 += 4;
      --v4;
    }

    while (v4);
    a2 = v84;
  }

  v97 = *(*(a2 + 72) + 24);
  v8 = mlir::Value::getDefiningOp(&v97);
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v9 = v8, mlir::tensor::preservesStaticInformation(*(v8 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v10 = *(*(v9 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v11 = *(*(v9 + 72) + 24);
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  v13 = v10 | v11;
  v97 = *(*(v84 + 72) + 32 * *(v84 + 104) + 24);
  v14 = mlir::Value::getDefiningOp(&v97);
  if (v14 && *(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v15 = v14, (mlir::tensor::preservesStaticInformation(*(v14 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v14 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v16 = *(*(v15 + 72) + 24);
    if (!v12)
    {
      v13 = *(*(v84 + 72) + 24);
    }

    v83 = v13;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    v83 = v13;
    v16 = *(*(v84 + 72) + 32 * *(v84 + 104) + 24);
  }

  result = 0;
  v82 = v16;
  v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = 0;
  }

  v81 = v18;
  v19 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v18 && v20)
  {
    v97 = *(v84 + 16 * ((*(v84 + 44) >> 23) & 1) + 72);
    v22 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v97);
    v23 = v21;
    v97 = v99;
    v98 = 0x600000000;
    v24 = (8 * v21) >> 3;
    if (v24 < 7)
    {
      v25 = 0;
      v26 = v99;
      v27 = 8 * v21;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v24, 8);
      v25 = v98;
      v26 = v97;
      v27 = 8 * v23;
      if (!v23)
      {
LABEL_35:
        v28 = v25 + (v27 >> 3);
        LODWORD(v98) = v25 + (v27 >> 3);
        Value = mlir::ArrayAttr::getValue(&v81);
        mlir::computeRankReductionMask(v26, v28, Value, v30, 1, &v93);
        if (v96 != 1)
        {
          result = 0;
LABEL_37:
          if (v97 != v99)
          {
            v31 = result;
            free(v97);
            return v31;
          }

          return result;
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v84, &__src);
        __dst = v92;
        v91 = 0x600000000;
        v32 = v88;
        v33 = __src;
        v80 = a3;
        if (v88)
        {
          if (__src == v89)
          {
            v34 = v88;
            if (v88 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v92, v88, 8), v34 = v88, v33 = __src, v88))
            {
              memcpy(__dst, v33, 8 * v34);
              v33 = __src;
            }

            LODWORD(v91) = v32;
          }

          else
          {
            __dst = __src;
            v91 = v88;
            __src = v89;
            HIDWORD(v88) = 0;
            v33 = v89;
          }

          LODWORD(v88) = 0;
        }

        if (v33 != v89)
        {
          free(v33);
        }

        if (v98)
        {
          v35 = 0;
          v36 = 0;
          v37 = &v96;
          v38 = v97;
          v39 = &v97[2 * v98];
          v40 = &v94;
          while (1)
          {
            if ((v96 & 1) == 0)
            {
              v79 = std::__throw_bad_optional_access[abi:nn200100]();
            }

            if (v93)
            {
              v42 = 4;
              v41 = v40;
            }

            else
            {
              v41 = v94;
              v42 = v95;
              if (!v95)
              {
                goto LABEL_61;
              }
            }

            v43 = v42 - 1;
            v44 = (v42 - 1) & (37 * v36);
            v45 = *(v41 + v44);
            if (v45 != v36)
            {
              break;
            }

LABEL_59:
            v46 = (v41 + 4 * v44);
            if (v93)
            {
              if (v46 == v37)
              {
                goto LABEL_61;
              }
            }

            else if (v46 == (v94 + 4 * v95))
            {
              goto LABEL_61;
            }

LABEL_52:
            ++v36;
            v38 += 2;
            if (v38 == v39)
            {
              goto LABEL_68;
            }
          }

          v57 = 1;
          while (v45 != -1)
          {
            v58 = v44 + v57++;
            v44 = v58 & v43;
            v45 = *(v41 + v44);
            if (v45 == v36)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          if (*(mlir::ArrayAttr::getValue(&v81) + 8 * v35) != 0x8000000000000000)
          {
            v47 = v39;
            v48 = v35;
            v49 = v35;
            v50 = v40;
            v51 = v37;
            v52 = v80[1];
            v53 = *(mlir::ArrayAttr::getValue(&v81) + 8 * v48);
            v54 = v52;
            v37 = v51;
            v40 = v50;
            AsIndexOpFoldResult = mlir::getAsIndexOpFoldResult(v54, v53);
            *(__dst + v36) = AsIndexOpFoldResult;
            v35 = v49 + 1;
            v56 = *(mlir::ArrayAttr::getValue(&v81) + 8 * v48);
            v39 = v47;
            *v38 = v56;
          }

          goto LABEL_52;
        }

LABEL_68:
        v59 = v81;
        __src = *(v84 + 16 * ((*(v84 + 44) >> 23) & 1) + 64);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v60 = v97;
        v61 = v98;
        __src = *(v84 + 16 * ((*(v84 + 44) >> 23) & 1) + 80);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v85[0] = v59;
        __src = v20;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&__src);
        Values = mlir::SparseElementsAttr::getValues(&__src);
        __src = mlir::RankedTensorType::get(v60, v61, RHS, Values);
        v64 = mlir::TensorType::operator mlir::ShapedType(&__src);
        v66 = v65;
        v67 = mlir::TensorType::operator mlir::ShapedType(v85);
        if (mlir::isRankReducedType(v64, v66, v67))
        {
          result = 0;
          v68 = __dst;
          if (__dst == v92)
          {
LABEL_71:
            if ((v96 & 1) != 0 && (v93 & 1) == 0)
            {
              llvm::deallocate_buffer(v94, (4 * v95));
            }

            goto LABEL_37;
          }
        }

        else
        {
          v70 = *(v84 + 24);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v84, &__src);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v84, v85);
          v71 = mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v80 + 1, v70, &v83, &v82, &__src, &__dst, v85);
          if (v85[0] != &v86)
          {
            free(v85[0]);
          }

          if (__src != v89)
          {
            free(__src);
          }

          if (*(v84 + 36))
          {
            v73 = v84 - 16;
          }

          else
          {
            v73 = 0;
          }

          v72 = *(v82 + 8);
          if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0) + 8) ^ v72) >= 8)
          {
            v74 = *(v84 + 24);
            if (*(v84 + 36))
            {
              v75 = v84 - 16;
            }

            else
            {
              v75 = 0;
            }

            __src = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v85[0] = v71 - 16;
            v71 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((v80 + 1), v74, &__src, v85);
          }

          v76 = v84;
          v77 = *(v71 + 9);
          if (v77)
          {
            v78 = v71 - 16;
          }

          else
          {
            v78 = 0;
          }

          mlir::ValueRange::ValueRange(&__src, v78, v77);
          (**v80)(v80, v76, __src, v88);
          result = 1;
          v68 = __dst;
          if (__dst == v92)
          {
            goto LABEL_71;
          }
        }

        v69 = result;
        free(v68);
        result = v69;
        goto LABEL_71;
      }
    }

    memcpy(&v26[2 * v25], v22, v27);
    v25 = v98;
    v26 = v97;
    goto LABEL_35;
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[6] = *MEMORY[0x1E69E9840];
  v43 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v44 = a2;
  mlir::ArrayAttr::getValue(&v43);
  v6 = v5;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v55 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v55);
  if (v6 != v8)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v43);
  v11 = v9;
  v55 = v57;
  v56 = 0x600000000;
  v12 = (8 * v9) >> 3;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v57, v12, 8);
    v13 = v56;
    v14 = 8 * v11;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = 0;
  v14 = 8 * v9;
  if (v9)
  {
LABEL_10:
    memcpy(&v55[8 * v13], Value, v14);
    v13 = v56;
  }

LABEL_11:
  LODWORD(v56) = v13 + (v14 >> 3);
  mlir::ArrayAttr::getValue(&v43);
  if (v21 >= 1)
  {
    if (v34)
    {
LABEL_34:
      result = 0;
      goto LABEL_35;
    }
  }

  v52 = v54;
  v53 = 0x600000000;
  v22 = v56;
  if (v56)
  {
    if (v56 < 7)
    {
      v24 = v54;
      v23 = v56;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v54, v56, 8);
      v23 = v56;
      if (!v56)
      {
LABEL_18:
        LODWORD(v53) = v22;
        goto LABEL_19;
      }

      v24 = v52;
    }

    memcpy(v24, v55, 8 * v23);
    goto LABEL_18;
  }

LABEL_19:
  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v52);
  if (v52 != v54)
  {
    free(v52);
  }

  if (!hasValidSizesOffsets)
  {
    goto LABEL_34;
  }

  v26 = v55;
  v27 = v56;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v43);
  Values = mlir::SparseElementsAttr::getValues(&v43);
  v30 = mlir::RankedTensorType::get(v26, v27, RHS, Values);
  v42 = v30;
  if (v43 == v30)
  {
    goto LABEL_34;
  }

  result = mlir::tensor::preservesStaticInformation(v43, v30);
  if (!result || (mlir::ValueRange::ValueRange(v50, &v43, 1uLL), mlir::ValueRange::ValueRange(&v47, &v42, 1uLL), result = mlir::tensor::CastOp::areCastCompatible(v50[0], v50[1], v47, v48), !result))
  {
LABEL_35:
    v35 = v55;
    if (v55 == v57)
    {
      return result;
    }

    goto LABEL_36;
  }

  v31 = (a3 + 24);
  v38 = *(a3 + 24);
  v32 = *(v44 + 24);
  v50[0] = *(*(v44 + 72) + 24);
  v41 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v32, &v42, v50) - 16;
  v33 = v44;
  v40 = *(*(v44 + 72) + 32 * *(v44 + 104) + 24);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v44, v50);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v44, &v47);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v44, v45);
  mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3, v33, &v41, &v40, v50, &v47, v45);
  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  if (v38)
  {
    *v31 = v38;
  }

  else
  {
    *v31 = 0;
    *(a3 + 32) = 0;
  }

  result = 1;
  v35 = v55;
  if (v55 != v57)
  {
LABEL_36:
    v36 = result;
    free(v35);
    return v36;
  }

  return result;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

void anonymous namespace::FoldStaticZeroPadding::~FoldStaticZeroPadding(_anonymous_namespace_::FoldStaticZeroPadding *this)
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

uint64_t anonymous namespace::FoldStaticZeroPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  result = mlir::tensor::PadOp::hasZeroLowPad(&v11);
  if (result)
  {
    result = mlir::tensor::PadOp::hasZeroHighPad(&v11);
    if (result)
    {
      v5 = v11;
      if (*(v11 + 16 * ((*(v11 + 44) >> 23) & 1) + 64))
      {
        return 0;
      }

      else
      {
        if (*(v11 + 36))
        {
          v6 = v11 - 16;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v9 = *(*(v11 + 72) + 24);
        v10 = v7;
        v8 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(v5 + 24), &v10, &v9);
        (*(*a3 + 8))(a3, v5, v8);
        return 1;
      }
    }
  }

  return result;
}

void anonymous namespace::FoldSourceTensorCast::~FoldSourceTensorCast(_anonymous_namespace_::FoldSourceTensorCast *this)
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

uint64_t anonymous namespace::FoldSourceTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::UnitAttr **a3)
{
  v46[9] = *MEMORY[0x1E69E9840];
  v46[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v46);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v7 = DefiningOp;
  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v8 = *(*(*(v7 + 72) + 24) + 8);
    v9 = a2 + 64;
    v46[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
    v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v46);
    v12 = v11;
    v46[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
    v13 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v46);
    v15 = v14;
    if (*(a2 + 36))
    {
      v16 = a2 - 16;
    }

    else
    {
      v16 = 0;
    }

    v46[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    Value = mlir::ArrayAttr::getValue(v46);
    v19 = mlir::tensor::PadOp::inferResultType(v8 & 0xFFFFFFFFFFFFFFF8, v10, v12, v13, v15, Value, v18);
    v45 = v19;
    if (*(a2 + 36))
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 != (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v26 = *(a2 + 24);
      v44 = *(*(a2 + 72) + 24);
      v46[0] = *(a2 + 96);
      v43[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v46);
      v43[1] = v27;
      v46[0] = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v42[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v46);
      v42[1] = v28;
      v30 = *(a2 + 44);
      v31 = v9 + 16 * ((v30 >> 23) & 1);
      v33 = *(v31 + 24);
      v32 = *(v31 + 28);
      if ((v30 & 0x800000) != 0)
      {
        v34 = (v32 + v33);
        v40 = *(a2 + 72) + 32 * v33;
        v41 = v34 - v33;
        v35 = *(a2 + 72);
      }

      else
      {
        v35 = 0;
        v34 = (v32 + v33);
        v40 = 32 * v33;
        v41 = v34 - v33;
      }

      v36 = v35 + 32 * v34;
      v37 = (*(v31 + 32) + v34) - v34;
      v39[0] = v36;
      v39[1] = v37;
      v38 = *v31 != 0;
      mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v46, v29);
      mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(a3 + 1, v26, &v45, &v44, v43, v42, &v40, v39, &v38, v46);
    }

    (*(*a3 + 5))(a3, a2);
    v21 = *(a2 + 72);
    v22 = *(*(v7 + 72) + 24);
    v23 = v21[1];
    if (v23)
    {
      v24 = *v21;
      *v23 = *v21;
      if (v24)
      {
        *(v24 + 8) = v23;
      }
    }

    v21[3] = v22;
    v21[1] = v22;
    v25 = *v22;
    *v21 = *v22;
    if (v25)
    {
      *(v25 + 8) = v21;
    }

    *v22 = v21;
    (*(*a3 + 6))(a3, a2);
    return 1;
  }

  return result;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, llvm::hashing::detail **a5, llvm::hashing::detail **a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v29, a2, v19);
    v21 = *a3;
    v22 = *a4;
    v24 = *a5;
    v23 = a5[1];
    v25 = *a6;
    v26 = a6[1];
    v27 = v25;
    mlir::ValueRange::ValueRange(v31, *a7, *(a7 + 8));
    mlir::ValueRange::ValueRange(v30, *a8, *(a8 + 8));
    mlir::tensor::PadOp::build(a1, v29, v21, v22, v24, v23, v27, v26, v31[0], v31[1], v30[0], v30[1], *a9, *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v29, v31, v30);
}

void anonymous namespace::FoldTargetTensorCast::~FoldTargetTensorCast(_anonymous_namespace_::FoldTargetTensorCast *this)
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

uint64_t anonymous namespace::FoldTargetTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2 - 16;
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (*NextResultAtOffset && !**NextResultAtOffset)
  {
    v9 = *(a2 + 36);
    v10 = v9 ? v5 : 0;
    v41[0] = v10;
    v41[1] = v9;
    mlir::ResultRange::use_begin(v41, v38);
    v11 = *(a2 + 36);
    v12 = v11 ? v5 : 0;
    v40.n128_u64[0] = v12;
    v40.n128_u64[1] = v11;
    mlir::ResultRange::use_end(&v40, v44);
    v43 = v39;
    *v41 = v38[0];
    v42 = v38[1];
    v13 = *(v39 + 16);
    if (v13)
    {
      if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        v14 = *(a2 + 36) ? v5 : 0;
        v15 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8);
        v16 = *(v13 + 36) ? v13 - 16 : 0;
        v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
        if (mlir::tensor::preservesStaticInformation(v15 & 0xFFFFFFFFFFFFFFF8, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v18 = *(a2 + 24);
          if (*(v13 + 36))
          {
            v19 = v13 - 16;
          }

          else
          {
            v19 = 0;
          }

          v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          v36 = *(*(a2 + 72) + 24);
          v37 = v20;
          v41[0] = *(a2 + 96);
          *&v38[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v41);
          *(&v38[0] + 1) = v21;
          v41[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
          v40.n128_u64[0] = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v41);
          v40.n128_u64[1] = v22;
          v24 = *(a2 + 44);
          v25 = a2 + 64 + 16 * ((v24 >> 23) & 1);
          v27 = *(v25 + 24);
          v26 = *(v25 + 28);
          if ((v24 & 0x800000) != 0)
          {
            v28 = (v26 + v27);
            v34 = *(a2 + 72) + 32 * v27;
            v35 = v28 - v27;
            v29 = *(a2 + 72);
          }

          else
          {
            v29 = 0;
            v28 = (v26 + v27);
            v34 = 32 * v27;
            v35 = v28 - v27;
          }

          v30 = v29 + 32 * v28;
          v31 = (*(v25 + 32) + v28) - v28;
          v33[0] = v30;
          v33[1] = v31;
          v32 = *v25 != 0;
          mlir::getPrunedAttributeList(a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v41, v23);
          mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v18, &v37, &v36, v38, &v40, &v34, v33, &v32, v41);
        }
      }
    }
  }

  return 0;
}

void anonymous namespace::FoldOrthogonalPaddings::~FoldOrthogonalPaddings(_anonymous_namespace_::FoldOrthogonalPaddings *this)
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

uint64_t anonymous namespace::FoldOrthogonalPaddings::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v64 = a2;
  v74 = *(*(a2 + 9) + 24);
  result = mlir::Value::getDefiningOp(&v74);
  if (!result)
  {
    return result;
  }

  v5 = *(*(result + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v63 = v7;
  if (!v6)
  {
    return 0;
  }

  v74 = *(*(result + 72) + 24);
  result = mlir::Value::getDefiningOp(&v74);
  if (!result)
  {
    return result;
  }

  v8 = *(*(result + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  v10 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id ? result : 0;
  v62 = v10;
  if (!v9 || *(result + 16 * ((*(result + 44) >> 23) & 1) + 64))
  {
    return 0;
  }

  v74 = *(*(result + 72) + 24);
  result = mlir::Value::getDefiningOp(&v74);
  if (!result)
  {
    return result;
  }

  v11 = *(*(result + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? result : 0;
  v61 = v13;
  if (!v12)
  {
    return 0;
  }

  v74 = (*(*(*(v64 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v74);
  v15 = v14;
  v74 = (*(*(*(v61 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v74);
  if (v16 != v15)
  {
    v74 = "cannot fold rank-reducing chain";
    v77 = 259;
    v17 = v64;
    v71 = &v74;
    v18 = *(a3 + 16);
    if (!v18)
    {
      return 0;
    }

LABEL_23:
    if (instruction::util::IsTasklet(v18))
    {
      (*(*v18 + 88))(v18, *(v17 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v71);
    }

    return 0;
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v63, &v74);
  v19 = v74;
  if (v75)
  {
    v20 = 8 * v75 - 8;
    do
    {
      v21 = *v19++;
      v22 = mlir::getConstantIntValue(v21) == 1;
      v24 = v23 & v22;
      v25 = (v23 & v22) != 1 || v20 == 0;
      v20 -= 8;
    }

    while (!v25);
    v19 = v74;
  }

  else
  {
    v24 = 1;
  }

  if (v19 != v76)
  {
    free(v19);
  }

  if (!v24 || (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v61) & 1) == 0)
  {
    v74 = "cannot fold non-unit stride ExtractSliceOps";
    v77 = 259;
    v17 = v64;
    v71 = &v74;
    v18 = *(a3 + 16);
    if (!v18)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!mlir::tensor::PadOp::hasZeroLowPad(&v64) || (mlir::tensor::PadOp::hasZeroLowPad(&v62) & 1) == 0)
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with low padding");
  }

  v59 = 0;
  v60 = 0;
  ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v64);
  v27 = mlir::tensor::PadOp::getConstantPaddingValue(&v62);
  if (!ConstantPaddingValue)
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with different padding values");
  }

  v28 = v27;
  if (!v27)
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with different padding values");
  }

  v74 = &v60;
  if (!mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(ConstantPaddingValue, &v74))
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with different padding values");
  }

  v71 = &v59;
  if (!mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(v28, &v71) || v60 != v59)
  {
    return mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with different padding values");
  }

  mlir::tensor::PadOp::getPaddedDims(&v58, &v64);
  mlir::tensor::PadOp::getPaddedDims(&v57, &v62);
  if (llvm::SmallBitVector::anyCommon(&v58, &v57))
  {
    v29 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold PadOps with common padding dimensions");
    goto LABEL_84;
  }

  v71 = (mlir::Builder::getIndexAttr((a3 + 8), 0) & 0xFFFFFFFFFFFFFFFBLL);
  llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(&v74, v15, &v71);
  if (v75)
  {
    v30 = 0;
    v31 = v74;
    v32 = 8 * v75;
    do
    {
      while (1)
      {
        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v63, &v71);
        v33 = v71[v30];
        if (v71 != v73)
        {
          free(v71);
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v61, &v71);
        v34 = v71[v30];
        if (v71 != v73)
        {
          free(v71);
        }

        if (llvm::SmallBitVector::test(&v58, v30))
        {
          break;
        }

        ConstantIntValue = mlir::getConstantIntValue(v33);
        if ((v36 & 1) == 0 || ConstantIntValue)
        {
          break;
        }

        v31[v30++] = v34;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_67;
        }
      }

      if (llvm::SmallBitVector::test(&v57, v30) || (v37 = mlir::getConstantIntValue(v34), (v38 & 1) == 0) || v37)
      {
        v29 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot find zero-offset and zero-padding pair");
        goto LABEL_82;
      }

      v31[v30++] = v33;
      v32 -= 8;
    }

    while (v32);
  }

LABEL_67:
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v63, &v68);
  v71 = v73;
  v72 = 0x600000000;
  if (v69)
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&v71, &v68);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  if (!v72)
  {
LABEL_87:
    v66[0] = (mlir::Builder::getIndexAttr((a3 + 8), 0) & 0xFFFFFFFFFFFFFFFBLL);
    llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(&v68, v15, v66);
    if (v69)
    {
      v52 = 0;
      v53 = 8 * v69;
      do
      {
        if (llvm::SmallBitVector::test(&v58, v52))
        {
          mlir::tensor::PadOp::getMixedHighPad(v66, &v64);
          v68->i64[v52] = v66[0]->i64[v52];
          if (v66[0] != v67)
          {
            free(v66[0]);
          }
        }

        if (llvm::SmallBitVector::test(&v57, v52))
        {
          mlir::tensor::PadOp::getMixedHighPad(v66, &v62);
          v68->i64[v52] = v66[0]->i64[v52];
          if (v66[0] != v67)
          {
            free(v66[0]);
          }
        }

        ++v52;
        v53 -= 8;
      }

      while (v53);
    }

    v46 = *(v64 + 3);
    v65[0] = *(*(v61 + 72) + 24);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(&v63, v66);
    v47 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>((a3 + 8), v46, v65, &v74, &v71, v66);
    if (v66[0] != v67)
    {
      free(v66[0]);
    }

    v48 = *(v64 + 3);
    if (*(v64 + 9))
    {
      v49 = v64 - 16;
    }

    else
    {
      v49 = 0;
    }

    v56 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(v47 + 9))
    {
      v50 = v47 - 16;
    }

    else
    {
      v50 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0);
    mlir::tensor::PadOp::getMixedLowPad(v66, &v64);
    v54 = *(v64 + 2 * ((*(v64 + 11) >> 23) & 1) + 8) != 0;
    mlir::getPrunedAttributeList(v64, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v65, v51);
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v48, &v56, &NextResultAtOffset, v66, &v68, &v54, v65);
  }

  v39 = 0;
  v40 = v71;
  v41 = 8 * v72;
  while (!llvm::SmallBitVector::test(&v57, v39))
  {
LABEL_73:
    ++v39;
    v41 -= 8;
    if (!v41)
    {
      goto LABEL_87;
    }
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v63, &v68);
  v42 = v68->i64[v39];
  if (v68 != v70)
  {
    free(v68);
  }

  v68 = (*(*(*(v63 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v43 = *(mlir::ArrayAttr::getValue(&v68) + 8 * v39);
  v44 = mlir::getConstantIntValue(v42);
  if ((v45 & 1) != 0 && v44 == v43)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v61, &v68);
    v40[v39] = v68->u64[v39];
    if (v68 != v70)
    {
      free(v68);
    }

    goto LABEL_73;
  }

  v29 = mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(a3, &v64, "cannot fold since the inner ExtractSliceOp size does not match the size of the outer padding");
  if (v71 != v73)
  {
    free(v71);
  }

LABEL_82:
  if (v74 != v76)
  {
    free(v74);
  }

LABEL_84:
  llvm::SmallBitVector::~SmallBitVector(&v57);
  llvm::SmallBitVector::~SmallBitVector(&v58);
  return v29;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && instruction::util::IsTasklet(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(uint64_t a1, unint64_t **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::Attribute>::match(a2, result);
  }

  return result;
}

BOOL llvm::SmallBitVector::anyCommon(llvm::SmallBitVector *this, const llvm::SmallBitVector *a2)
{
  v2 = *this;
  v3 = *a2;
  if (*this)
  {
    v15 = v2 >> 58;
    if (v3)
    {
      return (~((-1 << v15) | (-1 << (v3 >> 58))) & ((v2 & v3) >> 1)) != 0;
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      v4 = *(v2 + 8);
      LODWORD(v5) = *(v3 + 8);
      if (v5 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v5;
      }

      if (v5)
      {
        v6 = *v2;
        v7 = *v3;
        v8 = v5 - 1;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = *v7++;
          v12 = v11 & v9;
          result = v12 != 0;
          if (v12)
          {
            v14 = 1;
          }

          else
          {
            v14 = v8 == 0;
          }

          --v8;
        }

        while (!v14);
        return result;
      }

      return 0;
    }

    v15 = *(v2 + 64);
  }

  if (v3)
  {
    if (v3 >> 58 < v15)
    {
      v15 = v3 >> 58;
    }

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 64) < v15)
    {
      v15 = *(v3 + 64);
    }

    if (!v15)
    {
      return 0;
    }
  }

  v16 = (v3 >> 1) & ~(-1 << (v3 >> 58));
  if (v2)
  {
    v19 = (v2 >> 1) & ~(-1 << (v2 >> 58));
    if (v3)
    {
      v22 = 0;
      do
      {
        v23 = (v19 & (1 << v22)) == 0 || (v16 & (1 << v22)) == 0;
        result = !v23;
        if (!v23)
        {
          break;
        }

        v14 = v15 - 1 == v22++;
      }

      while (!v14);
    }

    else
    {
      v20 = 0;
      while (((v19 >> v20) & 1) == 0 || ((*(*v3 + 8 * (v20 >> 6)) >> v20) & 1) == 0)
      {
        if (v15 == ++v20)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v17 = *v2;
    if (v3)
    {
      v21 = 0;
      while (((v17[v21 >> 6] >> v21) & 1) == 0 || ((v16 >> v21) & 1) == 0)
      {
        if (v15 == ++v21)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      v18 = 0;
      while ((v17[v18 >> 6] & (1 << v18)) == 0 || (*(*v3 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        if (v15 == ++v18)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::tensor::ExtractSliceOp::build(a1, v21, 0, *a3, *a4, *(a4 + 8), *a5, *(a5 + 8), *a6, *(a6 + 8), 0, 0);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v22, a2, v17);
    mlir::tensor::PadOp::build(a1, v22, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v22, v21, v20);
}

void anonymous namespace::FoldStaticPadding::~FoldStaticPadding(_anonymous_namespace_::FoldStaticPadding *this)
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

uint64_t anonymous namespace::FoldStaticPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135[6] = *MEMORY[0x1E69E9840];
  v111 = *(*(a2 + 72) + 24);
  if (*(*(*(v111 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  v4 = a2;
  __s1 = (*(v111 + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&__s1);
  v105 = v6;
  v7 = *(v4 + 36) ? v4 - 16 : 0;
  v110 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v110)
  {
    return 0;
  }

  __src = mlir::ArrayAttr::getValue(&v110);
  v101 = v8;
  v133 = v135;
  v134 = 0x600000000;
  v130 = v132;
  v131 = 0x600000000;
  v9 = v4 + 64;
  v10 = *(v4 + 44);
  v11 = (v10 >> 23) & 1;
  v12 = v4 + 64 + 16 * v11;
  v13 = *(v12 + 28);
  if ((v10 & 0x800000) != 0)
  {
    v14 = *(v4 + 72);
    v103 = v4;
    v104 = v4 + 64;
    if (v13)
    {
LABEL_9:
      v15 = *(v12 + 24);
      v16 = (v13 + v15) - v15;
      v17 = (v14 + 32 * v15 + 24);
      while (1)
      {
        v18 = *v17;
        LODWORD(v113) = 1;
        __s1 = 0;
        BYTE4(v113) = 0;
        p_s1 = &__s1;
        v121 = v18;
        DefiningOp = mlir::Value::getDefiningOp(&v121);
        if (DefiningOp)
        {
          v20 = DefiningOp;
          v127 = 0;
          v124 = &v127;
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v124, DefiningOp))
          {
            v21 = *(*(*(v20 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
            v22 = v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
            v23 = v22 || v21 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
            v24 = v23 || v21 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
            if (v24 && (mlir::detail::constant_int_value_binder::match(&p_s1, v127) & 1) != 0)
            {
              break;
            }
          }
        }

        v26 = v134;
        if (v134 >= HIDWORD(v134))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v134 + 1, 8);
          v26 = v134;
        }

        v133[v26] = 0x8000000000000000;
        LODWORD(v134) = v134 + 1;
        v27 = v131;
        if (v131 >= HIDWORD(v131))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v132, v131 + 1, 8);
          v27 = v131;
        }

        v130[v27] = v18;
        LODWORD(v131) = v131 + 1;
        if (v113 < 0x41)
        {
          goto LABEL_10;
        }

LABEL_34:
        if (__s1)
        {
          MEMORY[0x1AC55A040](__s1, 0x1000C8000313F17);
        }

LABEL_10:
        v17 += 4;
        if (!--v16)
        {
          v4 = v103;
          v9 = v104;
          v30 = *(v103 + 44);
          v11 = (v30 >> 23) & 1;
          v31 = v30 & 0x800000;
          goto LABEL_49;
        }
      }

      if ((v113 & 0x100000000) != 0)
      {
        if (v113 >= 0x41)
        {
          v25 = __s1;
        }

        else
        {
          v25 = &__s1;
        }
      }

      else
      {
        if (v113 <= 0x40)
        {
          if (v113)
          {
            v28 = (__s1 << -v113) >> -v113;
          }

          else
          {
            v28 = 0;
          }

LABEL_42:
          v29 = v134;
          if (v134 >= HIDWORD(v134))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v134 + 1, 8);
            v29 = v134;
          }

          v133[v29] = v28;
          LODWORD(v134) = v134 + 1;
          if (v113 < 0x41)
          {
            goto LABEL_10;
          }

          goto LABEL_34;
        }

        v25 = __s1;
      }

      v28 = *v25;
      goto LABEL_42;
    }
  }

  else
  {
    v14 = 0;
    v103 = v4;
    v104 = v4 + 64;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  v31 = v10 & 0x800000;
LABEL_49:
  v127 = v129;
  v128 = 0x600000000;
  v124 = v126;
  v125 = 0x600000000;
  v32 = (v9 + 16 * v11);
  v33 = v32[8];
  if (v31)
  {
    v34 = *(v4 + 72);
    if (!v33)
    {
      goto LABEL_89;
    }

    goto LABEL_51;
  }

  v34 = 0;
  if (v33)
  {
LABEL_51:
    v35 = (v32[7] + v32[6]);
    v36 = (v33 + v35) - v35;
    v37 = (v34 + 32 * v35 + 24);
    while (1)
    {
      v38 = *v37;
      LODWORD(v113) = 1;
      __s1 = 0;
      BYTE4(v113) = 0;
      v109[0] = &__s1;
      v115 = v38;
      v39 = mlir::Value::getDefiningOp(&v115);
      if (v39)
      {
        v40 = v39;
        v121 = 0;
        p_s1 = &v121;
        if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_s1, v39))
        {
          v41 = *(*(*(v40 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
          v42 = v41 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v41 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
          v43 = v42 || v41 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
          v44 = v43 || v41 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
          if (v44 && (mlir::detail::constant_int_value_binder::match(v109, v121) & 1) != 0)
          {
            break;
          }
        }
      }

      v46 = v128;
      if (v128 >= HIDWORD(v128))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v128 + 1, 8);
        v46 = v128;
      }

      v127[v46] = 0x8000000000000000;
      LODWORD(v128) = v128 + 1;
      v47 = v125;
      if (v125 >= HIDWORD(v125))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v125 + 1, 8);
        v47 = v125;
      }

      v124[v47] = v38;
      LODWORD(v125) = v125 + 1;
      if (v113 < 0x41)
      {
        goto LABEL_52;
      }

LABEL_76:
      if (__s1)
      {
        MEMORY[0x1AC55A040](__s1, 0x1000C8000313F17);
      }

LABEL_52:
      v37 += 4;
      if (!--v36)
      {
        v4 = v103;
        v9 = v104;
        v11 = (*(v103 + 44) >> 23) & 1;
        goto LABEL_89;
      }
    }

    if ((v113 & 0x100000000) != 0)
    {
      if (v113 >= 0x41)
      {
        v45 = __s1;
      }

      else
      {
        v45 = &__s1;
      }
    }

    else
    {
      if (v113 <= 0x40)
      {
        if (v113)
        {
          v48 = (__s1 << -v113) >> -v113;
        }

        else
        {
          v48 = 0;
        }

LABEL_84:
        v49 = v128;
        if (v128 >= HIDWORD(v128))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v128 + 1, 8);
          v49 = v128;
        }

        v127[v49] = v48;
        LODWORD(v128) = v128 + 1;
        if (v113 < 0x41)
        {
          goto LABEL_52;
        }

        goto LABEL_76;
      }

      v45 = __s1;
    }

    v48 = *v45;
    goto LABEL_84;
  }

LABEL_89:
  __s1 = *(v9 + 16 * v11 + 16);
  v51 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__s1);
  v52 = v50;
  v121 = v123;
  v122 = 0x600000000;
  v53 = (8 * v50) >> 3;
  if (v53 < 7)
  {
    v54 = 0;
    v55 = 8 * v50;
    if (!v50)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v121, v123, v53, 8);
  v54 = v122;
  v55 = 8 * v52;
  if (v52)
  {
LABEL_93:
    memcpy(v121 + 8 * v54, v51, v55);
    v54 = v122;
  }

LABEL_94:
  LODWORD(v122) = v54 + (v55 >> 3);
  __s1 = *(v9 + 16 * ((*(v4 + 44) >> 23) & 1) + 8);
  v57 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__s1);
  v58 = v56;
  p_s1 = v120;
  v119 = 0x600000000;
  v59 = (8 * v56) >> 3;
  if (v59 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&p_s1, v120, v59, 8);
    v60 = v119;
    v61 = v101;
    v62 = 8 * v58;
    if (!v58)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v60 = 0;
  v61 = v101;
  v62 = 8 * v56;
  if (v56)
  {
LABEL_98:
    memcpy(&p_s1[v60], v57, v62);
    v60 = v119;
  }

LABEL_99:
  v63 = (v60 + (v62 >> 3));
  LODWORD(v119) = v63;
  v64 = v105;
  if (v105 == v61 && v105 == v122 && v105 == v63)
  {
    v65 = v121;
    v66 = p_s1;
    if (v105)
    {
      v67 = 0;
      v68 = 0;
      v69 = v133;
      v70 = v127;
      v71 = p_s1;
      v72 = v121;
      for (i = v105; i; i = (i - 1))
      {
        if (*v72 == 0x8000000000000000)
        {
          v74 = v69[v67++];
          *v72 = v74;
          if (*v71 == 0x8000000000000000)
          {
            goto LABEL_109;
          }
        }

        else if (*v71 == 0x8000000000000000)
        {
LABEL_109:
          v75 = v70[v68++];
          *v71 = v75;
        }

        v72 = (v72 + 8);
        ++v71;
      }
    }

    v109[0] = v65;
    v109[1] = v105;
    v108[0] = v66;
    v108[1] = v105;
    v115 = v117;
    v116 = 0x600000000;
    if (v105)
    {
      v76 = 0;
      v77 = __src;
      v78 = v105;
      do
      {
        v80 = *v77++;
        v79 = v80;
        if (v80 == 0x8000000000000000)
        {
          v79 = 0x8000000000000000;
          if (*v65 != 0x8000000000000000 && *v66 != 0x8000000000000000)
          {
            if (*Value == 0x8000000000000000)
            {
              v79 = 0x8000000000000000;
            }

            else
            {
              v79 = *v66 + *v65 + *Value;
            }
          }
        }

        if (v76 >= HIDWORD(v116))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v117, v76 + 1, 8);
          v64 = v105;
          v76 = v116;
        }

        v115[v76] = v79;
        v76 = v116 + 1;
        LODWORD(v116) = v116 + 1;
        v65 = (v65 + 8);
        v66 = (v66 + 8);
        ++Value;
        v78 = (v78 - 1);
      }

      while (v78);
    }

    __s1 = &v114;
    v113 = 0x600000000;
    v81 = (8 * v64) >> 3;
    if (v81 < 7)
    {
      v83 = 0;
      v82 = v104;
      v84 = 8 * v64;
      if (!v64)
      {
LABEL_126:
        v85 = v83 + (v84 >> 3);
        LODWORD(v113) = v85;
        v86 = v116;
        v87 = v115;
        if (v85 == v116)
        {
          v88 = __s1;
          if (!memcmp(__s1, v115, 8 * v85))
          {
            if (v88 != &v114)
            {
              free(v88);
            }

            goto LABEL_143;
          }
        }

        if (v86)
        {
          v89 = 8 * v86 - 8;
          do
          {
            v90 = *v87++;
            v91 = v90 == 0x8000000000000000;
            v92 = v90 != 0x8000000000000000 || v89 == 0;
            v89 -= 8;
          }

          while (!v92);
          v93 = __s1;
          v94 = v103;
          if (__s1 != &v114)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v91 = 1;
          v93 = __s1;
          v94 = v103;
          if (__s1 != &v114)
          {
LABEL_136:
            free(v93);
          }
        }

        if (!v91)
        {
          v95 = v115;
          v96 = v116;
          __s1 = (*(v94 - 8) & 0xFFFFFFFFFFFFFFF8);
          RHS = mlir::AffineBinaryOpExpr::getRHS(&__s1);
          v107 = mlir::RankedTensorType::get(v95, v96, RHS, 0);
          v98 = *(v94 + 24);
          v106 = *(v82 + 16 * ((*(v94 + 44) >> 23) & 1)) != 0;
          mlir::getPrunedAttributeList(v94, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &__s1, v99);
          mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::Value &,llvm::ArrayRef<long long> &,llvm::ArrayRef<long long> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v98, &v107, &v111, v109, v108, &v130, &v124, &v106, &__s1);
        }

LABEL_143:
        if (v115 != v117)
        {
          free(v115);
        }

        goto LABEL_145;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, &v114, v81, 8);
      v82 = v104;
      v83 = v113;
      v84 = 8 * v105;
      if (!v105)
      {
        goto LABEL_126;
      }
    }

    memcpy(__s1 + 8 * v83, __src, v84);
    v83 = v113;
    goto LABEL_126;
  }

LABEL_145:
  if (p_s1 != v120)
  {
    free(p_s1);
  }

  if (v121 != v123)
  {
    free(v121);
  }

  if (v124 != v126)
  {
    free(v124);
  }

  if (v127 != v129)
  {
    free(v127);
  }

  if (v130 != v132)
  {
    free(v130);
  }

  if (v133 != v135)
  {
    free(v133);
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::Value &,llvm::ArrayRef<long long> &,llvm::ArrayRef<long long> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, llvm::hashing::detail **a5, llvm::hashing::detail **a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v29, a2, v19);
    v21 = *a3;
    v22 = *a4;
    v24 = *a5;
    v23 = a5[1];
    v25 = *a6;
    v26 = a6[1];
    v27 = v25;
    mlir::ValueRange::ValueRange(v31, *a7, *(a7 + 8));
    mlir::ValueRange::ValueRange(v30, *a8, *(a8 + 8));
    mlir::tensor::PadOp::build(a1, v29, v21, v22, v24, v23, v27, v26, v31[0], v31[1], v30[0], v30[1], *a9, *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v29, v31, v30);
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::tensor::PadOp &>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

void anonymous namespace::FoldConsecutiveConstantPadding::~FoldConsecutiveConstantPadding(_anonymous_namespace_::FoldConsecutiveConstantPadding *this)
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

uint64_t anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v5 = "skipping unfoldable pad";
  }

  else
  {
    v40[0] = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v40);
    if (DefiningOp && ((v7 = *(*(DefiningOp + 48) + 16), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id) ? (v9 = 0) : (v9 = DefiningOp), (v30 = v9, v8) && !*(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64)))
    {
      ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v31);
      v13 = mlir::tensor::PadOp::getConstantPaddingValue(&v30);
      if (ConstantPaddingValue && v13 && ConstantPaddingValue == v13)
      {
        v29 = *(a2 + 24);
        v15 = *(a3 + 8);
        AffineDimExpr = mlir::getAffineDimExpr(0, v15, v14);
        v26[0] = a3;
        v26[1] = &v29;
        v26[2] = &AffineDimExpr;
        v26[3] = &v27;
        v27 = mlir::getAffineDimExpr(1, v15, v16);
        mlir::tensor::PadOp::getMixedHighPad(&v37, &v31);
        v17 = v37;
        v18 = v38;
        mlir::tensor::PadOp::getMixedHighPad(&v34, &v30);
        if (v34 != v36)
        {
          free(v34);
        }

        if (v37 != &v39)
        {
          free(v37);
        }

        mlir::tensor::PadOp::getMixedLowPad(&v34, &v31);
        v19 = v34;
        v20 = v35;
        mlir::tensor::PadOp::getMixedLowPad(&v32, &v30);
        if (v32 != &v33)
        {
          free(v32);
        }

        if (v34 != v36)
        {
          free(v34);
        }

        v21 = *(v31 + 3);
        if (*(v31 + 9))
        {
          v22 = v31 - 16;
        }

        else
        {
          v22 = 0;
        }

        v32 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v25 = *(*(v30 + 72) + 24);
        v24 = *(v31 + 2 * ((*(v31 + 11) >> 23) & 1) + 8) != 0;
        mlir::getPrunedAttributeList(v31, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, &v34, v23);
        mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v21, &v32, &v25, &v37, v40, &v24, &v34);
      }

      v5 = "cannot fold PadOps with different or non-constant padding values";
    }

    else
    {
      v5 = "producer is not a foldable tensor.pad op";
    }
  }

  v40[0] = v5;
  v41 = 259;
  v37 = v40;
  v10 = *(a3 + 16);
  if (v10 && instruction::util::IsTasklet(v10))
  {
    (*(*v10 + 88))(v10, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v37);
  }

  return 0;
}

void *anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(mlir::tensor::PadOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<mlir::OpFoldResult>,llvm::ArrayRef<mlir::OpFoldResult>)#1}::operator()(void *result, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = result + 2;
  *result = result + 2;
  result[1] = 0x600000000;
  if (a4)
  {
    v9 = result;
    v10 = 8 * a4;
    do
    {
      v11 = *a2;
      v12 = *a2[1];
      v13 = mlir::AffineExpr::operator+(a2[2], *a2[3]);
      v16[0] = *a3;
      v16[1] = *a5;
      result = mlir::affine::makeComposedFoldedAffineApply((v11 + 8), v12, v13, v16, 2);
      v14 = *(v9 + 2);
      if (v14 >= *(v9 + 3))
      {
        v15 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v5, v14 + 1, 8);
        result = v15;
        v14 = *(v9 + 2);
      }

      *(*v9 + 8 * v14) = result;
      ++*(v9 + 2);
      ++a3;
      ++a5;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::ParallelInsertSliceOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
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

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t DefiningOp, uint64_t a2, mlir::MLIRContext **a3)
{
  v95[6] = *MEMORY[0x1E69E9840];
  v80 = a2;
  v4 = *(a2 + 68);
  if (v4)
  {
    v5 = (*(a2 + 72) + 24);
    do
    {
      v6 = *v5;
      ZinIrHalH13g::~ZinIrHalH13g(DefiningOp);
      v93 = v6;
      DefiningOp = mlir::Value::getDefiningOp(&v93);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v7);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v5 += 4;
      --v4;
    }

    while (v4);
    a2 = v80;
  }

  v93 = *(*(a2 + 72) + 24);
  v8 = mlir::Value::getDefiningOp(&v93);
  if (v8 && *(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v9 = v8, mlir::tensor::preservesStaticInformation(*(v8 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v10 = *(*(v9 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v11 = *(*(v9 + 72) + 24);
    v12 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  v13 = v10 | v11;
  v93 = *(*(v80 + 72) + 32 * *(v80 + 104) + 24);
  v14 = mlir::Value::getDefiningOp(&v93);
  if (v14 && *(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v15 = v14, (mlir::tensor::preservesStaticInformation(*(v14 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v14 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v16 = *(*(v15 + 72) + 24);
    if (!v12)
    {
      v13 = *(*(v80 + 72) + 24);
    }

    v79 = v13;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    v79 = v13;
    v16 = *(*(v80 + 72) + 32 * *(v80 + 104) + 24);
  }

  result = 0;
  v78 = v16;
  v18 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = 0;
  }

  v77 = v18;
  v19 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v18 && v20)
  {
    v93 = *(v80 + 16 * ((*(v80 + 44) >> 23) & 1) + 72);
    v22 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v93);
    v23 = v21;
    v93 = v95;
    v94 = 0x600000000;
    v24 = (8 * v21) >> 3;
    if (v24 < 7)
    {
      v25 = 0;
      v26 = v95;
      v27 = 8 * v21;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v24, 8);
      v25 = v94;
      v26 = v93;
      v27 = 8 * v23;
      if (!v23)
      {
LABEL_35:
        v28 = v25 + (v27 >> 3);
        LODWORD(v94) = v25 + (v27 >> 3);
        Value = mlir::ArrayAttr::getValue(&v77);
        mlir::computeRankReductionMask(v26, v28, Value, v30, 1, &v89);
        if (v92 != 1)
        {
          result = 0;
LABEL_37:
          if (v93 != v95)
          {
            v31 = result;
            free(v93);
            return v31;
          }

          return result;
        }

        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v80, &__src);
        __dst = v88;
        v87 = 0x600000000;
        v32 = v84;
        v33 = __src;
        v76 = a3;
        if (v84)
        {
          if (__src == v85)
          {
            v34 = v84;
            if (v84 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v88, v84, 8), v34 = v84, v33 = __src, v84))
            {
              memcpy(__dst, v33, 8 * v34);
              v33 = __src;
            }

            LODWORD(v87) = v32;
          }

          else
          {
            __dst = __src;
            v87 = v84;
            __src = v85;
            HIDWORD(v84) = 0;
            v33 = v85;
          }

          LODWORD(v84) = 0;
        }

        if (v33 != v85)
        {
          free(v33);
        }

        if (v94)
        {
          v35 = 0;
          v36 = 0;
          v37 = &v92;
          v38 = v93;
          v39 = &v93[2 * v94];
          v40 = &v90;
          while (1)
          {
            if ((v92 & 1) == 0)
            {
              v75 = std::__throw_bad_optional_access[abi:nn200100]();
            }

            if (v89)
            {
              v42 = 4;
              v41 = v40;
            }

            else
            {
              v41 = v90;
              v42 = v91;
              if (!v91)
              {
                goto LABEL_61;
              }
            }

            v43 = v42 - 1;
            v44 = (v42 - 1) & (37 * v36);
            v45 = *(v41 + v44);
            if (v45 != v36)
            {
              break;
            }

LABEL_59:
            v46 = (v41 + 4 * v44);
            if (v89)
            {
              if (v46 == v37)
              {
                goto LABEL_61;
              }
            }

            else if (v46 == (v90 + 4 * v91))
            {
              goto LABEL_61;
            }

LABEL_52:
            ++v36;
            v38 += 2;
            if (v38 == v39)
            {
              goto LABEL_68;
            }
          }

          v57 = 1;
          while (v45 != -1)
          {
            v58 = v44 + v57++;
            v44 = v58 & v43;
            v45 = *(v41 + v44);
            if (v45 == v36)
            {
              goto LABEL_59;
            }
          }

LABEL_61:
          if (*(mlir::ArrayAttr::getValue(&v77) + 8 * v35) != 0x8000000000000000)
          {
            v47 = v39;
            v48 = v35;
            v49 = v35;
            v50 = v40;
            v51 = v37;
            v52 = v76[1];
            v53 = *(mlir::ArrayAttr::getValue(&v77) + 8 * v48);
            v54 = v52;
            v37 = v51;
            v40 = v50;
            AsIndexOpFoldResult = mlir::getAsIndexOpFoldResult(v54, v53);
            *(__dst + v36) = AsIndexOpFoldResult;
            v35 = v49 + 1;
            v56 = *(mlir::ArrayAttr::getValue(&v77) + 8 * v48);
            v39 = v47;
            *v38 = v56;
          }

          goto LABEL_52;
        }

LABEL_68:
        v59 = v77;
        __src = *(v80 + 16 * ((*(v80 + 44) >> 23) & 1) + 64);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v60 = v93;
        v61 = v94;
        __src = *(v80 + 16 * ((*(v80 + 44) >> 23) & 1) + 80);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        v81[0] = v59;
        __src = v20;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&__src);
        Values = mlir::SparseElementsAttr::getValues(&__src);
        __src = mlir::RankedTensorType::get(v60, v61, RHS, Values);
        v64 = mlir::TensorType::operator mlir::ShapedType(&__src);
        v66 = v65;
        v67 = mlir::TensorType::operator mlir::ShapedType(v81);
        if (mlir::isRankReducedType(v64, v66, v67))
        {
          result = 0;
          v68 = __dst;
          if (__dst == v88)
          {
LABEL_71:
            if ((v92 & 1) != 0 && (v89 & 1) == 0)
            {
              llvm::deallocate_buffer(v90, (4 * v91));
            }

            goto LABEL_37;
          }
        }

        else
        {
          v70 = *(v80 + 24);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v80, &__src);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v80, v81);
          v71 = mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v76 + 1, v70, &v79, &v78, &__src, &__dst, v81);
          if (v81[0] != &v82)
          {
            free(v81[0]);
          }

          if (__src != v85)
          {
            free(__src);
          }

          v72 = v80;
          v73 = *(v71 + 9);
          if (v73)
          {
            v74 = v71 - 16;
          }

          else
          {
            v74 = 0;
          }

          mlir::ValueRange::ValueRange(&__src, v74, v73);
          (**v76)(v76, v72, __src, v84);
          result = 1;
          v68 = __dst;
          if (__dst == v88)
          {
            goto LABEL_71;
          }
        }

        v69 = result;
        free(v68);
        result = v69;
        goto LABEL_71;
      }
    }

    memcpy(&v26[2 * v25], v22, v27);
    v25 = v94;
    v26 = v93;
    goto LABEL_35;
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
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

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59[6] = *MEMORY[0x1E69E9840];
  v45 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v46 = a2;
  mlir::ArrayAttr::getValue(&v45);
  v6 = v5;
  v57 = (*(*(*(a2 + 72) + 32 * *(a2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v57);
  if (v6 != v7)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v45);
  v10 = v8;
  v57 = v59;
  v58 = 0x600000000;
  v11 = (8 * v8) >> 3;
  if (v11 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v11, 8);
    v12 = v58;
    v13 = 8 * v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v13 = 8 * v8;
  if (v8)
  {
LABEL_7:
    memcpy(&v57[8 * v12], Value, v13);
    v12 = v58;
  }

LABEL_8:
  LODWORD(v58) = v12 + (v13 >> 3);
  mlir::ArrayAttr::getValue(&v45);
  if (v20 >= 1)
  {
    if (v36)
    {
LABEL_33:
      result = 0;
      goto LABEL_34;
    }
  }

  v54 = v56;
  v55 = 0x600000000;
  v21 = v58;
  if (v58)
  {
    if (v58 < 7)
    {
      v23 = v56;
      v22 = v58;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v56, v58, 8);
      v22 = v58;
      if (!v58)
      {
LABEL_15:
        LODWORD(v55) = v21;
        goto LABEL_16;
      }

      v23 = v54;
    }

    memcpy(v23, v57, 8 * v22);
    goto LABEL_15;
  }

LABEL_16:
  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v54);
  if (v54 != v56)
  {
    free(v54);
  }

  if (!hasValidSizesOffsets)
  {
    goto LABEL_33;
  }

  v25 = v57;
  v26 = v58;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v45);
  Values = mlir::SparseElementsAttr::getValues(&v45);
  v29 = mlir::RankedTensorType::get(v25, v26, RHS, Values);
  v44 = v29;
  if (v45 == v29)
  {
    goto LABEL_33;
  }

  result = mlir::tensor::preservesStaticInformation(v45, v29);
  if (!result || (mlir::ValueRange::ValueRange(v52, &v45, 1uLL), mlir::ValueRange::ValueRange(&v49, &v44, 1uLL), result = mlir::tensor::CastOp::areCastCompatible(v52[0], v52[1], v49, v50), !result))
  {
LABEL_34:
    v37 = v57;
    if (v57 == v59)
    {
      return result;
    }

    goto LABEL_35;
  }

  v30 = (a3 + 24);
  ParentOp = *(v46 + 16);
  v40 = *(a3 + 24);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v32 = *(ParentOp + 2);
  ZinIrHalH13g::~ZinIrHalH13g(ParentOp);
  *(a3 + 24) = v32;
  *(a3 + 32) = v33;
  v34 = *(v46 + 24);
  v52[0] = *(*(v46 + 72) + 24);
  v43 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v34, &v44, v52) - 16;
  v35 = v46;
  v42 = *(*(v46 + 72) + 32 * *(v46 + 104) + 24);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v46, v52);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v46, &v49);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v46, v47);
  mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(a3, v35, &v43, &v42, v52, &v49, v47);
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52[0] != &v53)
  {
    free(v52[0]);
  }

  if (v40)
  {
    *v30 = v40;
  }

  else
  {
    *v30 = 0;
    *(a3 + 32) = 0;
  }

  result = 1;
  v37 = v57;
  if (v57 != v59)
  {
LABEL_35:
    v38 = result;
    free(v37);
    return v38;
  }

  return result;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1 + 1, *(a2 + 24), a3, a4, a5, a6, a7);
  (*(*a1 + 1))(a1, a2, v9);
  return v9;
}

uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *a1;
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = 8 * v1 - 8;
    while (1)
    {
      v10 = *v6;
      ConstantIntValue = mlir::getConstantIntValue(*v7);
      if (v12)
      {
        if (v10 != 0x8000000000000000 && ConstantIntValue != v10)
        {
          return 0;
        }
      }

      else if (v10 != 0x8000000000000000)
      {
        return 0;
      }

      result = 1;
      if (v9)
      {
        ++v6;
        ++v7;
        v14 = v8;
        v8 -= 8;
        v9 -= 8;
        if (v14)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

void FoldTensorCastProducerOp::~FoldTensorCastProducerOp(FoldTensorCastProducerOp *this)
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

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::rewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 48);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 56);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 64);

  return v3();
}

BOOL mlir::AsmParser::parseType<mlir::TensorType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

BOOL mlir::AsmParser::parseType<mlir::RankedTensorType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
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
      result = v7;
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
            MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties]";
  v6 = 116;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::parse(*a1, a3);
  *a2 = v4;
  return v4 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PackOpGenericAdaptorBase::Properties]";
  v6 = 108;
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