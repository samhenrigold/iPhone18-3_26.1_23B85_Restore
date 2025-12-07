uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::UnPackOp>(mlir::tensor::UnPackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.unpack";
    v5[3] = 13;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void FoldTensorCastPackOp::~FoldTensorCastPackOp(FoldTensorCastPackOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldTensorCastPackOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  result = foldTensorCastPrecondition(a2);
  if (result)
  {
    v6 = *(a2 + 36);
    if (v6)
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v57[0] = v58;
    v57[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v57, v7, 0, v7, v6);
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v55, a2, InterfaceFor, v57);
    v9 = *v57[0];
    mlir::tensor::PackOp::getMixedTiles(v50, a2);
    getNewMixedTileSizes(&v52, a3, v9, v50);
    if (v50[0] != &v51)
    {
      free(v50[0]);
    }

    v10 = *(a2 + 24);
    v11 = *(a2 + 44);
    v12 = a2 + 16 * ((v11 >> 23) & 1);
    if ((v11 & 0x800000) != 0)
    {
      v13 = *(a2 + 72);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v12 + 64);
    if (*(v12 + 96))
    {
      v15 = *(v13 + 32 * (*(v12 + 92) + *(v12 + 88)) + 24);
    }

    else
    {
      v15 = 0;
    }

    v16 = v55;
    v17 = *(v14 + 32);
    v44 = *(v14 + 24);
    OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a2);
    v20 = v19;
    v21 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, *(**v10 + 32));
    if ((v22 & 1) == 0)
    {
      v73 = 1283;
      v72[0] = "tensor.pack";
      v72[1] = 11;
      v69[8] = 259;
      llvm::operator+(&v70, &v67, v59);
      llvm::report_fatal_error(v59, 1);
    }

    v23 = v17 >> 3;
    v59[0] = v10;
    v59[1] = v21;
    v60[0] = &v61;
    v60[1] = 0x400000000;
    v62[0] = v63;
    v62[1] = 0x400000000;
    v63[4] = v64;
    v63[5] = 0x400000000;
    v64[8] = 4;
    v64[9] = v65;
    v64[10] = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[2] = 0;
    v66[1] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    v25 = *v16;
    v24 = v16[1];
    v26 = v52;
    v70 = v72;
    v71 = 0x600000000;
    v67 = v69;
    v68 = 0x600000000;
    if (v53)
    {
      v27 = 8 * v53;
      do
      {
        v28 = *v26++;
        mlir::dispatchIndexOpFoldResult(v28, &v67, &v70);
        v27 -= 8;
      }

      while (v27);
    }

    v29 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v20)
    {
      v30 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), OuterDimsPerm, v20);
    }

    else
    {
      v30 = 0;
    }

    v45 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v44, v23);
    v31 = v67;
    v32 = v68;
    v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v70, v71);
    v48 = v25;
    __src = v29;
    v47 = v24;
    v46 = v15;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, &v48, 0, &v48, 1);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, &v47, 0, &v47, 1);
    if (v15)
    {
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, &v46, 0, &v46, 1);
    }

    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v60, v31 & 0xFFFFFFFFFFFFFFF9, 0, v31 & 0xFFFFFFFFFFFFFFF9, v32);
    v34 = v46 != 0;
    v35 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v59);
    *(v35 + 24) = 0x100000001;
    *(v35 + 32) = v34;
    *(v35 + 36) = v32;
    if (v30)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v59) + 8) = v30;
    }

    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v59) = v45;
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(v59) + 16) = v33;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v62, &__src, v50);
    if (v67 != v69)
    {
      free(v67);
    }

    if (v70 != v72)
    {
      free(v70);
    }

    v36 = mlir::Operation::create(v59);
    mlir::OpBuilder::insert((a3 + 8), v36);
    v37 = *(*(v36 + 6) + 16);
    mlir::OperationState::~OperationState(v59);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    *(v38 + 7) = mlir::Operation::getDiscardableAttrDictionary(a2);
    if (*(a2 + 36))
    {
      v39 = a2 - 16;
    }

    else
    {
      v39 = 0;
    }

    v40 = v38 - 16;
    if (*(v38 + 9))
    {
      v41 = (v38 - 16);
    }

    else
    {
      v41 = 0;
    }

    v59[0] = v41;
    v42 = (*(v39 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v41 + 8) & 0xFFFFFFFFFFFFFFF8) != v42)
    {
      v43 = *(a2 + 24);
      v70 = v42;
      v40 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v43, &v70, v59) - 16;
    }

    v70 = v40;
    (**a3)(a3, a2, &v70, 1);
    if (v52 != &v54)
    {
      free(v52);
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    if (v57[0] != v58)
    {
      free(v57[0]);
    }

    return 1;
  }

  return result;
}

void getNewMixedTileSizes(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v8 = *a3;
  v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  v11 = (*(v10 + 24))(v10, a3);
  v13 = *(a4 + 8);
  if (v12 <= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 8 * (v12 - v13);
  }

  if (v12 >= v13)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = (v14 + v11);
    v17 = *a4;
    v18 = 8 * v13 - 8;
    v19 = 8 * v15 - 8;
    do
    {
      v20 = *v17;
      if (*v16 != 0x8000000000000000 && (v20 < 8 || (*v17 & 4) != 0))
      {
        v20 = mlir::Builder::getIntegerAttr(a2 + 8, *(**(a2 + 8) + 472), *v16) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a1, v20);
      if (!v19)
      {
        break;
      }

      ++v16;
      ++v17;
      v22 = v18;
      v18 -= 8;
      v19 -= 8;
    }

    while (v22);
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

const char *llvm::detail::getTypeNameImpl<FoldTensorCastPackOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastPackOp]";
  v6 = 82;
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

void FoldTensorCastUnPackOp::~FoldTensorCastUnPackOp(FoldTensorCastUnPackOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t FoldTensorCastUnPackOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[8] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  result = foldTensorCastPrecondition(a2);
  if (result)
  {
    v6 = *(a2 + 36);
    if (v6)
    {
      v7 = a2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v35[0] = v36;
    v35[1] = 0x600000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v35, v7, 0, v7, v6);
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    }

    else
    {
      InterfaceFor = 0;
    }

    mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v33, a2, InterfaceFor, v35);
    v9 = *v33;
    v10 = *(*v33 + 8);
    mlir::tensor::UnPackOp::getMixedTiles(v28, a2);
    getNewMixedTileSizes(&v30, a3, (v10 & 0xFFFFFFFFFFFFFFF8), v28);
    if (v28[0] != &v29)
    {
      free(v28[0]);
    }

    v11 = *(a2 + 24);
    v12 = v33;
    v13 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v14 = *(v13 + 24);
    v15 = *(v13 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
    v18 = v17;
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(*(**v11 + 32));
    v37[0] = v11;
    v37[1] = v19;
    v37[2] = v38;
    v37[3] = 0x400000000;
    v38[4] = v39;
    v38[5] = 0x400000000;
    v39[4] = v40;
    v39[5] = 0x400000000;
    v40[8] = 4;
    v40[9] = v41;
    v40[10] = 0x100000000;
    v41[1] = v42;
    v41[2] = 0x100000000;
    v42[2] = 0;
    v42[1] = 0;
    v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v42[4] = 0;
    v42[6] = 0;
    mlir::tensor::UnPackOp::build((a3 + 8), v37, v9, v12[1], v14, v15, v30, v31, OuterDimsPerm, v18);
    v20 = mlir::Operation::create(v37);
    mlir::OpBuilder::insert((a3 + 8), v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(v37);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      v20 = 0;
    }

    *(v20 + 7) = mlir::Operation::getDiscardableAttrDictionary(a2);
    if (*(a2 + 36))
    {
      v22 = a2 - 16;
    }

    else
    {
      v22 = 0;
    }

    v23 = v20 - 16;
    if (*(v20 + 9))
    {
      v24 = (v20 - 16);
    }

    else
    {
      v24 = 0;
    }

    v37[0] = v24;
    v25 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) != v25)
    {
      v26 = *(a2 + 24);
      v27 = v25;
      v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v26, &v27, v37) - 16;
    }

    v27 = v23;
    (**a3)(a3, a2, &v27, 1);
    if (v30 != &v32)
    {
      free(v30);
    }

    if (v33 != &v34)
    {
      free(v33);
    }

    if (v35[0] != v36)
    {
      free(v35[0]);
    }

    return 1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<FoldTensorCastUnPackOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastUnPackOp]";
  v6 = 84;
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

void FoldTensorCastProducerOp::~FoldTensorCastProducerOp(FoldTensorCastProducerOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 48);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2, InterfaceFor);
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, InterfaceFor, a3);
}

uint64_t FoldTensorCastProducerOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(void, uint64_t, unint64_t, void))
{
  v67[8] = *MEMORY[0x277D85DE8];
  result = foldTensorCastPrecondition(a2);
  if (!result)
  {
    return result;
  }

  v7 = *(a2 + 48);
  if (*(v7 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v7 + 32, v8))
    {
      return 0;
    }

    v9 = *(v7 + 24);
    v10 = *(a2 + 48);
    v11 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    v12 = (*(*v9 + 104))(v9, v11, v10);
    goto LABEL_7;
  }

  v13 = *(*(v7 + 8) + 32);
  if (v13)
  {
    v14 = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID();
    v12 = (*(*v13 + 104))(v13, v14, v7);
LABEL_7:
    if (v12)
    {
      return 0;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v57 = v59;
  v58 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v57, v16, 0, v16, v15);
  mlir::tensor::getUpdatedOperandsAfterCastOpFolding(&v54, a2, a3, &v57);
  v17 = mlir::clone((a4 + 1), a2, v57 & 0xFFFFFFFFFFFFFFF9 | 2, v58, v54 & 0xFFFFFFFFFFFFFFF9, v55);
  v18 = v17;
  if (v17)
  {
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
  }

  v51 = v53;
  v52 = 0x400000000;
  v19 = *(v18 + 9);
  if (v19 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, v53, v19, 8);
    LODWORD(v19) = *(v18 + 9);
  }

  v20 = *(a2 + 36);
  if (v20)
  {
    v21 = a2 - 16;
  }

  else
  {
    v21 = 0;
  }

  v46 = v18 - 16;
  if (v19)
  {
    v22 = v18 - 16;
  }

  else
  {
    v22 = 0;
  }

  if (v20 && v19)
  {
    v23 = 0;
    v24 = v19 - 1;
    v48 = v20 - 1;
    v25 = v18 - 16;
    v26 = a2 - 16;
    v45 = v22;
    v44 = v21;
    while (1)
    {
      v27 = v21;
      v28 = v22;
      if (!v23)
      {
        goto LABEL_35;
      }

      v29 = *(a2 - 8) & 7;
      v30 = a2 - 16;
      v31 = v23;
      if (v29 != 6)
      {
        v32 = (5 - v29);
        v27 = v26;
        v31 = v23 - v32;
        if (v23 <= v32)
        {
          goto LABEL_30;
        }

        v30 = a2 - 16 - 16 * v32;
      }

      v27 = v30 - 24 * v31;
LABEL_30:
      v33 = *(v18 - 1) & 7;
      v34 = v46;
      v35 = v23;
      if (v33 == 6)
      {
        goto LABEL_33;
      }

      v36 = (5 - v33);
      v35 = v23 - v36;
      if (v23 > v36)
      {
        v34 = &v46[-16 * v36];
LABEL_33:
        v28 = &v34[-24 * v35];
        goto LABEL_35;
      }

      v28 = v25;
LABEL_35:
      v37 = *(v27 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((*(v28 + 8) & 0xFFFFFFFFFFFFFFF8) != v37)
      {
        v38 = v18;
        v39 = *(a2 + 24);
        v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>((a4 + 1), *(**v39 + 32));
        v60[0] = v39;
        v60[1] = v40;
        v61[0] = &v62;
        v61[1] = 0x400000000;
        v63[0] = v64;
        v63[1] = 0x400000000;
        v64[4] = v65;
        v64[5] = 0x400000000;
        v65[8] = 4;
        v65[9] = v66;
        v65[10] = 0x100000000;
        v66[1] = v67;
        v66[2] = 0x100000000;
        v67[1] = 0;
        v67[2] = 0;
        v67[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v67[4] = 0;
        v67[6] = 0;
        v49 = v28;
        __src = v37;
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v61, &v49, 0, &v49, 1);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v63, &__src, &v51);
        v41 = mlir::Operation::create(v60);
        mlir::OpBuilder::insert((a4 + 1), v41);
        v42 = *(*(v41 + 6) + 16);
        v28 = (v41 - 16);
        mlir::OperationState::~OperationState(v60);
        v43 = v42 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id;
        v18 = v38;
        v21 = v44;
        v22 = v45;
        if (!v43)
        {
          v28 = -16;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v51, v28);
      if (v48 != v23)
      {
        v25 -= 16;
        v26 -= 16;
        v43 = v24 == v23++;
        if (!v43)
        {
          continue;
        }
      }

      break;
    }
  }

  (**a4)(a4, a2, v51 & 0xFFFFFFFFFFFFFFF9, v52);
  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != &v56)
  {
    free(v54);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  return 1;
}

const char *llvm::detail::getTypeNameImpl<FoldTensorCastProducerOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = FoldTensorCastProducerOp]";
  v6 = 86;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC239F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC239F0))
  {
    qword_27FC239E0 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>();
    *algn_27FC239E8 = v1;
    __cxa_guard_release(&qword_27FC239F0);
  }

  return qword_27FC239E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
  v6 = 129;
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
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A18))
  {
    qword_27FC23A08 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>();
    unk_27FC23A10 = v1;
    __cxa_guard_release(&qword_27FC23A18);
  }

  return qword_27FC23A08;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties]";
  v6 = 122;
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
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A40))
  {
    qword_27FC23A30 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>();
    *algn_27FC23A38 = v1;
    __cxa_guard_release(&qword_27FC23A40);
  }

  return qword_27FC23A30;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
  v6 = 127;
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
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
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

uint64_t llvm::getTypeName<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A68))
  {
    qword_27FC23A58 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>();
    unk_27FC23A60 = v1;
    __cxa_guard_release(&qword_27FC23A68);
  }

  return qword_27FC23A58;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties]";
  v6 = 128;
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
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23A90))
  {
    qword_27FC23A80 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>();
    *algn_27FC23A88 = v1;
    __cxa_guard_release(&qword_27FC23A90);
  }

  return qword_27FC23A80;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "tensor.yield", 0xC);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
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

uint64_t llvm::getTypeName<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23AB8))
  {
    qword_27FC23AA8 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>();
    unk_27FC23AB0 = v1;
    __cxa_guard_release(&qword_27FC23AB8);
  }

  return qword_27FC23AA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 127;
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
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
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

uint64_t llvm::getTypeName<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23AE0))
  {
    qword_27FC23AD0 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>();
    *algn_27FC23AD8 = v1;
    __cxa_guard_release(&qword_27FC23AE0);
  }

  return qword_27FC23AD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::PackOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B08))
  {
    qword_27FC23AF8 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>();
    unk_27FC23B00 = v1;
    __cxa_guard_release(&qword_27FC23B08);
  }

  return qword_27FC23AF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::PadOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v4[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v4, a2, "tensor.yield", 0xC);
  v2 = mlir::Operation::create(v4);
  mlir::OperationState::~OperationState(v4);
  return v2;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B30))
  {
    qword_27FC23B20 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>();
    *algn_27FC23B28 = v1;
    __cxa_guard_release(&qword_27FC23B30);
  }

  return qword_27FC23B20;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B58))
  {
    qword_27FC23B48 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>();
    unk_27FC23B50 = v1;
    __cxa_guard_release(&qword_27FC23B58);
  }

  return qword_27FC23B48;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties]";
  v6 = 123;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC23B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B80))
  {
    qword_27FC23B70 = llvm::detail::getTypeNameImpl<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>();
    *algn_27FC23B78 = v1;
    __cxa_guard_release(&qword_27FC23B80);
  }

  return qword_27FC23B70;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

void mlir::affine::AffineDialect::AffineDialect(mlir::affine::AffineDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "affine";
  *(this + 2) = 6;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E9D3A0;
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::ub::UBDialect>(*(this + 4), v5, v6, v7);
  mlir::affine::AffineDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::ub::UBDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "ub", 2, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "ub", 2uLL, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::affine::AffineDialect::~AffineDialect(mlir::affine::AffineDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

BOOL mlir::affine::isTopLevelValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) & 7;
  if (v3 == 7)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v11 = v4;
  if (v4)
  {
    ParentRegion = mlir::Value::getParentRegion(&v11);
  }

  else
  {
    if (v3 == 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1;
    }

    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16) + 120;
    }

    else
    {
      v8 = v6 + 16 * v7 + 16;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      ParentRegion = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      ParentRegion = 0;
    }
  }

  return ParentRegion == a2;
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(uint64_t a1)
{
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id;
  v6 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v2 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id;
  v6 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id;
  v6 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
}

mlir::Operation *mlir::affine::AffineDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

uint64_t mlir::affine::isTopLevelValue(uint64_t a1)
{
  v1 = *(a1 + 8) & 7;
  if (a1 && v1 == 7)
  {
    v2 = *(a1 + 16);
  }

  else
  {
    if (v1 == 7)
    {
      v3 = 0;
    }

    else
    {
      v3 = a1;
    }

    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v5 = v3 + 24 * *(v3 + 16) + 120;
    }

    else
    {
      v5 = v3 + 16 * v4 + 16;
    }

    v2 = *(v5 + 16);
    if (!v2)
    {
      return 0;
    }
  }

  v6 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  v8 = *(**(v7 + 48) + 32);

  return v8();
}

unint64_t mlir::affine::getAffineScope(mlir::affine *this, mlir::Operation *a2)
{
  while (1)
  {
    v3 = *(this + 2);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v4)
    {
      break;
    }

    v5 = this;
    this = *(v4 + 16);
    if (!this)
    {
      break;
    }

    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(this + 6) + 32))(*(this + 6), v6))
    {
      v7 = *(v5 + 2);
      if (v7)
      {
        return *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t mlir::affine::isValidDim(uint64_t a1, unint64_t a2)
{
  if (*(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 0;
  }

  if (mlir::affine::isValidSymbol(a1, a2))
  {
    return 1;
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_11:
      v9 = *(*(*((*(*(a1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16);
      return v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    if ((*(v8 + 46) & 0x80) == 0)
    {
      return 1;
    }

    v13 = *(v8 + 68);
    if (!v13)
    {
      return 1;
    }

    v14 = v13 - 1;
    v15 = (*(v8 + 72) + 24);
    do
    {
      v16 = *v15;
      v15 += 4;
      result = mlir::affine::isValidDim(v16, a2);
      v18 = v14-- != 0;
    }

    while (result && v18);
  }

  else
  {
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(v8);
    if (result)
    {
      v12 = (*v11)(v11, result);

      return mlir::affine::isTopLevelValue(v12);
    }
  }

  return result;
}

uint64_t mlir::affine::isValidSymbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_2;
  }

  v5 = a2;
  v7 = a2 == 0;
  if (a2)
  {
    while (1)
    {
      LOBYTE(v3) = mlir::affine::isTopLevelValue(a1, v5);
      if (v3)
      {
        return v3 & 1;
      }

      if ((~*(a1 + 8) & 7) != 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = *(v8 + 8) & 7;
        if (v9 != 6)
        {
          goto LABEL_25;
        }

        v10 = v8 + 24 * *(v8 + 16);
        v11 = v10 + 120;
        if (v10 != -120)
        {
          goto LABEL_26;
        }
      }

      v12 = *(v5 + 16);
      if (!v12)
      {
        return v3 & 1;
      }

      v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v12 + 48) + 32))(*(v12 + 48), v13))
      {
        return v3 & 1;
      }

      v14 = *(*(v5 + 16) + 16);
      if (!v14)
      {
        return v3 & 1;
      }

      v5 = *(v14 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v5 || *(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        return v3 & 1;
      }

      v7 = 0;
    }
  }

  if ((~v2 & 7) != 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v15 = v8 + 24 * *(v8 + 16);
    v11 = v15 + 120;
    if (v15 == -120)
    {
LABEL_2:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }
  }

  else
  {
LABEL_25:
    v11 = v8 + 16 * v9 + 16;
  }

LABEL_26:
  v39 = 0;
  v41 = &v39;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v41, v11))
  {
LABEL_27:
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  if (mlir::isSpeculatable(v11, v16) && mlir::isMemoryEffectFree(v11, v17))
  {
    if ((*(v11 + 46) & 0x80) == 0)
    {
      goto LABEL_27;
    }

    v18 = *(v11 + 68);
    if (!v18)
    {
      goto LABEL_27;
    }

    v19 = (*(v11 + 72) + 24);
    while ((mlir::affine::isValidSymbol(*v19, v5) & 1) != 0)
    {
      v19 += 4;
      if (!--v18)
      {
        goto LABEL_27;
      }
    }
  }

  v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(v11);
  if (!v20)
  {
    if (!v7)
    {
      v3 = *(v5 + 16);
      if (!v3)
      {
        return v3 & 1;
      }

      v33 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if (((*(**(v3 + 48) + 32))(*(v3 + 48), v33) & 1) == 0)
      {
        v34 = *(*(v5 + 16) + 16);
        if (v34)
        {
          v35 = *(v34 + 24) & 0xFFFFFFFFFFFFFFF8;
          if (v35)
          {
            LOBYTE(v3) = mlir::affine::isValidSymbol(a1, v35);
            return v3 & 1;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v22 = v20;
  v23 = v21;
  v44 = v5;
  v24 = (*v21)(v21, v20);
  LOBYTE(v3) = mlir::affine::isTopLevelValue(v24);
  if ((v3 & 1) == 0 && (~*((*v23)(v23, v22) + 8) & 7) != 0)
  {
    v25 = v23[1](v23, v22);
    ConstantIntValue = mlir::getConstantIntValue(v25);
    if (v27)
    {
      v28 = ConstantIntValue;
      v29 = (*v23)(v23, v22);
      if ((~*(v29 + 8) & 7) != 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v31 = *(v30 + 8) & 7;
        if (v31 == 6)
        {
          v32 = (v30 + 24 * *(v30 + 16) + 120);
        }

        else
        {
          v32 = (v30 + 16 * v31 + 16);
        }
      }

      else
      {
        v32 = 0;
      }

      while (v32 && *(v32[6] + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
      {
        v36 = *(v32[9] + 24);
        v37 = *(v36 + 8);
        if (*(*(v37 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
        {
          if ((~v37 & 7) == 0)
          {
            v36 = 0;
          }

          if (v36)
          {
            v38 = *(v36 + 8) & 7;
            v32 = (v38 == 6 ? v36 + 24 * *(v36 + 16) + 120 : v36 + 16 * v38 + 16);
            if (v32)
            {
              continue;
            }
          }
        }

        goto LABEL_2;
      }

      v43 = v28;
      v42 = 0;
      v40[0] = &v43;
      v40[1] = &v44;
      v41 = v32;
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v41, v40);
      LOBYTE(v3) = HIBYTE(v42) & v42;
    }
  }

  return v3 & 1;
}

uint64_t mlir::affine::isValidSymbol(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(*(*(result + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 0;
    }

    if (mlir::affine::isTopLevelValue(result))
    {
      return 1;
    }

    v3 = *(v1 + 8) & 7;
    v4 = v3 == 7;
    if (v3 == 7)
    {
      v5 = 0;
    }

    else
    {
      v5 = v1;
    }

    if (v4)
    {
      return 0;
    }

    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16);
      result = v7 + 120;
      if (v7 == -120)
      {
        return result;
      }
    }

    else
    {
      result = v5 + 16 * v6 + 16;
    }

    AffineScope = mlir::affine::getAffineScope(result, v2);

    return mlir::affine::isValidSymbol(v1, AffineScope);
  }

  return result;
}

uint64_t mlir::affine::parseDimAndSymbolList(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v15[32] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x800000000;
  if ((*(*a1 + 720))(a1, &v13, 1, 1, 0xFFFFFFFFLL))
  {
    *a3 = v14;
    v6 = *(**(*(*a1 + 32))(a1) + 472);
    if ((*(*a1 + 720))(a1, &v13, 6, 1, 0xFFFFFFFFLL))
    {
      if (v14)
      {
        v7 = v13;
        v8 = 32 * v14 - 32;
        do
        {
          v9 = (*(*a1 + 728))(a1, v7, v6, a2);
          if ((v9 & 1) == 0)
          {
            break;
          }

          v7 += 32;
          v10 = v8;
          v8 -= 32;
        }

        while (v10);
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9 & 1;
  }

  else
  {
    v11 = 0;
  }

  if (v13 != v15)
  {
    free(v13);
  }

  return v11;
}

BOOL mlir::affine::AffineApplyOp::parse(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v18 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v18, a2 + 112))
  {
    return 0;
  }

  v17 = 0;
  if (!mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v17) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v18 + 8);
  if (*v5 != v17 || *(a2 + 24) != v5[1] + *v5)
  {
    v14 = (*(*a1 + 16))(a1);
    v15 = "dimension or symbol index mismatch";
    v16 = 259;
    (*(*a1 + 24))(v19, a1, v14, &v15);
    v12 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v12;
  }

  v6 = v5[2];
  v7 = *(a2 + 72);
  if (v7 + v6 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v7 + v6, 8);
    v7 = *(a2 + 72);
    if (v6)
    {
LABEL_8:
      v8 = 0;
      v9 = vdupq_n_s64(v6 - 1);
      v10 = (*(a2 + 64) + 8 * v7 + 8);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v8), xmmword_25D0A0500)));
        if (v11.i8[0])
        {
          *(v10 - 1) = v4;
        }

        if (v11.i8[4])
        {
          *v10 = v4;
        }

        v8 += 2;
        v10 += 2;
      }

      while (((v6 + 1) & 0x1FFFFFFFELL) != v8);
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  *(a2 + 72) = v7 + v6;
  return 1;
}

llvm::raw_ostream *printDimAndSymbolList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a4 - a2;
  v11 = (*(*a6 + 16))(a6);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 40);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 40;
  }

  v34 = a1;
  v13 = a1 + 32 * a2;
  v14 = a5;
  if (v10 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  v16 = (*(*a6 + 16))(a6);
  if (v15)
  {
    v17 = v16;
    (*(*a6 + 160))(a6, *(v13 + 24));
    v18 = v15 - 1;
    if (v15 != 1)
    {
      v19 = (v13 + 56);
      do
      {
        v20 = *(v17 + 4);
        if (*(v17 + 3) - v20 > 1uLL)
        {
          *v20 = 8236;
          *(v17 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }

        v21 = *v19;
        v19 += 4;
        (*(*a6 + 160))(a6, v21);
        --v18;
      }

      while (v18);
    }
  }

  result = (*(*a6 + 16))(a6);
  v23 = *(result + 4);
  if (v23 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
  }

  else
  {
    *(result + 4) = v23 + 1;
    *v23 = 41;
  }

  if (v10 > v14)
  {
    v24 = (*(*a6 + 16))(a6);
    v25 = *(v24 + 4);
    if (v25 >= *(v24 + 3))
    {
      llvm::raw_ostream::write(v24, 91);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 91;
    }

    v26 = (*(*a6 + 16))(a6);
    (*(*a6 + 160))(a6, *(v13 + 32 * v14 + 24));
    if (v10 - v14 != 1)
    {
      v27 = a2 + v14 - a4 + 1;
      v28 = (32 * a2 + 32 * v14 + v34 + 56);
      do
      {
        v29 = *(v26 + 4);
        if (*(v26 + 3) - v29 > 1uLL)
        {
          *v29 = 8236;
          *(v26 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v26, ", ", 2uLL);
        }

        v30 = *v28;
        v28 += 4;
        (*(*a6 + 160))(a6, v30);
      }

      while (!__CFADD__(v27++, 1));
    }

    result = (*(*a6 + 16))(a6);
    v32 = *(result + 4);
    if (v32 >= *(result + 3))
    {

      return llvm::raw_ostream::write(result, 93);
    }

    else
    {
      *(result + 4) = v32 + 1;
      *v32 = 93;
    }
  }

  return result;
}

void composeAffineMapAndOperands(unsigned int **a1, void **a2)
{
  v2 = a2;
  v61[6] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!(*a1)[2])
  {
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
    return;
  }

  v5 = *a2;
  v6 = *v2 + 8 * *v4;
  v48 = *(v4 + 2);
  v56 = v58;
  *v57 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v56, v5, v6);
  v7 = *v2 + 8 * **a1;
  v8 = *v2 + 8 * *(v2 + 2);
  v53 = v55;
  *v54 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v53, v7, v8);
  v10 = v57[0];
  v11 = v54[0];
  if (!(v54[0] | v57[0]))
  {
    goto LABEL_35;
  }

  v12 = v61;
  do
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = v56 + 8 * v13;
      if (v10 <= v14)
      {
        v15 = v53 + 8 * (v14 - v10);
      }

      v16 = *v15;
      if (!*v15 || (*(v16 + 8) & 7) == 7)
      {
        goto LABEL_14;
      }

      v17 = *(v16 + 8) & 7;
      if (v17 == 6)
      {
        v18 = v16 + 24 * *(v16 + 16) + 120;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v18 = v16 + 16 * v17 + 16;
      }

      if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
      {
        break;
      }

LABEL_14:
      v13 = (v14 + 1);
      v14 = v13;
      if (v11 + v10 == v13)
      {
        goto LABEL_35;
      }
    }

    v46 = *(*a1 + 2);
    *v15 = 0;
    v19 = *(v18 + 44);
    v50 = *(*(v18 + 16 * ((v19 >> 23) & 1) + 64) + 8);
    v44 = v2;
    if ((v19 & 0x800000) != 0)
    {
      v20 = *(v18 + 72);
      v21 = *(v18 + 68);
      v22 = v20;
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v21 = 0;
    }

    v23 = v12;
    v59 = v12;
    v60 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v59, v20, 0, v22, v21);
    mlir::affine::canonicalizeMapAndOperands(&v50, &v59);
    v49[0] = mlir::AffineMap::shiftDims(&v50, v57[0], 0);
    v45 = *(mlir::AffineMap::shiftSymbols(v49, v54[0], 0) + 24);
    v24 = v59;
    v25 = *(v50 + 1);
    if (v60 >= *v50)
    {
      v26 = *v50;
    }

    else
    {
      v26 = v60;
    }

    if (v60 <= v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = v60 - v25;
    }

    if (v60 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v60;
    }

    if (v10 <= v14)
    {
      v30 = v14 - v10;
      v29 = 7;
    }

    else
    {
      v29 = 6;
      v30 = v14;
    }

    AffineDimOrSymbol = getAffineDimOrSymbol(v29, v30, v46);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v56, v24 & 0xFFFFFFFFFFFFFFF9, 0, v24 & 0xFFFFFFFFFFFFFFF9, v26);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v53, (v24 + 8 * v27) & 0xFFFFFFFFFFFFFFF9, 0, (v24 + 8 * v27) & 0xFFFFFFFFFFFFFFF9, v28);
    *a1 = mlir::AffineMap::replace(a1, AffineDimOrSymbol, v45, v57[0], v54[0]);
    v12 = v23;
    if (v59 != v23)
    {
      free(v59);
    }

    v10 = v57[0];
    v11 = v54[0];
    v2 = v44;
  }

  while (v54[0] | v57[0]);
LABEL_35:
  *(v2 + 2) = 0;
  v59 = v61;
  v60 = 0x400000000;
  v50 = v52;
  v51 = 0x400000000;
  if (v10 < 5)
  {
    v32 = 4;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v10, 8);
    v11 = v54[0];
    v32 = HIDWORD(v51);
  }

  v47 = a1;
  if (v32 < v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v11, 8);
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v49[0] = &v56;
  v49[1] = &v53;
  do
  {
    v36 = v49[v35];
    if (v36 == &v56)
    {
      v37 = &v59;
    }

    else
    {
      v37 = &v50;
    }

    v38 = *(v36 + 2);
    if (v38)
    {
      v39 = *v36;
      v40 = 8 * v38;
      do
      {
        v41 = *v39;
        if (*v39)
        {
          if (v36 == &v56)
          {
            v42 = getAffineDimOrSymbol(6u, v33, v48);
            v33 = (v33 + 1);
          }

          else
          {
            v42 = getAffineDimOrSymbol(7u, v34, v48);
            v34 = (v34 + 1);
          }

          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v37, v42);
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v2, v41);
        }

        else
        {
          AffineConstantExpr = mlir::getAffineConstantExpr(0, v48, v9);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(v37, AffineConstantExpr);
        }

        ++v39;
        v40 -= 8;
      }

      while (v40);
    }

    ++v35;
  }

  while (v35 != 2);
  *v47 = mlir::AffineMap::replaceDimsAndSymbols(v47, v59, v60, v50, v51, v33, v34);
  mlir::affine::canonicalizeMapAndOperands(v47, v2);
  *v47 = mlir::simplifyAffineMap(*v47);
  if (v50 != v52)
  {
    free(v50);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v25[0] = *a1;
  v25[1] = 0;
  v26 = *(a1 + 16);
  v28 = v30;
  v29 = 0x600000000;
  v27 = mlir::foldAttributesIntoMap(v25, a3, a4, a5, &v28);
  composeAffineMapAndOperands(&v27, &v28);
  v7 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(v25, *(**a2 + 32));
  v31 = a2;
  v32 = v7;
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
  mlir::affine::AffineApplyOp::build(v25, &v31, v27, v28 & 0xFFFFFFFFFFFFFFF9, v29);
  v8 = mlir::Operation::create(&v31);
  mlir::OpBuilder::insert(v25, v8);
  v9 = *(*(v8 + 6) + 16);
  mlir::OperationState::~OperationState(&v31);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v8 = 0;
  }

  if (v8[46] < 0)
  {
    v10 = *(v8 + 17);
  }

  else
  {
    v10 = 0;
  }

  v31 = v33;
  v32 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::resizeImpl<false>(&v31, v10);
  if (!v32)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = 8 * v32;
  v13 = 24;
  do
  {
    v14 = *(*(v8 + 9) + v13);
    v28 = v31 + v11;
    if ((~*(v14 + 8) & 7) == 0)
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = *(v14 + 8) & 7;
      if (v15 != 6)
      {
        v17 = v14 + 16 * v15 + 16;
LABEL_16:
        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v28, v17);
        goto LABEL_17;
      }

      v16 = v14 + 24 * *(v14 + 16);
      v17 = v16 + 120;
      if (v16 != -120)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v11 += 8;
    v13 += 32;
  }

  while (v12 != v11);
  v18 = v32;
LABEL_20:
  v28 = v30;
  v29 = 0x600000000;
  if ((mlir::Operation::fold(v8, v31, v18, &v28) & 1) != 0 && v29)
  {
    if (*(v8 + 2))
    {
      *(v8 + 2) = 0;
      v20 = *v8;
      v19 = *(v8 + 1);
      *v19 = *v8;
      *(v20 + 8) = v19;
      *v8 = 0;
      *(v8 + 1) = 0;
    }

    mlir::Operation::destroy(v8);
    v21 = v28;
    v22 = *v28;
  }

  else
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      (*(*v23 + 16))(v23, v8, 0, 0);
    }

    v22 = (v8 - 16) | 4;
    v21 = v28;
  }

  if (v21 != v30)
  {
    free(v21);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  return v22;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11[0] = &v12;
  v11[1] = 1;
  v12 = a3;
  mlir::AffineMap::inferFromExprList(v11, 1uLL, *a1, &v13);
  ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a1, a2, *v13, a4, a5);
  if (v13 != v14)
  {
    free(v13);
  }

  return ComposedFoldedAffineApply;
}

void mlir::affine::canonicalizeMapAndOperands(uint64_t *a1, uint64_t *a2)
{
  v72[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a2 + 2);
    if (v3)
    {
      v5 = *(*a1 + 16);
      v67 = v69;
      v68 = 0x800000000;
      if (v3 <= 8)
      {
        __src = v63;
        v62 = 0x800000000;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v3, 8);
        v6 = *(a2 + 2);
        __src = v63;
        v62 = 0x800000000;
        if (v6 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v63, v6, 8);
        }
      }

      v7 = **a1;
      v8 = *(*a1 + 4);
      v70 = v72;
      v71 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v70, v7);
      v10 = **a1;
      v9 = *(*a1 + 4);
      v11 = (v9 + v10);
      if (v9 + v10)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        do
        {
          if (v12 >= **a1)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, *(*a2 + 8 * v12));
          }

          else if (mlir::affine::isValidSymbol(*(*a2 + 8 * v12)))
          {
            AffineDimOrSymbol = getAffineDimOrSymbol(7u, (v14 + v8), v5);
            v70[v12] = AffineDimOrSymbol;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, *(*a2 + 8 * v12));
            ++v14;
          }

          else
          {
            v16 = getAffineDimOrSymbol(6u, v13, v5);
            v70[v12] = v16;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v67, *(*a2 + 8 * v12));
            v13 = (v13 + 1);
          }

          ++v12;
        }

        while (v11 != v12);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&v67, __src, __src + 8 * v62);
      llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v67);
      *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v70, v71, 0, 0, v13, (v14 + v8));
      if (v70 != v72)
      {
        free(v70);
      }

      if (__src != v63)
      {
        free(__src);
      }

      if (v67 != v69)
      {
        free(v67);
      }

      llvm::SmallBitVector::SmallBitVector(&v57, **a1, 0);
      llvm::SmallBitVector::SmallBitVector(&v56, *(*a1 + 4), 0);
      v67 = &v57;
      v68 = &v56;
      v17 = *a1;
      v18 = *(*a1 + 8);
      if (v18)
      {
        v19 = 8 * v18;
        v20 = (v17 + 24);
        do
        {
          v21 = *v20++;
          mlir::AffineExpr::walk<void>(v21, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v67);
          v19 -= 8;
        }

        while (v19);
        v17 = *a1;
      }

      v51 = *(v17 + 16);
      v70 = v72;
      v71 = 0x800000000;
      v22 = *(a2 + 2);
      if (v22 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v22, 8);
      }

      v67 = 1;
      for (i = 8; i != 136; i += 16)
      {
        *(&v67 + i) = -4096;
      }

      v24 = **a1;
      v64 = v66;
      v65 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v64, v24);
      v25 = **a1;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        while (1)
        {
          if (v57)
          {
            if (((1 << v26) & (v57 >> 1) & ~(-1 << (v57 >> 58))) != 0)
            {
LABEL_37:
              v28 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&v67, *(*a2 + 8 * v26));
              v29 = (v68 + 16 * v69[0]);
              if (v67)
              {
                v29 = &v70;
              }

              if (v29 == v28)
              {
                v30 = getAffineDimOrSymbol(6u, v27, v51);
                *(v64 + v26) = v30;
                llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v70, *(*a2 + 8 * v26));
                v31 = *(v64 + v26);
                v58 = *(*a2 + 8 * v26);
                v59 = v31;
                llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v67, &v58, &v59);
                v27 = (v27 + 1);
              }

              else
              {
                *(v64 + v26) = *(v28 + 8);
              }
            }
          }

          else if ((*(*v57 + 8 * (v26 >> 6)) & (1 << v26)) != 0)
          {
            goto LABEL_37;
          }

          if (v25 == ++v26)
          {
            goto LABEL_45;
          }
        }
      }

      v27 = 0;
LABEL_45:
      __src = 1;
      for (j = 8; j != 136; j += 16)
      {
        *(&__src + j) = -4096;
      }

      v33 = *(*a1 + 4);
      v58 = v60;
      v59 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v58, v33);
      v34 = *(*a1 + 4);
      if (v34)
      {
        v35 = 0;
        v50 = 0;
        while (1)
        {
          if (v56)
          {
            if (((1 << v35) & (v56 >> 1) & ~(-1 << (v56 >> 58))) != 0)
            {
LABEL_53:
              v55 = 0;
              v36 = *a1;
              v37 = *a2;
              v38 = *(*a2 + 8 * (v35 + **a1));
              v52[0] = &v55;
              if ((~*(v38 + 8) & 7) == 0)
              {
                v38 = 0;
              }

              if (!v38)
              {
                goto LABEL_66;
              }

              v39 = *(v38 + 8) & 7;
              if (v39 == 6)
              {
                v40 = v38 + 24 * *(v38 + 16);
                v41 = v40 + 120;
                if (v40 == -120)
                {
LABEL_66:
                  v45 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&__src, *(v37 + 8 * (v35 + *v36)));
                  v46 = (v62 + 16 * v63[0]);
                  if (__src)
                  {
                    v46 = &v64;
                  }

                  if (v46 == v45)
                  {
                    v47 = getAffineDimOrSymbol(7u, v50, v51);
                    *(v58 + v35) = v47;
                    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v70, *(*a2 + 8 * (v35 + **a1)));
                    v48 = *(v58 + v35);
                    v53 = *(*a2 + 8 * (v35 + **a1));
                    v54 = v48;
                    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v52, &__src, &v53, &v54);
                    ++v50;
                  }

                  else
                  {
                    *(v58 + v35) = *(v45 + 8);
                  }

                  goto LABEL_73;
                }
              }

              else
              {
                v41 = v38 + 16 * v39 + 16;
              }

              if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v52, v41))
              {
                v43 = *(v55 + 24);
                if (v43 > 0x40)
                {
                  operator new[]();
                }

                if (v43)
                {
                  v44 = (*(v55 + 16) << -v43) >> -v43;
                }

                else
                {
                  v44 = 0;
                }

                AffineConstantExpr = mlir::getAffineConstantExpr(v44, v51, v42);
                *(v58 + v35) = AffineConstantExpr;
                goto LABEL_73;
              }

              v36 = *a1;
              v37 = *a2;
              goto LABEL_66;
            }
          }

          else if ((*(*v56 + 8 * (v35 >> 6)) & (1 << v35)) != 0)
          {
            goto LABEL_53;
          }

LABEL_73:
          if (v34 == ++v35)
          {
            goto LABEL_76;
          }
        }
      }

      v50 = 0;
LABEL_76:
      *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v64, v65, v58, v59, v27, v50);
      llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v70);
      if (v58 != v60)
      {
        free(v58);
      }

      if ((__src & 1) == 0)
      {
        MEMORY[0x25F891030](v62, 8);
      }

      if (v64 != v66)
      {
        free(v64);
      }

      if ((v67 & 1) == 0)
      {
        MEMORY[0x25F891030](v68, 8);
      }

      if (v70 != v72)
      {
        free(v70);
      }

      llvm::SmallBitVector::~SmallBitVector(&v56);
      llvm::SmallBitVector::~SmallBitVector(&v57);
    }
  }
}

uint64_t mlir::affine::AffineDmaStartOp::getSrcIndices(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v1 = *(this + 9);
  }

  else
  {
    v1 = 0;
  }

  (*(**(this + 6) + 80))(*(this + 6), this, "src_map", 7);
  return v1 + 32;
}

uint64_t mlir::affine::AffineDmaStartOp::getDstIndices(mlir::affine::AffineDmaStartOp *this)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(**(v2 + 48) + 80))(*(v2 + 48), v2, "src_map", 7);
  v5 = (**(v4 + 8) + *(*(v4 + 8) + 4) + 1);
  (*(**(*this + 48) + 80))(*(*this + 48), *this, "src_map", 7);
  (*(**(*this + 48) + 80))(*(*this + 48), *this, "dst_map", 7);
  return v3 + 32 * v5 + 32;
}

uint64_t mlir::affine::AffineDmaStartOp::getTagIndices(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 72);
  }

  else
  {
    v2 = 0;
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  (*(**(*this + 48) + 80))(*(*this + 48), *this, "tag_map", 7);
  return v2 + 32 * TagMemRefOperandIndex + 32;
}

BOOL mlir::affine::AffineDmaStartOp::isStrided(mlir::affine::AffineDmaStartOp *this)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(this);
  v4 = (*(**(*this + 48) + 80))(*(*this + 48), *this, "tag_map", 7);
  return v2 != TagMemRefOperandIndex + **(v4 + 8) + *(*(v4 + 8) + 4) + 2;
}

uint64_t mlir::affine::AffineDmaStartOp::parse(uint64_t a1, uint64_t a2)
{
  v44[16] = *MEMORY[0x277D85DE8];
  memset(v27, 0, 24);
  v26 = 0;
  v42 = v44;
  v43 = 0x400000000;
  memset(v25, 0, 24);
  v24 = 0;
  v39 = v41;
  v40 = 0x400000000;
  memset(v23, 0, 24);
  v22 = 0;
  v36 = v38;
  v37 = 0x400000000;
  memset(v21, 0, 24);
  v33 = v35;
  v34 = 0x200000000;
  v30 = v32;
  v31 = 0x300000000;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  if (((*(*a1 + 704))(a1, v27, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v42, &v26, "src_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v25, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v39, &v24, "dst_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v23, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v36, &v22, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v21, 1) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(a1, &v33, 0) & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((v34 & 0xFFFFFFFD) != 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = "expected two stride related operands";
LABEL_14:
    v19[0] = v6;
    v20 = 259;
    (*(*a1 + 24))(v28, a1, v5, v19);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    goto LABEL_43;
  }

  v18 = v34;
  if (((*(*a1 + 584))(a1, &v30) & 1) == 0)
  {
LABEL_42:
    v7 = 0;
    goto LABEL_43;
  }

  if (v31 != 3)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = "expected three types";
    goto LABEL_14;
  }

  if (((*(*a1 + 728))(a1, v27, *v30, a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v43)
  {
    v8 = v42;
    v9 = 32 * v43;
    while (((*(*a1 + 728))(a1, v8, v4, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_55;
  }

LABEL_22:
  if (((*(*a1 + 728))(a1, v25, *(v30 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v40)
  {
    v10 = v39;
    v11 = 32 * v40;
    while (((*(*a1 + 728))(a1, v10, v4, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_55;
  }

LABEL_27:
  if (((*(*a1 + 728))(a1, v23, *(v30 + 2), a2 + 16) & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v37)
  {
    v12 = v36;
    v13 = 32 * v37;
    while (((*(*a1 + 728))(a1, v12, v4, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_55;
  }

LABEL_32:
  if (((*(*a1 + 728))(a1, v21, v4, a2 + 16) & 1) == 0)
  {
LABEL_55:
    v7 = 0;
    goto LABEL_43;
  }

  if (v18 == 2 && v34)
  {
    v14 = v33;
    v15 = 32 * v34;
    while (((*(*a1 + 728))(a1, v14, v4, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_55;
  }

LABEL_38:
  if (v43 == *(*(v26 + 8) + 4) + **(v26 + 8) && v40 == *(*(v24 + 8) + 4) + **(v24 + 8) && v37 == *(*(v22 + 8) + 4) + **(v22 + 8))
  {
    v7 = 1;
  }

  else
  {
    v17 = (*(*a1 + 16))(a1);
    v19[0] = "memref operand count not equal to map.numInputs";
    v20 = 259;
    (*(*a1 + 24))(v28, a1, v17, v19);
    v7 = v29 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

LABEL_43:
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return v7 & 1;
}

uint64_t mlir::OpAsmParser::parseTrailingOperandList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    return 1;
  }

  v6 = *(*a1 + 720);

  return v6(a1, a2, a3, 1, 0xFFFFFFFFLL);
}

uint64_t mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(mlir::affine::AffineDmaStartOp *this)
{
  v4 = **((*(**(*this + 48) + 80))(*(*this + 48), *this, "src_map", 7) + 8);
  v2.i64[0] = **((*(**(*this + 48) + 80))(*(*this + 48), *this, "dst_map", 7) + 8);
  v2.i64[1] = v4;
  return (vaddvq_s32(v2) + 2);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 >= *(result + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(result, a2, a3, a4);
  }

  v5 = *result + 40 * v4;
  *v5 = a2;
  *(v5 + 8) = a4;
  *(v5 + 16) = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  ++*(result + 8);
  return result;
}

uint64_t mlir::affine::AffineDmaWaitOp::getTagIndices(mlir::affine::AffineDmaWaitOp *this)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v1 = *(this + 9);
  }

  else
  {
    v1 = 0;
  }

  (*(**(this + 6) + 80))(*(this + 6), this, "tag_map", 7);
  return v1 + 32;
}

uint64_t mlir::affine::AffineDmaWaitOp::parse(uint64_t a1, uint64_t a2)
{
  v21[8] = *MEMORY[0x277D85DE8];
  memset(v16, 0, 24);
  v14 = 0;
  v15 = 0;
  v19 = v21;
  v20 = 0x200000000;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v13, 0, 24);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v19, &v15, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v13, 1) & 1) == 0 || ((*(*a1 + 576))(a1, &v14) & 1) == 0 || ((*(*a1 + 728))(a1, v16, v14, a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v20)
  {
    v5 = v19;
    v6 = 32 * v20;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  if (((*(*a1 + 728))(a1, v13, v4, a2 + 16) & 1) == 0)
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    if (v20 == *(*(v15 + 8) + 4) + **(v15 + 8))
    {
      v9 = 1;
      goto LABEL_15;
    }

    v7 = (*(*a1 + 16))(a1);
    v8 = "tag memref operand count != to map.numInputs";
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected tag to be of memref type";
  }

  v11 = v8;
  v12 = 259;
  (*(*a1 + 24))(v17, a1, v7, &v11);
  v9 = v18 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
LABEL_15:
  if (v19 != v21)
  {
    free(v19);
  }

  return v9 & 1;
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
LABEL_8:
    v11 = 1;
    return v11 & 1;
  }

  v7 = 0;
  v8 = (a2 + 24);
  while (1)
  {
    v9 = *v8;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 >= a4)
    {
      break;
    }

    if ((mlir::affine::isValidDim(v9, AffineScope) & 1) == 0)
    {
      v12 = "operand cannot be used as a dimension id";
      goto LABEL_10;
    }

LABEL_7:
    ++v7;
    v8 += 4;
    if (a3 == v7)
    {
      goto LABEL_8;
    }
  }

  if (mlir::affine::isValidSymbol(v9, AffineScope))
  {
    goto LABEL_7;
  }

  v12 = "operand cannot be used as a symbol";
LABEL_10:
  v14 = v12;
  v15 = 259;
  mlir::Operation::emitOpError(v16, *a1, &v14);
  v11 = v17 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  return v11 & 1;
}

uint64_t mlir::affine::AffineForOp::getNumIterOperands(mlir::affine::AffineForOp *this)
{
  v1 = *(this + 11);
  v2 = this + 16 * ((v1 >> 23) & 1);
  v3 = *(*(v2 + 8) + 8);
  v4 = *(*(v2 + 10) + 8);
  if ((v1 & 0x800000) != 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  v6.i64[0] = *v4;
  v6.i64[1] = *v3;
  return (v5 - vaddvq_s32(v6));
}

BOOL mlir::affine::AffineForOp::parse(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  memset(v36, 0, 24);
  v38 = 0;
  v36[5] = 0;
  v37 = 0;
  v36[4] = *(**v4 + 472);
  if (((*(*a1 + 752))(a1, v36, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if ((parseBound(1, a2, a1) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 24);
  v45 = " between bounds";
  v47[8] = 259;
  if (((*(*a1 + 400))(a1, "to", 2, &v45) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if ((parseBound(0, a2, a1) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v34 = v8;
    v35 = v7;
    v13 = *(*(*(a2 + 8) + 96) + 8);
    IntegerAttr = mlir::Builder::getIntegerAttr(v4, *(**v4 + 472), 1);
    mlir::NamedAttrList::push_back(a2 + 112, v13, IntegerAttr);
    goto LABEL_10;
  }

  v9 = (*(*a1 + 40))(a1);
  v42 = 0;
  v10 = *(*(*(a2 + 8) + 96) + 8);
  v11 = *(v10 + 16);
  v12 = v11 ? strlen(*(v10 + 16)) : 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v42, *(**v4 + 472), v11, v12, a2 + 112))
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v45, &v42);
  v29 = v46 - 1;
  if (v46 > 0x40)
  {
    v31 = *(v45 + (v29 >> 6));
    MEMORY[0x25F891010]();
    if ((v31 >> v29))
    {
      goto LABEL_28;
    }
  }

  else if ((v45 >> v29))
  {
LABEL_28:
    v39 = "expected step to be representable as a positive signed integer";
    v41 = 259;
    (*(*a1 + 24))(&v45, a1, v9, &v39);
    v28 = (v48 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    return v28;
  }

  v34 = v8;
  v35 = v7;
LABEL_10:
  v45 = v47;
  v46 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v15 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(&v45, v36, 1);
  v16 = v45 + 64 * v46;
  v17 = *v15;
  v18 = v15[1];
  v19 = v15[3];
  v16[2] = v15[2];
  v16[3] = v19;
  *v16 = v17;
  v16[1] = v18;
  LODWORD(v46) = v46 + 1;
  if (((*(*a1 + 408))(a1, "iter_args", 9) & 1) == 0)
  {
    goto LABEL_22;
  }

  if (mlir::OpAsmParser::parseAssignmentList(a1) & 1) != 0 && ((*(*a1 + 560))(a1, a2 + 64))
  {
    if (v46 != 1)
    {
      if (v43)
      {
        v20 = *(a2 + 72);
        if (v20)
        {
          v21 = 0;
          v22 = v42;
          v23 = *(a2 + 64);
          v33 = (v46 << 6) - 128;
          v24 = v45 + 96;
          v32 = (v20 << 6) - 64;
          v25 = (v43 << 6) - 64;
          while (1)
          {
            *&v24[v21] = *v23;
            if (((*(*a1 + 728))(a1, v22) & 1) == 0)
            {
              goto LABEL_23;
            }

            if (v33 != v21 && v25 != v21)
            {
              v22 += 32;
              ++v23;
              v26 = v32 == v21;
              v21 += 64;
              if (!v26)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

LABEL_22:
    LODWORD(v39) = v6 - v5;
    HIDWORD(v39) = v34 - v35;
    LODWORD(v40) = v43;
    v27 = mlir::detail::DenseArrayAttrImpl<int>::get(*v4, &v39, 3);
    mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v27);
    mlir::OperationState::addRegion(a2);
  }

LABEL_23:
  v28 = 0;
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return v28;
}

uint64_t parseBound(int a1, uint64_t a2, uint64_t a3)
{
  v35[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = "max";
  }

  else
  {
    v6 = "min";
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = (*(*a3 + 408))(a3, v6, 3);
  v9 = (*(*a3 + 32))(a3);
  v10 = *(*(*(a2 + 8) + 96) + v7);
  v33 = v35;
  v34 = 0x100000000;
  if (((*(*a3 + 720))(a3, &v33, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v34)
  {
    if (v34 == 1)
    {
      if ((*(*a3 + 728))(a3, v33, *(**v9 + 472), a2 + 16))
      {
        SymbolIdentityMap = mlir::Builder::getSymbolIdentityMap(v9);
LABEL_12:
        v12 = mlir::AffineMapAttr::get(SymbolIdentityMap);
        mlir::NamedAttrList::push_back(a2 + 112, v10, v12);
        v13 = 1;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = "expected only one loop bound operand";
    goto LABEL_22;
  }

  v14 = (*(*a3 + 40))(a3);
  v28 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a3, &v28, *(**v9 + 472), *(v10 + 16), *(v10 + 24), a2 + 112))
  {
LABEL_20:
    v13 = 0;
    goto LABEL_24;
  }

  v15 = v28;
  v16 = *(*v28 + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v17 = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v18 = v28;
    }

    else
    {
      v18 = 0;
    }

    v31[0] = v18;
    if (v17)
    {
      --*(a2 + 120);
      Int = mlir::IntegerAttr::getInt(v31);
      SymbolIdentityMap = mlir::Builder::getConstantAffineMap(v9, Int, v26);
      goto LABEL_12;
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = "expected valid affine map representation for loop bounds";
    goto LABEL_22;
  }

  v22 = *(a2 + 24);
  v27 = 0;
  v13 = 0;
  if (mlir::affine::parseDimAndSymbolList(a3, a2 + 16, &v27))
  {
    v23 = *(v15 + 8);
    if (*v23 == v27)
    {
      if (v23[1] + *v23 == *(a2 + 24) - v22)
      {
        v13 = 1;
        if (v23[2] >= 2u && (v8 & 1) == 0)
        {
          if (a1)
          {
            v24 = "lower loop bound affine map with multiple results requires 'max' prefix";
          }

          else
          {
            v24 = "upper loop bound affine map with multiple results requires 'min' prefix";
          }

          v29[0] = v24;
          v30 = 259;
          (*(*a3 + 24))(v31, a3, v14, v29);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v19 = (*(*a3 + 16))(a3);
      v20 = "symbol operand count and affine map symbol count must match";
    }

    else
    {
      v19 = (*(*a3 + 16))(a3);
      v20 = "dim operand count and affine map dim count must match";
    }

LABEL_22:
    v29[0] = v20;
    v30 = 259;
    (*(*a3 + 24))(v31, a3, v19, v29);
LABEL_23:
    v13 = v32 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
  }

LABEL_24:
  if (v33 != v35)
  {
    free(v33);
  }

  return v13 & 1;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v14 = v21;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14;
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v22[0] = a4;
    v22[1] = a5;
    v16 = mlir::StringAttr::get(v15, v22, v13);
    mlir::NamedAttrList::push_back(a6, v16, v14);
    return 1;
  }

  else
  {
    v19 = "invalid kind of attribute specified";
    v20 = 259;
    (*(*a1 + 24))(v22, a1, v12, &v19);
    v17 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  return v17;
}

llvm::raw_ostream *printBound(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  if (*(v9 + 8) != 1)
  {
    v17 = (*(*a5 + 16))(a5);
    llvm::raw_ostream::operator<<(v17, a4);
    v18 = (*(*a5 + 16))(a5);
    v19 = *(v18 + 4);
    if (v19 >= *(v18 + 3))
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      *(v18 + 4) = v19 + 1;
      *v19 = 32;
    }

    goto LABEL_15;
  }

  if (*v9)
  {
    goto LABEL_15;
  }

  v10 = *(v9 + 24);
  v11 = *(v9 + 4);
  if (v11 != 1)
  {
    if (!v11 && *(v10 + 8) == 5 && v10 != 0)
    {
      v13 = *(v10 + 16);
      v14 = (*(*a5 + 16))(a5, a2, a3, a4);

      return llvm::write_integer(v14, v13, 0, 0);
    }

    goto LABEL_15;
  }

  if (*(v10 + 8) != 7 || v10 == 0)
  {
LABEL_15:
    (*(*a5 + 40))(a5, a1, a3, a4);
    v20 = *v9;

    return printDimAndSymbolList(a2, 0, a2, a3, v20, a5);
  }

  v22 = *(a2 + 24);
  v23 = *(*a5 + 160);

  return v23(a5, v22);
}

uint64_t mlir::affine::AffineForOp::getStepAsInt(mlir::affine::AffineForOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  v2 = *(v1 + 24);
  if (v2 > 0x40)
  {
    operator new[]();
  }

  if (v2)
  {
    return (*(v1 + 16) << -v2) >> -v2;
  }

  else
  {
    return 0;
  }
}

__n128 mlir::affine::AffineForOp::getSuccessorRegions(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((v7 & (TrivialConstantTripCount == 1)) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    if (TrivialConstantTripCount)
    {
      v10 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v11 + 48);
      v8 = ((*(v11 + 56) - v12) >> 3) - 1;
      v25 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v26 = (v12 + 8) & 0xFFFFFFFFFFFFFFF9;
LABEL_12:
      v27 = v8;
      v13 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v25, 1);
      v14 = (*a3 + 24 * *(a3 + 8));
      goto LABEL_19;
    }

LABEL_3:
    v8 = *(*a1 + 36);
    v9 = (*a1 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v8)
    {
      v9 = 4;
    }

    v25 = 0;
    v26 = v9;
    goto LABEL_12;
  }

  v15 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v15)
  {
    v16 = v15 - 8;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v16 + 48);
  v18 = ((*(v16 + 56) - v17) >> 3) - 1;
  v25 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v26 = (v17 + 8) & 0xFFFFFFFFFFFFFFF9;
  v27 = v18;
  v19 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v25, 1);
  v20 = *a3 + 24 * *(a3 + 8);
  v21 = *v19;
  *(v20 + 16) = *(v19 + 16);
  *v20 = v21;
  ++*(a3 + 8);
  v22 = *(*a1 + 36);
  v23 = (*a1 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (!v22)
  {
    v23 = 4;
  }

  v25 = 0;
  v26 = v23;
  v27 = v22;
  v13 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v25, 1);
  v14 = (*a3 + 24 * *(a3 + 8));
LABEL_19:
  result = *v13;
  v14[1].n128_u64[0] = v13[1].n128_u64[0];
  *v14 = result;
  ++*(a3 + 8);
  return result;
}

unint64_t anonymous namespace::getTrivialConstantTripCount(mlir::affine::AffineForOp *a1)
{
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a1);
  v3 = (a1 + 16 * ((*(a1 + 11) >> 23) & 1));
  v5 = *(v3 + 8);
  v4 = v3 + 16;
  v6 = *(v5 + 8);
  if (*(v6 + 8) == 1 && (v7 = *(v6 + 24), *(v7 + 8) == 5) && (v8 = *(*(v4 + 2) + 8), *(v8 + 8) == 1) && ((v9 = *(v8 + 24), *(v9 + 8) == 5) ? (v10 = StepAsInt < 1) : (v10 = 1), !v10))
  {
    v14 = *(v9 + 16) - *(v7 + 16);
    if (v14 < 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = (StepAsInt + v14 - 1) / StepAsInt;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t mlir::affine::AffineForOp::setLowerBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v9 + 88, 3);
  __src = 0;
  v15 = v11;
  v16 = v12;
  v17 = v8;
  v18 = 0;
  v19 = v10;
  v20[0] = v21;
  v20[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v20, &__src, &v17);
  mlir::MutableOperandRange::assign(&v17, a2, a3);
  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::setUpperBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v9 + 88, 3);
  __src = 1;
  v15 = v11;
  v16 = v12;
  v17[0] = v8;
  v17[1] = v10;
  v18[0] = v19;
  v18[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v18, &__src, v17);
  mlir::MutableOperandRange::assign(v17, a2, a3);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

unint64_t mlir::affine::getForInductionVarOwner(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        v1 = *(v1 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v1)
        {
          while (1)
          {
            v1 = *(v1 + 16);
            if (v1)
            {
              if (*(*(v1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
              {
                break;
              }
            }

            v1 = *(v1 + 16);
            if (v1)
            {
              v1 = *(v1 + 24) & 0xFFFFFFFFFFFFFFF8;
              if (v1)
              {
                continue;
              }
            }

            return v1;
          }

          v2 = *(((v1 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40) + 8);
          if (v2)
          {
            v3 = v2 - 8;
          }

          else
          {
            v3 = 0;
          }

          if (**(v3 + 48) != a1)
          {
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

__n128 mlir::affine::AffineIfOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    if (*(a3 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 2uLL, 24);
    }

    v8 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (*v8 == v8)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v9 = v8[1];
      if (v9)
      {
        v10 = v9 - 8;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v10 + 48);
      v12 = (*(v10 + 56) - v11) >> 3;
      v13 = v11 & 0xFFFFFFFFFFFFFFF9;
    }

    v27 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v28 = v13;
    v29 = v12;
    v14 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v27, 1);
    v15 = *a3 + 24 * *(a3 + 8);
    v16 = *v14;
    *(v15 + 16) = *(v14 + 16);
    *v15 = v16;
    ++*(a3 + 8);
    v5 = *a1;
    v17 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v19 = *(v17 + 24);
    v18 = v17 + 24;
    if (v19 != v18)
    {
      v20 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 32);
      if (v20)
      {
        v21 = v20 - 8;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v21 + 48);
      v23 = (*(v21 + 56) - v22) >> 3;
      v27 = v18;
      v28 = v22 & 0xFFFFFFFFFFFFFFF9;
      v29 = v23;
      goto LABEL_19;
    }
  }

  v6 = *(v5 + 36);
  v7 = (v5 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (!v6)
  {
    v7 = 4;
  }

  v27 = 0;
  v28 = v7;
  v29 = v6;
LABEL_19:
  v24 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v27, 1);
  v25 = (*a3 + 24 * *(a3 + 8));
  result = *v24;
  v25[1].n128_u64[0] = v24[1].n128_u64[0];
  *v25 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::affine::AffineIfOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 440))(a1, &v17, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(**v6 + 32);
    v19 = 261;
    v18[0] = "condition";
    v18[1] = 9;
    v8 = mlir::StringAttr::get(v7, v18, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v8, v6);
  }

  else
  {
    v15[0] = "invalid kind of attribute specified";
    v16 = 259;
    (*(*a1 + 24))(v18, a1, v4, v15);
    v9 = v20;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    if (v9)
    {
      return 0;
    }
  }

  LODWORD(v17) = 0;
  if (mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v17))
  {
    v10 = v6[1];
    if (*v10 == v17)
    {
      if (*(a2 + 6) == v10[1] + *v10)
      {
        if ((*(*a1 + 568))(a1, a2 + 64))
        {
          if (*(a2 + 59) <= 1u)
          {
            llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(a2 + 224, 2uLL);
          }

          mlir::OperationState::addRegion(a2);
        }

        return 0;
      }

      v13 = (*(*a1 + 16))(a1);
      v14 = "symbol operand count and integer set symbol count must match";
    }

    else
    {
      v13 = (*(*a1 + 16))(a1);
      v14 = "dim operand count and integer set dim count must match";
    }

    v15[0] = v14;
    v16 = 259;
    (*(*a1 + 24))(v18, a1, v13, v15);
    v11 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    return v11;
  }

  return 0;
}

uint64_t mlir::affine::AffineLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v10, 0, 24);
  v9 = 0;
  v11 = 0;
  v12 = v14;
  v13 = 0x100000000;
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v12, &v9, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v11) && ((*(*a1 + 728))(a1, v10, v11, a2 + 16))
  {
    if (!v13)
    {
LABEL_10:
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, *(v11 + 24));
      v7 = 1;
      goto LABEL_12;
    }

    v5 = v12;
    v6 = 32 * v13;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = 0;
LABEL_12:
  if (v12 != v14)
  {
    free(v12);
  }

  return v7;
}

BOOL mlir::AsmParser::parseColonType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 576))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

uint64_t verifyMemoryOpIndexing(mlir::affine *this, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 1);
  if (*(a5 + 16) != v7[2])
  {
    v15 = "affine map num results must equal memref rank";
LABEL_14:
    v17 = v15;
    v18 = 259;
    mlir::Operation::emitOpError(v19, this, &v17);
    v14 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    return v14 & 1;
  }

  if (v7[1] + *v7 != a6)
  {
    v15 = "expects as many subscripts as affine map inputs";
    goto LABEL_14;
  }

  AffineScope = mlir::affine::getAffineScope(this, a2);
  if (a4)
  {
    v11 = AffineScope;
    v12 = (a3 + 24);
    while (1)
    {
      v13 = *v12;
      if (*(*(*(*v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v15 = "index to load must have 'index' type";
        goto LABEL_14;
      }

      if ((mlir::affine::isValidDim(*v12, v11) & 1) == 0 && (mlir::affine::isValidSymbol(v13, v11) & 1) == 0)
      {
        break;
      }

      v12 += 4;
      if (!--a4)
      {
        goto LABEL_9;
      }
    }

    v15 = "index must be a valid dimension or symbol identifier";
    goto LABEL_14;
  }

LABEL_9:
  v14 = 1;
  return v14 & 1;
}

uint64_t mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(uint64_t a1)
{
  (*(*(a1 + 16) + 24))();
  v3[0] = a1;
  v3[1] = 0;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v3);
}

void llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(void *a1, char *a2, char *a3)
{
  v4 = a2;
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 3;
  if (v7 < 5)
  {
    v8 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v7, 8);
    v8 = *(a1 + 2);
  }

  if (a3 != v4)
  {
    v9 = (*a1 + 8 * v8);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
  }

  *(a1 + 2) = v8 + (v6 >> 3);
}

uint64_t mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + mlir::ElementsAttr::getFlattenedIndex(*(a1 + 32), a2);
  v5[0] = *a1;
  v5[1] = v3;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v5);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineStoreOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  memset(v12, 0, 24);
  memset(v11, 0, 24);
  v10 = 0;
  v13 = 0;
  v14 = v16;
  v15 = 0x100000000;
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v14, &v10, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v13) && ((*(*a1 + 728))(a1, v12, *(v13 + 24), a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v11, v13, a2 + 16))
  {
    if (v15)
    {
      v5 = v14;
      v6 = 32 * v15 - 32;
      do
      {
        v7 = (*(*a1 + 728))(a1, v5, v4, a2 + 16);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 32;
        v8 = v6;
        v6 -= 32;
      }

      while (v8);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  return v7 & 1;
}

uint64_t mlir::affine::AffineMinOp::parse(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v15 = v17;
  v16 = 0x800000000;
  v12 = v14;
  v13 = 0x800000000;
  if (mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v11, a2 + 112) && ((*(*a1 + 720))(a1, &v15, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 720))(a1, &v12, 6, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0)
  {
    if (v16)
    {
      v5 = v15;
      v6 = 32 * v16;
      while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
      {
        v5 += 32;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v13)
      {
LABEL_13:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v4);
        v9 = 1;
        goto LABEL_15;
      }

      v7 = v12;
      v8 = 32 * v13;
      while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
      {
        v7 += 32;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v9 = 0;
LABEL_15:
  if (v12 != v14)
  {
    free(v12);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

uint64_t mlir::affine::AffineMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v15 = v17;
  v16 = 0x800000000;
  v12 = v14;
  v13 = 0x800000000;
  if (mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v11, a2 + 112) && ((*(*a1 + 720))(a1, &v15, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 720))(a1, &v12, 6, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0)
  {
    if (v16)
    {
      v5 = v15;
      v6 = 32 * v16;
      while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
      {
        v5 += 32;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      if (!v13)
      {
LABEL_13:
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v4);
        v9 = 1;
        goto LABEL_15;
      }

      v7 = v12;
      v8 = 32 * v13;
      while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
      {
        v7 += 32;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v9 = 0;
LABEL_15:
  if (v12 != v14)
  {
    free(v12);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

uint64_t mlir::affine::AffinePrefetchOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v35 = 0;
  memset(v34, 0, 24);
  v33 = 0;
  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 32, 0);
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v39 = v41;
  v40 = 0x100000000;
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v39, &v28, "map", 3, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v31) || ((*(*a1 + 120))(a1) & 1) == 0 || (v37 = 257, ((*(*a1 + 400))(a1, "locality", 8, v36) & 1) == 0) || ((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v33, v6, "localityHint", 0xC, a2 + 112) || ((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v29) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v35) || ((*(*a1 + 728))(a1, v34, v35, a2 + 16) & 1) == 0)
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  if (v40)
  {
    v7 = v39;
    v8 = 32 * v40;
    while (((*(*a1 + 728))(a1, v7, v4, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_24;
  }

LABEL_19:
  if (v32 == 5)
  {
    v13 = *v31 == 1953067639 && *(v31 + 4) == 101;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  else if (v32 != 4 || *v31 != 1684104562)
  {
LABEL_22:
    v9 = (*(*a1 + 16))(a1);
    v10 = "rw specifier has to be 'read' or 'write'";
LABEL_23:
    v26 = v10;
    v27 = 259;
    (*(*a1 + 24))(v36, a1, v9, &v26);
    v11 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    goto LABEL_25;
  }

  v14 = (*(*a1 + 32))(a1);
  if (v32 == 5)
  {
    v15 = bswap64(*v31 | (*(v31 + 4) << 32));
    v16 = v15 >= 0x7772697465000000;
    v17 = v15 > 0x7772697465000000;
    v18 = !v16;
    v13 = v17 == v18;
    v19 = 592;
    if (v13)
    {
      v19 = 600;
    }
  }

  else
  {
    v19 = 592;
  }

  mlir::OperationState::addAttribute(a2, "isWrite", 7, *(**v14 + v19));
  if (v30 == 5)
  {
    if (*v29 != 1953721961 || *(v29 + 4) != 114)
    {
      goto LABEL_44;
    }
  }

  else if (v30 != 4 || *v29 != 1635017060)
  {
LABEL_44:
    v9 = (*(*a1 + 16))(a1);
    v10 = "cache type has to be 'data' or 'instr'";
    goto LABEL_23;
  }

  v21 = (*(*a1 + 32))(a1);
  if (v30 == 4)
  {
    v22 = bswap32(*v29);
    v16 = v22 >= 0x64617461;
    v23 = v22 > 0x64617461;
    v24 = !v16;
    v13 = v23 == v24;
    v25 = 592;
    if (v13)
    {
      v25 = 600;
    }
  }

  else
  {
    v25 = 592;
  }

  mlir::OperationState::addAttribute(a2, "isDataCache", 0xB, *(**v21 + v25));
  v11 = 1;
LABEL_25:
  if (v39 != v41)
  {
    free(v39);
  }

  return v11 & 1;
}

uint64_t mlir::affine::AffinePrefetchOp::getLocalityHint(mlir::affine::AffinePrefetchOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 10);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::affine::AffineParallelOp::getSteps(mlir::affine::AffineParallelOp *this, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v12 = v14;
  v13 = 0x400000000;
  if (v4 < 5)
  {
    if (!v4)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v4, 8);
    v6 = v13;
  }

  v7 = &v5[v4];
  v8 = v12 + 8 * v6;
  do
  {
    v9 = *v5++;
    v11 = v9;
    *v8++ = mlir::IntegerAttr::getInt(&v11);
  }

  while (v5 != v7);
  v10 = v13;
LABEL_8:
  *this = this + 16;
  *(this + 1) = 0x800000000;
  LODWORD(v13) = v10 + v4;
  if (v10 + v4)
  {
    llvm::SmallVectorImpl<long long>::operator=(this, &v12);
  }

  if (v12 != v14)
  {
    free(v12);
  }
}

uint64_t mlir::affine::AffineParallelOp::getLowerBoundsOperands(mlir::affine::AffineParallelOp *this)
{
  if ((*(this + 11) & 0x800000) != 0)
  {
    return *(this + 9);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::affine::AffineParallelOp::getUpperBoundsOperands(mlir::affine::AffineParallelOp *this)
{
  v1 = *(this + 11);
  if ((v1 & 0x800000) != 0)
  {
    v2 = *(this + 9);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(this + 2 * ((v1 >> 23) & 1) + 9) + 8);
  return v2 + 32 * (v3[1] + *v3);
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineParallelOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
LABEL_8:
    v11 = 1;
    return v11 & 1;
  }

  v7 = 0;
  v8 = (a2 + 24);
  while (1)
  {
    v9 = *v8;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 >= a4)
    {
      break;
    }

    if ((mlir::affine::isValidDim(v9, AffineScope) & 1) == 0)
    {
      v12 = "operand cannot be used as a dimension id";
      goto LABEL_10;
    }

LABEL_7:
    ++v7;
    v8 += 4;
    if (a3 == v7)
    {
      goto LABEL_8;
    }
  }

  if (mlir::affine::isValidSymbol(v9, AffineScope))
  {
    goto LABEL_7;
  }

  v12 = "operand cannot be used as a symbol";
LABEL_10:
  v14 = v12;
  v15 = 259;
  mlir::Operation::emitOpError(v16, *a1, &v14);
  v11 = v17 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  return v11 & 1;
}

uint64_t mlir::affine::AffineValueMap::canonicalize(mlir::affine::AffineValueMap *this)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x400000000;
  if (*(this + 26))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v9, this + 96);
  }

  Impl = mlir::AffineMap::getImpl(*(this + 20), *(this + 21), *this, *(this + 2), *(this + 11));
  composeAffineMapAndOperands(&Impl, &v9);
  v2 = mlir::AffineMap::getImpl(*(this + 20), *(this + 21), *this, *(this + 2), *(this + 11));
  if (Impl == v2)
  {
    v4 = v10;
    v3 = v9;
    if (v10 == *(this + 26))
    {
      if (!v10)
      {
LABEL_10:
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 0;
      while (*(v9 + v5) == *(*(this + 12) + v5))
      {
        v5 += 8;
        if (8 * v10 == v5)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v3 = v9;
    v4 = v10;
  }

  mlir::affine::AffineValueMap::reset(this, Impl, v3 & 0xFFFFFFFFFFFFFFF9, v4, 0, 0);
  v6 = 1;
  v3 = v9;
LABEL_12:
  if (v3 != v11)
  {
    free(v3);
  }

  return v6;
}

llvm::raw_ostream *printMinMaxBound(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const void *a6, size_t a7)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v46[0] = a4;
  v46[1] = a5;
  v11 = *(a2 + 8);
  v12 = *v11;
  v38 = a5 - v12;
  if (a5 >= v12)
  {
    v13 = *v11;
  }

  else
  {
    v13 = a5;
  }

  v37 = v13;
  if (v12)
  {
    v36 = mlir::ValueRange::offset_base(v46, v12);
  }

  else
  {
    v36 = a4;
  }

  v14 = *(a3 + 24);
  v43[0] = *(a3 + 32);
  v43[1] = v14;
  v44 = 0;
  v15 = (*(*(a3 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v15);
  v16 = (*(*(a3 + 16) + 24))();
  if (v17)
  {
    v18 = 8 * v17;
    v19 = 1;
    do
    {
      v20 = *v16++;
      v19 *= v20;
      v18 -= 8;
    }

    while (v18);
  }

  else
  {
    v19 = 1;
  }

  v21 = (*(*(a3 + 16) + 8))();
  result = mlir::detail::getDenseElementBitWidth(v21);
  if (v19)
  {
    v23 = 0;
    v24 = v11 + 6;
    v25 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v43, &v41);
      if (v23)
      {
        v26 = (*(*a1 + 16))(a1);
        v27 = *(v26 + 4);
        if (*(v26 + 3) - v27 > 1uLL)
        {
          *v27 = 8236;
          *(v26 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v26, ", ", 2uLL);
        }
      }

      if (v42 >= 0x41)
      {
        v28 = v41;
      }

      else
      {
        v28 = &v41;
      }

      v29 = *v28;
      if (*v28 == 1)
      {
        result = (*(*a1 + 248))(a1, *&v24[2 * v23], a4, v37, v36, v38);
      }

      else
      {
        v30 = (*(*a1 + 16))(a1);
        llvm::raw_ostream::operator<<(v30, a6, a7);
        v31 = (*(*a1 + 16))(a1);
        v32 = *(v31 + 4);
        if (v32 >= *(v31 + 3))
        {
          llvm::raw_ostream::write(v31, 40);
        }

        else
        {
          *(v31 + 4) = v32 + 1;
          *v32 = 40;
        }

        Impl = mlir::AffineMap::getImpl(*v11, v11[1], &v24[2 * v23], v29, *(v11 + 2));
        v34 = mlir::AffineMapAttr::get(Impl);
        (*(*a1 + 240))(a1, v34, a4, a5);
        result = (*(*a1 + 16))(a1);
        v35 = *(result + 4);
        if (v35 >= *(result + 3))
        {
          result = llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v35 + 1;
          *v35 = 41;
        }
      }

      if (v42 >= 0x41)
      {
        result = v41;
        if (v41)
        {
          result = MEMORY[0x25F891010](v41, 0x1000C8000313F17);
        }
      }

      v23 += v29;
      v44 = v25++;
      --v19;
    }

    while (v19);
  }

  return result;
}

BOOL mlir::affine::AffineParallelOp::parse(void *a1, mlir::OperationState *a2)
{
  v37[32] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 32))(a1);
  v35 = v37;
  v36 = 0x400000000;
  if (((*(*a1 + 768))(a1, &v35, 1, 0, 0) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !parseAffineMapWithMinMax(a1, a2, 1) || (v26[8] = 257, ((*(*a1 + 400))(a1, "to", 2, &v24) & 1) == 0) || !parseAffineMapWithMinMax(a1, a2, 0))
  {
    v20 = 0;
    goto LABEL_18;
  }

  v23 = 0;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v34[8] = 4;
  v31[0] = v32;
  v31[1] = 0x400000000;
  if (((*(*a1 + 408))(a1, "step", 4) & 1) == 0)
  {
    v5 = v26;
    v24 = v26;
    v25 = 0x400000000;
    llvm::SmallVectorImpl<long long>::assign(&v24, v36, 1);
    I64ArrayAttr = mlir::Builder::getI64ArrayAttr(v4, v24, v25);
    mlir::OperationState::addAttribute(a2, "steps", 5, I64ArrayAttr);
    v15 = v24;
    goto LABEL_25;
  }

  if ((*(*a1 + 736))(a1, v31, &v23, "steps", 5, v33, 1))
  {
    v5 = &v30;
    v28 = &v30;
    v29 = 0x400000000;
    v6 = *(v23 + 8);
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = v6 + 24;
      v9 = 8 * v7;
      while (*v8 && *(*v8 + 8) == 5)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v28, *(*v8 + 16));
        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          v11 = v28;
          v12 = v29;
          goto LABEL_24;
        }
      }

      v19 = (*(*a1 + 16))(a1);
      v21 = "steps must be constant integers";
      v22 = 259;
      (*(*a1 + 24))(&v24, a1, v19, &v21);
      v20 = (v27 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
      v18 = v28;
      if (v28 == &v30)
      {
        goto LABEL_35;
      }

LABEL_34:
      free(v18);
      goto LABEL_35;
    }

    v12 = 0;
    v11 = &v30;
LABEL_24:
    v16 = mlir::Builder::getI64ArrayAttr(v4, v11, v12);
    mlir::OperationState::addAttribute(a2, "steps", 5, v16);
    v15 = v28;
LABEL_25:
    if (v15 != v5)
    {
      free(v15);
    }

    v24 = v26;
    v25 = 0x400000000;
    if ((*(*a1 + 408))(a1, "reduce", 6) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) != 0 && (v28 = a1, v29 = v4, v30 = &v24, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::affine::AffineParallelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28, 0, 0)) && ((*(*a1 + 296))(a1))
    {
      v17 = mlir::ArrayAttr::get(*v4, v24, v25);
      mlir::OperationState::addAttribute(a2, "reductions", 0xA, v17);
      if ((*(*a1 + 568))(a1, a2 + 64))
      {
        mlir::OperationState::addRegion(a2);
      }
    }

    v20 = 0;
    v18 = v24;
    if (v24 == v26)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v20 = 0;
LABEL_35:
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

LABEL_18:
  if (v35 != v37)
  {
    free(v35);
  }

  return v20;
}

uint64_t parseAffineMapWithMinMax(uint64_t a1, uint64_t a2, int a3)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v34 = a3;
  v33[0] = "__pseudo_bound_map";
  v33[1] = 18;
  if (a3)
  {
    v5 = "lowerBoundsMap";
  }

  else
  {
    v5 = "upperBoundsMap";
  }

  if (a3)
  {
    v6 = "lowerBoundsGroups";
  }

  else
  {
    v6 = "upperBoundsGroups";
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 304))(a1))
  {
    v7 = (*(*a1 + 32))(a1);
    Impl = mlir::AffineMap::getImpl(0, 0, 0, 0, *v7);
    v9 = mlir::AffineMapAttr::get(Impl);
    mlir::OperationState::addAttribute(a2, v5, 0xE, v9);
    v10 = (*(*a1 + 32))(a1);
    I32TensorAttr = mlir::Builder::getI32TensorAttr(v10, 0, 0);
    mlir::OperationState::addAttribute(a2, v6, 0x11, I32TensorAttr);
    return 1;
  }

  else
  {
    v58 = v60;
    v59 = 0x600000000;
    v55 = &v57;
    v56 = 0x100000000;
    v52 = &v54;
    v53 = 0x100000000;
    v49 = v51;
    v50 = 0xC00000000;
    v47[0] = v48;
    v47[1] = 0x100000000;
    v32[0] = a1;
    v32[1] = &v34;
    v32[2] = v47;
    v32[3] = v33;
    v32[4] = a2;
    v32[5] = &v58;
    v32[6] = &v55;
    v32[7] = &v52;
    v32[8] = &v49;
    {
      v30 = v6;
      if (v59)
      {
        v13 = 0;
        LODWORD(v14) = 0;
        v15 = 0;
        v16 = 8 * v59;
        v17 = 1;
        do
        {
          v18 = v55[v17];
          v19 = v52[v17];
          __src = mlir::AffineExpr::shiftDims(&v58[v13 / 8], v18, v14, 0);
          v20 = mlir::AffineExpr::shiftSymbols(&__src, v19, v15, 0);
          v58[v13 / 8] = v20;
          v14 = v18 + v14;
          v15 += v19;
          v13 += 8;
          v17 += 6;
        }

        while (v16 != v13);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      __src = v46;
      v45 = 0x600000000;
      v41 = v43;
      v42 = 0x600000000;
      v38 = v40;
      v39 = 0x600000000;
      v35 = v37;
      v36 = 0x600000000;
      if (deduplicateAndResolveOperands(a1, v55, v56, &__src, &v38, 6))
      {
        if (deduplicateAndResolveOperands(a1, v52, v53, &v41, &v35, 7))
        {
          llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, __src, __src + 8 * v45);
          llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(a2 + 16, v41, v41 + 8 * v42);
          v22 = (*(*a1 + 32))(a1);
          v28 = v58;
          v29 = v22;
          v27 = v59;
          v23 = (*(*a1 + 32))(a1);
          v31 = mlir::AffineMap::getImpl(v14, v15, v28, v27, *v23);
          v24 = mlir::AffineMap::replaceDimsAndSymbols(&v31, v38, v39, v35, v36, v45, v42);
          v25 = mlir::AffineMapAttr::get(v24);
          mlir::OperationState::addAttribute(a2, v5, 0xE, v25);
          v26 = mlir::Builder::getI32TensorAttr(v29, v49, v50);
          mlir::OperationState::addAttribute(a2, v30, 0x11, v26);
          v12 = 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      if (v35 != v37)
      {
        free(v35);
      }

      if (v38 != v40)
      {
        free(v38);
      }

      if (v41 != v43)
      {
        free(v41);
      }

      if (__src != v46)
      {
        free(__src);
      }
    }

    else
    {
      v12 = 0;
    }

    if (v47[0] != v48)
    {
      free(v47[0]);
    }

    if (v49 != v51)
    {
      free(v49);
    }

    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v52);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v55);
    if (v58 != v60)
    {
      free(v58);
    }
  }

  return v12;
}

uint64_t mlir::affine::AffineVectorLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v11 = 0;
  v12 = 0;
  memset(v10, 0, 24);
  v9 = 0;
  v13 = v15;
  v14 = 0x100000000;
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v13, &v9, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v12) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v11) && ((*(*a1 + 728))(a1, v10, v12, a2 + 16))
  {
    if (!v14)
    {
LABEL_12:
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2 + 64, v11);
      v7 = 1;
      goto LABEL_14;
    }

    v5 = v13;
    v6 = 32 * v14;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
LABEL_14:
  if (v13 != v15)
  {
    free(v13);
  }

  return v7;
}

BOOL mlir::AsmParser::parseType<mlir::VectorType>(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10 = 0;
  if (((*(*a1 + 536))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  v6 = 1;
  if (!v5)
  {
    v8 = "invalid kind of type specified";
    v9 = 259;
    (*(*a1 + 24))(v11, a1, v4, &v8);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  return v6;
}

BOOL verifyVectorMemoryOp(mlir::Operation *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 1;
  if (*(a2 + 24) != *(a3 + 24))
  {
    v5 = "requires memref and vector types of the same elemental type";
    v6 = 259;
    mlir::Operation::emitOpError(v7, a1, &v5);
    v3 = (v8 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  }

  return v3;
}

uint64_t mlir::affine::AffineVectorStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  v13 = 0;
  v14 = 0;
  memset(v12, 0, 24);
  memset(v11, 0, 24);
  v10 = 0;
  v15 = v17;
  v16 = 0x100000000;
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v11, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v15, &v10, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v14) && ((*(*a1 + 120))(a1) & 1) != 0 && mlir::AsmParser::parseType<mlir::VectorType>(a1, &v13) && ((*(*a1 + 728))(a1, v12, v13, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v11, v14, a2 + 16))
  {
    if (v16)
    {
      v5 = v15;
      v6 = 32 * v16 - 32;
      do
      {
        v7 = (*(*a1 + 728))(a1, v5, v4, a2 + 16);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 32;
        v8 = v6;
        v6 -= 32;
      }

      while (v8);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v7 & 1;
}

void mlir::affine::AffineDelinearizeIndexOp::build(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v15 = *(a3 + 8);
  v20 = v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::assign(&v20, a7 + (a8 ^ 1u), v15 & 0xFFFFFFFFFFFFFFF8);
  v16 = v21;
  v17 = v20 & 0xFFFFFFFFFFFFFFF9;
  v19 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v19, 0, &v19, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a4, 0, a4, a5);
  v18 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a6, a7);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(a2) = v18;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>((a2 + 8), v17 | 2, 0, v17 | 2, v16);
  if (v20 != v22)
  {
    free(v20);
  }
}

void mlir::affine::AffineDelinearizeIndexOp::build(uint64_t **a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6)
{
  v6 = a4;
  v21[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    if (a5)
    {
      if (*a4)
      {
        v10 = 1;
      }

      else
      {
        v6 = a4 + 1;
        --a5;
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = v21;
  v20 = 0x600000000;
  v16 = v18;
  v17 = 0x600000000;
  if (a5)
  {
    v11 = 8 * a5;
    do
    {
      v12 = *v6++;
      mlir::dispatchIndexOpFoldResult(v12, &v19, &v16);
      v11 -= 8;
    }

    while (v11);
    v13 = v19;
    a5 = v20;
    v14 = v16;
    v15 = v17;
  }

  else
  {
    v15 = 0;
    v14 = v18;
    v13 = v21;
  }

  mlir::affine::AffineDelinearizeIndexOp::build(a1, a2, a3, v13 & 0xFFFFFFFFFFFFFFF9, a5, v14, v15, v10);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }
}

void foldCstValueToCstAttrBasis(uint64_t a1, uint64_t *a2, uint64_t a3, mlir::MutableOperandRange *this, void *a5, uint64_t a6)
{
  v22[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v12 = 0;
    v13 = 8 * a6;
    do
    {
      if (*a5 < 8uLL)
      {
        ++v12;
      }

      else
      {
        mlir::MutableOperandRange::erase(this, v12, 1u);
      }

      ++a5;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == a6)
  {
    *a1 = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v20 = v22;
    v21 = 0x600000000;
    if (a3)
    {
      v14 = 8 * a3;
      do
      {
        v15 = *a2++;
        ConstantIntValue = mlir::getConstantIntValue(v15);
        if (v17)
        {
          v18 = ConstantIntValue;
        }

        else
        {
          v18 = 0x8000000000000000;
        }

        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v20, v18);
        v14 -= 8;
      }

      while (v14);
      v19 = v21;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      if (v19)
      {
        llvm::SmallVectorImpl<long long>::operator=(a1, &v20);
      }
    }

    else
    {
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
    }

    *(a1 + 64) = 1;
    if (v20 != v22)
    {
      free(v20);
    }
  }
}

void mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(mlir::affine::AffineDelinearizeIndexOp *this, uint64_t a2)
{
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);

  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, this);
}

void mlir::affine::AffineDelinearizeIndexOp::getPaddedBasis(mlir::affine::AffineDelinearizeIndexOp *this, uint64_t *a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(this, *a2);
  if (*(*a2 + 36) != *(*(*a2 + 16 * ((*(*a2 + 44) >> 23) & 1) + 64) + 32) >> 3)
  {
    v4 = *this;
    v5[0] = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::insert_one_impl<mlir::OpFoldResult>(this, v4, v5);
  }
}

void mlir::affine::AffineLinearizeIndexOp::build(uint64_t **a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = a4;
  v20[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 12) = v13 | (a6 << 32);
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 8) = a9;
  v16 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a7, a8);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) = v16;
  __src = v20;
  v19 = 0x200000000;
  v17 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v17 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }
}

void mlir::affine::AffineLinearizeIndexOp::build(uint64_t **a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  v8 = a5;
  v25[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    if (*a5)
    {
      v13 = a6;
    }

    else
    {
      v8 = a5 + 1;
      v13 = a6 - 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v23 = v25;
  v24 = 0x600000000;
  v20 = v22;
  v21 = 0x600000000;
  if (v13)
  {
    v14 = 8 * v13;
    do
    {
      v15 = *v8++;
      mlir::dispatchIndexOpFoldResult(v15, &v23, &v20);
      v14 -= 8;
    }

    while (v14);
    v16 = v23;
    v17 = v24;
    v18 = v20;
    v19 = v21;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = v22;
    v16 = v25;
  }

  mlir::affine::AffineLinearizeIndexOp::build(a1, a2, a3, a4, v16 & 0xFFFFFFFFFFFFFFF9, v17, v18, v19, a7);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }
}

void mlir::affine::AffineLinearizeIndexOp::getMixedBasis(mlir::affine::AffineLinearizeIndexOp *this, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v3 + 76);
  v8 = *(v3 + 80);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  mlir::getMixedValues(v5, v6 >> 3, (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2, (v8 + v7) - v7, *(***(a2 + 24) + 32), this);
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(uint64_t a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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
        mlir::Diagnostic::operator<<<52ul>(v12, "' failed to satisfy constraint: AffineMap attribute");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 48))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v4 = v13;
  v5 = *(*v13 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::AffineMapAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::AffineMapAttr>();
    unk_27FC1B6D0 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::AffineMapAttr>(void)::Name;
    v15 = unk_27FC1B6D0;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v9 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v9;
}

void mlir::affine::AffineApplyOp::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v11[1] = a4;
  v9 = *(**a1 + 472);
  mlir::AffineMap::inferFromExprList(v11, 1uLL, *a1, &v12);
  mlir::affine::AffineApplyOp::build(v10, a2, v9, *v12, a5, a6);
  if (v12 != v13)
  {
    free(v12);
  }
}

void mlir::affine::AffineApplyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a5, 0, a5, a6);
  v8 = mlir::AffineMapAttr::get(a4);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(a2) = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v10);
}

void mlir::affine::AffineApplyOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v12;
  v11 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v11);
  if (__src != v12)
  {
    free(__src);
  }
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be variadic of index, but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(mlir::Operation *a1, uint64_t a2, const char *a3, const char *a4, unsigned int a5)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  mlir::Operation::emitOpError(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<25ul>((v6 + 1), " must be index, but got ");
    if (*v7)
    {
      v16 = 4;
      v17 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  return v11;
}

BOOL mlir::affine::AffineDelinearizeIndexOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v3 = a1[1];
      if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v3[2] == 64)
      {
        return 1;
      }
    }
  }

  a2(&v8, a3);
  if (v8)
  {
    mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
    if (v8)
    {
      v7 = 261;
      v6[0] = "static_basis";
      v6[1] = 12;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<58ul>(v9, "' failed to satisfy constraint: i64 dense array attribute");
      }
    }
  }

  v4 = (v9[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  return v4;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::getODSOperands(mlir::affine::AffineDelinearizeIndexOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v20 = v22;
  v21 = 0x400000000;
  v12 = 0;
  __src = &v19;
  v18 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0 || (v16 = 257, ((*(*a1 + 400))(a1, "into", 4, v15) & 1) == 0) || ((*(*a1 + 40))(a1), v15[0] = 0, !mlir::parseDynamicIndexList(a1, &v20, &v12, v15, 0)) || (v4 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(a2), *v4 = v12, v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v5 = *(a2 + 8), v15[0] = a1, v15[1] = &v11, v15[2] = a2, !mlir::affine::AffineDelinearizeIndexOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineDelinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15)) || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v6 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v18), ((*(*a1 + 728))(a1, v13, v6, a2 + 16) & 1) == 0))
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (v21)
  {
    v7 = v20;
    v8 = 32 * v21;
    while (((*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v9 = 1;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v9 = 1;
LABEL_15:
  if (__src != &v19)
  {
    free(__src);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return v9;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "step";
      v5[1] = 4;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<48ul>(v8, "' failed to satisfy constraint: index attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[26] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22[0] = *(a2 + 8);
  v19[0] = a2;
  v16[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__6;
  v7 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v22, v19, 1, v16) & 1) == 0)
  {
    v19[0] = "region #";
    v20 = 259;
    mlir::Operation::emitOpError(v22, a1, v19);
    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v22, &v21);
    v9 = v8;
    if (a4)
    {
      v15 = 1283;
      v14[0] = " ('";
      v14[2] = a3;
      v14[3] = a4;
      v10 = v14;
      v16[2] = "') ";
      v11 = 2;
      v12 = 3;
    }

    else
    {
      v11 = 3;
      v10 = " ";
      v12 = 1;
    }

    v18 = v12;
    v16[0] = v10;
    v17 = v11;
    if (*v8)
    {
      mlir::Diagnostic::operator<<((v8 + 1), v16);
      if (*v9)
      {
        mlir::Diagnostic::operator<<<50ul>((v9 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v7 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  return v7;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    return 1;
  }

  a2(&v7, a3);
  if (v7)
  {
    mlir::Diagnostic::operator<<<12ul>(v8, "attribute '");
    if (v7)
    {
      v6 = 261;
      v5[0] = "condition";
      v5[1] = 9;
      mlir::Diagnostic::operator<<(v8, v5);
      if (v7)
      {
        mlir::Diagnostic::operator<<<53ul>(v8, "' failed to satisfy constraint: IntegerSet attribute");
      }
    }
  }

  v3 = (v8[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return v3;
}

BOOL mlir::affine::AffineLinearizeIndexOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineLinearizeIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  __src = 0;
  v17 = 0;
  if ((*(*a1 + 408))())
  {
    *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 8) = 1;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 328))(a1) & 1) == 0 || (v19 = 257, ((*(*a1 + 400))(a1, "by", 2, v18) & 1) == 0) || ((*(*a1 + 40))(a1), v18[0] = 0, !mlir::parseDynamicIndexList(a1, &v20, &v17, v18, 0)) || (v4 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2), *v4 = v17, v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v5 = *(a2 + 8), v18[0] = a1, v18[1] = &v15, v18[2] = a2, !mlir::affine::AffineLinearizeIndexOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineLinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v18[0] = 0, !mlir::AsmParser::parseType<mlir::IndexType>(a1, v18)))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  __src = v18[0];
  v6 = v24;
  v7 = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 12) = v6 | (v7 << 32);
  v8 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v17);
  if (v24)
  {
    v9 = v23;
    v10 = 32 * v24;
    while (((*(*a1 + 728))(a1, v9, v8, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_21;
  }

LABEL_16:
  if (v21)
  {
    v11 = v20;
    v12 = 32 * v21;
    while (((*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v13 = 1;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v13 = 1;
LABEL_22:
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  return v13;
}

uint64_t mlir::affine::AffineLoadOp::getODSOperands(mlir::affine::AffineLoadOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v4 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v4 + 8, v11);
    (*(v12 + 8))(v12, a2);
    return 1;
  }

  else
  {
    v15 = 261;
    v14[0] = "operand";
    v14[1] = 7;
    mlir::Operation::emitOpError(&v19, a1, v14);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<45ul>((v5 + 1), " must be memref of any type values, but got ");
      if (*v6)
      {
        v17 = 4;
        v18 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v17, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  return v10;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::affine::AffineMaxOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v12;
  v11 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v11);
  if (__src != v12)
  {
    free(__src);
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::affine::AffineMinOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v12;
  v11 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), __src, __src + 8 * v11);
  if (__src != v12)
  {
    free(__src);
  }
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = (*(a1[2] + 8))();
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v10[2] == 32)
    {
      return 1;
    }
  }

  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<75ul>(v16, "' failed to satisfy constraint: 32-bit signless integer elements attribute");
      }
    }
  }

  v11 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  return v11;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v6 = a1[2];
    if (!v6)
    {
      return 1;
    }

    v7 = a1[1];
    v8 = 8 * v6;
    while (*v7 && (mlir::arith::AtomicRMWKindAttr::classof(*v7) & 1) != 0)
    {
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        return 1;
      }
    }
  }

  a2(&v12, a3);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = "reductions";
      v10[1] = 10;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<46ul>(v13, "' failed to satisfy constraint: Reduction ops");
      }
    }
  }

  v5 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v5;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v5 = a1[2];
    if (!v5)
    {
      return 1;
    }

    v6 = a1[1];
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if (!*v6)
      {
        break;
      }

      if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        break;
      }

      v9 = v8[1];
      if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v9[2] != 64)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return 1;
      }
    }
  }

  a2(&v12, a3);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = "steps";
      v10[1] = 5;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<63ul>(v13, "' failed to satisfy constraint: 64-bit integer array attribute");
      }
    }
  }

  v3 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v3;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(void *a1, const char *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v7 = a1[1];
      if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v7[2] == 1)
      {
        return 1;
      }
    }
  }

  a4(&v12, a5);
  if (v12)
  {
    mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
    if (v12)
    {
      v11 = 261;
      v10[0] = a2;
      v10[1] = a3;
      mlir::Diagnostic::operator<<(v13, v10);
      if (v12)
      {
        mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: BOOL attribute");
      }
    }
  }

  v8 = (v13[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  return v8;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(const char *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = *(a1 + 1);
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v6[2] == 32)
    {
      v11 = a1;
      if ((mlir::IntegerAttr::getInt(&v11) & 0x8000000000000000) == 0)
      {
        v9[0] = a1;
        if (mlir::IntegerAttr::getInt(v9) <= 3)
        {
          return 1;
        }
      }
    }
  }

  a2(&v11, a3);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = "localityHint";
      v9[1] = 12;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<116ul>(v12, "' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v4 = v12[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 1)
  {
    *a2 = v12;
    return 1;
  }

  else
  {
    *a2 = 0;
    v11[16] = 257;
    (*(*a1 + 16))(&v16, a1, v11);
    if (v16)
    {
      mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
    }

    {
      llvm::getTypeName<mlir::BoolAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BoolAttr>();
      unk_27FC18C70 = v10;
    }

    if (v16)
    {
      v15 = 261;
      v13 = llvm::getTypeName<mlir::BoolAttr>(void)::Name;
      v14 = unk_27FC18C70;
      mlir::Diagnostic::operator<<(v17, &v13);
      if (v16)
      {
        mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
        if (v16)
        {
          LODWORD(v13) = 0;
          v14 = v12;
          v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
          v7 = v18 + 24 * v19;
          v8 = *v6;
          *(v7 + 16) = *(v6 + 16);
          *v7 = v8;
          ++v19;
        }
      }
    }

    v5 = (v20 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  return v5;
}

uint64_t mlir::affine::AffinePrefetchOp::getODSOperands(mlir::affine::AffinePrefetchOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

unint64_t mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(mlir::affine::AffineStoreOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A02B6;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (byte_25D0A02B6[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::affine::AffineStoreOp::getODSOperands(mlir::affine::AffineStoreOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

uint64_t mlir::affine::AffineVectorLoadOp::getODSOperands(mlir::affine::AffineVectorLoadOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(mlir::Operation *a1, uint64_t *a2, const char *a3, const char *a4, unsigned int a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a5;
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && a2[2] >= 1)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v6 + 8, v13);
    (*(v14 + 8))(v14, a2);
    return 1;
  }

  else
  {
    v17 = 261;
    v16[0] = a3;
    v16[1] = a4;
    mlir::Operation::emitOpError(&v21, a1, v16);
    if (v21)
    {
      mlir::Diagnostic::operator<<<3ul>(v22, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<45ul>((v7 + 1), " must be vector of any type values, but got ");
      if (*v8)
      {
        v19 = 4;
        v20 = a2;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v19, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = (v8[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  return v12;
}

unint64_t mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(mlir::affine::AffineVectorStoreOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A02B6;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (byte_25D0A02B6[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::affine::AffineVectorStoreOp::getODSOperands(mlir::affine::AffineVectorStoreOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::affine::AffineYieldOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x400000000;
  v7[0] = &v8;
  v7[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v9, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v10 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v7) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v9, v7, v4, a2 + 16);
  if (v7[0] != &v8)
  {
    free(v7[0]);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  return v5;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  return v1;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      v5 = **a2;
      v6 = *a2[1];
      v15 = *a1;
      v7 = *(v3 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v7 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v8 = *(v7 + 8);
        if (v8[v5] == 0x8000000000000000)
        {
          if (v5)
          {
            LODWORD(v9) = 0;
            v10 = 8 * v5;
            do
            {
              v11 = *v8++;
              if (v11 == 0x8000000000000000)
              {
                v9 = (v9 + 1);
              }

              else
              {
                v9 = v9;
              }

              v10 -= 8;
            }

            while (v10);
          }

          else
          {
            v9 = 0;
          }

          ODSOperands = mlir::memref::ViewOp::getODSOperands(&v15, 2u);
          mlir::memref::ViewOp::getODSOperands(&v15, 2u);
          isValidSymbol = mlir::affine::isValidSymbol(*(ODSOperands + 32 * v9 + 24), v6);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

uint64_t mlir::memref::ViewOp::getODSOperands(mlir::memref::ViewOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::memref::ViewOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v5 = **a2;
      if (*(v3 + 36))
      {
        v6 = v3 - 16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v7 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v8 = *(v7 + 8);
        if (v8[v5] == 0x8000000000000000)
        {
          v9 = *a2[1];
          if (v5)
          {
            LODWORD(v10) = 0;
            v11 = 8 * v5;
            do
            {
              v12 = *v8++;
              if (v12 == 0x8000000000000000)
              {
                v10 = (v10 + 1);
              }

              else
              {
                v10 = v10;
              }

              v11 -= 8;
            }

            while (v11);
          }

          else
          {
            v10 = 0;
          }

          isValidSymbol = mlir::affine::isValidSymbol(*(*(v3 + 72) + 32 * (*(v3 + 108) + *(v3 + 104)) + 32 * v10 + 24), v9);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
    {
      v5 = **a2;
      v6 = *(v3 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v6 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v7 = *(v6 + 8);
        if (v7[v5] == 0x8000000000000000)
        {
          v8 = *a2[1];
          if (v5)
          {
            LODWORD(v9) = 0;
            v10 = 8 * v5;
            do
            {
              v11 = *v7++;
              if (v11 == 0x8000000000000000)
              {
                v9 = (v9 + 1);
              }

              else
              {
                v9 = v9;
              }

              v10 -= 8;
            }

            while (v10);
          }

          else
          {
            v9 = 0;
          }

          isValidSymbol = mlir::affine::isValidSymbol(*(*(v3 + 72) + 32 * v9 + 24), v8);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::AffineMap::shiftDims(uint64_t ***this, int a2, int a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a2;
  v6 = **this;
  v5 = *(*this + 1);
  v7 = (*this + 3);
  v8 = *(*this + 2);
  v13[2] = &v12;
  v13[3] = &v11;
  v15[2] = &v12;
  v15[3] = &v11;
  v15[0] = v7;
  v15[1] = this;
  v16 = 1;
  v13[0] = &v7[2 * v8];
  v13[1] = this;
  v14 = 1;
  v17 = v19;
  v18 = 0x400000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftDims(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(&v17, v15, v13);
  Impl = mlir::AffineMap::getImpl((v6 + a2), v5, v17, v18, (*this)[2]);
  if (v17 != v19)
  {
    free(v17);
  }

  return Impl;
}

uint64_t mlir::AffineMap::shiftSymbols(uint64_t ***this, int a2, int a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a2;
  v5 = **this;
  v6 = *(*this + 1);
  v7 = (*this + 3);
  v8 = *(*this + 2);
  v13[2] = &v12;
  v13[3] = &v11;
  v15[2] = &v12;
  v15[3] = &v11;
  v15[0] = v7;
  v15[1] = this;
  v16 = 1;
  v13[0] = (v7 + 8 * v8);
  v13[1] = this;
  v14 = 1;
  v17 = v19;
  v18 = 0x400000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftSymbols(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(&v17, v15, v13);
  Impl = mlir::AffineMap::getImpl(v5, v6 + a2, v17, v18, (*this)[2]);
  if (v17 != v19)
  {
    free(v17);
  }

  return Impl;
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftDims(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(uint64_t a1, uint64_t a2, uint64_t ****a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  v10 = v9 + (v8 >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    v6 = *a2;
    v7 = *a3;
    v9 = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = (*a1 + 8 * v9);
    do
    {
      v15 = *v6++;
      v16 = v15;
      *v14++ = mlir::AffineExpr::shiftDims(&v16, **v11, *v12, *v13);
    }

    while (v6 != v7);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftSymbols(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(uint64_t a1, uint64_t a2, uint64_t ****a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  v10 = v9 + (v8 >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    v6 = *a2;
    v7 = *a3;
    v9 = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = (*a1 + 8 * v9);
    do
    {
      v15 = *v6++;
      v16 = v15;
      *v14++ = mlir::AffineExpr::shiftSymbols(&v16, *(*v11 + 4), *v12, *v13);
    }

    while (v6 != v7);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

uint64_t foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(uint64_t **a1, int a2)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x800000000;
  v4 = *a1;
  v5 = **a1;
  v6 = *(v5 + 44);
  v7 = v5 + 16 * ((v6 >> 23) & 1);
  v8 = *(v7 + 88);
  if (!a2)
  {
    v10 = *(v7 + 92);
    if ((v6 & 0x800000) != 0)
    {
      v11 = *(v5 + 72);
    }

    else
    {
      v11 = 0;
    }

    v9 = v11 + 32 * v8;
    v8 = (v10 + v8) - v8;
    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_8:
    v12 = (v9 + 24);
    while (1)
    {
      v13 = *v12;
      v40 = 0;
      v37 = &v40;
      if ((~*(v13 + 8) & 7) == 0)
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = *(v13 + 8) & 7;
        if (v14 == 6)
        {
          v15 = v13 + 24 * *(v13 + 16);
          v16 = (v15 + 120);
          if (v15 == -120)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = (v13 + 16 * v14 + 16);
        }

        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v37, v16);
        v16 = v40;
      }

      else
      {
        v16 = 0;
      }

LABEL_18:
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v43, v16);
      v12 += 4;
      if (!--v8)
      {
        v4 = *a1;
        goto LABEL_20;
      }
    }
  }

  if ((v6 & 0x800000) != 0)
  {
    v9 = *(v5 + 72);
    if (!*(v7 + 88))
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v9 = 0;
  if (*(v7 + 88))
  {
    goto LABEL_8;
  }

LABEL_20:
  v17 = *v4 + 16 * ((*(*v4 + 44) >> 23) & 1);
  v18 = 16;
  if (a2)
  {
    v18 = 0;
  }

  v39 = *(*(v17 + v18 + 64) + 8);
  v40 = v42;
  v41 = 0x400000000;
  if (mlir::AffineMap::constantFold(&v39, v43, v44, &v40, 0))
  {
    v20 = *v40;
    v21 = *(*v40 + 24);
    v38 = v21;
    if (v21 > 0x40)
    {
      operator new[]();
    }

    v37 = *(v20 + 16);
    if (v41 >= 2)
    {
      v23 = 8 * v41;
      v24 = 8;
      do
      {
        v25 = *(v40 + v24);
        v36 = *(v25 + 24);
        if (v36 > 0x40)
        {
          operator new[]();
        }

        v35 = *(v25 + 16);
        v26 = llvm::APInt::compareSigned(&v37, &v35);
        v27 = v26 < 0;
        if (a2)
        {
          v27 = v26 > 0;
        }

        if (v27)
        {
          v28 = &v37;
        }

        else
        {
          v28 = &v35;
        }

        llvm::APInt::operator=(&v37, v28);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x25F891010](v35, 0x1000C8000313F17);
        }

        v24 += 8;
      }

      while (v23 != v24);
      v21 = v38;
    }

    v29 = *a1;
    if (a2)
    {
      if (v21 > 0x40)
      {
        v30 = *v37;
      }

      else if (v21)
      {
        v30 = (v37 << -v21) >> -v21;
      }

      else
      {
        v30 = 0;
      }

      ConstantMap = mlir::AffineMap::getConstantMap(v30, *(***(*v29 + 24) + 32), v19);
      mlir::affine::AffineForOp::setLowerBound(v29, 0, 0, ConstantMap);
    }

    else
    {
      if (v21 > 0x40)
      {
        v31 = *v37;
      }

      else if (v21)
      {
        v31 = (v37 << -v21) >> -v21;
      }

      else
      {
        v31 = 0;
      }

      v33 = mlir::AffineMap::getConstantMap(v31, *(***(*v29 + 24) + 32), v19);
      mlir::affine::AffineForOp::setUpperBound(v29, 0, 0, v33);
    }

    if (v38 >= 0x41 && v37)
    {
      MEMORY[0x25F891010](v37, 0x1000C8000313F17);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v22;
}

void simplifyMinOrMaxExprWithOperands(uint64_t *a1, uint64_t *a2, unint64_t a3, int a4)
{
  v67[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v65 = v67;
    v66 = 0x300000000;
    v9 = v64;
    v62 = v64;
    v63 = 0x300000000;
    if (a3 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, a3, 16);
      if (a3 > HIDWORD(v63))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, a3, 16);
      }
    }

    v10 = 8 * a3;
    do
    {
      v11 = *a2++;
      LowerBound = getLowerBound(v11);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v65, LowerBound, v13);
      UpperBound = getUpperBound(v11);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v62, UpperBound, v15);
      v10 -= 8;
    }

    while (v10);
    v16 = v61;
    v59 = v61;
    v60 = 0x400000000;
    v17 = v58;
    v56 = v58;
    v57 = 0x400000000;
    v18 = *a1;
    v19 = *(*a1 + 8);
    if (v19 < 5)
    {
      v20 = 4;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v19, 16);
      v18 = *a1;
      LODWORD(v19) = *(*a1 + 8);
      v20 = HIDWORD(v57);
    }

    if (v20 < v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v19, 16);
      v18 = *a1;
      LODWORD(v19) = *(*a1 + 8);
    }

    if (v19)
    {
      v21 = (v18 + 6);
      v22 = 8 * v19;
      do
      {
        v23 = *v21;
        if (*v21)
        {
          v24 = *(*v21 + 8) == 5;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          v9 = v9 & 0xFFFFFFFFFFFFFF00 | 1;
          llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v59, *(v23 + 16), v9);
          v27 = *(v23 + 16);
          v29 = v17 & 0xFFFFFFFFFFFFFF00 | 1;
          v17 = v29;
        }

        else
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*v21, **a1, *(*a1 + 4), v65, v66, v62, v63, 0);
          v4 = v4 & 0xFFFFFFFFFFFFFF00 | v26;
          llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v59, BoundForAffineExpr, v4);
          v27 = mlir::getBoundForAffineExpr(v23, **a1, *(*a1 + 4), v65, v66, v62, v63, 1);
          v16 = v16 & 0xFFFFFFFFFFFFFF00 | v28;
          v29 = v16;
        }

        llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v56, v27, v29);
        ++v21;
        v22 -= 8;
      }

      while (v22);
      v18 = *a1;
      v31 = *(*a1 + 8);
      v53 = v55;
      v54 = 0x400000000;
      if (v31)
      {
        v32 = 0;
        v33 = (v18 + 6);
        v34 = &v18[2 * v31 + 6];
        while (1)
        {
          AffineConstantExpr = *v33;
          if (*(v59 + 16 * v32 + 8) == 1)
          {
            v36 = (v56 + 16 * v32);
            if (*(v36 + 8) == 1)
            {
              v37 = *(v59 + 2 * v32);
              if (v37 == *v36)
              {
                AffineConstantExpr = mlir::getAffineConstantExpr(v37, *AffineConstantExpr, v30);
              }
            }
          }

          if (a4)
          {
            v38 = v56 + 16 * v32;
            if (v38[8] == 1 && v60)
            {
              v39 = 0;
              v40 = v59 + 16 * v32;
              v41 = 16 * v60;
              v42 = v59 + 8;
              v43 = v56 + 8;
              do
              {
                if (v32 != v39 && (*v42 & 1) != 0)
                {
                  v44 = *(v42 - 1);
                  if (v44 > *v38 || v44 >= *v38 && (*v43 != 1 || v40[8] != 1 || *v40 != *v38 || v39 <= v32 || v44 != *(v43 - 1)))
                  {
                    goto LABEL_57;
                  }
                }

                ++v39;
                v42 += 16;
                v43 += 16;
                v41 -= 16;
              }

              while (v41);
            }
          }

          else
          {
            v45 = v59 + 16 * v32;
            if (v45[8] == 1 && v57)
            {
              v46 = 0;
              v47 = v56;
              v48 = v56 + 16 * v32;
              v49 = v59 + 8;
              do
              {
                if (v32 != v46)
                {
                  v50 = *(v47 + 8);
                  if (v50)
                  {
                    if (*v47 < *v45)
                    {
                      goto LABEL_57;
                    }

                    if (*v47 <= *v45)
                    {
                      if (*v49 != 1)
                      {
                        goto LABEL_57;
                      }

                      v30 = v48[8];
                      if (v30 != 1)
                      {
                        goto LABEL_57;
                      }

                      v30 = *v48;
                      if (*v45 != *v48 || v50 != 1 || v46 <= v32 || *v47 != *(v49 - 1))
                      {
                        goto LABEL_57;
                      }
                    }
                  }
                }

                ++v46;
                v47 += 2;
                v49 += 16;
              }

              while (v47 != (v56 + 16 * v57));
            }
          }

          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v53, AffineConstantExpr);
LABEL_57:
          ++v32;
          if (++v33 == v34)
          {
            v18 = *a1;
            v51 = v53;
            v52 = v54;
            goto LABEL_61;
          }
        }
      }

      v52 = 0;
      v51 = v55;
    }

    else
    {
      v52 = 0;
      v53 = v55;
      v54 = 0x400000000;
      v51 = v55;
    }

LABEL_61:
    *a1 = mlir::AffineMap::getImpl(*v18, v18[1], v51, v52, *(v18 + 2));
    if (v53 != v55)
    {
      free(v53);
    }

    if (v56 != v58)
    {
      free(v56);
    }

    if (v59 != v61)
    {
      free(v59);
    }

    if (v62 != v64)
    {
      free(v62);
    }

    if (v65 != v67)
    {
      free(v65);
    }
  }
}

unint64_t getLowerBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1 && (v2 = *(*(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64) + 8), *(v2 + 8) == 1) && (v3 = *(v2 + 24), *(v3 + 8) == 5))
  {
    v5 = *(v3 + 16);
    v4 = v5 & 0xFFFFFFFFFFFFFF00;
    v5 = v5;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | v5;
}

unint64_t getUpperBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1)
  {
    v2 = &v1[4 * ((v1[11] >> 23) & 1)];
    v3 = *(*(v2 + 10) + 8);
    if (*(v3 + 8) == 1)
    {
      v4 = *(v3 + 24);
      if (*(v4 + 8) == 5)
      {
        v5 = *(*(v2 + 8) + 8);
        if (*(v5 + 8) == 1)
        {
          v6 = *(v5 + 24);
          v7 = *(v4 + 16);
          if (*(v6 + 8) == 5)
          {
            v8 = v7 + ~*(v6 + 16);
            v9 = v7 + ~(v8 % mlir::affine::AffineForOp::getStepAsInt(v1));
LABEL_11:
            v10 = v9 & 0xFFFFFFFFFFFFFF00;
            return v10 | v9;
          }
        }

        else
        {
          v7 = *(v4 + 16);
        }

        v9 = v7 - 1;
        goto LABEL_11;
      }
    }
  }

  LOBYTE(v9) = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t deduplicateAndResolveOperands(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 32))(a1);
  if (!a3)
  {
    return 1;
  }

  v13 = *(**v12 + 472);
  v14 = &a2[6 * a3];
  if (a6 == 6)
  {
    v15 = 6;
  }

  else
  {
    v15 = 7;
  }

  v31 = &a2[6 * a3];
  while (1)
  {
    v32 = v34;
    v33 = 0x600000000;
    v16 = *(a2 + 2);
    if (v16)
    {
      v17 = *a2;
      v18 = 32 * v16;
      do
      {
        if (((*(*a1 + 728))(a1, v17, v13, &v32) & 1) == 0)
        {
          v29 = 1;
          goto LABEL_24;
        }

        v17 += 32;
        v18 -= 32;
      }

      while (v18);
      if (!v33)
      {
        goto LABEL_22;
      }

      v19 = v32;
      v20 = (v32 + 8 * v33);
      do
      {
        v21 = *v19;
        v22 = *a4;
        v23 = *(a4 + 8);
        if (v23)
        {
          v24 = 8 * v23;
          v25 = *a4;
          while (*v25 != v21)
          {
            v25 += 8;
            v24 -= 8;
            if (!v24)
            {
              v25 = &v22[8 * v23];
              break;
            }
          }
        }

        else
        {
          v25 = *a4;
        }

        v26 = (v25 - v22) >> 3;
        if (v23 == v26)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, v21);
        }

        v27 = (*(*a1 + 32))(a1);
        AffineDimOrSymbol = getAffineDimOrSymbol(v15, v26, *v27);
        llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a5, AffineDimOrSymbol);
        ++v19;
      }

      while (v19 != v20);
      v29 = 0;
      v14 = v31;
    }

    else
    {
LABEL_22:
      v29 = 0;
    }

LABEL_24:
    if (v32 != v34)
    {
      free(v32);
    }

    if (v29)
    {
      return 0;
    }

    a2 += 6;
    if (a2 == v14)
    {
      return 1;
    }
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseAffineMapWithMinMax(mlir::OpAsmParser &,mlir::OperationState &,anonymous namespace::MinMaxKind)::$_0>(void *a1)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1[1])
  {
    v3 = "max";
  }

  else
  {
    v3 = "min";
  }

  if (((*(*v2 + 408))(v2, v3, 3) & 1) == 0)
  {
    v9 = *a1;
    v10 = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(a1[6]);
    v11 = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(a1[7]);
    v12 = a1[5];
    v13 = *(v12 + 2);
    if (v13 >= *(v12 + 3))
    {
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a1[5], 0);
      v14 = *v12;
      v15 = *(v12 + 2);
    }

    else
    {
      v14 = *v12;
      *(*v12 + 8 * v13) = 0;
      v15 = v13 + 1;
      *(v12 + 2) = v15;
    }

    if ((*(*v9 + 744))(v9, v10, v11, v14 + 8 * v15 - 8))
    {
      v16 = a1[8];
      v8 = 1;
      llvm::SmallVectorTemplateBase<int,true>::push_back(v16, 1);
      return v8;
    }

    return 0;
  }

  *(a1[2] + 8) = 0;
  if (((*(**a1 + 736))(*a1) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::erase(a1[4] + 112, *a1[3], *(a1[3] + 8));
  llvm::SmallVectorImpl<mlir::AffineExpr>::insert<mlir::AffineExpr const*,void>(a1[5], *a1[5] + 8 * *(a1[5] + 8), (MEMORY[8] + 24), (MEMORY[8] + 24 + 8 * *(MEMORY[8] + 8)));
  v6 = a1[2];
  v4 = *v6;
  v5 = *(v6 + 8);
  LODWORD(v6) = *MEMORY[8];
  if (v5 >= *MEMORY[8])
  {
    v6 = v6;
  }

  else
  {
    v6 = v5;
  }

  v20[0] = v21;
  v20[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v20, v4, &v4[32 * v6]);
  v7 = &v4[32 * *MEMORY[8]];
  v18[0] = v19;
  v18[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v18, v7, &v4[32 * v5]);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(a1[6], *(MEMORY[8] + 8), v20);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(a1[7], *(MEMORY[8] + 8), v18);
  llvm::SmallVectorTemplateBase<int,true>::push_back(a1[8], *(MEMORY[8] + 8));
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return 1;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(a1, a3, a2);
  if (a2)
  {
    v6 = result;
    v7 = (*a1 + 48 * *(a1 + 8));
    v8 = a2;
    do
    {
      *v7 = v7 + 2;
      v7[1] = 0x100000000;
      if (*(v6 + 8))
      {
        result = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v7, v6);
      }

      v7 += 6;
      --v8;
    }

    while (v8);
  }

  *(a1 + 8) += a2;
  return result;
}

void *llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + 48 * v1);
  *v2 = v2 + 2;
  v2[1] = 0x100000000;
  LODWORD(v2) = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return (*a1 + 48 * v2 - 48);
}

void *llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v8 = 0;
  v2 = a1 + 16;
  v3 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v8);
  v4 = &v3[6 * *(a1 + 8)];
  *v4 = v4 + 2;
  v4[1] = 0x100000000;
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v3);
  v5 = v8;
  if (*a1 != v2)
  {
    free(*a1);
  }

  *a1 = v3;
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  return &v3[6 * v6 - 6];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t mlir::Diagnostic::operator<<<116ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a4;
  v10[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v10[3] = 0;
  v11 = 0;
  v12 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v10, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = v8;
  *(v6 + 32) = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 40 * v6 - 40;
}

__n128 llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = a4;
  v9[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v9[3] = 0;
  v10 = 0;
  v11 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v9, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  result = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a1 + 8);
  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model(void *a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B98))
  {
    started = llvm::getTypeName<mlir::affine::AffineDmaStartOp>();
    _MergedGlobals_53 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(started, v11);
    __cxa_guard_release(&qword_27FC23B98);
  }

  v4 = _MergedGlobals_53;
  v12[0] = v13;
  v12[1] = 0x300000000;
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v5 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef;
  v6 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v12, v6, v5);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v12, v8, v7);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_start", 0x10, a2, v4, v12);
  mlir::detail::InterfaceMap::~InterfaceMap(v12);
  *a1 = &unk_286E9D420;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t llvm::getTypeName<mlir::affine::AffineDmaStartOp>()
{
  if ((atomic_load_explicit(&qword_27FC23BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BB0))
  {
    qword_27FC23BA0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaStartOp>();
    *algn_27FC23BA8 = v1;
    __cxa_guard_release(&qword_27FC23BB0);
  }

  return qword_27FC23BA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaStartOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineDmaStartOp]";
  v6 = 92;
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

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  if (*(*(a2 + 72) + 24) == a3)
  {
    v7 = *(***(a2 + 24) + 32);
    v12 = 261;
    v8 = "src_map";
  }

  else
  {
    v5 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
    v6 = *(*(a2 + 72) + 32 * (**(v5 + 8) + *(*(v5 + 8) + 4) + 1) + 24);
    v7 = *(***(a2 + 24) + 32);
    v12 = 261;
    if (v6 == a3)
    {
      v8 = "dst_map";
    }

    else
    {
      v8 = "tag_map";
    }
  }

  v11[0] = v8;
  v11[1] = 7;
  v9 = mlir::StringAttr::get(v7, v11, a3);
  (*(**(a2 + 48) + 80))(*(a2 + 48), a2, v8, 7);
  return v9;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BC0))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineMapAccessInterface>();
    qword_27FC23BB8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23BC0);
  }

  return qword_27FC23BB8;
}

uint64_t llvm::getTypeName<mlir::affine::AffineMapAccessInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BD8))
  {
    qword_27FC23BC8 = llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface>();
    unk_27FC23BD0 = v1;
    __cxa_guard_release(&qword_27FC23BD8);
  }

  return qword_27FC23BC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineMapAccessInterface]";
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

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v6 = *(a2 + 72);
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v5, v6, v7);
  v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
  v9 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  v10 = *(a2 + 72) + 32 * (**(v9 + 8) + *(*(v9 + 8) + 4) + 1);
  v11 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v12 = *(a3 + 8);
  if (v12 >= *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v8, v10, v11);
  }

  else
  {
    v13 = *a3 + 40 * v12;
    *v13 = v8;
    *(v13 + 8) = v11;
    *(v13 + 16) = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 36) = 0;
    ++*(a3 + 8);
  }

  v14 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v15 = *(a2 + 72) + 32 * mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v18);
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();

  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v14, v15, v16);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BE8))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>();
    qword_27FC23BE0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23BE8);
  }

  return qword_27FC23BE0;
}

uint64_t llvm::getTypeName<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C00))
  {
    qword_27FC23BF0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>();
    *algn_27FC23BF8 = v1;
    __cxa_guard_release(&qword_27FC23C00);
  }

  return qword_27FC23BF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineMapAccessInterface::Trait<Empty>]";
  v6 = 114;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v53 = a2;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  v11 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  SrcIndices = mlir::affine::AffineDmaStartOp::getSrcIndices(a2);
  (*(*a3 + 240))(a3, v11, SrcIndices & 0xFFFFFFFFFFFFFFF9 | 2, v13);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    *(v14 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  v16 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (**(v16 + 8) + *(*(v16 + 8) + 4) + 1) + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 91);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 91;
  }

  v19 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "dst_map", 7);
  DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(&v53);
  (*(*a3 + 240))(a3, v19, DstIndices & 0xFFFFFFFFFFFFFFF9 | 2, v21);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 11357;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, "], ", 3uLL);
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * TagMemRefOperandIndex + 24));
  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 91);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 91;
  }

  v27 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(&v53);
  (*(*a3 + 240))(a3, v27, TagIndices & 0xFFFFFFFFFFFFFFF9 | 2, v29);
  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if ((*(v30 + 3) - v31) > 2)
  {
    *(v31 + 2) = 32;
    *v31 = 11357;
    *(v30 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v30, "], ", 3uLL);
  }

  v32 = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  v33 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (v32 + **(v33 + 8) + *(*(v33 + 8) + 4) + 1) + 24));
  if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
  {
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

    if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v36 = (*(a2 + 68) - 2);
      }

      else
      {
        v36 = 4294967294;
      }

      v37 = *(*(a2 + 72) + 32 * v36 + 24);
    }

    else
    {
      v37 = 0;
    }

    (*(*a3 + 160))(a3, v37);
    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 1uLL)
    {
      *v39 = 8236;
      *(v38 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v38, ", ", 2uLL);
    }

    if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v40 = (*(a2 + 68) - 1);
      }

      else
      {
        v40 = 0xFFFFFFFFLL;
      }

      v41 = *(*(a2 + 72) + 32 * v40 + 24);
    }

    else
    {
      v41 = 0;
    }

    (*(*a3 + 160))(a3, v41);
  }

  v42 = (*(*a3 + 16))(a3);
  v43 = *(v42 + 4);
  if ((*(v42 + 3) - v43) > 2)
  {
    *(v43 + 2) = 32;
    *v43 = 14880;
    *(v42 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v42, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v44 = (*(*a3 + 16))(a3);
  v45 = *(v44 + 4);
  if (*(v44 + 3) - v45 > 1uLL)
  {
    *v45 = 8236;
    *(v44 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v44, ", ", 2uLL);
  }

  v46 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 32 * (**(v46 + 8) + *(*(v46 + 8) + 4) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 1uLL)
  {
    *v48 = 8236;
    *(v47 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v47, ", ", 2uLL);
  }

  v49 = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  v50 = *(*a3 + 32);
  v51 = *(*(*(a2 + 72) + 32 * v49 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;

  return v50(a3, v51);
}

uint64_t mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    v33 = a1;
    if (*(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA source to be of memref type";
LABEL_9:
      v34 = v3;
      v35 = 259;
      mlir::Operation::emitOpError(v36, a1, &v34);
      v4 = v37 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
      return v4 & 1;
    }

    v5 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, "src_map", 7);
    if (*(*(*(*(*(a1 + 72) + 32 * (**(v5 + 8) + *(*(v5 + 8) + 4) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA destination to be of memref type";
      goto LABEL_9;
    }

    if (*(*(*(*(*(a1 + 72) + 32 * mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v33) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA tag to be of memref type";
      goto LABEL_9;
    }

    v7 = *((*(**(a1 + 48) + 80))(*(a1 + 48), a1, "src_map", 7) + 8);
    v8 = *v7;
    v9 = v7[1];
    v10 = *((*(**(a1 + 48) + 80))(*(a1 + 48), a1, "dst_map", 7) + 8);
    v11 = *v10;
    v12 = v10[1];
    v13 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, "tag_map", 7);
    v15 = v9 + v8 + v11 + v12 + **(v13 + 8) + *(*(v13 + 8) + 4);
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v16 = *(a1 + 68);
      if (v16 == v15 + 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 == -4)
      {
        goto LABEL_14;
      }

      v16 = 0;
    }

    if (v16 != v15 + 6)
    {
      v3 = "incorrect number of operands";
      goto LABEL_9;
    }

LABEL_14:
    AffineScope = mlir::affine::getAffineScope(a1, v14);
    SrcIndices = mlir::affine::AffineDmaStartOp::getSrcIndices(a1);
    if (v19)
    {
      v20 = v19;
      v21 = (SrcIndices + 24);
      while (1)
      {
        v22 = *v21;
        if (*(*(*(*v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v3 = "src index to dma_start must have 'index' type";
          goto LABEL_9;
        }

        if ((mlir::affine::isValidDim(*v21, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v22, AffineScope) & 1) == 0)
        {
          break;
        }

        v21 += 4;
        if (!--v20)
        {
          goto LABEL_20;
        }
      }

      v3 = "src index must be a valid dimension or symbol identifier";
    }

    else
    {
LABEL_20:
      DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(&v33);
      if (v24)
      {
        v25 = v24;
        v26 = (DstIndices + 24);
        while (1)
        {
          v27 = *v26;
          if (*(*(*(*v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
          {
            v3 = "dst index to dma_start must have 'index' type";
            goto LABEL_9;
          }

          if ((mlir::affine::isValidDim(*v26, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v27, AffineScope) & 1) == 0)
          {
            break;
          }

          v26 += 4;
          if (!--v25)
          {
            goto LABEL_26;
          }
        }

        v3 = "dst index must be a valid dimension or symbol identifier";
      }

      else
      {
LABEL_26:
        TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(&v33);
        if (!v29)
        {
          v4 = 1;
          return v4 & 1;
        }

        v30 = v29;
        for (i = (TagIndices + 24); ; i += 4)
        {
          v32 = *i;
          if (*(*(*(*i + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
          {
            v3 = "tag index to dma_start must have 'index' type";
            goto LABEL_9;
          }

          if ((mlir::affine::isValidDim(*i, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v32, AffineScope) & 1) == 0)
          {
            break;
          }

          v4 = 1;
          if (!--v30)
          {
            return v4 & 1;
          }
        }

        v3 = "tag index must be a valid dimension or symbol identifier";
      }
    }

    goto LABEL_9;
  }

  v4 = 0;
  return v4 & 1;
}