const char *llvm::detail::getTypeNameImpl<anonymous namespace::ChainedTensorBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ChainedTensorBitcast]";
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

void anonymous namespace::ChainedTensorCast::~ChainedTensorCast(_anonymous_namespace_::ChainedTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ChainedTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v11 = *(*(*(v8 + 72) + 24) + 8);
  v12 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v13 = joinShapes((v11 & 0xFFFFFFFFFFFFFFF8), (*(v8 - 8) & 0xFFFFFFFFFFFFFFF8));
  v14 = joinShapes(v13, v12);
  if (!v14 || v14 != joinShapes((v11 & 0xFFFFFFFFFFFFFFF8), v12))
  {
    return 0;
  }

  v15 = *(*(v8 + 72) + 24);
  v16 = *(a2 + 24);
  v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v16 + 32));
  v23[0] = v16;
  v23[1] = v17;
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = v27;
  v26[1] = 0x400000000;
  v27[4] = v28;
  v27[5] = 0x400000000;
  v28[8] = 4;
  v28[9] = v29;
  v28[10] = 0x100000000;
  v29[1] = v30;
  v29[2] = 0x100000000;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v30[4] = 0;
  v30[6] = 0;
  v21 = v15;
  __src = v12;
  v9 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v24, &v21, 0, &v21, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v26, &__src, v23);
  v18 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert((a3 + 8), v18);
  v19 = *(*(v18 + 6) + 16);
  mlir::OperationState::~OperationState(v23);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  (*(*a3 + 8))(a3, a2, v20);
  return v9;
}

void *joinShapes(void *a1, void *a2)
{
  v2 = a2;
  v19[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return v2;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return a1;
  }

  v4 = a1[2];
  if (v4 != a2[2])
  {
    return 0;
  }

  v17 = v19;
  v18 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v4, 8);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = 8 * v5;
      v7 = *(a1[1] + v6);
      v8 = *(v2[1] + v6);
      if (v7 != 0x8000000000000000)
      {
        v9 = v8 == 0x8000000000000000 || v7 == v8;
        v8 = *(a1[1] + 8 * v5);
        if (!v9)
        {
          break;
        }
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v17, v8);
      if (v4 == ++v5)
      {
        goto LABEL_15;
      }
    }

    v2 = 0;
    goto LABEL_24;
  }

LABEL_15:
  v10 = *(*a1 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = 3;
LABEL_22:
    v11 = a1[v12];
    goto LABEL_23;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = 1;
    goto LABEL_22;
  }

  v11 = 0;
LABEL_23:
  *&v16 = v17;
  *(&v16 + 1) = v18;
  v14 = 0;
  v15 = v11;
  v2 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v16, &v15, &v14);
LABEL_24:
  if (v17 != v19)
  {
    free(v17);
  }

  return v2;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ChainedTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ChainedTensorCast]";
  v6 = 102;
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

void anonymous namespace::TensorCastExtractSlice::~TensorCastExtractSlice(_anonymous_namespace_::TensorCastExtractSlice *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TensorCastExtractSlice::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44[8] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v6 = v5[1];
  if ((~*(v5 + 2) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = v5[1] & 7;
    if (v7 == 6)
    {
      v5 += 3 * v5[2] + 15;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 += 2 * v7 + 2;
    }

    if (*(v5[6] + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v5 = 0;
    }
  }

LABEL_10:
  v26 = v5;
  v8 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    if (v5)
    {
      v10 = v6 & 0xFFFFFFFFFFFFFFF8;
      result = mlir::tensor::preservesStaticInformation((v6 & 0xFFFFFFFFFFFFFFF8), (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
      if (result)
      {
        v11 = *(v8 + 16);
        if (v11 != *(v10 + 16) || (result = memcmp(*(v8 + 8), *(v10 + 8), 8 * v11), result))
        {
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v26, &v36);
          v13 = v26 - 2;
          if (!*(v26 + 9))
          {
            v13 = 0;
          }

          v12 = v26[2 * ((*(v26 + 11) >> 23) & 1) + 9];
          mlir::computeRankReductionMask(*(v12 + 24), *(v12 + 32) >> 3, *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 8), *((v13[1] & 0xFFFFFFFFFFFFFFF8) + 16), 0, v33);
          v14 = v37;
          if (v37)
          {
            v15 = 0;
            v16 = 0;
            do
            {
              if (v35 == 1 && (LODWORD(v39[0]) = v16, llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::doFind<unsigned int>(v33, v39)))
              {
                v17 = v15;
              }

              else
              {
                v17 = v15 + 1;
                v18 = *(*(v8 + 8) + 8 * v15);
                if (v18 != 0x8000000000000000)
                {
                  IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v18);
                  *(v36 + v16) = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
                }
              }

              ++v16;
              v15 = v17;
            }

            while (v14 != v16);
          }

          v20 = *(v26[9] + 24);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v26, &v30);
          mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v26, &v27);
          v21 = *(a2 + 24);
          Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v21 + 32));
          v39[0] = v21;
          v39[1] = Slice;
          v39[2] = v40;
          v39[3] = 0x400000000;
          v40[4] = v41;
          v40[5] = 0x400000000;
          v41[4] = v42;
          v41[5] = 0x400000000;
          v42[8] = 4;
          v42[9] = v43;
          v42[10] = 0x100000000;
          v43[1] = v44;
          v43[2] = 0x100000000;
          v44[1] = 0;
          v44[2] = 0;
          v44[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v44[4] = 0;
          v44[6] = 0;
          mlir::tensor::ExtractSliceOp::build((a3 + 8), v39, v8, v20, v30, v31, v36, v37, v27, v28);
          v23 = mlir::Operation::create(v39);
          mlir::OpBuilder::insert((a3 + 8), v23);
          v24 = *(*(v23 + 6) + 16);
          mlir::OperationState::~OperationState(v39);
          if (v24 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
          {
            v25 = v23;
          }

          else
          {
            v25 = 0;
          }

          (*(*a3 + 8))(a3, a2, v25);
          if (v27 != &v29)
          {
            free(v27);
          }

          if (v30 != &v32)
          {
            free(v30);
          }

          if (v35 == 1 && (v33[0] & 1) == 0)
          {
            MEMORY[0x25F891030](v34, 4);
          }

          if (v36 != &v38)
          {
            free(v36);
          }

          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.extract_slice";
    v5[3] = 20;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TensorCastExtractSlice>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TensorCastExtractSlice]";
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

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpFoldResult,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>>(a1, a3, a2);
  if (a2)
  {
    v6 = result;
    v7 = (*a1 + (*(a1 + 8) << 6));
    v8 = a2;
    do
    {
      *v7 = v7 + 2;
      v7[1] = 0x600000000;
      if (*(v6 + 8))
      {
        result = llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(v7, v6);
      }

      v7 += 8;
      --v8;
    }

    while (v8);
  }

  *(a1 + 8) += a2;
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpFoldResult,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void anonymous namespace::SingleInputConcatOp::~SingleInputConcatOp(_anonymous_namespace_::SingleInputConcatOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SingleInputConcatOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 1)
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*(a2 + 72) + 24);
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v8 + 32));
  v17[0] = v8;
  v17[1] = v9;
  v18[0] = &v19;
  v18[1] = 0x400000000;
  v20[0] = v21;
  v20[1] = 0x400000000;
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
  v15 = v7;
  __src = v6;
  v10 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v18, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v20, &__src, v17);
  v11 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert((a3 + 8), v11);
  v12 = *(*(v11 + 6) + 16);
  mlir::OperationState::~OperationState(v17);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  (*(*a3 + 8))(a3, a2, v13);
  return v10;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SingleInputConcatOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SingleInputConcatOp]";
  v6 = 104;
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void anonymous namespace::DimOfCastOp::~DimOfCastOp(_anonymous_namespace_::DimOfCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16) + 120;
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = v4 + 16 * v7 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v10 = *(*(v8 + 72) + 24);
  v11 = *(v3 + 56);
  v12 = *(a2 + 24);
  v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**v12 + 32));
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::tensor::DimOp::build(a3 + 1, v17, v10, v11);
  v14 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert((a3 + 1), v14);
  v15 = *(*(v14 + 6) + 16);
  mlir::OperationState::~OperationState(v17);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  (*(*a3 + 8))(a3, a2, v16);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfCastOp]";
  v6 = 96;
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

void anonymous namespace::DimOfDestStyleOp::~DimOfDestStyleOp(_anonymous_namespace_::DimOfDestStyleOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfDestStyleOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = *(*(a2 + 72) + 24);
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    result = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    result = v8 + 120;
    if (v8 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v6 + 16 * v7 + 16;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::DestinationStyleOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DestinationStyleOpInterface,mlir::Operation *,void>>::doCastIfPossible(result);
LABEL_12:
  v18[0] = result;
  v18[1] = v10;
  if (result)
  {
    v11 = *(v5 + 8) & 7;
    if (v11 == 6)
    {
      LODWORD(v11) = *(v5 + 16) + 6;
    }

    DpsInitOperand = mlir::DestinationStyleOpInterface::getDpsInitOperand(v18, v11);
    (*(*a3 + 40))(a3, a2);
    v13 = *(a2 + 72);
    v14 = *(DpsInitOperand + 24);
    v15 = v13[1];
    if (v15)
    {
      v16 = *v13;
      *v15 = *v13;
      if (v16)
      {
        *(v16 + 8) = v13[1];
      }
    }

    v13[3] = v14;
    v17 = *v14;
    *v13 = *v14;
    v13[1] = v14;
    if (v17)
    {
      *(v17 + 8) = v13;
    }

    *v14 = v13;
    (*(*a3 + 48))(a3, a2);
    return 1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfDestStyleOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfDestStyleOp]";
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

void anonymous namespace::DimOfReshapeOp::~DimOfReshapeOp(_anonymous_namespace_::DimOfReshapeOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfReshapeOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
  {
    return 0;
  }

  *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v10 = *(a2 + 24);
  v11 = *(*(v7 + 72) + 56);
  v18 = *(*(a2 + 72) + 56);
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v10 + 32));
  v19[0] = v10;
  v19[1] = v12;
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
  mlir::tensor::ExtractOp::build(v12, v19, v11, &v18, 1);
  v13 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert((a3 + 8), v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(v19);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v19[0] = (v15 - 16);
  v16 = *(v15 - 1);
  v17 = *(a2 - 8);
  if ((v17 ^ v16) >= 8)
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFF8;
    v19[0] = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v10, &v18, v19) - 16;
  }

  v8 = 1;
  (**a3)(a3, a2, v19, 1);
  return v8;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a1, *(**a2 + 32));
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
  mlir::arith::IndexCastOp::build(a1, v12, *a3, *a4);
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "tensor.extract";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfReshapeOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfReshapeOp]";
  v6 = 99;
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

void anonymous namespace::FoldEmptyTensorWithCastOp::~FoldEmptyTensorWithCastOp(_anonymous_namespace_::FoldEmptyTensorWithCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldEmptyTensorWithCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v70[6] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  v7 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::tensor::preservesStaticInformation((v6 & 0xFFFFFFFFFFFFFFF8), v7))
  {
    return 0;
  }

  v8 = (~v6 & 7) != 0 ? v5 : 0;
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      return 0;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    return 0;
  }

  v15 = v7[1];
  v14 = v7[2];
  v52 = v54;
  v53 = 0x600000000;
  v55 = *(***(v11 + 24) + 32);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (*(v11 + 36))
  {
    v16 = v11 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 16) <= 0)
  {
    v49 = v51;
    v50 = 0x600000000;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(v17 + 8);
      if (*(v20 + 8 * v19) == 0x8000000000000000)
      {
        v21 = v18++;
        v22 = *(*(v11 + 72) + 32 * v21 + 24) | 4;
      }

      else
      {
        v22 = mlir::Builder::getIndexAttr(&v55, *(v20 + 8 * v19)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v52, v22);
      ++v19;
      if (*(v11 + 36))
      {
        v23 = v11 - 16;
      }

      else
      {
        v23 = 0;
      }

      v17 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v19 < *(v17 + 16));
    v24 = v53;
    v49 = v51;
    v50 = 0x600000000;
    if (v53 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v51, v53, 8);
      v24 = v53;
    }

    if (v14 && v24)
    {
      v25 = v52;
      v26 = 8 * v24 - 8;
      v27 = 8 * v14 - 8;
      while (1)
      {
        v28 = *v15;
        v29 = *v25 & 0xFFFFFFFFFFFFFFF8;
        if ((*v25 & 4) != 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = *v25 & 0xFFFFFFFFFFFFFFF8;
        }

        if (v30)
        {
          if (v28 == 0x8000000000000000 || (v55 = v30, v28 != mlir::IntegerAttr::getInt(&v55)))
          {
            v55 = "mismatch in static value of shape of empty tensor result and cast result";
            v59 = 259;
            v68 = &v55;
            v45 = a3[2];
            if (v45 && v45[2] == 1)
            {
              (*(*v45 + 88))(v45, *(v11 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::EmptyOp &>(mlir::tensor::EmptyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v68);
            }

            v12 = 0;
            goto LABEL_57;
          }
        }

        else
        {
          v29 = *v25;
          if (v28 != 0x8000000000000000)
          {
            v29 = mlir::Builder::getIndexAttr((a3 + 1), *v15) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v49, v29);
        if (v27)
        {
          ++v15;
          ++v25;
          v31 = v26;
          v26 -= 8;
          v27 -= 8;
          if (v31)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v32 = v7[3];
  v33 = *(a2 + 24);
  v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(*(**v33 + 32));
  v55 = v33;
  v56 = v34;
  v57 = &v59;
  v58 = 0x400000000;
  v60[0] = v61;
  v60[1] = 0x400000000;
  v61[4] = v62;
  v61[5] = 0x400000000;
  v62[8] = 4;
  v62[9] = v63;
  v62[10] = 0x100000000;
  v63[1] = v64;
  v63[2] = 0x100000000;
  v64[1] = 0;
  v64[2] = 0;
  v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v64[4] = 0;
  v64[6] = 0;
  v35 = v49;
  v68 = v70;
  v69 = 0x600000000;
  v65 = v67;
  v66 = 0x600000000;
  if (v50)
  {
    v36 = 8 * v50;
    do
    {
      v37 = *v35++;
      mlir::dispatchIndexOpFoldResult(v37, &v65, &v68);
      v36 -= 8;
    }

    while (v36);
    v38 = v68;
    v39 = v69;
    v40 = v65;
    v41 = v66;
  }

  else
  {
    v41 = 0;
    v39 = 0;
    v40 = v67;
    v38 = v70;
  }

  *&__src = v38;
  *(&__src + 1) = v39;
  v46 = 0;
  v47 = v32;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v32 + 32), &__src, &v47, &v46);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v57, v40 & 0xFFFFFFFFFFFFFFF9, 0, v40 & 0xFFFFFFFFFFFFFFF9, v41);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v60, &__src, &__src + 8);
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  v42 = mlir::Operation::create(&v55);
  mlir::OpBuilder::insert((a3 + 1), v42);
  v43 = *(*(v42 + 6) + 16);
  mlir::OperationState::~OperationState(&v55);
  if (v43 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  (*(*a3 + 8))(a3, a2, v44);
  v12 = 1;
LABEL_57:
  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldEmptyTensorWithCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithCastOp]";
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

void anonymous namespace::FoldEmptyTensorWithDimOp::~FoldEmptyTensorWithDimOp(_anonymous_namespace_::FoldEmptyTensorWithDimOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldEmptyTensorWithDimOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  v7 = *(*(a2 + 72) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = ConstantIntValue;
  v9 = *(v7 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v7 + 24 * *(v7 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      return 0;
    }
  }

  else
  {
    v11 = v7 + 16 * v9 + 16;
  }

  v12 = 0;
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id && (v6 & 1) != 0 && (v8 & 0x8000000000000000) == 0)
  {
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v8 >= *(v14 + 16) || *(*(v14 + 8) + 8 * v8) != 0x8000000000000000)
    {
      return 0;
    }

    DynamicSize = mlir::tensor::EmptyOp::getDynamicSize(v11, v8);
    v12 = 1;
    (**a3)(a3, a2, &DynamicSize, 1);
  }

  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldEmptyTensorWithDimOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithDimOp]";
  v6 = 109;
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

void anonymous namespace::ReplaceEmptyTensorStaticShapeDims::~ReplaceEmptyTensorStaticShapeDims(_anonymous_namespace_::ReplaceEmptyTensorStaticShapeDims *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ReplaceEmptyTensorStaticShapeDims::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v28 = v30;
  v29 = 0x600000000;
  v5 = a2 - 16;
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 68);
    v9 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v8 = 0;
    v9 = 2;
  }

  v10 = foldDynamicToStaticDimSizes((v7 & 0xFFFFFFFFFFFFFFF8), v9, v8, &v28);
  if (*(a2 + 36))
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    v14 = *(a2 + 24);
    v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(*(**v14 + 32));
    v31 = v14;
    v32 = v15;
    v33 = v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0x400000000;
    v39 = v41;
    v40 = 0x400000000;
    v42 = 4;
    v43 = &v45;
    v44 = 0x100000000;
    v46 = &v48;
    v47 = 0x100000000;
    v49 = 0;
    v50 = 0;
    v51 = &mlir::detail::TypeIDResolver<void,void>::id;
    v52 = 0;
    v53 = 0;
    __src = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v33, v28 & 0xFFFFFFFFFFFFFFF9, 0, v28 & 0xFFFFFFFFFFFFFFF9, v29);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v36, &__src, &v28);
    v16 = mlir::Operation::create(&v31);
    mlir::OpBuilder::insert((a3 + 8), v16);
    v17 = *(*(v16 + 6) + 16);
    mlir::OperationState::~OperationState(&v31);
    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
    {
      v16 = 0;
    }

    if (*(a2 + 36))
    {
      v18 = v5;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(a2 + 24);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v20 + 32));
    v31 = v20;
    v32 = v21;
    v33 = v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0x400000000;
    v39 = v41;
    v40 = 0x400000000;
    v42 = 4;
    v43 = &v45;
    v44 = 0x100000000;
    v46 = &v48;
    v47 = 0x100000000;
    v49 = 0;
    v50 = 0;
    v51 = &mlir::detail::TypeIDResolver<void,void>::id;
    v52 = 0;
    v53 = 0;
    v26 = v16 - 16;
    __src = v19;
    v12 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v33, &v26, 0, &v26, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v36, &__src, &v28);
    v22 = mlir::Operation::create(&v31);
    mlir::OpBuilder::insert((a3 + 8), v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(&v31);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    (*(*a3 + 8))(a3, a2, v24);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v12;
}

uint64_t foldDynamicToStaticDimSizes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v25[0] = a2;
  v25[1] = a3;
  v6 = a1[1];
  v7 = a1[2];
  v22 = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v22, v6, &v6[8 * v7]);
  v8 = a1[2];
  if (v8 >= 1)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      if (*(a1[1] + 8 * i) == 0x8000000000000000)
      {
        v11 = (v9 + 1);
        v12 = mlir::ValueRange::dereference_iterator(v25, v9);
        ConstantIntValue = mlir::getConstantIntValue(v12 | 4);
        if ((v14 & 1) == 0 || (ConstantIntValue & 0x8000000000000000) != 0)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, v12);
        }

        else
        {
          *(v22 + i) = ConstantIntValue;
        }
      }

      else
      {
        v11 = v9;
      }

      v9 = v11;
    }
  }

  v15 = a1[3];
  v16 = a1[4];
  *&v21 = v22;
  *(&v21 + 1) = v23;
  v19 = v16;
  v20 = v15;
  v17 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &v21, &v20, &v19);
  if (v22 != v24)
  {
    free(v22);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ReplaceEmptyTensorStaticShapeDims>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ReplaceEmptyTensorStaticShapeDims]";
  v6 = 118;
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

void anonymous namespace::ExtractFromTensorCast::~ExtractFromTensorCast(_anonymous_namespace_::ExtractFromTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractFromTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v4 = *(mlir::tensor::ExtractOp::getODSOperands(&v19, 0) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16) + 120;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = v4 + 16 * v5 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v7 = *(*(v6 + 72) + 24);
  if (*(*(*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  v10 = v19;
  v8 = 1;
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v19, 1u);
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v14 + 32));
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v21;
  v20[3] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  mlir::tensor::ExtractOp::build(v15, v20, v7, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v13);
  v16 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert((a3 + 8), v16);
  v17 = *(*(v16 + 6) + 16);
  mlir::OperationState::~OperationState(v20);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(*a3 + 8))(a3, v10, v18);
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractFromTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorCast]";
  v6 = 106;
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

void anonymous namespace::ExtractElementFromIndexCast::~ExtractElementFromIndexCast(_anonymous_namespace_::ExtractElementFromIndexCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractElementFromIndexCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v4 = *(a2 + 24);
  v5 = *(mlir::tensor::ExtractOp::getODSOperands(&v32, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    return 0;
  }

  v11 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
  v14 = v12;
  if (v12)
  {
    v12 = (*(v13 + 8))(v13, v12);
  }

  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  v30 = v15;
  v16 = *(*(v8 + 72) + 24);
  v9 = 1;
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v32, 1u);
  v31 = v18;
  v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v4 + 32));
  v35 = v4;
  v36 = v19;
  v37 = v39;
  v38 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v46 = 4;
  v47 = &v49;
  v48 = 0x100000000;
  v50 = &v52;
  v51 = 0x100000000;
  v53 = 0;
  v54 = 0;
  v55 = &mlir::detail::TypeIDResolver<void,void>::id;
  v56 = 0;
  v57 = 0;
  v33 = v16;
  __src = v30;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v37, &v33, 0, &v33, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v37, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, 0, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v31);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v40, &__src, &v35);
  v20 = mlir::Operation::create(&v35);
  mlir::OpBuilder::insert((a3 + 8), v20);
  v21 = *(*(v20 + 6) + 16);
  mlir::OperationState::~OperationState(&v35);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = v32;
  v24 = *(v32 - 8);
  v25 = *(v32 + 24);
  v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a3 + 8, *(**v25 + 32));
  v35 = v25;
  v36 = v26;
  v37 = v39;
  v38 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v46 = 4;
  v47 = &v49;
  v48 = 0x100000000;
  v50 = &v52;
  v51 = 0x100000000;
  v53 = 0;
  v54 = 0;
  v55 = &mlir::detail::TypeIDResolver<void,void>::id;
  v56 = 0;
  v57 = 0;
  mlir::arith::IndexCastOp::build(a3 + 8, &v35, v24 & 0xFFFFFFFFFFFFFFF8, (v22 - 16));
  v27 = mlir::Operation::create(&v35);
  mlir::OpBuilder::insert((a3 + 8), v27);
  v28 = *(*(v27 + 6) + 16);
  mlir::OperationState::~OperationState(&v35);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  (*(*a3 + 8))(a3, v23, v29);
  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractElementFromIndexCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractElementFromIndexCast]";
  v6 = 112;
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

void anonymous namespace::ExtractFromTensorGenerate::~ExtractFromTensorGenerate(_anonymous_namespace_::ExtractFromTensorGenerate *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractFromTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  v41 = a2;
  v5 = *(mlir::tensor::ExtractOp::getODSOperands(&v41, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || !mlir::wouldOpBeTriviallyDead(v8, v4))
  {
    return 0;
  }

  v37 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v10 = *(v8 + 40);
  v9 = *(v8 + 44);
  v34 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v35 = 0;
  v36 = 0;
  v11 = *(((v8 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v10 + 8);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v14 = v12[6];
  v13 = v12[7];
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v41, 1u);
  if (v13 != v14 && v16 != 0)
  {
    v18 = v16 - 1;
    v19 = (ODSOperands + 24);
    v20 = v14 + 8;
    do
    {
      v21 = *v19;
      v19 += 4;
      v42 = *(v20 - 8);
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v33, &v42) = v21;
      v23 = v18-- != 0;
      if (v20 == v13)
      {
        break;
      }

      v20 += 8;
    }

    while (v23);
  }

  v26 = v12[4];
  v24 = v12[5];
  v25 = v12 + 4;
  if (v24 != v25 && v24 != v26)
  {
    do
    {
      mlir::OpBuilder::clone((a3 + 1), v24, v33);
      v24 = *(v24 + 8);
    }

    while (v24 != v26);
    v26 = *v25;
  }

  v28 = v41;
  v29 = *(*(v26 + 72) + 24);
  v42 = v29;
  v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v33, &v42);
  if (v30 && v30 != v33[0] + 16 * v34)
  {
    v29 = *(v30 + 8);
  }

  v42 = v29;
  v31 = 1;
  (**a3)(a3, v28, &v42, 1);
  MEMORY[0x25F891030](v38, 8);
  MEMORY[0x25F891030](v35, 8);
  MEMORY[0x25F891030](v33[0], 8);
  return v31;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractFromTensorGenerate>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorGenerate]";
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

void anonymous namespace::StaticTensorGenerate::~StaticTensorGenerate(_anonymous_namespace_::StaticTensorGenerate *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::StaticTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  v4 = *(a2 - 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 68);
    v6 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v5 = 0;
    v6 = 2;
  }

  v7 = foldDynamicToStaticDimSizes((v4 & 0xFFFFFFFFFFFFFFF8), v6, v5, &v17);
  if (v7 != (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v8 = v7;
    v9 = *(a2 + 24);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id, *(**v9 + 32));
    if (v11)
    {
      v20[0] = v9;
      v20[1] = v10;
      v21[0] = v22;
      v21[1] = 0x400000000;
      v22[4] = v23;
      v22[5] = 0x400000000;
      v23[4] = v24;
      v23[5] = 0x400000000;
      v24[8] = 4;
      v24[9] = v25;
      v24[10] = 0x100000000;
      v25[1] = v26;
      v25[2] = 0x100000000;
      v26[1] = 0;
      v26[2] = 0;
      v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v26[4] = 0;
      v26[6] = 0;
      __src[0] = v8;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v21, v17 & 0xFFFFFFFFFFFFFFF9, 0, v17 & 0xFFFFFFFFFFFFFFF9, v18);
      mlir::OperationState::addRegion(v20);
    }

    v16 = 1283;
    __src[2] = "tensor.generate";
    __src[3] = 15;
    v14 = 259;
    llvm::operator+(__src, &v13, v20);
    llvm::report_fatal_error(v20, 1);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::StaticTensorGenerate>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::StaticTensorGenerate]";
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

uint64_t llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = 32 * v5;
        do
        {
          llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v7, v4);
          v4 += 32;
          v7 += 32;
          v8 -= 32;
        }

        while (v8);
        v9 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v9 = *a1;
      }

      v18 = v9 + 32 * v6;
      if (v18 != v7)
      {
        v19 = (v18 - 16);
        do
        {
          v20 = *(v19 - 2);
          if (v19 != v20)
          {
            free(v20);
          }

          v21 = v19 - 16;
          v19 -= 32;
        }

        while (v21 != v7);
      }

      goto LABEL_28;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v10 = *a1;
        v11 = 32 * v6;
        do
        {
          llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v10, v4);
          v4 += 32;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
LABEL_16:
        v12 = *(a2 + 8);
        if (v6 != v12)
        {
          v13 = *a2;
          v14 = *a1;
          v15 = 32 * v6;
          v16 = 32 * v12;
          do
          {
            v17 = (v14 + v15);
            *v17 = v14 + v15 + 16;
            v17[1] = 0x200000000;
            if (*(v13 + v15 + 8))
            {
              llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v17, v13 + v15);
            }

            v14 += 32;
            v16 -= 32;
            v13 += 32;
          }

          while (v15 != v16);
        }

LABEL_28:
        *(a1 + 8) = v5;
        llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(a2);
        return a1;
      }
    }

    else
    {
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(a1);
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 32 * v5 - 16;
    v7 = -32 * v5;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
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

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 32 * v2 - 16;
    v4 = -32 * v2;
    do
    {
      v5 = *(v3 - 16);
      if (v3 != v5)
      {
        free(v5);
      }

      v3 -= 32;
      v4 += 32;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, const char **a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(v4, **a1, a2);
  v2 = v5;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v4);
  return (v2 & 1) == 0;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, const char **a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(v4, **a1, a2);
  v2 = v5;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v4);
  return (v2 & 1) == 0;
}

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, void **a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v5 + 16 * v6 + 16);
  }

  if (*(*(v8 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    return 0;
  }

  if (*(this + 9))
  {
    v10 = this - 16;
  }

  else
  {
    v10 = 0;
  }

  v27 = (*(v10 + 1) & 0xFFFFFFFFFFFFFFF8);
  v24[0] = mlir::TensorType::operator mlir::ShapedType(&v27);
  v24[1] = v11;
  v12 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v12[5] + 8))(v12[5], v12[4]), result))
  {
    v13 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v13[5] + 8))(v13[5], v13[4]), result))
    {
      v14 = *(this + 9) ? this - 16 : 0;
      v15 = (*(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v15[5] + 8))(v15[5], v15[4]), result))
      {
        mlir::tensor::ExpandShapeOp::getReassociationIndices(&v27, v8);
        v16 = v27;
        v17 = v28;
        mlir::tensor::ExpandShapeOp::getReassociationIndices(&v25, this);
        mlir::composeReassociationIndices(v16, v17, v25, v26, v30);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v25);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v27);
        if (v31 != 1)
        {
          return 0;
        }

        v18 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
        v19 = *(v18 + 24);
        v20 = *(v18 + 32) >> 3;
        ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(this, 1u);
        mlir::getMixedValues(v19, v20, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v22, a3[1], &v27);
        v25 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24);
        v23 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a3 + 1), *(this + 3), v24, &v25, v30, &v27);
        ((*a3)[1])(a3, this, v23);
        if (v27 != &v29)
        {
          free(v27);
        }

        if (v31)
        {
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v30);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a1 + 8), *(a2 + 24), a3, a4, a5, a6);
  v9 = *(*a1 + 8);

  return v9(a1, a2, v8);
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::Builder *a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**a2 + 32));
  v16[0] = a2;
  v16[1] = v12;
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
  mlir::tensor::ExpandShapeOp::build(a1, v16, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.expand_shape";
    v5[3] = 19;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp, mlir::ReshapeOpKind::kExpand>]";
  v6 = 157;
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

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v5 + 16 * v6 + 16;
    goto LABEL_8;
  }

  v7 = v5 + 24 * *(v5 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
LABEL_8:
    if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      return 0;
    }

    v61 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v11 = mlir::TensorType::operator mlir::ShapedType(&v61);
    v13 = v12;
    v14 = *(this + 9) ? this - 16 : 0;
    v61 = (*(v14 + 1) & 0xFFFFFFFFFFFFFFF8);
    v15 = mlir::TensorType::operator mlir::ShapedType(&v61);
    v17 = v16;
    v53[0] = v15;
    v53[1] = v16;
    v18 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v18[5] + 8))())
    {
      return 0;
    }

    v19 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v19[5] + 8))())
    {
      return 0;
    }

    v20 = *(v8 + 36) ? v8 - 16 : 0;
    v21 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v21[5] + 8))())
    {
      return 0;
    }

    (*(v13 + 24))(v13, v11);
    v23 = v22;
    v17[3](v17, v15);
    if (v23 == v24)
    {
      return 0;
    }

    v25 = v24;
    mlir::tensor::CollapseShapeOp::getReassociationIndices(&v61, v8);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v59, this);
    if (v23 <= v25)
    {
      v51 = v59;
      v36 = v60;
      v37 = v61;
      v38 = v62;
      v39 = (v17[3])(v17, v15);
      v41 = v40;
      v42 = (*(v13 + 24))(v13, v11);
      mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v57, v51, v36, v37, v38, v39, v41, v44, v42, v43);
      if (v58 == 1)
      {
        v45 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
        v46 = *(v45 + 24);
        v47 = *(v45 + 32) >> 3;
        ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(this, 1u);
        mlir::getMixedValues(v46, v47, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v49, *(a3 + 8), v54);
        v52 = *(*(v8 + 72) + 24);
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3, this, v53, &v52, v57, v54);
        if (v54[0] != &v55)
        {
          free(v54[0]);
        }

        if ((v58 & 1) == 0)
        {
          goto LABEL_34;
        }

        v35 = v57;
        goto LABEL_33;
      }
    }

    else
    {
      v50 = v61;
      v26 = v62;
      v27 = v59;
      v28 = v60;
      v29 = (*(v13 + 24))(v13, v11);
      v31 = v30;
      v32 = (v17[3])(v17, v15);
      mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v54, v50, v26, v27, v28, v29, v31, v34, v32, v33);
      if (v56 == 1)
      {
        v57[0] = *(*(v8 + 72) + 24);
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, this, v53, v57, v54);
        if ((v56 & 1) == 0)
        {
LABEL_34:
          v9 = 1;
LABEL_36:
          llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v59);
          llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v61);
          return v9;
        }

        v35 = v54;
LABEL_33:
        llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v35);
        goto LABEL_34;
      }
    }

    v9 = 0;
    goto LABEL_36;
  }

  return 0;
}

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v10 = a9;
  v39[16] = *MEMORY[0x277D85DE8];
  v37 = v39;
  v38 = 0x400000000;
  if (a3)
  {
    v11 = a4;
    v12 = a2;
    v30 = a2 + 32 * a3;
    v13 = &a4[4 * a5];
    v31 = a6;
    do
    {
      if (v11 == v13)
      {
        break;
      }

      v14 = *(v12 + 8);
      v15 = (a6 + 8 * **v12);
      v16 = **v11;
      v17 = *(v11 + 2);
      if (v14 == v17)
      {
        v18 = 8 * v14;
        if (memcmp((a6 + 8 * **v12), (v10 + 8 * v16), 8 * v14))
        {
          goto LABEL_31;
        }

        if (v14)
        {
          v19 = 0;
          do
          {
            v20 = *v15++;
            if (v20 == 0x8000000000000000)
            {
              ++v19;
            }

            v18 -= 8;
          }

          while (v18);
          if (v19 > 1)
          {
LABEL_31:
            *a1 = 0;
            *(a1 + 48) = 0;
            return llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v37);
          }

          for (i = 0; i != v14; ++i)
          {
            LODWORD(v32[0]) = 1;
            v34 = i + **v12;
            llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::emplace_back<int,long long>(&v37, v32, &v34);
          }
        }
      }

      else
      {
        mlir::getReassociationIndicesForCollapse(a6 + 8 * **v12, *(v12 + 8), v10 + 8 * v16, v17, &v34);
        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (!v35)
        {
          goto LABEL_25;
        }

        v22 = v34;
        v23 = v34 + 32 * v35;
        do
        {
          v32[0] = v33;
          v32[1] = 0x200000000;
          v24 = *(v22 + 8);
          if (v24)
          {
            v25 = *v22;
            v26 = 8 * v24;
            do
            {
              v27 = *v25++;
              llvm::SmallVectorTemplateBase<long long,true>::push_back(v32, **v12 + v27);
              v26 -= 8;
            }

            while (v26);
          }

          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v37, v32);
          if (v32[0] != v33)
          {
            free(v32[0]);
          }

          v22 += 32;
        }

        while (v22 != v23);
        if (v36)
        {
LABEL_25:
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v34);
        }
      }

      v12 += 32;
      v11 += 4;
      v10 = a9;
      a6 = v31;
    }

    while (v12 != v30);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x100000000;
    if (v38)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a1, &v37);
    }

    *(a1 + 48) = 1;
  }

  else
  {
    mlir::getReassociationIndicesForCollapse(a6, a7, a9, a10, a1);
  }

  return llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v37);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>((a1 + 8), *(a2 + 24), a3, a4, a5);
  v8 = *(*a1 + 8);

  return v8(a1, a2, v7);
}

void *llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::emplace_back<int,long long>(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<int,long long>(a1, a2, a3);
  }

  else
  {
    v5 = *a1 + 32 * v4;
    v6 = *a2;
    *v5 = v5 + 16;
    *(v5 + 8) = 0x200000000;
    llvm::SmallVectorImpl<long long>::assign(v5, v6, *a3);
    v7 = (*(a1 + 8) + 1);
    *(a1 + 8) = v7;
    return (*a1 + 32 * v7 - 32);
  }
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<int,long long>(uint64_t a1, int *a2, uint64_t *a3)
{
  v13 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v13);
  v8 = &v7[4 * *(a1 + 8)];
  v9 = *a2;
  *v8 = v8 + 2;
  v8[1] = 0x200000000;
  llvm::SmallVectorImpl<long long>::assign(v8, v9, *a3);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v7);
  v10 = v13;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  v11 = (*(a1 + 8) + 1);
  *(a1 + 8) = v11;
  *(a1 + 12) = v10;
  return &v7[4 * v11 - 4];
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(mlir::Builder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**a2 + 32));
  v14[0] = a2;
  v14[1] = v10;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  mlir::tensor::CollapseShapeOp::build(a1, v14, *a3, *a4, *a5, *(a5 + 8));
  v11 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.collapse_shape";
    v5[3] = 21;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp, mlir::tensor::CollapseShapeOp>]";
  v6 = 153;
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

void anonymous namespace::ConvertToStaticExpandShape::~ConvertToStaticExpandShape(_anonymous_namespace_::ConvertToStaticExpandShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConvertToStaticExpandShape::matchAndRewrite(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, uint64_t a3)
{
  v4 = a2;
  v115 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(a2, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v8 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::tensor::preservesStaticInformation((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8), v8))
  {
    return 0;
  }

  v9 = v8[1];
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v91, v4);
  if (*(v4 + 9))
  {
    v10 = v4 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 1) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v88 = v90;
  v89 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v88, v12, &v12[8 * v13]);
  v85 = v87;
  v86 = 0x600000000;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(v4, 1u);
  v74 = a3;
  if (v92)
  {
    v15 = ODSOperands;
    v72 = v4;
    v16 = 0;
    v17 = 0;
    v18 = v91;
    v75 = v91 + 32 * v92;
    while (1)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        break;
      }

LABEL_40:
      ++v17;
      v18 += 32;
      if (v18 == v75)
      {
        v30 = v86;
        v4 = v72;
        a3 = v74;
        goto LABEL_45;
      }
    }

    v20 = *v18;
    v21 = 8 * v19;
    while (1)
    {
      v22 = *v20;
      if (*(v88 + *v20) == 0x8000000000000000)
      {
        v23 = *(v15 + 32 * v16++ + 24);
        if (*(v9 + 8 * v17) != 0x8000000000000000)
        {
          DWORD2(v93) = 1;
          *&v93 = 0;
          __src = &v93;
          if ((~*(v23 + 8) & 7) != 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = *(v24 + 8) & 7;
            if (v25 == 6)
            {
              v26 = v24 + 24 * *(v24 + 16);
              v27 = (v26 + 120);
              if (v26 == -120)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v27 = (v24 + 16 * v25 + 16);
            }

            if (!mlir::detail::constant_int_value_binder::match(&__src, v27))
            {
              goto LABEL_33;
            }

            v28 = DWORD2(v93);
            if (DWORD2(v93) > 0x40)
            {
              v29 = *v93;
            }

            else
            {
              v29 = (v93 << -BYTE8(v93)) >> -BYTE8(v93);
              if (!DWORD2(v93))
              {
                v29 = 0;
              }
            }

            *(v88 + v22) = v29;
          }

          else
          {
LABEL_33:
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v85, v23);
            v28 = DWORD2(v93);
          }

          if (v28 >= 0x41 && v93)
          {
            MEMORY[0x25F891010](v93, 0x1000C8000313F17);
          }

          goto LABEL_39;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v85, v23);
      }

LABEL_39:
      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_40;
      }
    }
  }

  v30 = 0;
LABEL_45:
  mlir::tensor::ExpandShapeOp::getODSOperands(v4, 1u);
  if (v33 == v30)
  {
    v31 = 0;
  }

  else
  {
    v34 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v82 = v84;
    v83 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v82, v34, 1);
    v35 = v83;
    v36 = v88;
    if (v83)
    {
      v37 = 0;
      v38 = v91;
      v39 = v82;
      do
      {
        v40 = v38 + 32 * v37;
        v41 = *(v40 + 8);
        if (v41)
        {
          v42 = *v40;
          v43 = v82;
          v44 = 8 * v41;
          while (1)
          {
            v45 = v36[*v42];
            if (v45 == 0x8000000000000000)
            {
              break;
            }

            v43[v37] *= v45;
            ++v42;
            v44 -= 8;
            if (!v44)
            {
              goto LABEL_55;
            }
          }

          v39[v37] = 0x8000000000000000;
        }

LABEL_55:
        ++v37;
      }

      while (v37 != v35);
    }

    v46 = (a3 + 8);
    mlir::getMixedValues(v36, v89, v85 & 0xFFFFFFFFFFFFFFF9, v86, *(a3 + 8), &v79);
    v47 = v82;
    v48 = v83;
    v49 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
    *&v93 = v47;
    *(&v93 + 1) = v48;
    v76 = 0;
    __src = v49;
    v50 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v49 + 32), &v93, &__src, &v76);
    v51 = v88;
    v52 = v89;
    v53 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
    *&v93 = v51;
    *(&v93 + 1) = v52;
    v76 = 0;
    __src = v53;
    v73 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v53 + 32), &v93, &__src, &v76);
    v54 = *(v4 + 3);
    v55 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24);
    v56 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v46, *(**v54 + 32));
    *&v93 = v54;
    *(&v93 + 1) = v56;
    v94 = v96;
    v95 = 0x400000000;
    v97 = v99;
    v98 = 0x400000000;
    v100 = v102;
    v101 = 0x400000000;
    v103 = 4;
    v104 = &v106;
    v105 = 0x100000000;
    v107 = &v109;
    v108 = 0x100000000;
    v111 = 0;
    v110 = 0;
    v112 = &mlir::detail::TypeIDResolver<void,void>::id;
    v113 = 0;
    v114 = 0;
    v76 = v55;
    __src = v50;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v94, &v76, 0, &v76, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v97, &__src, v78);
    v57 = mlir::Operation::create(&v93);
    mlir::OpBuilder::insert(v46, v57);
    v58 = *(*(v57 + 6) + 16);
    mlir::OperationState::~OperationState(&v93);
    if (v58 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v59 = v57;
    }

    else
    {
      v59 = 0;
    }

    v60 = *(v4 + 3);
    v61 = (v59 - 16);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&__src, v4);
    v62 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**v60 + 32));
    *&v93 = v60;
    *(&v93 + 1) = v62;
    v94 = v96;
    v95 = 0x400000000;
    v97 = v99;
    v98 = 0x400000000;
    v100 = v102;
    v101 = 0x400000000;
    v103 = 4;
    v104 = &v106;
    v105 = 0x100000000;
    v107 = &v109;
    v108 = 0x100000000;
    v111 = 0;
    v110 = 0;
    v112 = &mlir::detail::TypeIDResolver<void,void>::id;
    v113 = 0;
    v114 = 0;
    mlir::tensor::ExpandShapeOp::build(v46, &v93, v73, v61, __src, v78[0], v79, v80);
    v63 = mlir::Operation::create(&v93);
    mlir::OpBuilder::insert(v46, v63);
    v64 = *(*(v63 + 6) + 16);
    mlir::OperationState::~OperationState(&v93);
    if (v64 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v63 = 0;
    }

    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&__src);
    v65 = *(v4 - 1) & 0xFFFFFFFFFFFFFFF8;
    if (*(v63 + 9))
    {
      v66 = (v63 - 16);
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v4 + 3);
    v68 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v46, *(**v67 + 32));
    *&v93 = v67;
    *(&v93 + 1) = v68;
    v94 = v96;
    v95 = 0x400000000;
    v97 = v99;
    v98 = 0x400000000;
    v100 = v102;
    v101 = 0x400000000;
    v103 = 4;
    v104 = &v106;
    v105 = 0x100000000;
    v107 = &v109;
    v108 = 0x100000000;
    v111 = 0;
    v110 = 0;
    v112 = &mlir::detail::TypeIDResolver<void,void>::id;
    v113 = 0;
    v114 = 0;
    v76 = v66;
    __src = v65;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v94, &v76, 0, &v76, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v97, &__src, v78);
    v69 = mlir::Operation::create(&v93);
    mlir::OpBuilder::insert(v46, v69);
    v70 = *(*(v69 + 6) + 16);
    mlir::OperationState::~OperationState(&v93);
    if (v70 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v71 = v69;
    }

    else
    {
      v71 = 0;
    }

    (*(*v74 + 8))(v74, v4, v71);
    if (v79 != &v81)
    {
      free(v79);
    }

    if (v82 != v84)
    {
      free(v82);
    }

    v31 = 1;
  }

  if (v85 != v87)
  {
    free(v85);
  }

  if (v88 != v90)
  {
    free(v88);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v91);
  return v31;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConvertToStaticExpandShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConvertToStaticExpandShape]";
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v17 = 0;
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  Raw = &v17;
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&Raw, v8) || v17 == 0;
  if (v9 || *(v17 + 24) != 1)
  {
    return 0;
  }

  if (*(this + 9))
  {
    v10 = this - 16;
  }

  else
  {
    v10 = 0;
  }

  v15 = (*(v10 + 1) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v12, *(v17 + 32), *(v17 + 40));
  v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(this + 3), &Raw);
  (*(*a3 + 8))(a3, this, v13);
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v6;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v13, v8, v9);
  v10 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>]";
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v22 = v10;
  if (!v9)
  {
    return 0;
  }

  v12 = *(v7 + 36);
  v13 = v7 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v15 = v14[2];
  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(this + 9))
  {
    v18 = this - 16;
  }

  else
  {
    v18 = 0;
  }

  v21 = *(v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(mlir::tensor::SplatOp::getODSOperands(&v22, 0) + 24);
  v19 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(this + 3), &v21, &v20);
  (*(*a3 + 8))(a3, this, v19);
  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v17 = 1283;
    v16[2] = "tensor.splat";
    v16[3] = 12;
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  v18[0] = a2;
  v18[1] = v8;
  v19[0] = &v20;
  v19[1] = 0x400000000;
  v21[0] = &v22;
  v21[1] = 0x400000000;
  v23 = v25;
  v24 = 0x400000000;
  v26 = 4;
  v27 = v29;
  v28 = 0x100000000;
  v29[1] = v30;
  v29[2] = 0x100000000;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v30[4] = 0;
  v30[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v19, a4, 0, a4, 1);
  v26 = 0;
  v10 = v24;
  if (v24 > HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24, 16);
    v10 = v24;
  }

  LODWORD(v24) = v10;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v21, a3 | 2, 0, a3 | 2, 1);
  v11 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>]";
  v6 = 134;
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  result = (*(v13 + 16))(v13, v10);
  if (result)
  {
    v14 = (*(v13 + 24))(v13, v10);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      return 0;
    }

LABEL_19:
    v21 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v17 = *(v8 + 68);
      v18 = *(v8 + 72);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20[0] = v18;
    v20[1] = v17;
    v19 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(this + 3), &v21, v20);
    (*(*a3 + 8))(a3, this, v19);
    return 1;
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, const char **a3, void *a4)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v21 = 1283;
    v19 = "tensor.from_elements";
    v20 = 20;
    v16 = 259;
    llvm::operator+(&__src, &v15, v22);
    llvm::report_fatal_error(v22, 1);
  }

  v22[0] = a2;
  v22[1] = v8;
  v23[0] = &v24;
  v23[1] = 0x400000000;
  v25[0] = v26;
  v25[1] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[8] = 4;
  v27[9] = v28;
  v27[10] = 0x100000000;
  v28[1] = v29;
  v28[2] = 0x100000000;
  v29[1] = 0;
  v29[2] = 0;
  v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v29[4] = 0;
  v29[6] = 0;
  v10 = a4[1];
  v11 = *a4 & 0xFFFFFFFFFFFFFFF9;
  __src = *a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v23, v11 | 2, 0, v11 | 2, v10);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v25, &__src, v18);
  v12 = mlir::Operation::create(v22);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>]";
  v6 = 141;
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

void anonymous namespace::FoldDimOfExpandShape::~FoldDimOfExpandShape(_anonymous_namespace_::FoldDimOfExpandShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldDimOfExpandShape::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  v10 = *(*(v9 + 48) + 16);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(v3 + 56) | 4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = ConstantIntValue;
  v15 = *(v9 + 36) ? v9 - 16 : 0;
  v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v16 + 8) + 8 * ConstantIntValue) != 0x8000000000000000)
  {
    return 0;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v40, v9);
  v43 = v45;
  v44 = 0x400000000;
  if (v41)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v43, &v40);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v40);
  if (v44)
  {
    v17 = 0;
    v18 = v43;
    while (1)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        v20 = 8 * v19;
        v21 = *v18;
        while (*v21 != v14)
        {
          ++v21;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v21 = *v18;
      }

      if (v21 != (*v18 + 8 * v19))
      {
        break;
      }

LABEL_28:
      v17 = (v17 + 1);
      v18 += 32;
      if (v18 == &v43[4 * v44])
      {
        v17 = (((v44 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1);
        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v43);
  v39 = v17;
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v43, v11);
  v23 = &v43[4 * v17];
  v40 = v42;
  v41 = 0x200000000;
  if (*(v23 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v40, v23);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v43);
  if (v41)
  {
    v24 = v40;
    v25 = 8 * v41;
    v26 = 1;
    do
    {
      if (*v24 != v14)
      {
        v26 *= *(*(v16 + 8) + 8 * *v24);
      }

      ++v24;
      v25 -= 8;
    }

    while (v25);
  }

  else
  {
    v26 = 1;
  }

  v27 = *(a2 + 24);
  v43 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v11, 0) + 24);
  v38 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>((a3 + 8), v27, &v43, &v39) - 16;
  AffineDimOrSymbol = getAffineDimOrSymbol(7u, 0, *(***(a2 + 24) + 32));
  AffineConstantExpr = mlir::getAffineConstantExpr(v26, *AffineDimOrSymbol, v28);
  v36 = mlir::AffineExpr::floorDiv(&AffineDimOrSymbol, AffineConstantExpr, v30);
  v31 = *(a2 + 24);
  v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a3 + 8, *(**v31 + 32));
  v43 = v31;
  v44 = v32;
  v45[0] = v46;
  v45[1] = 0x400000000;
  v46[4] = v47;
  v46[5] = 0x400000000;
  v47[4] = v48;
  v47[5] = 0x400000000;
  v48[8] = 4;
  v48[9] = v49;
  v48[10] = 0x100000000;
  v49[1] = v50;
  v49[2] = 0x100000000;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v50[4] = 0;
  v50[6] = 0;
  mlir::affine::AffineApplyOp::build((a3 + 8), &v43, &v36, 1, &v38, 1);
  v33 = mlir::Operation::create(&v43);
  mlir::OpBuilder::insert((a3 + 8), v33);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(&v43);
  if (v34 == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  (*(*a3 + 8))(a3, a2, v35);
  if (v40 != v42)
  {
    free(v40);
  }

  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t *a3, mlir::OperationState **a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  v9 = *a3;
  v14 = *a4;
  v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v14);
  mlir::tensor::DimOp::build(a1, v15, v9, v10 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "affine.apply";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldDimOfExpandShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldDimOfExpandShape]";
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

void anonymous namespace::FoldDimOfCollapseShape::~FoldDimOfCollapseShape(_anonymous_namespace_::FoldDimOfCollapseShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldDimOfCollapseShape::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    return 0;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(v3 + 56) | 4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = ConstantIntValue;
  v13 = *(v9 + 36) ? v9 - 16 : 0;
  v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (ConstantIntValue >= *(v14 + 16) || *(*(v14 + 8) + 8 * ConstantIntValue) != 0x8000000000000000)
  {
    return 0;
  }

  mlir::tensor::CollapseShapeOp::getReassociationIndices(v31, v9);
  v15 = v31[0] + 32 * v12;
  v33 = v35;
  v34 = 0x200000000;
  if (*(v15 + 2))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v33, v15);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v31);
  v31[0] = v32;
  v31[1] = 0x600000000;
  v27 = 0;
  v28 = v30;
  v29 = 0x600000000;
  if (v34)
  {
    v16 = 0;
    v17 = v33;
    v18 = 8 * v34;
    do
    {
      v19 = *(a2 + 24);
      v26 = *(*(v9 + 72) + 24);
      v20 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>((a3 + 8), v19, &v26, v17);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v31, v20 - 16);
      AffineDimOrSymbol = getAffineDimOrSymbol(7u, v16, *(a3 + 8));
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v28, AffineDimOrSymbol);
      v23 = *(v28 + v29 - 1);
      if (v27)
      {
        v23 = mlir::AffineExpr::operator*(&v27, v23, v22);
      }

      v27 = v23;
      v16 = (v16 + 1);
      ++v17;
      v18 -= 8;
    }

    while (v18);
  }

  v24 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), *(a2 + 24), &v27, v31);
  (*(*a3 + 8))(a3, a2, v24);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a1, *(**a2 + 32));
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
  mlir::affine::AffineApplyOp::build(a1, v12, a3, 1, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldDimOfCollapseShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldDimOfCollapseShape]";
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v22 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19[0] = mlir::TensorType::operator mlir::ShapedType(&v22);
  v19[1] = v11;
  v12 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v12[5] + 8))(v12[5], v12[4]), result))
  {
    v13 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v13[5] + 8))(v13[5], v13[4]), result))
    {
      v14 = *(a2 + 36) ? a2 - 16 : 0;
      v15 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v15[5] + 8))(v15[5], v15[4]), result))
      {
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v22, v8);
        v16 = v22;
        v17 = v23;
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v20, a2);
        mlir::composeReassociationIndices(v16, v17, v20, v21, v24);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v20);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v22);
        if (v25 != 1)
        {
          return 0;
        }

        v22 = *(*(v8 + 72) + 24);
        v18 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>((a3 + 8), *(a2 + 24), v19, &v22, v24);
        (*(*a3 + 8))(a3, a2, v18);
        if (v25)
        {
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v24);
        }

        return 1;
      }
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp, mlir::ReshapeOpKind::kCollapse>]";
  v6 = 161;
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

void mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::matchAndRewrite(uint64_t a1, uint64_t a2, char ***a3)
{
  v46[16] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    return 0;
  }

  v44 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v13 = mlir::TensorType::operator mlir::ShapedType(&v44);
  v15 = v14;
  v16 = *(a2 + 36) ? a2 - 16 : 0;
  v44 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = mlir::TensorType::operator mlir::ShapedType(&v44);
  v19 = v18;
  v36[0] = v17;
  v36[1] = v18;
  v20 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v20[5] + 8))())
  {
    return 0;
  }

  v21 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v21[5] + 8))())
  {
    return 0;
  }

  v22 = *(v8 + 36) ? v8 - 16 : 0;
  v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && !(*(v23[5] + 8))())
  {
    return 0;
  }

  (*(v15 + 24))(v15, v13);
  v25 = v24;
  (v19[3])(v19, v17);
  if (v17 == v13)
  {
    return 0;
  }

  v44 = v46;
  v45 = 0x400000000;
  v41 = &v43;
  v42 = 0x400000000;
  v34 = v26;
  v35 = v25;
  if (v25 <= v26)
  {
    mlir::tensor::CollapseShapeOp::getReassociationIndices(v39, a2);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v44, v39);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v39);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(v39, v8);
  }

  else
  {
    mlir::tensor::ExpandShapeOp::getReassociationIndices(v39, v8);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v44, v39);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v39);
    mlir::tensor::CollapseShapeOp::getReassociationIndices(v39, a2);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v41, v39);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v39);
  v39[0] = &v40;
  v39[1] = 0x400000000;
  if (v42)
  {
    v27 = 0;
    v28 = v41;
    v29 = &v41[4 * v42];
    while (1)
    {
      v37[0] = v38;
      v37[1] = 0x200000000;
      v30 = 4 * v27;
      while (1)
      {
        if (v27 >= v45)
        {
          v32 = v27;
LABEL_38:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(v39, v37);
          v33 = 1;
          v27 = v32;
          goto LABEL_40;
        }

        v31 = *(v44[v30] + 8 * LODWORD(v44[v30 + 1]) - 8);
        if (v31 > *(*v28 + 8 * *(v28 + 2) - 8))
        {
          break;
        }

        v32 = v27 + 1;
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v37, v27);
        v30 += 4;
        ++v27;
        if (v31 == *(*v28 + 8 * *(v28 + 2) - 8))
        {
          goto LABEL_38;
        }
      }

      v33 = 0;
LABEL_40:
      if (v37[0] != v38)
      {
        free(v37[0]);
      }

      if ((v33 & 1) == 0)
      {
        break;
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_44;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_44:
    if (v35 <= v34)
    {
      v37[0] = *(mlir::tensor::ExpandShapeOp::getODSOperands(v10, 0) + 24);
      if (v35 < v34)
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, a2, v36, v37, v39);
      }

      else
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(a3, a2, v36, v37);
      }
    }

    else
    {
      v37[0] = *(mlir::tensor::ExpandShapeOp::getODSOperands(v10, 0) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, a2, v36, v37, v39);
    }

    v11 = 1;
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v39);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v41);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v44);
  return v11;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**v10 + 32));
  v17[0] = v10;
  v17[1] = v11;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::tensor::CollapseShapeOp::build((a1 + 8), v17, *a3, *a4, *a5, *(a5 + 8));
  v12 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert((a1 + 8), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v17);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*a1 + 8);

  return v15(a1, a2, v14);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(char ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**v10 + 32));
  v28[0] = v10;
  v28[1] = v11;
  v28[2] = v29;
  v28[3] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[8] = 4;
  v31[9] = v32;
  v31[10] = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *(a5 + 8);
  mlir::tensor::getMixedSizes(a1 + 1, v10, v13, &v37);
  v16 = v37;
  v17 = v38;
  v27 = v12;
  v18 = mlir::TensorType::operator mlir::ShapedType(&v27);
  mlir::inferExpandShapeOutputShape(a1 + 1, v10, v18, v19, v14, v15, v16, v17, &v40);
  if (v43 != 1)
  {
    v20 = 0;
    LOBYTE(v34[0]) = 0;
    v36 = 0;
    v40 = v42;
    v41 = 0x600000000;
LABEL_6:
    v21 = v42;
    goto LABEL_13;
  }

  v34[0] = v35;
  v34[1] = 0x600000000;
  if (v41)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(v34, &v40);
    v36 = 1;
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v36 = 1;
  }

  if (v40 == v42)
  {
LABEL_11:
    v40 = v42;
    v41 = 0x600000000;
    goto LABEL_12;
  }

  free(v40);
  v40 = v42;
  v41 = 0x600000000;
  if ((v36 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_6;
  }

LABEL_12:
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v40, v34);
  v21 = v40;
  v20 = v41;
LABEL_13:
  mlir::tensor::ExpandShapeOp::build((a1 + 1), v28, v12, v13, v14, v15, v21, v20);
  if (v40 != v42)
  {
    free(v40);
  }

  if (v36 == 1 && v34[0] != v35)
  {
    free(v34[0]);
  }

  if (v37 != &v39)
  {
    free(v37);
  }

  v22 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert((a1 + 1), v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(v28);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = (*a1)[1];

  return (v25)(a1, a2, v24);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1 + 8, *(**v8 + 32));
  v18[0] = v8;
  v18[1] = v9;
  v19[0] = &v20;
  v19[1] = 0x400000000;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  v10 = *a3;
  v16 = *a4;
  __src = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v19, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &__src, v18);
  v11 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert((a1 + 8), v11);
  v12 = *(*(v11 + 6) + 16);
  mlir::OperationState::~OperationState(v18);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*a1 + 8);

  return v14(a1, a2, v13);
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp, mlir::tensor::ExpandShapeOp, mlir::tensor::CastOp, mlir::tensor::DimOp, mlir::RankedTensorType>]";
  v6 = 220;
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  Raw = &v17;
  v17 = 0;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  v9 = !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&Raw, v8) || v17 == 0;
  if (v9 || *(v17 + 24) != 1)
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v15 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v12, *(v17 + 32), *(v17 + 40));
  v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &Raw);
  (*(*a3 + 8))(a3, a2, v13);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>]";
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v22 = v10;
  if (!v9)
  {
    return 0;
  }

  v12 = *(v7 + 36);
  v13 = v7 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v15 = v14[2];
  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v21 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(mlir::tensor::SplatOp::getODSOperands(&v22, 0) + 24);
  v19 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v21, &v20);
  (*(*a3 + 8))(a3, a2, v19);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>]";
  v6 = 136;
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v10 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  result = (*(v13 + 16))(v13, v10);
  if (result)
  {
    v14 = (*(v13 + 24))(v13, v10);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      return 0;
    }

LABEL_19:
    v21 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v17 = *(v8 + 68);
      v18 = *(v8 + 72);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20[0] = v18;
    v20[1] = v17;
    v19 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v21, v20);
    (*(*a3 + 8))(a3, a2, v19);
    return 1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>]";
  v6 = 143;
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

void anonymous namespace::FoldCollapseOfCastOp::~FoldCollapseOfCastOp(_anonymous_namespace_::FoldCollapseOfCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldCollapseOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(*(v8 + 72) + 24) + 8);
  if (!mlir::tensor::preservesStaticInformation((*(v8 - 8) & 0xFFFFFFFFFFFFFFF8), (v9 & 0xFFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

  mlir::tensor::CollapseShapeOp::getReassociationMaps(&v34, a2);
  v10 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v9 & 0xFFFFFFFFFFFFFFF8, v34, v35);
  if (v34 != &v36)
  {
    free(v34);
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    (*(*a3 + 40))(a3, a2);
    v12 = *(a2 + 72);
    v13 = *(*(v8 + 72) + 24);
    v14 = v12[1];
    if (v14)
    {
      v15 = *v12;
      *v14 = *v12;
      if (v15)
      {
        *(v15 + 8) = v12[1];
      }
    }

    v12[3] = v13;
    v12[1] = v13;
    v16 = *v13;
    *v12 = *v13;
    if (v16)
    {
      *(v16 + 8) = v12;
    }

    *v13 = v12;
    (*(*a3 + 48))(a3, a2);
    return 1;
  }

  else
  {
    v19 = *(a2 + 24);
    v20 = *(*(v8 + 72) + 24);
    v21 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**v19 + 32));
    v34 = v19;
    v35 = v22;
    v36 = v38;
    v37 = 0x400000000;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = 4;
    v46 = &v48;
    v47 = 0x100000000;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = 0;
    v53 = 0;
    v54 = &mlir::detail::TypeIDResolver<void,void>::id;
    v55 = 0;
    v56 = 0;
    v32 = v20;
    __src = v10;
    v17 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v36, &v32, 0, &v32, 1);
    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(&v34) = v21;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v39, &__src, &v34);
    v23 = mlir::Operation::create(&v34);
    mlir::OpBuilder::insert((a3 + 8), v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(&v34);
    if (v24 != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v23 = 0;
    }

    if (*(a2 + 36))
    {
      v25 = a2 - 16;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(a2 + 24);
    v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v27 + 32));
    v34 = v27;
    v35 = v28;
    v36 = v38;
    v37 = 0x400000000;
    v39 = v41;
    v40 = 0x400000000;
    v42 = v44;
    v43 = 0x400000000;
    v45 = 4;
    v46 = &v48;
    v47 = 0x100000000;
    v49 = &v51;
    v50 = 0x100000000;
    v52 = 0;
    v53 = 0;
    v54 = &mlir::detail::TypeIDResolver<void,void>::id;
    v55 = 0;
    v56 = 0;
    v32 = v23 - 16;
    __src = v26;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v36, &v32, 0, &v32, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v39, &__src, &v34);
    v29 = mlir::Operation::create(&v34);
    mlir::OpBuilder::insert((a3 + 8), v29);
    v30 = *(*(v29 + 6) + 16);
    mlir::OperationState::~OperationState(&v34);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    (*(*a3 + 8))(a3, a2, v31);
  }

  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldCollapseOfCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldCollapseOfCastOp]";
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

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(unsigned int *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = (*a2 + 8);
  v4 = 32 * v2;
  for (i = (*a1 + 8); ; i += 4)
  {
    v6 = *i;
    if (v6 != *v3 || memcmp(*(i - 1), *(v3 - 1), 8 * v6))
    {
      break;
    }

    v3 += 4;
    v4 -= 32;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 32 * a2;
    do
    {
      v11 = v13;
      v12 = 0x200000000;
      if (*(v4 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(&v11, v4);
        if (v12)
        {
          v6 = 0;
          v7 = (*(*a3 + 8) + 8 * *v11);
          v8 = 8 * v12;
          do
          {
            v9 = *v7++;
            if (v9 == 0x8000000000000000)
            {
              ++v6;
            }

            v8 -= 8;
          }

          while (v8);
          if (v11 != v13)
          {
            free(v11);
          }

          if (v6 >= 2)
          {
            return 0;
          }
        }

        else if (v11 != v13)
        {
          free(v11);
        }
      }

      v4 += 32;
    }

    while (v4 != v5);
  }

  return 1;
}

uint64_t llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp>(mlir::tensor::CollapseShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::CollapseShapeOp)#1}>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 32 * a2;
    do
    {
      v11 = v13;
      v12 = 0x200000000;
      if (*(v4 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(&v11, v4);
        if (v12)
        {
          v6 = 0;
          v7 = (*(*a3 + 8) + 8 * *v11);
          v8 = 8 * v12;
          do
          {
            v9 = *v7++;
            if (v9 == 0x8000000000000000)
            {
              ++v6;
            }

            v8 -= 8;
          }

          while (v8);
          if (v11 != v13)
          {
            free(v11);
          }

          if (v6 >= 2)
          {
            return 0;
          }
        }

        else if (v11 != v13)
        {
          free(v11);
        }
      }

      v4 += 32;
    }

    while (v4 != v5);
  }

  return 1;
}

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v20 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v20, &v31);
  v28 = v30;
  v29 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v28, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v20, &v31);
  v25 = v27;
  v26 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v25, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v20, &v31);
  v22 = v24;
  v23 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v22, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (mlir::foldDynamicIndexList(&v28, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v25, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v22, 0, 0))
  {
    if (*(v20 + 36))
    {
      v4 = v20 - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(*(*(v20 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v28, v29, v25, v26, v22, v23);
    if (v5)
    {
      v6 = *(v20 + 24);
      v7 = *(*(v20 + 72) + 24);
      Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v6 + 32));
      v31 = v6;
      v32 = Slice;
      v33[0] = v34;
      v33[1] = 0x400000000;
      v34[4] = v35;
      v34[5] = 0x400000000;
      v35[4] = v36;
      v35[5] = 0x400000000;
      v36[8] = 4;
      v36[9] = v37;
      v36[10] = 0x100000000;
      v37[1] = v38;
      v37[2] = 0x100000000;
      v38[1] = 0;
      v38[2] = 0;
      v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v38[4] = 0;
      v38[6] = 0;
      mlir::tensor::ExtractSliceOp::build((a3 + 8), &v31, v5, v7, v28, v29, v25, v26, v22, v23);
      v9 = mlir::Operation::create(&v31);
      mlir::OpBuilder::insert((a3 + 8), v9);
      v10 = *(*(v9 + 6) + 16);
      mlir::OperationState::~OperationState(&v31);
      v11 = v20;
      if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v12 + 9);
      v14 = v12 - 16;
      if (!v13)
      {
        v14 = 0;
      }

      v31 = v14;
      v15 = *(v14 + 1);
      if (*(v20 + 36))
      {
        v16 = v20 - 16;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v16 + 8);
      if ((v17 ^ v15) >= 8)
      {
        v18 = *(v20 + 24);
        v21 = v17 & 0xFFFFFFFFFFFFFFF8;
        v31 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a3 + 8), v18, &v21, &v31) - 16;
      }

      v5 = 1;
      (**a3)(a3, v11, &v31, 1);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v5;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp, SliceReturnTypeCanonicalizer, SliceCanonicalizer>]";
  v6 = 197;
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

void anonymous namespace::ExtractSliceOpCastFolder::~ExtractSliceOpCastFolder(_anonymous_namespace_::ExtractSliceOpCastFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractSliceOpCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v8 + 8) & 7;
      if (v9 == 6)
      {
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        return 0;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) == 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v14 = *(*(v13 + 72) + 24);
  if (!mlir::tensor::preservesStaticInformation((*(v13 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

  v15 = *(a2 + 24);
  if (*(a2 + 36))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v42 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(a2 + 104);
  v18 = (*(a2 + 108) + v17);
  v19 = v5 + 32 * v17;
  v20 = v18 - v17;
  v21 = (*(a2 + 112) + v18);
  v22 = v5 + 32 * v18;
  v23 = v21 - v18;
  v24 = v5 + 32 * v21;
  v25 = (*(a2 + 116) + v21) - v21;
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v45 = *(v26 + 32);
  v46 = *(v26 + 24);
  v28 = *(a2 + 96);
  v47 = *(v27 + 24);
  v48 = *(v28 + 24);
  v43 = *(v28 + 32);
  v44 = *(v27 + 32);
  Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v15 + 32));
  v51[0] = v15;
  v51[1] = Slice;
  v52[0] = &v53;
  v52[1] = 0x400000000;
  v54[0] = v55;
  v54[1] = 0x400000000;
  v55[4] = v56;
  v55[5] = 0x400000000;
  v56[8] = 4;
  v56[9] = v57;
  v56[10] = 0x100000000;
  v57[1] = v58;
  v57[2] = 0x100000000;
  v58[1] = 0;
  v58[2] = 0;
  v58[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v58[4] = 0;
  v58[6] = 0;
  v49 = v14;
  __src = v42;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v52, &v49, 0, &v49, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v52, v19 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v19 & 0xFFFFFFFFFFFFFFF9 | 2, v20);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v52, v22 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v22 & 0xFFFFFFFFFFFFFFF9 | 2, v23);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v52, v24 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25);
  v30 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v51);
  v30[6] = 1;
  v30[7] = v20;
  v30[8] = v23;
  v30[9] = v25;
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v46, v45 >> 3);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v51) = v31;
  v32 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v47, v44 >> 3);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v51) + 8) = v32;
  v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v48, v43 >> 3);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v51) + 16) = v33;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v54, &__src, v51);
  v34 = mlir::Operation::create(v51);
  mlir::OpBuilder::insert((a3 + 8), v34);
  v35 = *(*(v34 + 6) + 16);
  mlir::OperationState::~OperationState(v51);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v51[0] = (v36 - 16);
  v37 = *(v36 - 1);
  v38 = a2 - 16;
  if (!*(a2 + 36))
  {
    v38 = 0;
  }

  v39 = *(v38 + 8);
  if ((v39 ^ v37) >= 8)
  {
    __src = v39 & 0xFFFFFFFFFFFFFFF8;
    v51[0] = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a3 + 8), v15, &__src, v51) - 16;
  }

  v40 = 1;
  (**a3)(a3, a2, v51, 1);
  return v40;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractSliceOpCastFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractSliceOpCastFolder]";
  v6 = 109;
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[8] = *MEMORY[0x277D85DE8];
  v20 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v20, &v30);
  v27 = v29;
  v28 = 0x600000000;
  if (v31)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v27, &v30);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v20, &v30);
  v24 = v26;
  v25 = 0x600000000;
  if (v31)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v24, &v30);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v20, &v30);
  v21 = v23;
  v22 = 0x600000000;
  if (v31)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v21, &v30);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (mlir::foldDynamicIndexList(&v27, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v24, 1, 0) & 1) != 0 || (v4 = 0, (mlir::foldDynamicIndexList(&v21, 0, 1)))
  {
    v5 = v20 - 16;
    if (!*(v20 + 36))
    {
      v5 = 0;
    }

    v6 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(*(*(v20 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, v27, v28, v24, v25, v21, v22);
    v7 = *(*(v20 + 72) + 24);
    v18 = v7;
    v19 = v6;
    if (v6 != (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = (a3 + 24);
      v17 = *(a3 + 24);
      v7 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>((a3 + 8), *(v20 + 24), &v19, &v18) - 16;
      if (v17)
      {
        *v8 = v17;
      }

      else
      {
        *v8 = 0;
        *(a3 + 32) = 0;
      }
    }

    v9 = v20;
    v10 = *(*(v20 + 72) + 32 * *(v20 + 104) + 24);
    v11 = *(v20 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v11 + 32));
    v30 = v11;
    v31 = inserted;
    v32[0] = v33;
    v32[1] = 0x400000000;
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
    mlir::tensor::InsertSliceOp::build((a3 + 8), &v30, v7, v10, v27, v28, v24, v25, v21, v22);
    v13 = mlir::Operation::create(&v30);
    mlir::OpBuilder::insert((a3 + 8), v13);
    v14 = *(*(v13 + 6) + 16);
    mlir::OperationState::~OperationState(&v30);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    (*(*a3 + 8))(a3, v9, v15);
    v4 = 1;
  }

  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v4;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>]";
  v6 = 149;
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79[8] = *MEMORY[0x277D85DE8];
  v55 = a2;
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v8 + 8) & 7;
      if (v9 == 6)
      {
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        return 0;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = *(v5 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v12 += 24 * *(v12 + 16) + 120;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 += 16 * v13 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v14 = *(*(v12 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v12 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF00;
      v12 = v14;
      v16 = 1;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_25:
  v16 = 0;
  v15 = 0;
LABEL_26:
  v17 = v15 | v12;
  v18 = *(v5 + 32 * *(a2 + 104) + 24);
  if ((~*(v18 + 8) & 7) != 0)
  {
    v19 = *(v5 + 32 * *(a2 + 104) + 24);
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  v20 = *(v19 + 8) & 7;
  if (v20 == 6)
  {
    v21 = v19 + 24 * *(v19 + 16) + 120;
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v21 = v19 + 16 * v20 + 16;
  }

  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v22 = *(*(v21 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v21 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      if (!v16)
      {
        v17 = v11;
      }

      goto LABEL_41;
    }
  }

LABEL_39:
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v22 = v18;
LABEL_41:
  if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v23 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v23 = 0;
  }

  if (*(*(*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    return 0;
  }

  v28 = *(a2 + 88);
  v29 = *(v28 + 24);
  v30 = *(v28 + 32);
  v69 = v71;
  v70 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v69, v29, &v29[v30 & 0xFFFFFFFFFFFFFFF8]);
  mlir::computeRankReductionMask(v69, v70, *(v23 + 8), *(v23 + 16), 1, v65);
  if (v68 == 1)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v55, &v72);
    v62 = v64;
    v63 = 0x600000000;
    if (v73)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v62, &v72);
    }

    if (v72 != v74)
    {
      free(v72);
    }

    v35 = v69;
    if (v70)
    {
      v54 = v22;
      v36 = 0;
      v37 = 0;
      v38 = 8 * v70;
      do
      {
        if ((v68 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        LODWORD(v72) = v37;
        v39 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::find(v65, &v72);
        v40 = (v66 + 4 * v67);
        if (v65[0])
        {
          v40 = &v68;
        }

        if (v40 == v39)
        {
          v41 = *(*(v23 + 8) + 8 * v36);
          if (v41 != 0x8000000000000000)
          {
            v42 = v36;
            v43 = mlir::IntegerAttr::get(*(**(a3 + 8) + 472), v41);
            *(v62 + v37) = v43 & 0xFFFFFFFFFFFFFFFBLL;
            ++v36;
            v35[v37] = *(*(v23 + 8) + 8 * v42);
          }
        }

        ++v37;
        v38 -= 8;
      }

      while (v38);
      v35 = v69;
      v44 = v70;
      v22 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (verifyInsertSliceOp(v23, v24, v31, v32, v35, v44, v33, v34, 0))
    {
      v26 = 0;
    }

    else
    {
      v45 = *(v55 + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v55, &v59);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v55, &v56);
      inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v45 + 32));
      v72 = v45;
      v73 = inserted;
      v74[0] = v75;
      v74[1] = 0x400000000;
      v75[4] = v76;
      v75[5] = 0x400000000;
      v76[4] = v77;
      v76[5] = 0x400000000;
      v77[8] = 4;
      v77[9] = v78;
      v77[10] = 0x100000000;
      v78[1] = v79;
      v78[2] = 0x100000000;
      v79[2] = 0;
      v79[1] = 0;
      v79[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v79[4] = 0;
      v79[6] = 0;
      mlir::tensor::InsertSliceOp::build((a3 + 8), &v72, v17, v22, v59, v60, v62, v63, v56, v57);
      v47 = mlir::Operation::create(&v72);
      mlir::OpBuilder::insert((a3 + 8), v47);
      v48 = *(*(v47 + 6) + 16);
      mlir::OperationState::~OperationState(&v72);
      if (v48 != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
      {
        v47 = 0;
      }

      if (v56 != &v58)
      {
        free(v56);
      }

      if (v59 != &v61)
      {
        free(v59);
      }

      v49 = v55;
      if (*(v55 + 36))
      {
        v50 = v55 - 16;
      }

      else
      {
        v50 = 0;
      }

      v51 = *(v50 + 8);
      if ((v51 ^ *(v22 + 8)) >= 8)
      {
        v52 = *(v55 + 24);
        v72 = (v51 & 0xFFFFFFFFFFFFFFF8);
        v59 = v47 - 16;
        v47 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::OpResult>((a3 + 8), v52, &v72, &v59);
        v49 = v55;
      }

      if (*(v47 + 9))
      {
        v53 = (v47 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v53 = 4;
      }

      (**a3)(a3, v49, v53);
      v26 = 1;
    }

    if (v62 != v64)
    {
      free(v62);
    }

    if ((v68 & 1) != 0 && (v65[0] & 1) == 0)
    {
      MEMORY[0x25F891030](v66, 4);
    }
  }

  else
  {
    v26 = 0;
  }

  if (v69 != v71)
  {
    free(v69);
  }

  return v26;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>]";
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v32 = v3;
  v33 = a2;
  v4 = v3[2];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4 != *((*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 0;
  }

  v7 = v3[1];
  v46 = v48;
  v47 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v46, v7, &v7[8 * v4]);
  if (v3[2] >= 1)
  {
    v8 = 0;
    do
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v33, &v49);
      ConstantIntValue = mlir::getConstantIntValue(*(v49 + 8 * v8));
      v11 = v10;
      if (v49 != v50)
      {
        free(v49);
      }

      if (v11)
      {
        if ((ConstantIntValue & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        *(v46 + v8) = ConstantIntValue;
      }

      ++v8;
    }

    while (v8 < v3[2]);
  }

  v43 = v45;
  v44 = 0x600000000;
  if (v47)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v43, &v46);
    if (v44)
    {
      v12 = 0;
      do
      {
        v13 = *(v43 + v12);
        v14 = v13 > 0x8000000000000000 || 8 * v44 - 8 == v12;
        v12 += 8;
      }

      while (!v14);
      if (v43 != v45)
      {
        free(v43);
      }

      if (v13 > 0x8000000000000000)
      {
        goto LABEL_42;
      }
    }

    else if (v43 != v45)
    {
      free(v43);
    }
  }

  v16 = v3[3];
  v17 = v3[4];
  *&v49 = v46;
  *(&v49 + 1) = v47;
  v40 = v16;
  v37 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v49, &v40, &v37);
  v31 = v18;
  if (v3 != v18 && mlir::tensor::preservesStaticInformation(v3, v18) && mlir::tensor::CastOp::areCastCompatible(&v32 + 2, 1, &v31 + 2, 1))
  {
    v19 = (a3 + 24);
    v30 = *(a3 + 24);
    v20 = *(v33 + 24);
    *&v49 = *(*(v33 + 72) + 24);
    v21 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v20, &v31, &v49);
    v22 = v33;
    v23 = *(*(v33 + 72) + 32 * *(v33 + 104) + 24);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v33, &v40);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v33, &v37);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v33, &v34);
    v24 = *(v22 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v24 + 32));
    *&v49 = v24;
    *(&v49 + 1) = inserted;
    v50[0] = v51;
    v50[1] = 0x400000000;
    v51[4] = v52;
    v51[5] = 0x400000000;
    v52[4] = v53;
    v52[5] = 0x400000000;
    v53[8] = 4;
    v53[9] = v54;
    v53[10] = 0x100000000;
    v54[1] = v55;
    v54[2] = 0x100000000;
    v55[2] = 0;
    v55[1] = 0;
    v55[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v55[4] = 0;
    v55[6] = 0;
    mlir::tensor::InsertSliceOp::build((a3 + 8), &v49, v21 - 16, v23, v40, v41, v37, v38, v34, v35);
    v26 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert((a3 + 8), v26);
    v27 = *(*(v26 + 6) + 16);
    mlir::OperationState::~OperationState(&v49);
    if (v27 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    (*(*a3 + 8))(a3, v22, v28);
    if (v34 != &v36)
    {
      free(v34);
    }

    if (v37 != &v39)
    {
      free(v37);
    }

    if (v40 != &v42)
    {
      free(v40);
    }

    if (v30)
    {
      *v19 = v30;
    }

    else
    {
      *v19 = 0;
      *(a3 + 32) = 0;
    }

    v15 = 1;
    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
LABEL_43:
  if (v46 != v48)
  {
    free(v46);
  }

  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>]";
  v6 = 145;
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

void anonymous namespace::FoldStaticZeroPadding::~FoldStaticZeroPadding(_anonymous_namespace_::FoldStaticZeroPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldStaticZeroPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  if (!mlir::tensor::PadOp::hasZeroLowPad(a2))
  {
    return 0;
  }

  mlir::tensor::PadOp::getMixedHighPad(&v24, a2);
  v5 = v24;
  if (v25)
  {
    v6 = 8 * v25 - 8;
    do
    {
      v7 = *v5++;
      v8 = mlir::getConstantIntValue(v7) == 0;
      v10 = v9 & v8;
      v11 = (v9 & v8) != 1 || v6 == 0;
      v6 -= 8;
    }

    while (!v11);
    v5 = v24;
  }

  else
  {
    v10 = 1;
  }

  if (v5 != v26)
  {
    free(v5);
  }

  if (!v10 || *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v14 = a2 - 16;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(a2 + 72) + 24);
  v17 = *(a2 + 24);
  v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v17 + 32));
  v24 = v17;
  v25 = v18;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  v22 = v16;
  __src = v15;
  v12 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v26, &v22, 0, &v22, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v28, &__src, &v24);
  v19 = mlir::Operation::create(&v24);
  mlir::OpBuilder::insert((a3 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(&v24);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  (*(*a3 + 8))(a3, a2, v21);
  return v12;
}

uint64_t mlir::tensor::PadOp::hasZeroLowPad(mlir::tensor::PadOp *this)
{
  v11[6] = *MEMORY[0x277D85DE8];
  mlir::tensor::PadOp::getMixedLowPad(&v9, this);
  v1 = v9;
  if (v10)
  {
    v2 = 8 * v10 - 8;
    do
    {
      v3 = *v1++;
      v4 = mlir::getConstantIntValue(v3) == 0;
      v6 = v5 & v4;
      v7 = v6 != 1 || v2 == 0;
      v2 -= 8;
    }

    while (!v7);
    v1 = v9;
  }

  else
  {
    v6 = 1;
  }

  if (v1 != v11)
  {
    free(v1);
  }

  return v6;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldStaticZeroPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldStaticZeroPadding]";
  v6 = 106;
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

void anonymous namespace::FoldSourceTensorCast::~FoldSourceTensorCast(_anonymous_namespace_::FoldSourceTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldSourceTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v49[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v9 = *(*(*(v8 + 72) + 24) + 8);
  if (!mlir::tensor::preservesStaticInformation((*(v8 - 8) & 0xFFFFFFFFFFFFFFF8), (v9 & 0xFFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

  v10 = *(a2 + 96);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32) >> 3;
  if (*(a2 + 36))
  {
    v13 = a2 - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::tensor::PadOp::inferResultType(v9 & 0xFFFFFFFFFFFFFFF8, v11, v12, *(*(a2 + 88) + 24), *(*(a2 + 88) + 32) >> 3, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
  if (*(a2 + 36))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v14 != (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v24 = v14;
    v25 = *(a2 + 24);
    v26 = *(a2 + 72);
    v41 = *(v26 + 24);
    v28 = *(a2 + 88);
    v27 = *(a2 + 96);
    v39 = *(v27 + 32) >> 3;
    v40 = *(v27 + 24);
    v29 = *(a2 + 104);
    v30 = (*(a2 + 108) + v29);
    v31 = v26 + 32 * v29;
    v36 = v30 - v29;
    v32 = v26 + 32 * v30;
    v33 = (*(a2 + 112) + v30) - v30;
    v37 = *(v28 + 32) >> 3;
    v38 = *(v28 + 24);
    v34 = *(a2 + 80) != 0;
    mlir::getPrunedAttributeList(&v42, a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v15);
    v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v25 + 32));
    v44[0] = v25;
    v44[1] = v35;
    v44[2] = v45;
    v44[3] = 0x400000000;
    v45[4] = v46;
    v45[5] = 0x400000000;
    v46[4] = v47;
    v46[5] = 0x400000000;
    v47[8] = 4;
    v47[9] = v48;
    v47[10] = 0x100000000;
    v48[1] = v49;
    v48[2] = 0x100000000;
    v49[1] = 0;
    v49[2] = 0;
    v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v49[4] = 0;
    v49[6] = 0;
    mlir::tensor::PadOp::build(a3 + 1, v44, v24, v41, v40, v39, v38, v37, v31 & 0xFFFFFFFFFFFFFFF9 | 2, v36, v32 & 0xFFFFFFFFFFFFFFF9 | 2, v33, v34, v42, v43);
  }

  ((*a3)[5])(a3, a2);
  v17 = *(a2 + 72);
  v18 = *(*(v8 + 72) + 24);
  v19 = v17[1];
  if (v19)
  {
    v20 = *v17;
    *v19 = *v17;
    if (v20)
    {
      *(v20 + 8) = v17[1];
    }
  }

  v17[3] = v18;
  v17[1] = v18;
  v21 = *v18;
  *v17 = *v18;
  if (v21)
  {
    *(v21 + 8) = v17;
  }

  *v18 = v17;
  ((*a3)[6])(a3, a2);
  return 1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.pad";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldSourceTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldSourceTensorCast]";
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

void anonymous namespace::FoldTargetTensorCast::~FoldTargetTensorCast(_anonymous_namespace_::FoldTargetTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldTargetTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v4 = a2 - 16;
  v3 = *(a2 - 16);
  if (v3 && !*v3)
  {
    mlir::Operation::getUsers(v34, a2);
    v7 = *(v35[0] + 16);
    if (v7 && *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      if (*(a2 + 36))
      {
        v9 = v4;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v9 + 8);
      if (*(v7 + 36))
      {
        v11 = v7 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 8);
      if (mlir::tensor::preservesStaticInformation((v10 & 0xFFFFFFFFFFFFFFF8), (v12 & 0xFFFFFFFFFFFFFFF8)))
      {
        v14 = *(a2 + 24);
        v15 = *(a2 + 72);
        v31 = *(v15 + 24);
        v17 = *(a2 + 88);
        v16 = *(a2 + 96);
        v29 = *(v16 + 32) >> 3;
        v30 = *(v16 + 24);
        v18 = *(a2 + 104);
        v19 = (*(a2 + 108) + v18);
        v20 = v15 + 32 * v18;
        v27 = v19 - v18;
        v21 = v15 + 32 * v19;
        v22 = (*(a2 + 112) + v19) - v19;
        v28 = *(v17 + 24);
        v23 = *(v17 + 32) >> 3;
        v24 = *(a2 + 80) != 0;
        mlir::getPrunedAttributeList(&v32, a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v13);
        v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v14 + 32));
        v34[0] = v14;
        v34[1] = v25;
        v34[2] = v35;
        v34[3] = 0x400000000;
        v35[4] = v36;
        v35[5] = 0x400000000;
        v36[4] = v37;
        v36[5] = 0x400000000;
        v37[8] = 4;
        v37[9] = v38;
        v37[10] = 0x100000000;
        v38[1] = v39;
        v38[2] = 0x100000000;
        v39[1] = 0;
        v39[2] = 0;
        v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v39[4] = 0;
        v39[6] = 0;
        mlir::tensor::PadOp::build((a3 + 8), v34, v12 & 0xFFFFFFFFFFFFFFF8, v31, v30, v29, v28, v23, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v27, v21 & 0xFFFFFFFFFFFFFFF9 | 2, v22, v24, v32, v33);
      }
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldTargetTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldTargetTensorCast]";
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

void anonymous namespace::FoldOrthogonalPaddings::~FoldOrthogonalPaddings(_anonymous_namespace_::FoldOrthogonalPaddings *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldOrthogonalPaddings::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v70 = a2;
  v3 = *(*(a2 + 72) + 24);
  v4 = *(v3 + 8);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v7 = *(v3 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v3 + 24 * *(v3 + 16);
      v9 = v8 + 120;
      if (v8 == -120)
      {
        return 0;
      }
    }

    else
    {
      v9 = v3 + 16 * v7 + 16;
    }

    v10 = *(*(v9 + 48) + 16);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v12 = v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v9 : 0;
    v69 = v12;
    if (v11)
    {
      v14 = *(*(v9 + 72) + 24);
      if ((~*(v14 + 8) & 7) == 0)
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = *(v14 + 8) & 7;
        if (v15 == 6)
        {
          v16 = v14 + 24 * *(v14 + 16);
          v17 = v16 + 120;
          if (v16 == -120)
          {
            return 0;
          }
        }

        else
        {
          v17 = v14 + 16 * v15 + 16;
        }

        v18 = *(*(v17 + 48) + 16);
        v19 = v18 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id ? v17 : 0;
        v68 = v19;
        if (v18 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id && !*(v17 + 16 * ((*(v17 + 44) >> 23) & 1) + 64))
        {
          v20 = *(*(v17 + 72) + 24);
          if ((~*(v20 + 8) & 7) == 0)
          {
            v20 = 0;
          }

          if (v20)
          {
            v21 = *(v20 + 8) & 7;
            if (v21 == 6)
            {
              v22 = v20 + 24 * *(v20 + 16) + 120;
              if (!v22)
              {
                return 0;
              }
            }

            else
            {
              v22 = v20 + 16 * v21 + 16;
            }

            v23 = *(*(v22 + 48) + 16);
            v24 = v23 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v22 : 0;
            v67 = v24;
            if (v23 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
            {
              v25 = *((v4 & 0xFFFFFFFFFFFFFFF8) + 16);
              if (*((*(*(*(v22 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) == v25)
              {
                if (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v69) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(&v67) & 1) != 0)
                {
                  if (mlir::tensor::PadOp::hasZeroLowPad(a2) && (mlir::tensor::PadOp::hasZeroLowPad(v17) & 1) != 0)
                  {
                    v65 = 0;
                    v66 = 0;
                    ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v70);
                    v27 = mlir::tensor::PadOp::getConstantPaddingValue(&v68);
                    if (ConstantPaddingValue)
                    {
                      v28 = v27;
                      if (v27)
                      {
                        v80 = &v66;
                        if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(ConstantPaddingValue, &v80))
                        {
                          v77 = &v65;
                          if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(v28, &v77) && v66 == v65)
                          {
                            mlir::tensor::PadOp::getPaddedDims(&v64, &v70);
                            mlir::tensor::PadOp::getPaddedDims(&v63, &v68);
                            if (llvm::SmallBitVector::anyCommon(&v64, &v63))
                            {
                              mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot fold PadOps with common padding dimensions");
                              goto LABEL_108;
                            }

                            IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), 0);
                            v80 = v82;
                            v81 = 0x600000000;
                            llvm::SmallVectorImpl<mlir::OpFoldResult>::assign(&v80, v25, IndexAttr & 0xFFFFFFFFFFFFFFFBLL);
                            if (v81)
                            {
                              v34 = 0;
                              v58 = v80;
                              v35 = 8 * v81;
                              do
                              {
                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v69, &v77);
                                v36 = v77[v34];
                                if (v77 != v79)
                                {
                                  free(v77);
                                }

                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v67, &v77);
                                v37 = v77[v34];
                                if (v77 != v79)
                                {
                                  free(v77);
                                }

                                if (llvm::SmallBitVector::operator[](&v64, v34) || (v40 = mlir::getConstantIntValue(v36), (v41 & 1) == 0) || v40)
                                {
                                  if (llvm::SmallBitVector::operator[](&v63, v34) || (ConstantIntValue = mlir::getConstantIntValue(v37), (v39 & 1) == 0) || ConstantIntValue)
                                  {
                                    mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot find zero-offset and zero-padding pair");
                                    goto LABEL_106;
                                  }
                                }

                                else
                                {
                                  v36 = v37;
                                }

                                v58[v34++] = v36;
                                v35 -= 8;
                              }

                              while (v35);
                            }

                            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v69, &v74);
                            v77 = v79;
                            v78 = 0x600000000;
                            if (v75)
                            {
                              llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v77, &v74);
                            }

                            if (v74 != v76)
                            {
                              free(v74);
                            }

                            if (!v78)
                            {
LABEL_85:
                              v48 = mlir::Builder::getIndexAttr((a3 + 8), 0);
                              v74 = v76;
                              v75 = 0x600000000;
                              llvm::SmallVectorImpl<mlir::OpFoldResult>::assign(&v74, v25, v48 & 0xFFFFFFFFFFFFFFFBLL);
                              if (v75)
                              {
                                v49 = 0;
                                v50 = 8 * v75;
                                do
                                {
                                  if (llvm::SmallBitVector::operator[](&v64, v49))
                                  {
                                    mlir::tensor::PadOp::getMixedHighPad(v72, a2);
                                    *&v74[8 * v49] = *(v72[0] + v49);
                                    if (v72[0] != v73)
                                    {
                                      free(v72[0]);
                                    }
                                  }

                                  if (llvm::SmallBitVector::operator[](&v63, v49))
                                  {
                                    mlir::tensor::PadOp::getMixedHighPad(v72, v19);
                                    *&v74[8 * v49] = *(v72[0] + v49);
                                    if (v72[0] != v73)
                                    {
                                      free(v72[0]);
                                    }
                                  }

                                  ++v49;
                                  v50 -= 8;
                                }

                                while (v50);
                              }

                              v51 = *(a2 + 24);
                              v71[0] = *(*(v67 + 72) + 24);
                              mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v69, v72);
                              v52 = mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>((a3 + 8), v51, v71, &v80, &v77, v72);
                              if (v72[0] != v73)
                              {
                                free(v72[0]);
                              }

                              v53 = *(a2 + 24);
                              if (*(a2 + 36))
                              {
                                v54 = a2 - 16;
                              }

                              else
                              {
                                v54 = 0;
                              }

                              v55 = *(v54 + 8) & 0xFFFFFFFFFFFFFFF8;
                              if (*(v52 + 9))
                              {
                                v56 = v52 - 16;
                              }

                              else
                              {
                                v56 = 0;
                              }

                              v61 = v56;
                              v62 = v55;
                              mlir::tensor::PadOp::getMixedLowPad(v72, a2);
                              v60 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
                              mlir::getPrunedAttributeList(v71, a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v57);
                              mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v53, &v62, &v61, v72, &v74, &v60, v71);
                            }

                            v42 = 0;
                            v59 = v77;
                            v43 = 8 * v78;
                            while (1)
                            {
                              if (llvm::SmallBitVector::operator[](&v63, v42))
                              {
                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v69, &v74);
                                v44 = *&v74[8 * v42];
                                if (v74 != v76)
                                {
                                  free(v74);
                                }

                                v45 = *(*((*(*(*(v69 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * v42);
                                v46 = mlir::getConstantIntValue(v44);
                                if ((v47 & 1) == 0 || v46 != v45)
                                {
                                  mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(*(a3 + 16), a2, "cannot fold since the inner ExtractSliceOp size does not match the size of the outer padding");
                                  if (v77 != v79)
                                  {
                                    free(v77);
                                  }

LABEL_106:
                                  if (v80 != v82)
                                  {
                                    free(v80);
                                  }

LABEL_108:
                                  llvm::SmallBitVector::~SmallBitVector(&v63);
                                  llvm::SmallBitVector::~SmallBitVector(&v64);
                                  return 0;
                                }

                                mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v67, &v74);
                                v59[v42] = *&v74[8 * v42];
                                if (v74 != v76)
                                {
                                  free(v74);
                                }
                              }

                              ++v42;
                              v43 -= 8;
                              if (!v43)
                              {
                                goto LABEL_85;
                              }
                            }
                          }
                        }
                      }
                    }

                    v29 = *(a3 + 16);
                    v30 = "cannot fold PadOps with different padding values";
                  }

                  else
                  {
                    v29 = *(a3 + 16);
                    v30 = "cannot fold PadOps with low padding";
                  }

                  mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(v29, a2, v30);
                  return 0;
                }

                v31 = "cannot fold non-unit stride ExtractSliceOps";
              }

              else
              {
                v31 = "cannot fold rank-reducing chain";
              }

              v80 = v31;
              v82[8] = 259;
              v77 = &v80;
              v32 = *(a3 + 16);
              if (v32 && v32[2] == 1)
              {
                (*(*v32 + 88))(v32, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v77);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

_DWORD *mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(_DWORD *result, uint64_t a2, _BYTE *a3)
{
  v3 = 1;
  v6 = 1;
  if (*a3)
  {
    v4 = a3;
    v3 = 3;
  }

  v5 = v3;
  v7 = &v4;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 88))(result, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v7);
    }
  }

  return result;
}

BOOL mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(uint64_t a1, unint64_t **a2)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v4 = v2 + 16 * v3 + 16;
  }

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(a2, v4);
}

uint64_t llvm::SmallBitVector::anyCommon(llvm::SmallBitVector *this, const llvm::SmallBitVector *a2)
{
  v4 = *this;
  v5 = *a2;
  if (*this)
  {
    v17 = v4 >> 58;
    if (v5)
    {
      return (~((-1 << (v5 >> 58)) | (-1 << v17)) & ((v5 & v4) >> 1)) != 0;
    }

    v18 = *(v5 + 64);
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      LODWORD(v6) = *(v4 + 8);
      v7 = *(v5 + 8);
      if (v7 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v7;
      }

      if (v6)
      {
        v8 = *v4;
        v9 = *v5;
        v10 = v6 - 1;
        do
        {
          v12 = *v8++;
          v11 = v12;
          v13 = *v9++;
          v14 = v13 & v11;
          result = v14 != 0;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = v10 == 0;
          }

          --v10;
        }

        while (!v16);
        return result;
      }

      return 0;
    }

    v17 = *(v4 + 64);
    v18 = v5 >> 58;
  }

  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    return 0;
  }

  v20 = 0;
  while (!llvm::SmallBitVector::operator[](this, v20) || !llvm::SmallBitVector::operator[](a2, v20))
  {
    if (v19 == ++v20)
    {
      return 0;
    }
  }

  return 1;
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[8] = *MEMORY[0x277D85DE8];
  Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**a2 + 32));
  v16[0] = a2;
  v16[1] = Slice;
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
  mlir::tensor::ExtractSliceOp::build(a1, v16, 0, *a3, *a4, *(a4 + 8), *a5, *(a5 + 8), *a6, *(a6 + 8));
  v13 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v14;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v16;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::tensor::PadOp::build(a1, v17, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldOrthogonalPaddings>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldOrthogonalPaddings]";
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

void anonymous namespace::FoldStaticPadding::~FoldStaticPadding(_anonymous_namespace_::FoldStaticPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldStaticPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v109[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  v5 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(a2 + 36) ? a2 - 16 : 0;
    v9 = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v9)
    {
      v10 = *(a2 + 44);
      v11 = v5[1];
      v80 = v5[2];
      v77 = *(v9 + 8);
      v78 = *(v9 + 16);
      v101[0] = v102;
      v101[1] = 0x600000000;
      v98 = v100;
      v99 = 0x600000000;
      v12 = a2 + 64;
      v13 = (v10 >> 23) & 1;
      v15 = a2 + 64 + 16 * v13;
      v14 = *(v15 + 24);
      LODWORD(v15) = *(v15 + 28);
      v79 = a2 + 64;
      if (v15)
      {
        v16 = (v15 + v14) - v14;
        v17 = (v3 + 32 * v14 + 24);
        while (1)
        {
          v18 = *v17;
          DWORD2(__s1) = 1;
          *&__s1 = 0;
          BYTE12(__s1) = 0;
          p_s1 = &__s1;
          if ((~*(v18 + 8) & 7) != 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          if (!v19)
          {
            goto LABEL_22;
          }

          v20 = *(v19 + 8) & 7;
          if (v20 == 6)
          {
            v21 = v19 + 24 * *(v19 + 16);
            v22 = (v21 + 120);
            if (v21 == -120)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = (v19 + 16 * v20 + 16);
          }

          if (!mlir::detail::constant_int_value_binder::match(&p_s1, v22))
          {
LABEL_22:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(v101, 0x8000000000000000);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v98, v18);
            goto LABEL_30;
          }

          if (BYTE12(__s1))
          {
            if (DWORD2(__s1) >= 0x41)
            {
              v23 = __s1;
            }

            else
            {
              v23 = &__s1;
            }
          }

          else
          {
            if (DWORD2(__s1) <= 0x40)
            {
              if (DWORD2(__s1))
              {
                v24 = (__s1 << -BYTE8(__s1)) >> -BYTE8(__s1);
              }

              else
              {
                v24 = 0;
              }

              goto LABEL_29;
            }

            v23 = __s1;
          }

          v24 = *v23;
LABEL_29:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(v101, v24);
LABEL_30:
          if (DWORD2(__s1) >= 0x41 && __s1)
          {
            MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
          }

          v17 += 4;
          if (!--v16)
          {
            v15 = *(a2 + 44);
            v13 = (v15 >> 23) & 1;
            v12 = v79;
            v25 = v79 + 16 * v13;
            LODWORD(v14) = *(v25 + 24);
            v26 = *(v25 + 28);
            LOBYTE(v15) = (v15 & 0x800000) == 0;
            goto LABEL_36;
          }
        }
      }

      v26 = 0;
LABEL_36:
      v96[0] = v97;
      v96[1] = 0x600000000;
      v93 = v95;
      v94 = 0x600000000;
      v27 = *(v12 + 16 * v13 + 32);
      if (v15)
      {
        v28 = 0;
        if (!v27)
        {
          goto LABEL_65;
        }

        goto LABEL_38;
      }

      v28 = *(a2 + 72);
      if (v27)
      {
LABEL_38:
        v29 = (v26 + v14);
        v30 = (v27 + v29) - v29;
        v31 = (v28 + 32 * v29 + 24);
        while (1)
        {
          v32 = *v31;
          DWORD2(__s1) = 1;
          *&__s1 = 0;
          BYTE12(__s1) = 0;
          p_s1 = &__s1;
          if ((~*(v32 + 8) & 7) != 0)
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          if (!v33)
          {
            goto LABEL_52;
          }

          v34 = *(v33 + 8) & 7;
          if (v34 == 6)
          {
            v35 = v33 + 24 * *(v33 + 16);
            v36 = (v35 + 120);
            if (v35 == -120)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v36 = (v33 + 16 * v34 + 16);
          }

          if (!mlir::detail::constant_int_value_binder::match(&p_s1, v36))
          {
LABEL_52:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(v96, 0x8000000000000000);
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v93, v32);
            goto LABEL_60;
          }

          if (BYTE12(__s1))
          {
            if (DWORD2(__s1) >= 0x41)
            {
              v37 = __s1;
            }

            else
            {
              v37 = &__s1;
            }
          }

          else
          {
            if (DWORD2(__s1) <= 0x40)
            {
              if (DWORD2(__s1))
              {
                v38 = (__s1 << -BYTE8(__s1)) >> -BYTE8(__s1);
              }

              else
              {
                v38 = 0;
              }

              goto LABEL_59;
            }

            v37 = __s1;
          }

          v38 = *v37;
LABEL_59:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(v96, v38);
LABEL_60:
          if (DWORD2(__s1) >= 0x41 && __s1)
          {
            MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
          }

          v31 += 4;
          if (!--v30)
          {
            v13 = (*(a2 + 44) >> 23) & 1;
            v12 = v79;
            break;
          }
        }
      }

LABEL_65:
      v39 = *(v12 + 16 * v13 + 16);
      v40 = *(v39 + 24);
      v41 = *(v39 + 32);
      v90 = v92;
      v91 = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v90, v40, &v40[v41 & 0xFFFFFFFFFFFFFFF8]);
      v42 = *(v12 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v43 = *(v42 + 24);
      v44 = *(v42 + 32);
      v87 = v89;
      v88 = 0x600000000;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v87, v43, &v43[v44 & 0xFFFFFFFFFFFFFFF8]);
      v45 = v80;
      if (v80 == v78 && v80 == v91 && v80 == v88)
      {
        v46 = v90;
        v47 = v87;
        v76 = v90;
        v74 = v87;
        if (v80)
        {
          v48 = 0;
          v49 = 0;
          v50 = v101[0];
          v51 = v96[0];
          v52 = v90;
          v53 = v87;
          do
          {
            if (*v52 == 0x8000000000000000)
            {
              v54 = v50[v48++];
              *v52 = v54;
            }

            if (*v53 == 0x8000000000000000)
            {
              v55 = v51[v49++];
              *v53 = v55;
            }

            ++v53;
            ++v52;
            --v45;
          }

          while (v45);
          __s2 = v86;
          v85 = 0x600000000;
          v56 = v77;
          v57 = v47;
          v58 = v80;
          do
          {
            v60 = *v56++;
            v59 = v60;
            if (v60 == 0x8000000000000000)
            {
              v59 = 0x8000000000000000;
              if (*v46 != 0x8000000000000000 && *v57 != 0x8000000000000000)
              {
                if (*v11 == 0x8000000000000000)
                {
                  v59 = 0x8000000000000000;
                }

                else
                {
                  v59 = *v57 + *v46 + *v11;
                }
              }
            }

            llvm::SmallVectorTemplateBase<long long,true>::push_back(&__s2, v59);
            ++v11;
            ++v57;
            ++v46;
            --v58;
          }

          while (v58);
        }

        else
        {
          __s2 = v86;
          v85 = 0x600000000;
        }

        *&__s1 = v104;
        *(&__s1 + 1) = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v77, &v77[v80]);
        v61 = v85;
        v62 = __s2;
        if (DWORD2(__s1) == v85 && (v63 = __s1, !memcmp(__s1, __s2, 8 * DWORD2(__s1))))
        {
          if (v63 != v104)
          {
            free(v63);
          }
        }

        else
        {
          if (v61)
          {
            v64 = 8 * v61 - 8;
            do
            {
              v65 = *v62++;
              v66 = v65 == 0x8000000000000000;
              v67 = v65 != 0x8000000000000000 || v64 == 0;
              v64 -= 8;
            }

            while (!v67);
          }

          else
          {
            v66 = 1;
          }

          if (__s1 != v104)
          {
            free(__s1);
          }

          if (!v66)
          {
            v68 = *((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 24);
            *&__s1 = __s2;
            *(&__s1 + 1) = v85;
            __src = 0;
            p_s1 = v68;
            v69 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v68 + 32), &__s1, &p_s1, &__src);
            v70 = *(a2 + 24);
            v71 = *(v79 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
            mlir::getPrunedAttributeList(&p_s1, a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v72);
            v73 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**v70 + 32));
            *&__s1 = v70;
            *(&__s1 + 1) = v73;
            v104[0] = v105;
            v104[1] = 0x400000000;
            v105[4] = v106;
            v105[5] = 0x400000000;
            v106[4] = v107;
            v106[5] = 0x400000000;
            v107[8] = 4;
            v107[9] = v108;
            v107[10] = 0x100000000;
            v108[1] = v109;
            v108[2] = 0x100000000;
            v109[2] = 0;
            v109[1] = 0;
            v109[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v109[4] = 0;
            v109[6] = 0;
            mlir::tensor::PadOp::build(a3 + 1, &__s1, v69, v4, v76, v80, v74, v80, v98 & 0xFFFFFFFFFFFFFFF9, v99, v93 & 0xFFFFFFFFFFFFFFF9, v94, v71, p_s1, v83);
          }
        }

        if (__s2 != v86)
        {
          free(__s2);
        }
      }

      if (v87 != v89)
      {
        free(v87);
      }

      if (v90 != v92)
      {
        free(v90);
      }

      if (v93 != v95)
      {
        free(v93);
      }

      if (v96[0] != v97)
      {
        free(v96[0]);
      }

      if (v98 != v100)
      {
        free(v98);
      }

      if (v101[0] != v102)
      {
        free(v101[0]);
      }
    }
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldStaticPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldStaticPadding]";
  v6 = 102;
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

void anonymous namespace::FoldConsecutiveConstantPadding::~FoldConsecutiveConstantPadding(_anonymous_namespace_::FoldConsecutiveConstantPadding *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v5 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v6 = "skipping unfoldable pad";
    goto LABEL_17;
  }

  v7 = *(*(a2 + 72) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
LABEL_16:
    v6 = "producer is not a foldable tensor.pad op";
    goto LABEL_17;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  v11 = *(*(v10 + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  if (v11 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v32 = v13;
  if (!v12 || *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 64))
  {
    goto LABEL_16;
  }

  ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v33);
  v17 = mlir::tensor::PadOp::getConstantPaddingValue(&v32);
  if (ConstantPaddingValue && v17 && ConstantPaddingValue == v17)
  {
    v31 = *(a2 + 24);
    v18 = *(a3 + 8);
    AffineDimOrSymbol = getAffineDimOrSymbol(6u, 0, v18);
    v28[0] = a3;
    v28[1] = &v31;
    v28[2] = &AffineDimOrSymbol;
    v28[3] = &v29;
    v29 = getAffineDimOrSymbol(6u, 1, v18);
    mlir::tensor::PadOp::getMixedHighPad(&v39, a2);
    v19 = v39;
    v20 = v40;
    mlir::tensor::PadOp::getMixedHighPad(&v36, v10);
    if (v36 != v38)
    {
      free(v36);
    }

    if (v39 != &v41)
    {
      free(v39);
    }

    mlir::tensor::PadOp::getMixedLowPad(&v36, a2);
    v21 = v36;
    v22 = v37;
    mlir::tensor::PadOp::getMixedLowPad(&v34, v10);
    if (v34 != &v35)
    {
      free(v34);
    }

    if (v36 != v38)
    {
      free(v36);
    }

    v24 = *(a2 + 24);
    if (*(a2 + 36))
    {
      v25 = a2 - 16;
    }

    else
    {
      v25 = 0;
    }

    v34 = (*(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
    v27 = *(*(v10 + 72) + 24);
    v26 = *(v5 + 16 * ((*(a2 + 44) >> 23) & 1)) != 0;
    mlir::getPrunedAttributeList(&v36, a2, &mlir::tensor::PadOp::getAttributeNames(void)::attrNames, 4, v23);
    mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>((a3 + 8), v24, &v34, &v27, &v39, v42, &v26, &v36);
  }

  v6 = "cannot fold PadOps with different or non-constant padding values";
LABEL_17:
  v42[0] = v6;
  v43 = 259;
  v39 = v42;
  v14 = *(a3 + 16);
  if (v14 && v14[2] == 1)
  {
    (*(*v14 + 88))(v14, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v39);
  }

  return 0;
}

void anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(mlir::tensor::PadOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<mlir::OpFoldResult>,llvm::ArrayRef<mlir::OpFoldResult>)#1}::operator()(void *a1, uint64_t *a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t *a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a4)
  {
    v6 = a3;
    v9 = 8 * a4;
    do
    {
      v10 = *a2;
      v11 = *a2[1];
      v12 = mlir::AffineExpr::operator+(a2[2], *a2[3], a3);
      v13 = *v6;
      v6 = (v6 + 8);
      v16[0] = v13;
      v14 = *a5++;
      v16[1] = v14;
      ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply((v10 + 8), v11, v12, v16, 2);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, ComposedFoldedAffineApply);
      v9 -= 8;
    }

    while (v9);
  }
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::PadOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v16;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::tensor::PadOp::build(a1, v17, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldConsecutiveConstantPadding>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldConsecutiveConstantPadding]";
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v21 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v21, &v31);
  v28 = v30;
  v29 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v28, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v21, &v31);
  v25 = v27;
  v26 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v25, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v21, &v31);
  v22 = v24;
  v23 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v22, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (mlir::foldDynamicIndexList(&v28, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v25, 1, 0) & 1) != 0 || (v4 = 0, (mlir::foldDynamicIndexList(&v22, 0, 1)))
  {
    v5 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(*(*(v21 + 72) + 32 * *(v21 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v28, v29, v25, v26, v22, v23);
    v6 = v21;
    v7 = *(*(v21 + 72) + 24);
    v19 = v7;
    v20 = v5;
    if (v5 != (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = (a3 + 24);
      v9 = *(v21 + 16);
      v18 = *(a3 + 24);
      if (v9)
      {
        v9 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v9)
        {
          v9 = *(v9 + 16);
        }
      }

      *(a3 + 24) = *(v9 + 16);
      *(a3 + 32) = v9;
      v7 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>((a3 + 8), *(v6 + 24), &v20, &v19) - 16;
      if (v18)
      {
        *v8 = v18;
      }

      else
      {
        *v8 = 0;
        *(a3 + 32) = 0;
      }
    }

    v10 = v21;
    v11 = *(*(v21 + 72) + 32 * *(v21 + 104) + 24);
    v12 = *(v21 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v12 + 32));
    v31 = v12;
    v32 = inserted;
    v33[0] = v34;
    v33[1] = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[8] = 4;
    v36[9] = v37;
    v36[10] = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v31, v7, v11, v28, v29, v25, v26, v22, v23);
    v14 = mlir::Operation::create(&v31);
    mlir::OpBuilder::insert((a3 + 8), v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v31);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    (*(*a3 + 8))(a3, v10, v16);
    v4 = 1;
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  return v4;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.parallel_insert_slice";
    v5[3] = 28;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>]";
  v6 = 157;
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78[8] = *MEMORY[0x277D85DE8];
  v54 = a2;
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v8 + 8) & 7;
      if (v9 == 6)
      {
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        return 0;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = *(v5 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v12 += 24 * *(v12 + 16) + 120;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 += 16 * v13 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v14 = *(*(v12 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v12 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF00;
      v12 = v14;
      v16 = 1;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_25:
  v16 = 0;
  v15 = 0;
LABEL_26:
  v17 = v15 | v12;
  v18 = *(v5 + 32 * *(a2 + 104) + 24);
  v19 = *(v18 + 8);
  if ((~*(v18 + 8) & 7) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_39;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16) + 120;
    if (!v22)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v22 = v20 + 16 * v21 + 16;
  }

  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v23 = *(*(v22 + 72) + 24);
    v24 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::tensor::preservesStaticInformation((*(v22 - 8) & 0xFFFFFFFFFFFFFFF8), v24))
    {
      if (!v16)
      {
        v17 = v11;
      }

      goto LABEL_41;
    }
  }

LABEL_39:
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v24 = (v19 & 0xFFFFFFFFFFFFFFF8);
  v23 = v18;
LABEL_41:
  if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v25 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v25 = 0;
  }

  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = 0;
  }

  if (v25)
  {
    v26 = v24 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    return 0;
  }

  v29 = *(a2 + 88);
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  v68 = v70;
  v69 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v68, v30, &v30[v31 & 0xFFFFFFFFFFFFFFF8]);
  mlir::computeRankReductionMask(v68, v69, *(v25 + 8), *(v25 + 16), 1, v64);
  if (v67 == 1)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v54, &v71);
    v61 = v63;
    v62 = 0x600000000;
    if (v72)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v61, &v71);
    }

    if (v71 != v73)
    {
      free(v71);
    }

    v36 = v68;
    if (v69)
    {
      v52 = v23;
      v53 = v17;
      v37 = a3;
      v38 = 0;
      v39 = 0;
      v40 = 8 * v69;
      do
      {
        if ((v67 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        LODWORD(v71) = v39;
        v41 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::find(v64, &v71);
        v42 = (v65 + 4 * v66);
        if (v64[0])
        {
          v42 = &v67;
        }

        if (v42 == v41)
        {
          v43 = *(*(v25 + 8) + 8 * v38);
          if (v43 != 0x8000000000000000)
          {
            v44 = v38;
            v45 = mlir::IntegerAttr::get(*(**(v37 + 8) + 472), v43);
            *(v61 + v39) = v45 & 0xFFFFFFFFFFFFFFFBLL;
            ++v38;
            v36[v39] = *(*(v25 + 8) + 8 * v44);
          }
        }

        ++v39;
        v40 -= 8;
      }

      while (v40);
      v36 = v68;
      v46 = v69;
      a3 = v37;
      v17 = v53;
      v23 = v52;
    }

    else
    {
      v46 = 0;
    }

    if (verifyInsertSliceOp(v25, v24, v32, v33, v36, v46, v34, v35, 0))
    {
      v27 = 0;
    }

    else
    {
      v47 = *(v54 + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v54, &v58);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v54, &v55);
      inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v47 + 32));
      v71 = v47;
      v72 = inserted;
      v73[0] = v74;
      v73[1] = 0x400000000;
      v74[4] = v75;
      v74[5] = 0x400000000;
      v75[4] = v76;
      v75[5] = 0x400000000;
      v76[8] = 4;
      v76[9] = v77;
      v76[10] = 0x100000000;
      v77[1] = v78;
      v77[2] = 0x100000000;
      v78[2] = 0;
      v78[1] = 0;
      v78[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v78[4] = 0;
      v78[6] = 0;
      mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v71, v17, v23, v58, v59, v61, v62, v55, v56);
      v49 = mlir::Operation::create(&v71);
      mlir::OpBuilder::insert((a3 + 8), v49);
      v50 = *(*(v49 + 6) + 16);
      mlir::OperationState::~OperationState(&v71);
      if (v50 != &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        v49 = 0;
      }

      if (v55 != &v57)
      {
        free(v55);
      }

      if (v58 != &v60)
      {
        free(v58);
      }

      if (*(v49 + 9))
      {
        v51 = (v49 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v51 = 4;
      }

      (**a3)(a3, v54, v51);
      v27 = 1;
    }

    if (v61 != v63)
    {
      free(v61);
    }

    if ((v67 & 1) != 0 && (v64[0] & 1) == 0)
    {
      MEMORY[0x25F891030](v65, 4);
    }
  }

  else
  {
    v27 = 0;
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v27;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>]";
  v6 = 145;
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

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = v4;
  v35 = a2;
  v5 = v4[2];
  if (v5 != *((*(*(v3 + 32 * *(a2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 0;
  }

  v7 = v4[1];
  v48 = v50;
  v49 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v48, v7, &v7[8 * v5]);
  if (v4[2] >= 1)
  {
    v8 = 0;
    do
    {
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v35, &v51);
      ConstantIntValue = mlir::getConstantIntValue(*(v51 + 8 * v8));
      v11 = v10;
      if (v51 != v52)
      {
        free(v51);
      }

      if (v11)
      {
        if ((ConstantIntValue & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        *(v48 + v8) = ConstantIntValue;
      }

      ++v8;
    }

    while (v8 < v4[2]);
  }

  v45 = v47;
  v46 = 0x600000000;
  if (v49)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v45, &v48);
    if (v46)
    {
      v12 = 0;
      do
      {
        v13 = *(v45 + v12);
        v14 = v13 > 0x8000000000000000 || 8 * v46 - 8 == v12;
        v12 += 8;
      }

      while (!v14);
      if (v45 != v47)
      {
        free(v45);
      }

      if (v13 > 0x8000000000000000)
      {
        goto LABEL_42;
      }
    }

    else if (v45 != v47)
    {
      free(v45);
    }
  }

  v16 = v4[3];
  v17 = v4[4];
  *&v51 = v48;
  *(&v51 + 1) = v49;
  v42 = v16;
  v39 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v51, &v42, &v39);
  v33 = v18;
  if (v4 != v18 && mlir::tensor::preservesStaticInformation(v4, v18) && mlir::tensor::CastOp::areCastCompatible(&v34 + 2, 1, &v33 + 2, 1))
  {
    v19 = (a3 + 24);
    v20 = v35;
    v21 = *(v35 + 16);
    v32 = *(a3 + 24);
    if (v21)
    {
      v21 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v21)
      {
        v21 = *(v21 + 16);
      }
    }

    *(a3 + 24) = *(v21 + 16);
    *(a3 + 32) = v21;
    v22 = *(v20 + 24);
    *&v51 = *(*(v20 + 72) + 24);
    v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v22, &v33, &v51);
    v24 = v35;
    v25 = *(*(v35 + 72) + 32 * *(v35 + 104) + 24);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v35, &v42);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(&v35, &v39);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v35, &v36);
    v26 = *(v24 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ParallelInsertSliceOp>(*(**v26 + 32));
    *&v51 = v26;
    *(&v51 + 1) = inserted;
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
    v57[2] = 0;
    v57[1] = 0;
    v57[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v57[4] = 0;
    v57[6] = 0;
    mlir::tensor::ParallelInsertSliceOp::build((a3 + 8), &v51, v23 - 16, v25, v42, v43, v39, v40, v36, v37);
    v28 = mlir::Operation::create(&v51);
    mlir::OpBuilder::insert((a3 + 8), v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v51);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    (*(*a3 + 8))(a3, v24, v30);
    if (v36 != &v38)
    {
      free(v36);
    }

    if (v39 != &v41)
    {
      free(v39);
    }

    if (v42 != &v44)
    {
      free(v42);
    }

    if (v32)
    {
      *v19 = v32;
    }

    else
    {
      *v19 = 0;
      *(a3 + 32) = 0;
    }

    v15 = 1;
    goto LABEL_43;
  }

LABEL_42:
  v15 = 0;
LABEL_43:
  if (v48 != v50)
  {
    free(v48);
  }

  return v15;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>]";
  v6 = 153;
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

unint64_t isInvalidPackingPosSpecification(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a2 > a3)
  {
    return 1;
  }

  v3 = a2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a2)
  {
    v5 = a1;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v15 = v8;
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v16, &v15, v19);
      v6 -= 8;
    }

    while (v6);
    if (v3 == v17)
    {
      v9 = 8 * v3 - 8;
      do
      {
        v11 = *v5++;
        v10 = v11;
        v12 = v11 >= 0 && v10 < a3;
        v3 = !v12;
        if (!v12)
        {
          break;
        }

        v13 = v9;
        v9 -= 8;
      }

      while (v13);
    }

    else
    {
      v3 = 1;
    }
  }

  MEMORY[0x25F891030](v16, 8);
  return v3;
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

  if (v4)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *v2;
  v8 = 8 * v3 - 8;
  v9 = 8 * v1 - 8;
  while (1)
  {
    v10 = *v6;
    if ((*v7 & 4) == 0)
    {
      v11 = *v7 & 0xFFFFFFFFFFFFFFF8;
      if (v11)
      {
        break;
      }
    }

    if (v10 != 0x8000000000000000)
    {
      return 0;
    }

LABEL_20:
    result = 1;
    if (v9)
    {
      ++v6;
      ++v7;
      v15 = v8;
      v8 -= 8;
      v9 -= 8;
      if (v15)
      {
        continue;
      }
    }

    return result;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v12 = *v7 & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 24);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  if (v13)
  {
    v14 = (*(v12 + 16) << -v13) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 == v14)
  {
    goto LABEL_20;
  }

  return 0;
}