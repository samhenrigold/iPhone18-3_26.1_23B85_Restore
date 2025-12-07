ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::MatMul::build(a1, v17, *a3, *a4 - 16, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::Ceil::build(a1, v15, *a3, a3[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v63 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v50 = v6;
  v51 = v7;
  v60 = v62;
  v61 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v63, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v60) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(&v50);
  v9 = mlir::MemRefType::get(v60, v61, isSplat, 0, 0, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v11);
  v14 = v13;
  v48[0] = RankPromotionTypeForANE;
  v48[1] = v13;
  if (!mlir::Type::isF16(&isSplat))
  {
    operator new();
  }

  v15 = mlir::getRankPromotionTypeForANE(v50, v51);
  v57 = v59;
  v58 = 0x400000000;
  if ((mlir::getBroadcastIndices(v15, v16, RankPromotionTypeForANE, v14, &v57) & 1) == 0)
  {
    operator new();
  }

  mlir::ShapedType::getShape(v48);
  IndexFromDim = mlir::anec::getIndexFromDim(4, v17);
  if (!v58)
  {
    operator new();
  }

  v19 = v57;
  v20 = 8 * v58;
  while (IndexFromDim != *v19)
  {
    ++v19;
    v20 -= 8;
    if (!v20)
    {
      v47 = mlir::ValueRange::dereference_iterator(&v63, 0);
      Shape = mlir::ShapedType::getShape(v48);
      v23 = v22;
      v24 = mlir::ElementsAttr::isSplat(v48);
      v25 = mlir::RankedTensorType::get(Shape, v23, v24, 0);
      __p = mlir::createSplatF16ElementsAttr(v25, 0.0);
      v55 = v26;
      v27 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(a2 + 24), v48, &__p);
      v52[0] = mlir::ValueRange::dereference_iterator(&v63, 0);
      v52[1] = v27 - 16;
      mlir::ValueRange::ValueRange(v53, v52, 2uLL);
      v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::ValueRange>((a4 + 8), *(a2 + 24), v53);
      (*(*a4 + 8))(a4, a2, v28);
      goto LABEL_26;
    }
  }

  v29 = IndexFromDim;
  v47 = mlir::ValueRange::dereference_iterator(&v63, 0);
  mlir::ShapedType::getShape(v48);
  v31 = v30;
  __p = v56;
  HIDWORD(v55) = 5;
  if (v30 < 6)
  {
    if (!v30)
    {
      goto LABEL_24;
    }

    v33 = 8 * v30;
    v32 = v56;
  }

  else
  {
    LODWORD(v55) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v56, v30, 8);
    v32 = __p;
    v33 = 8 * v31;
  }

  memset_pattern16(v32, &unk_1A75989B0, v33);
LABEL_24:
  LODWORD(v55) = v31;
  v34 = mlir::ShapedType::getShape(v48);
  v35 = __p;
  *(__p + v29) = *(v34 + 8 * v29);
  v36 = v55;
  v37 = mlir::ElementsAttr::isSplat(v48);
  v38 = mlir::RankedTensorType::get(v35, v36, v37, 0);
  v53[0] = mlir::createSplatF16ElementsAttr(v38, 1.0);
  v53[1] = v39;
  v40 = *(a2 + 24);
  v41 = __p;
  v42 = v55;
  v43 = mlir::ElementsAttr::isSplat(v48);
  v46 = mlir::MemRefType::get(v41, v42, v43, 0, 0, 0);
  v52[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v40, &v46, v53);
  v46 = 0;
  v44 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::mps::ConstantOp &,decltype(nullptr)>((a4 + 8), *(a2 + 24), &v47, v52);
  (*(*a4 + 8))(a4, a2, v44);
  if (__p != v56)
  {
    free(__p);
  }

LABEL_26:
  if (v57 != v59)
  {
    free(v57);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::~ConvertBroadcast(void *a1)
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

void mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::~ConvertBroadcast(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertBroadcast<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v18[0] = v6;
  v18[1] = v7;
  v19 = v21;
  v20 = 0x500000000;
  v8 = mlir::ValueRange::dereference_iterator(&v22, 1);
  if ((mlir::matchConstantWithIntVector<long long>(v8, &v19) & 1) == 0)
  {
    operator new();
  }

  isSplat = mlir::ElementsAttr::isSplat(v18);
  v10 = mlir::MemRefType::get(v19, v20, isSplat, 0, 0, 0);
  if (v10)
  {
    v11 = v10;
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
    v10 = v11;
  }

  else
  {
    v12 = 0;
  }

  __p[0] = mlir::getRankPromotionTypeForANE(v10, v12);
  __p[1] = v13;
  v16 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v14 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), *(a2 + 24), __p, &v16);
  (*(*a4 + 8))(a4, a2, v14);
  if (v19 != v21)
  {
    free(v19);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::~ConvertPadding(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PadOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PadOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 56);
  v32 = *(a3 + 48);
  v33 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v33 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v32, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v33 + 1;
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

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v32 = v18;
        v33 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v32) || !mlir::ElementsAttr::getShapedType(&v32))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v32);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v29 = v23;
  v24 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

ZinIrHalH13g *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)0>::createPadding(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t *a6, uint64_t a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = v39;
  memset(v39, 0, sizeof(v39));
  v38 = 0xA0000000ALL;
  v34 = v36;
  memset_pattern16(v36, &unk_1A75EA240, 0x28uLL);
  v35 = 0x500000005;
  v12 = a5[2];
  if (v12)
  {
    v13 = 0;
    v14 = 16 * v12;
    v15 = (*a5 + 8);
    do
    {
      ReferenceFormatIndex = mlir::anec::getReferenceFormatIndex(v13, a5[2], 5uLL);
      if ((v18 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v19 = *(v15 - 1);
      if (v19 || *v15)
      {
        v16 = v37 + 16 * ReferenceFormatIndex;
        *v16 = v19;
        v16[1] = *v15;
        *(v34 + ReferenceFormatIndex) = a4;
      }

      v13 = (v13 + 1);
      v15 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  v33 = xmmword_1A75EA150;
  IntegerType = mlir::Builder::getIntegerType((a7 + 8), 64, 0);
  v21 = mlir::RankedTensorType::get(&v33, 2, IntegerType, 0);
  if (v21)
  {
    v22 = v21;
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    v21 = v22;
  }

  else
  {
    v23 = 0;
  }

  v31 = mlir::DenseElementsAttr::getFromRawBuffer(v21, v23, v37, 8 * v38);
  v32 = 5;
  v24 = mlir::Builder::getIntegerType((a7 + 8), 64, 0);
  v25 = mlir::RankedTensorType::get(&v32, 1, v24, 0);
  if (v25)
  {
    v26 = v25;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    v25 = v26;
  }

  else
  {
    v27 = 0;
  }

  *&v33 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, v34, 8 * v35);
  v28 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>((a7 + 8), a1, a2, &v33, &v31, a6);
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return v28;
}

void mlir::getListOfPairs<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x800000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v12, 1);
  v4 = v12;
  v5 = v13;
  if (v13)
  {
    v6 = v12;
    do
    {
      v7 = *v6;
      v10 = v6[1];
      v11 = v7;
      v8 = *(a3 + 8);
      if (v8 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned long long,unsigned long long>,true>::growAndEmplaceBack<unsigned long long &,unsigned long long &>(a3, &v11, &v10);
        v4 = v12;
        v5 = v13;
      }

      else
      {
        v9 = (*a3 + 16 * v8);
        *v9 = v7;
        v9[1] = v10;
        *(a3 + 8) = v8 + 1;
      }

      v6 += 2;
    }

    while (v6 != &v4[8 * v5]);
  }

  if (v4 != v14)
  {
    free(v4);
  }
}

char *llvm::SmallVectorImpl<std::pair<unsigned long long,unsigned long long>>::insert<std::pair<unsigned long long,unsigned long long>*,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v7 = *a1;
  v8 = *a1;
  v9 = a2 - *a1;
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12 = a4 - __src;
  v13 = (a4 - __src) >> 4;
  v14 = v13 + v11;
  if (*a1 + 16 * v11 == a2)
  {
    if (v14 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v14, 16);
      LODWORD(v11) = *(a1 + 2);
      v8 = *a1;
    }

    if (__src != a4)
    {
      memcpy((v8 + 16 * v11), __src, v12);
      LODWORD(v11) = *(a1 + 2);
      v8 = *a1;
    }

    *(a1 + 2) = v11 + (v12 >> 4);
    return (v8 + v9);
  }

  else
  {
    v103 = __src;
    if (v14 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v14, 16);
      v8 = *a1;
      v11 = *(a1 + 2);
    }

    v15 = (v8 + v9);
    v16 = v9;
    v17 = 16 * v11;
    v18 = (v8 + 16 * v11);
    v19 = 16 * v11 - v16;
    v20 = v19 >> 4;
    if (v19 >> 4 < v13)
    {
      v21 = v11 + (v12 >> 4);
      *(a1 + 2) = v21;
      if (v17 == v16)
      {
        v22 = v103;
        goto LABEL_21;
      }

      v30 = v16;
      v31 = v8;
      memcpy((v8 + 16 * v21 - 16 * v20), v15, 16 * v11 - v16);
      if (v20 <= 0xF || ((v89 = v31 + v19 + a2 - v7, v90 = v89 - 8, v30 + v31 + 8 < &v103[v19]) ? (v91 = (v103 + 8) >= v89) : (v91 = 1), v91 ? (v92 = 0) : (v92 = 1), v90 > v103 ? (v93 = v15 >= &v103[v19 - 8]) : (v93 = 1), !v93 || (v92 & 1) != 0))
      {
        v32 = v15;
        v33 = v19 >> 4;
        v22 = v103;
      }

      else
      {
        v94 = 16 * (v20 & 0xFFFFFFFFFFFFFFFCLL);
        v32 = &v15[v94];
        v33 = (v19 >> 4) & 3;
        v22 = &v103[v94];
        v95 = (v103 + 32);
        v96 = (v30 + v31 + 32);
        v97 = v20 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v99 = *(v95 - 2);
          v98 = *(v95 - 1);
          v101 = *v95;
          v100 = v95[1];
          v95 += 4;
          *(v96 - 2) = v99;
          *(v96 - 1) = v98;
          *v96 = v101;
          v96[1] = v100;
          v96 += 4;
          v97 -= 4;
        }

        while (v97);
        if (v20 == (v20 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_21:
          if (v22 != a4)
          {
            memcpy(v18, v22, a4 - v22);
          }

          return v15;
        }
      }

      do
      {
        v34 = *v22;
        v22 += 16;
        *v32 = v34;
        v32 += 16;
        --v33;
      }

      while (v33);
      goto LABEL_21;
    }

    v23 = v16;
    v24 = 16 * v13;
    if (v13 + v11 > *(a1 + 3))
    {
      v25 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v13 + v11, 16);
      v8 = v25;
      LODWORD(v11) = *(a1 + 2);
    }

    v26 = &v18[-v24];
    if (a4 == v103)
    {
      v29 = a2;
    }

    else
    {
      v27 = (*a1 + 16 * v11);
      v28 = -16 * v13;
      v29 = a2;
      do
      {
        *v27++ = *&v18[v28];
        v28 += 16;
      }

      while (v28);
      LODWORD(v11) = *(a1 + 2);
    }

    *(a1 + 2) = v11 + v13;
    if (v26 != v15)
    {
      v35 = v17 + v7 - (v24 + v29) - 16;
      if (v35 < 0x530)
      {
        goto LABEL_26;
      }

      v43 = v35 & 0xFFFFFFFFFFFFFFF0;
      v44 = v17 - 16;
      if (v8 + v17 - 16 - (v35 & 0xFFFFFFFFFFFFFFF0) > v8 + v17 - 16)
      {
        goto LABEL_26;
      }

      v45 = v17 - 8;
      if (v8 + v17 - 8 - v43 > v8 + v17 - 8)
      {
        goto LABEL_26;
      }

      if (v8 + v44 - v24 - v43 > v8 + v44 - v24)
      {
        goto LABEL_26;
      }

      v46 = v45 - v24;
      if (v8 + v45 - v24 - v43 > v8 + v45 - v24)
      {
        goto LABEL_26;
      }

      v47 = (v17 + v7 - (v24 + v29) - 16) & 0xFFFFFFFFFFFFFFF0;
      v48 = v8 + v44 - v47;
      v49 = v8 + v45;
      v50 = v8 + v45 - v47;
      v51 = v8 + v44 - (v24 + v47);
      v52 = v8 + v46 - v47;
      v53 = v48 >= v8 + v46 || v51 >= v49;
      v54 = !v53;
      v55 = v48 >= v26 || v52 >= v49;
      v56 = !v55;
      v57 = v50 >= v8 + v46 || v51 >= v18;
      v58 = !v57;
      v59 = v50 >= v26 || v52 >= v18;
      v60 = !v59;
      if (v50 < v49 && v48 < v18)
      {
        goto LABEL_26;
      }

      if (v54)
      {
        goto LABEL_26;
      }

      if (v56)
      {
        goto LABEL_26;
      }

      if (v58)
      {
        goto LABEL_26;
      }

      if (v60)
      {
        goto LABEL_26;
      }

      v62 = (v35 >> 4) + 1;
      v63 = 16 * (v62 & 0x1FFFFFFFFFFFFFFCLL);
      v64 = &v18[-v63];
      v65 = &v26[-v63];
      v66 = v26 - 32;
      v67 = v18 - 64;
      v68 = v62 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v69 = *(v66 + 1);
        v71 = *(v66 - 2);
        v70 = *(v66 - 1);
        *(v67 + 2) = *v66;
        *(v67 + 3) = v69;
        *v67 = v71;
        *(v67 + 1) = v70;
        v67 -= 64;
        v66 -= 64;
        v68 -= 4;
      }

      while (v68);
      v18 = v64;
      v26 = v65;
      if (v62 != (v62 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_26:
        v36 = v18 - 8;
        do
        {
          v37 = *(v26 - 2);
          v26 -= 16;
          *(v36 - 1) = v37;
          *v36 = *(v26 + 1);
          v36 -= 16;
        }

        while (v26 != v15);
      }
    }

    if (a4 != v103)
    {
      v38 = a4 - v103 - 16;
      if (v38 < 0x170 || ((v72 = (v38 & 0xFFFFFFFFFFFFFFF0) + v29 - v7 + v8, v73 = v72 + 8, v74 = &v103[v38 & 0xFFFFFFFFFFFFFFF0], v75 = (v74 + 8), v76 = v72 + 16, v23 + v8 + 8 < (v74 + 16)) ? (v77 = (v103 + 8) >= v76) : (v77 = 1), v77 ? (v78 = 0) : (v78 = 1), v73 > v103 ? (v79 = v15 >= v75) : (v79 = 1), !v79 || (v78 & 1) != 0))
      {
        v39 = v15;
        v40 = v103;
      }

      else
      {
        v80 = (v38 >> 4) + 1;
        v81 = 16 * (v80 & 0x1FFFFFFFFFFFFFFCLL);
        v39 = &v15[v81];
        v40 = &v103[v81];
        v82 = (v103 + 32);
        v83 = (v23 + v8 + 32);
        v84 = v80 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v86 = *(v82 - 2);
          v85 = *(v82 - 1);
          v88 = *v82;
          v87 = v82[1];
          v82 += 4;
          *(v83 - 2) = v86;
          *(v83 - 1) = v85;
          *v83 = v88;
          v83[1] = v87;
          v83 += 4;
          v84 -= 4;
        }

        while (v84);
        if (v80 == (v80 & 0x1FFFFFFFFFFFFFFCLL))
        {
          return v15;
        }
      }

      do
      {
        v41 = *v40;
        v40 += 16;
        *v39 = v41;
        v39 += 16;
      }

      while (v40 != a4);
    }
  }

  return v15;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned long long,unsigned long long>,true>::growAndEmplaceBack<unsigned long long &,unsigned long long &>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::Padding::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id)
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

void std::deque<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>>>::__add_back_capacity(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10[4] = a1;
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10[0] = *v4;
  a1[1] = v4 + 1;
  std::__split_buffer<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *,std::allocator<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *>>::emplace_back<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *&>(a1, v10);
}

void std::__split_buffer<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *,std::allocator<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *>>::emplace_back<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *,std::allocator<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *>>::emplace_front<std::pair<mlir::anec::Dim,std::pair<unsigned long long,unsigned long long>> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::~ConvertPadding(void *a1)
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

void mlir::anonymous namespace::ConvertPadding<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 48);
  v3 = (*(mlir::ValueRange::dereference_iterator(&v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::~ConvertSlice(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
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

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

ZinIrHalH13g *mlir::anonymous namespace::makeInputViewOp<(mlir::anec::Family)0>(uint64_t a1, uint64_t a2, uint64_t a3, mlir::anec *a4, mlir::anec *a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  NextResultAtOffset = a3;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v38[0] = mlir::getRankPromotionTypeForANE(v12, v13);
  v38[1] = v14;
  isSplat = mlir::ElementsAttr::isSplat(v38);
  v15 = 12;
  if (!mlir::Type::isF16(&isSplat))
  {
    v36 = mlir::ElementsAttr::isSplat(v38);
    if (mlir::Type::isF32(&v36))
    {
      v15 = 12;
    }

    else
    {
      v15 = 28;
    }
  }

  mlir::ShapedType::getShape(v38);
  DimFromIndex = mlir::anec::getDimFromIndex(a4, v16);
  if ((DimFromIndex & 0x100000000) != 0)
  {
    if (DimFromIndex != 4 || v15 >= a5)
    {
      v36 = a5;
      isSplat = a4;
LABEL_29:
      v35 = a6;
      return mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>((a1 + 8), a2, &NextResultAtOffset, &isSplat, &v36, &v35, &v39);
    }

    mlir::ShapedType::getShape(v38);
    IndexFromDim = mlir::anec::getIndexFromDim(4, v18);
    if (v20)
    {
      v21 = IndexFromDim;
      Shape = mlir::ShapedType::getShape(v38);
      v23 = a5 / v15;
      v24 = a5 % v15;
      v26 = v23 > 1 && v24 == 0;
      v27 = v23 - v26;
      if (v23 != v26)
      {
        v28 = (*(Shape + 8 * v21) - v15);
        do
        {
          v36 = a4;
          isSplat = v28;
          v35 = v15;
          v29 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>((a1 + 8), a2, &NextResultAtOffset, &v36, &v35, &isSplat);
          if (*(v29 + 9))
          {
            v30 = v29 - 16;
          }

          else
          {
            v30 = 0;
          }

          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
          v28 = (v28 - v15);
          --v27;
        }

        while (v27);
      }

      if (v24)
      {
        v31 = v24;
      }

      else
      {
        v31 = v15;
      }

      v36 = v31;
      isSplat = a4;
      goto LABEL_29;
    }
  }

  v33 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::getSingleIntValue<int>(v33, v34);
}

uint64_t mlir::getSingleIntValue<int>(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11[0] = mlir::ElementsAttr::getShapedType(&v12);
  v11[1] = v2;
  Shape = mlir::ShapedType::getShape(v11);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && (v10[0] = mlir::ElementsAttr::getShapedType(&v12), v10[1] = v5, *(*mlir::ElementsAttr::isSplat(v10) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v10[0]) = 0;
    mlir::copyElementsAttrData<int>(v12, v13, v10, 1);
    v8 = v10[0] & 0xFFFFFF00;
    v6 = LOBYTE(v10[0]);
    v7 = 0x100000000;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  return v7 | v8 | v6;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::InputView::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
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

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

ZinIrHalH13g *mlir::anonymous namespace::makeInputViewOp<(mlir::anec::Family)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a3;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v19[0] = mlir::getRankPromotionTypeForANE(v12, v13);
  v19[1] = v14;
  isSplat = mlir::ElementsAttr::isSplat(v19);
  if (!mlir::Type::isF16(&isSplat))
  {
    v17 = mlir::ElementsAttr::isSplat(v19);
    mlir::Type::isF32(&v17);
  }

  v17 = a5;
  isSplat = a4;
  v16 = a6;
  return mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long,unsigned long long,unsigned long long,long long &>((a1 + 8), a2, &v21, &isSplat, &v17, &v16, &v20);
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::~ConvertSlice(void *a1)
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

void mlir::anonymous namespace::ConvertSlice<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::ConversionPatternRewriter *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v34 = v7;
  v35 = v8;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v33 = 0;
  v9 = *(v6 + 56);
  v30[0] = &v33;
  __p = v9;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v30, DefiningOp) & 1) != 0)
  {
    v11 = v33;
    mlir::ShapedType::getShape(&v34);
    if (mlir::getPositivePromotedAxes(v11, v12, v38, 0, 0))
    {
      v30[0] = mlir::getRankPromotionTypeForANE(v34, v35);
      v30[1] = v13;
      v14 = *(*(a2 + 9) + 88);
      __p = 0;
      *&v32 = 0;
      p_p = &__p;
      v37 = v14;
      v15 = mlir::Value::getDefiningOp(&v37);
      if (!v15 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v15) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(__p, v32), (SingleInt & 0x100000000) == 0))
      {
        operator new();
      }

      v17 = SingleInt;
      v18 = *v38[0];
      Shape = mlir::ShapedType::getShape(v30);
      PositiveAxis = mlir::tryGetPositiveAxis(v17, *(Shape + 8 * v18), 0, 0, 0);
      if (v21)
      {
        v22 = PositiveAxis;
        v23 = *(*(a2 + 9) + 120);
        __p = 0;
        *&v32 = 0;
        p_p = &__p;
        v37 = v23;
        v24 = mlir::Value::getDefiningOp(&v37);
        if (v24 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v24) & 1) != 0)
        {
          v25 = mlir::getSingleIntValue<int>(__p, v32);
          if ((v25 & 0x100000000) != 0)
          {
            v26 = v25;
            v27 = *(a2 + 3);
            v28 = mlir::ValueRange::dereference_iterator(&v40, 0);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v29);
          }
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::StridedSliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::StridedSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::StridedSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 80);
  v34 = *(a3 + 72);
  v35 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v35 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v34, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v26) || !mlir::ElementsAttr::getShapedType(&v26))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v35 + 1;
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

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v34 = v18;
        v35 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v34) || !mlir::ElementsAttr::getShapedType(&v34))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v34);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 48);
  v30 = *(a3 + 32);
  v31 = v23;
  v32 = *(a3 + 64);
  v33 = *(a3 + 80);
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; i = (i + 1))
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = (v40 + 1);
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    v56 = (v56 + 1);
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::promoteAxesValues(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v20 = 0;
  v21 = 0;
  v19 = &v20;
  __p = a3;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v19, DefiningOp) & 1) == 0)
  {
    operator new();
  }

  mlir::getIntValues<long long>(v20, v21, a5, 1);
  v10 = *(a5 + 8);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      llvm::SmallVectorImpl<long long>::insert(a5, *a5 + 8, 1uLL, a4);
      v16 = *a5;
    }

    else
    {
      if (v10 != 3)
      {
        return 1;
      }

      Instance = mlir::ANEPropertiesRegistry::getInstance(v9);
      Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(a1 + 8));
      if (!Properties || *Properties != 1)
      {
        llvm::SmallVectorImpl<long long>::insert(a5, *a5 + 16, 1uLL, a4);
        return 1;
      }

      v16 = *a5;
    }

    llvm::SmallVectorImpl<long long>::insert(a5, v16, 1uLL, a4);
    return 1;
  }

  if (!v10)
  {
    v11 = *a5;
    v12 = a5;
    v13 = 4;
    goto LABEL_14;
  }

  if (v10 == 1)
  {
    v11 = *a5;
    v12 = a5;
    v13 = 3;
LABEL_14:
    llvm::SmallVectorImpl<long long>::insert(v12, v11, v13, a4);
  }

  return 1;
}

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)0>::getFlagsToPositivePromotedAxes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x500000000;
  if (a4 < 1)
  {
    v12 = 0;
    v11 = v23;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i < a4; v8 = ++i)
    {
      if ((a3 >> i))
      {
        if (v7 >= HIDWORD(v22))
        {
          v10 = a3;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v7 + 1, 8);
          a3 = v10;
          v7 = v22;
        }

        *(v21 + v7) = v8;
        v7 = v22 + 1;
        LODWORD(v22) = v22 + 1;
      }
    }

    v11 = v21;
    v12 = v7;
  }

  v18 = v20;
  v19 = 0x500000000;
  if ((mlir::getPositivePromotedAxes(v11, v12, a4, &v18, 0, 0) & 1) == 0)
  {
    operator new();
  }

  v13 = *(a5 + 64);
  *(a5 + 8) = 0;
  std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(a5 + 56, v13);
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 56) = a5 + 64;
  if (v19)
  {
    v14 = v18;
    v15 = 8 * v19;
    do
    {
      llvm::SmallSet<long long,5u,std::less<long long>>::insertImpl<long long const&>(a5, v14++, &__p);
      v15 -= 8;
    }

    while (v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return 1;
}

uint64_t llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(uint64_t a1)
{
  std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(a1 + 56, *(a1 + 64));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

void llvm::SmallSet<long long,5u,std::less<long long>>::insertImpl<long long const&>(uint64_t **result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  if (result[9])
  {
    v6 = result[8];
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *result;
    v11 = *(result + 2);
    v12 = *a2;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = 8 * v11;
    v14 = 8 * v11;
    v8 = *result;
    while (*v8 != v12)
    {
      ++v8;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v11 > 4)
    {
      do
      {
        if (!*std::__tree<long long>::__find_equal<long long>(result + 7, result + 8, &v22, &v21, v10))
        {
          operator new();
        }

        ++v10;
        v13 -= 8;
      }

      while (v13);
      *(result + 2) = 0;
      v18 = result[8];
      if (!v18)
      {
LABEL_34:
        operator new();
      }

      v19 = *a2;
      while (1)
      {
        while (1)
        {
          v8 = v18;
          v20 = *(v18 + 32);
          if (v19 >= v20)
          {
            break;
          }

          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_34;
          }
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = v8[1];
        if (!v18)
        {
          goto LABEL_34;
        }
      }

      v15 = 0;
    }

    else
    {
LABEL_19:
      if (v11 >= *(result + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v11 + 1, 8);
        v11 = *(result + 2);
        v10 = *result;
      }

      v10[v11] = v12;
      v17 = *(result + 2) + 1;
      *(result + 2) = v17;
      v8 = &(*result)[v17 - 1];
      v15 = 1;
    }

    v16 = 1;
  }

LABEL_23:
  *(a3 + 8) = v15;
  *a3 = v8;
  *(a3 + 16) = v16;
}

void *std::__tree<long long>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
    }

    else
    {
      v19 = a1 + 1;
    }

LABEL_25:
    *a3 = v19;
    return v5;
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
      }

      else
      {
        v23 = a1 + 1;
      }

LABEL_41:
      *a3 = v23;
      return v5;
    }
  }
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; i = (i + 1))
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = (v40 + 1);
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    v56 = (v56 + 1);
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::~ConvertStridedSlice(void *a1)
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

void mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::~ConvertStridedSlice(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertStridedSlice<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a2;
  v106 = *(a3 + 72);
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v94 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v77);
  v104[0] = v105;
  v104[1] = 0x500000000;
  {
    v102[0] = v103;
    v102[1] = 0x500000000;
    {
      v99 = v101;
      v100 = 0x500000000;
      {
        if (v100)
        {
          v10 = v99;
          v11 = 8 * v100;
          do
          {
            if (!*v10)
            {
              operator new();
            }

            ++v10;
            v11 -= 8;
          }

          while (v11);
        }

        __p = v95;
        v94 = 0x500000000;
        v97 = 0;
        v98 = 0;
        v96 = &v97;
        v12 = v77;
        Index = mlir::pdl::ResultOp::getIndex(&v77);
        {
          v87 = v89;
          v88 = 0x500000000;
          v91 = 0;
          v92 = 0;
          v90 = &v91;
          v14 = v77;
          EndMask = mlir::mps::StridedSliceOp::getEndMask(&v77);
          {
            v82 = v84;
            v83 = 0x500000000;
            v85 = 0;
            v86 = 0;
            v84[5] = &v85;
            v16 = v77;
            Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v77);
            {
              v18 = mlir::ValueRange::dereference_iterator(&v106, 0);
              v76 = v18;
              v19 = (*(*(*(v77 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v19)
              {
                v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
              }

              else
              {
                v20 = 0;
              }

              v75[0] = mlir::getRankPromotionTypeForANE(v19, v20);
              v75[1] = v21;
              mlir::ShapedType::getShape(v75);
              if (v22 >= 1)
              {
                for (i = 0; i < v24; ++i)
                {
                  Shape = mlir::ShapedType::getShape(v75);
                  v26 = *(Shape + 8 * i);
                  v27 = *(v104[0] + i);
                  v28 = *(v102[0] + i);
                  v29 = *(v99 + i);
                  v30 = v28 + v27;
                  if (v28 == -1)
                  {
                    v30 = *(Shape + 8 * i);
                  }

                  if (IsSize)
                  {
                    v28 = v30;
                  }

                  if (v98)
                  {
                    v31 = v97;
                    if (!v97)
                    {
                      goto LABEL_50;
                    }

                    v32 = &v97;
                    do
                    {
                      if (v31[4] >= i)
                      {
                        v32 = v31;
                      }

                      v31 = v31[v31[4] < i];
                    }

                    while (v31);
                    if (v32 == &v97 || i < v32[4])
                    {
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    if (!v94)
                    {
                      goto LABEL_50;
                    }

                    v33 = __p;
                    v34 = 8 * v94;
                    while (*v33 != i)
                    {
                      ++v33;
                      v34 -= 8;
                      if (!v34)
                      {
                        goto LABEL_50;
                      }
                    }

                    if (!v34)
                    {
LABEL_50:
                      v35 = (v26 & (v27 >> 63)) + v27;
                      goto LABEL_51;
                    }
                  }

                  v35 = v26 - 1;
                  if (v29 > 0)
                  {
                    v35 = 0;
                  }

LABEL_51:
                  if (v92)
                  {
                    v36 = v91;
                    if (v91)
                    {
                      v37 = &v91;
                      do
                      {
                        if (v36[4] >= i)
                        {
                          v37 = v36;
                        }

                        v36 = v36[v36[4] < i];
                      }

                      while (v36);
                      if (v37 != &v91 && i >= v37[4])
                      {
                        goto LABEL_66;
                      }
                    }
                  }

                  else if (v88)
                  {
                    v38 = v87;
                    v39 = 8 * v88;
                    while (*v38 != i)
                    {
                      ++v38;
                      v39 -= 8;
                      if (!v39)
                      {
                        goto LABEL_69;
                      }
                    }

                    if (v39)
                    {
LABEL_66:
                      if (v29 <= 0)
                      {
                        v40 = -1;
                      }

                      else
                      {
                        v40 = *(Shape + 8 * i);
                      }

                      goto LABEL_70;
                    }
                  }

LABEL_69:
                  v40 = (v26 & (v28 >> 63)) + v28;
LABEL_70:
                  if (v86)
                  {
                    v41 = v85;
                    if (!v85)
                    {
                      goto LABEL_78;
                    }

                    v42 = &v85;
                    do
                    {
                      if (v41[4] >= i)
                      {
                        v42 = v41;
                      }

                      v41 = v41[v41[4] < i];
                    }

                    while (v41);
                    if (v42 == &v85 || i < v42[4])
                    {
LABEL_78:
                      v42 = &v85;
                    }

                    v43 = v42 == &v85;
                  }

                  else
                  {
                    v44 = v82;
                    if (v83)
                    {
                      v45 = 8 * v83;
                      while (*v44 != i)
                      {
                        ++v44;
                        v45 -= 8;
                        if (!v45)
                        {
                          goto LABEL_84;
                        }
                      }
                    }

                    else
                    {
LABEL_84:
                      v44 = &v82[v83];
                    }

                    v43 = v44 == &v82[v83];
                  }

                  if (!v43)
                  {
                    v40 = v35 + 1;
                  }

                  if (v29 >= 1 && v40 < v35 || v29 < 0 && v40 > v35)
                  {
                    operator new();
                  }

                  if (v35 < 0 || v35 >= v26 || v40 < -1 || v40 > v26)
                  {
                    operator new();
                  }

                  v47 = vcvtps_s32_f32((v40 - v35) / v29);
                  if (v40 < v35)
                  {
                    v48 = v40 + 1;
                  }

                  else
                  {
                    v48 = v35;
                  }

                  if (v47 >= 0)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = -v47;
                  }

                  if (v49 != v26 || v29 != 1)
                  {
                    if (v49 != v26 && v29 < 0)
                    {
                      v48 = 0;
                      v18 = v51 - 16;
                    }

                    v76 = v18;
                  }

                  mlir::ShapedType::getShape(v75);
                }
              }

              if (v83 || v86)
              {
                v52 = (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
                if (v52)
                {
                  v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v52 + 8);
                }

                else
                {
                  v53 = 0;
                }

                v81[0] = v52;
                v81[1] = v53;
                v78 = v80;
                v79 = 0x400000000;
                v54 = mlir::ShapedType::getShape(v81);
                if (v55)
                {
                  v56 = 0;
                  v57 = &v54[v55];
                  do
                  {
                    if (v86)
                    {
                      v58 = v85;
                      if (v85)
                      {
                        v59 = &v85;
                        do
                        {
                          if (v58[4] >= v56)
                          {
                            v59 = v58;
                          }

                          v58 = v58[v58[4] < v56];
                        }

                        while (v58);
                        if (v59 != &v85 && v56 >= v59[4])
                        {
                          goto LABEL_122;
                        }
                      }
                    }

                    else if (v83)
                    {
                      v60 = v82;
                      v61 = 8 * v83;
                      while (*v60 != v56)
                      {
                        ++v60;
                        v61 -= 8;
                        if (!v61)
                        {
                          goto LABEL_136;
                        }
                      }

                      if (v61)
                      {
                        goto LABEL_122;
                      }
                    }

LABEL_136:
                    v62 = *v54;
                    v63 = v79;
                    if (v79 >= HIDWORD(v79))
                    {
                      v64 = v54;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v79 + 1, 8);
                      v54 = v64;
                      v63 = v79;
                    }

                    *(v78 + v63) = v62;
                    LODWORD(v79) = v79 + 1;
LABEL_122:
                    ++v56;
                    ++v54;
                  }

                  while (v54 != v57);
                }

                v65 = v78;
                v66 = v79;
                ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
                v68 = mlir::MemRefType::get(v65, v66, ElementTypeOrSelf, 0, 0, 0);
                if (v68)
                {
                  v69 = v68;
                  v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
                  v68 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v74[0] = mlir::getRankPromotionTypeForANE(v68, v70);
                v74[1] = v71;
                v18 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(v77 + 24), v74, &v76) - 16;
                v76 = v18;
                if (v78 != v80)
                {
                  free(v78);
                  v18 = v76;
                }
              }

              v72 = v77;
              v81[0] = v18;
              mlir::ValueRange::ValueRange(&v78, v81, 1uLL);
              mlir::ConversionPatternRewriter::replaceOp(a4, v72, v78, v79);
            }

            llvm::SmallSet<long long,5u,std::less<long long>>::~SmallSet(&v82);
          }

          std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v90, v91);
          if (v87 != v89)
          {
            free(v87);
          }
        }

        std::__tree<std::__value_type<long long,unsigned int>,std::__map_value_compare<long long,std::__value_type<long long,unsigned int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned int>>>::destroy(&v96, v97);
        if (__p != v95)
        {
          free(__p);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    if (v102[0] != v103)
    {
      free(v102[0]);
    }
  }

  if (v104[0] != v105)
  {
    free(v104[0]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)0>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)0>::~ConvertReverse(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReverseOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReverseOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReverseOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
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

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)1>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)1>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)2>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)2>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)3>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)3>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)4>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)4>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)5>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)5>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)6>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)6>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)7>::~ConvertReverse(void *a1)
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

void mlir::anonymous namespace::ConvertReverse<(mlir::anec::Family)7>::~ConvertReverse(void *a1)
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

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::~ConvertCrop(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CropOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::CropOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CropOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v25 = v10;
        v26 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v25) || !mlir::ElementsAttr::getShapedType(&v25))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v25);
          if (v13)
          {
            v14 = 8 * v13;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            operator new();
          }
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

LABEL_3:
      i = v32 + 1;
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

  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        v31 = v18;
        v32 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v31) || !mlir::ElementsAttr::getShapedType(&v31))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v31);
          if (v21)
          {
            v22 = 8 * v21;
            while (*v20 != 0x8000000000000000)
            {
              ++v20;
              v22 -= 8;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

LABEL_33:
            operator new();
          }
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 16);
  *__p = *a3;
  v28 = v23;
  v29 = *(a3 + 32);
  v30 = *(a3 + 48);
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v22, v21, v20);
  }

  v15 = mlir::OperationState::OperationState(v22, a2, v13);
  mlir::anec::InputView::build(a1, v22, *a3, *a4, *a5, *a6, v15);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
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

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::~ConvertCrop(void *a1)
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

void mlir::anonymous namespace::ConvertCrop<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = *(a3 + 40);
  v6 = *(a2 + 9);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 9);
  }

  else
  {
    v8 = 0;
  }

  v31 = v7;
  v32 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v31);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 3), 1);
  if (v12)
  {
    __p[0] = &v36;
    __p[1] = 0x100000000;
    if (SortedUniquePromotedPositiveAxesAttr)
    {
      v13 = SortedUniquePromotedPositiveAxesAttr;
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*SortedUniquePromotedPositiveAxesAttr + 8);
      SortedUniquePromotedPositiveAxesAttr = v13;
    }

    else
    {
      v14 = 0;
    }

    mlir::getIntValues<unsigned long long>(SortedUniquePromotedPositiveAxesAttr, v14, __p, 1);
    v30[0] = mlir::getRankPromotionTypeForANE(v31, v32);
    v30[1] = v15;
    v16 = *(*(a2 + 9) + 88);
    v26 = 0;
    *&v27 = 0;
    v33 = &v26;
    v34 = v16;
    DefiningOp = mlir::Value::getDefiningOp(&v34);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, DefiningOp) & 1) != 0)
    {
      SingleInt = mlir::getSingleIntValue<int>(v26, v27);
      v28 = SingleInt;
      v29 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        v19 = SingleInt;
        v20 = *(*(a2 + 9) + 120);
        v26 = 0;
        *&v27 = 0;
        v33 = &v26;
        v34 = v20;
        v21 = mlir::Value::getDefiningOp(&v34);
        if (v21 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v33, v21) & 1) != 0)
        {
          v22 = mlir::getSingleIntValue<int>(v26, v27);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = *__p[0];
            v26 = (*(mlir::ShapedType::getShape(v30) + 8 * v23) - (v22 + v19));
            v24 = *(a2 + 3);
            v34 = mlir::ValueRange::dereference_iterator(&v37, 0);
            v33 = *__p[0];
            v25 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,unsigned long long,int &,long long &>(a4 + 1, v24, &v34, &v33, &v28, &v26);
            mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25);
          }
        }

        operator new();
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    operator new();
  }

  operator new();
}