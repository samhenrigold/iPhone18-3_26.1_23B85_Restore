uint64_t mlir::OpConversionPattern<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReshapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v39 = v6;
  v40 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  *&v45 = v10;
  Shape = mlir::ShapedType::getShape(&__p);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v39);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v38[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v38[1] = v18;
  v37[0] = mlir::getRankPromotionTypeForANE(v39, v40);
  v37[1] = v19;
  v20 = mlir::ShapedType::getShape(v38);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v37);
  if (v22 != v24 || memcmp(v20, v23, 8 * v22))
  {
    v46 = v43;
    v25 = (*(mlir::ValueRange::dereference_iterator(&v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v25)
    {
      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v25, v26);
    v29 = v28;
    if (*(a2 + 36))
    {
      v30 = a2 - 16;
    }

    else
    {
      v30 = 0;
    }

    v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v31)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    else
    {
      v32 = 0;
    }

    v33 = mlir::getRankPromotionTypeForANE(v31, v32);
    if (mlir::anec::verifyCompatibilityWithFlatten(RankPromotionTypeForANE, v29, v33, v34))
    {
      v35 = *(a2 + 24);
      *&v42 = mlir::ValueRange::dereference_iterator(&v46, 0);
      Context = mlir::Attribute::getContext((a2 + 24));
      v41 = mlir::arith::AtomicRMWKindAttr::get(Context, 1);
      __p = mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(a4 + 1, v35, &v42, &v41) - 16;
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
    }

    operator new();
  }

  *&v46 = mlir::ValueRange::dereference_iterator(&v43, 0);
  mlir::ValueRange::ValueRange(&__p, &v46, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v45);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Flatten,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Flatten::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Flatten,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Unflatten,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Unflatten,mlir::Value,mlir::anec::FlattenModeAttr &,mlir::DenseIntElementsAttr &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Unflatten::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Unflatten,void>::id)
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

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)1>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)1>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, mlir::MLIRContext **a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v39 = v6;
  v40 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  *&v45 = v10;
  Shape = mlir::ShapedType::getShape(&__p);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v39);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v38[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v38[1] = v18;
  v37[0] = mlir::getRankPromotionTypeForANE(v39, v40);
  v37[1] = v19;
  v20 = mlir::ShapedType::getShape(v38);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v37);
  if (v22 != v24 || memcmp(v20, v23, 8 * v22))
  {
    v46 = v43;
    v25 = (*(mlir::ValueRange::dereference_iterator(&v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v25)
    {
      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v25, v26);
    v29 = v28;
    if (*(a2 + 36))
    {
      v30 = a2 - 16;
    }

    else
    {
      v30 = 0;
    }

    v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v31)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    else
    {
      v32 = 0;
    }

    v33 = mlir::getRankPromotionTypeForANE(v31, v32);
    if (mlir::anec::verifyCompatibilityWithFlatten(RankPromotionTypeForANE, v29, v33, v34))
    {
      v35 = *(a2 + 24);
      *&v42 = mlir::ValueRange::dereference_iterator(&v46, 0);
      Context = mlir::Attribute::getContext((a2 + 24));
      v41 = mlir::arith::AtomicRMWKindAttr::get(Context, 1);
      __p = mlir::OpBuilder::create<mlir::anec::Flatten,mlir::Value,mlir::anec::FlattenModeAttr>(a4 + 1, v35, &v42, &v41) - 16;
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
    }

    operator new();
  }

  *&v46 = mlir::ValueRange::dereference_iterator(&v43, 0);
  mlir::ValueRange::ValueRange(&__p, &v46, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v45);
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)2>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)2>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)3>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)3>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)4>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)4>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)5>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)5>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)6>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)6>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)7>::~ConvertReshape(void *a1)
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)7>::~ConvertReshape(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ReshapeOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 48);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)0>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)0>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExpandDimsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v40 = v6;
  v41 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v44 = v9;
  *(&v44 + 1) = v10;
  Shape = mlir::ShapedType::getShape(&v44);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v40);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v39[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v39[1] = v18;
  v38[0] = mlir::getRankPromotionTypeForANE(v40, v41);
  v38[1] = v19;
  v20 = mlir::ShapedType::getShape(v39);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v38);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v42, 0);
    mlir::ValueRange::ValueRange(&v44, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v44, *(&v44 + 1));
  }

  *&v44 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  if (AttrData)
  {
    v27 = v26;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v26;
    if (v26)
    {
      memmove(&__dst, AttrData, v26);
    }

    __dst.__r_.__value_.__s.__data_[v27] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v28 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v29 = v28->__r_.__value_.__r.__words[2];
  v44 = *&v28->__r_.__value_.__l.__data_;
  v45 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (matched)
      {
        return 1;
      }

      goto LABEL_30;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((matched & 1) == 0)
  {
LABEL_30:
    *&v44 = *(*(a2 + 48) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(&v44);
    if (!v31)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_40;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v32;
      if (v32)
      {
        memmove(&__dst, v31, v32);
      }

      __dst.__r_.__value_.__s.__data_[v33] = 0;
LABEL_40:
      v34 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
      v35 = v34->__r_.__value_.__r.__words[2];
      v44 = *&v34->__r_.__value_.__l.__data_;
      v45 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v36)
          {
            return 1;
          }

LABEL_46:
          operator new();
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v36)
      {
        return 1;
      }

      goto LABEL_46;
    }

LABEL_47:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)1>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)1>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v40 = v6;
  v41 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v44 = v9;
  *(&v44 + 1) = v10;
  Shape = mlir::ShapedType::getShape(&v44);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v40);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v39[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v39[1] = v18;
  v38[0] = mlir::getRankPromotionTypeForANE(v40, v41);
  v38[1] = v19;
  v20 = mlir::ShapedType::getShape(v39);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v38);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v42, 0);
    mlir::ValueRange::ValueRange(&v44, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v44, *(&v44 + 1));
  }

  *&v44 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  if (AttrData)
  {
    v27 = v26;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v26;
    if (v26)
    {
      memmove(&__dst, AttrData, v26);
    }

    __dst.__r_.__value_.__s.__data_[v27] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v28 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v29 = v28->__r_.__value_.__r.__words[2];
  v44 = *&v28->__r_.__value_.__l.__data_;
  v45 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (matched)
      {
        return 1;
      }

      goto LABEL_30;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((matched & 1) == 0)
  {
LABEL_30:
    *&v44 = *(*(a2 + 48) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(&v44);
    if (!v31)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_40;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v32;
      if (v32)
      {
        memmove(&__dst, v31, v32);
      }

      __dst.__r_.__value_.__s.__data_[v33] = 0;
LABEL_40:
      v34 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
      v35 = v34->__r_.__value_.__r.__words[2];
      v44 = *&v34->__r_.__value_.__l.__data_;
      v45 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v36)
          {
            return 1;
          }

LABEL_46:
          operator new();
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v36)
      {
        return 1;
      }

      goto LABEL_46;
    }

LABEL_47:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)2>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)2>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)3>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)3>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)4>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)4>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)5>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)5>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)6>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)6>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)7>::~ConvertExpandDims(void *a1)
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

void mlir::anonymous namespace::ConvertExpandDims<(mlir::anec::Family)7>::~ConvertExpandDims(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::ExpandDimsOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)0>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)0>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SqueezeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SqueezeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v40 = v6;
  v41 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v44 = v9;
  *(&v44 + 1) = v10;
  Shape = mlir::ShapedType::getShape(&v44);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v40);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v39[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v39[1] = v18;
  v38[0] = mlir::getRankPromotionTypeForANE(v40, v41);
  v38[1] = v19;
  v20 = mlir::ShapedType::getShape(v39);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v38);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v42, 0);
    mlir::ValueRange::ValueRange(&v44, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v44, *(&v44 + 1));
  }

  *&v44 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  if (AttrData)
  {
    v27 = v26;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v26;
    if (v26)
    {
      memmove(&__dst, AttrData, v26);
    }

    __dst.__r_.__value_.__s.__data_[v27] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v28 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v29 = v28->__r_.__value_.__r.__words[2];
  v44 = *&v28->__r_.__value_.__l.__data_;
  v45 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (matched)
      {
        return 1;
      }

      goto LABEL_30;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((matched & 1) == 0)
  {
LABEL_30:
    *&v44 = *(*(a2 + 48) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(&v44);
    if (!v31)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_40;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v32;
      if (v32)
      {
        memmove(&__dst, v31, v32);
      }

      __dst.__r_.__value_.__s.__data_[v33] = 0;
LABEL_40:
      v34 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
      v35 = v34->__r_.__value_.__r.__words[2];
      v44 = *&v34->__r_.__value_.__l.__data_;
      v45 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v36)
          {
            return 1;
          }

LABEL_46:
          operator new();
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v36)
      {
        return 1;
      }

      goto LABEL_46;
    }

LABEL_47:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)1>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)1>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v40 = v6;
  v41 = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v44 = v9;
  *(&v44 + 1) = v10;
  Shape = mlir::ShapedType::getShape(&v44);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(&v40);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  v39[0] = mlir::getRankPromotionTypeForANE(v15, v17);
  v39[1] = v18;
  v38[0] = mlir::getRankPromotionTypeForANE(v40, v41);
  v38[1] = v19;
  v20 = mlir::ShapedType::getShape(v39);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v38);
  if (v22 == v24 && !memcmp(v20, v23, 8 * v22))
  {
    __dst.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v42, 0);
    mlir::ValueRange::ValueRange(&v44, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v44, *(&v44 + 1));
  }

  *&v44 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v44);
  if (AttrData)
  {
    v27 = v26;
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v26;
    if (v26)
    {
      memmove(&__dst, AttrData, v26);
    }

    __dst.__r_.__value_.__s.__data_[v27] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v28 = std::string::append(&__dst, " cannot be lowered as Flatten on ANE");
  v29 = v28->__r_.__value_.__r.__words[2];
  v44 = *&v28->__r_.__value_.__l.__data_;
  v45 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if (matched)
      {
        return 1;
      }

      goto LABEL_30;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if ((matched & 1) == 0)
  {
LABEL_30:
    *&v44 = *(*(a2 + 48) + 8);
    v31 = mlir::OpaqueAttr::getAttrData(&v44);
    if (!v31)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_40;
    }

    v33 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v32;
      if (v32)
      {
        memmove(&__dst, v31, v32);
      }

      __dst.__r_.__value_.__s.__data_[v33] = 0;
LABEL_40:
      v34 = std::string::append(&__dst, " cannot be lowered as Unflatten on ANE");
      v35 = v34->__r_.__value_.__r.__words[2];
      v44 = *&v34->__r_.__value_.__l.__data_;
      v45 = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = mlir::logMatchFailure(&v44, *(a2 + 24), a4);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(v44);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (v36)
          {
            return 1;
          }

LABEL_46:
          operator new();
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v36)
      {
        return 1;
      }

      goto LABEL_46;
    }

LABEL_47:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)2>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)2>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)3>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)3>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)4>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)4>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)5>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)5>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)6>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)6>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void *mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)7>::~ConvertSqueeze(void *a1)
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

void mlir::anonymous namespace::ConvertSqueeze<(mlir::anec::Family)7>::~ConvertSqueeze(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertToReshape<mlir::mps::SqueezeOp,(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(mlir::MLIRContext **, uint64_t, ZinIrHalH13g *))
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *(a3 + 40);
  v6 = (*(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v24[0] = v6;
  v24[1] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  RankPromotionTypeForANE = v9;
  v23 = v10;
  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v24);
  v15 = mlir::MemRefType::get(Shape, v13, isSplat, 0, 0, 0);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v15);
  mlir::ANEPropertiesRegistry::getProperties(Instance, a4[1]);
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v17);
  v23 = v18;
  v21 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, &v21);
  (*a4)[1](a4, a2, v19);
  return 1;
}

void mlir::anonymous namespace::ConvertCast::~ConvertCast(mlir::_anonymous_namespace_::ConvertCast *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CastOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CastOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertCast::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, mlir::mps::detail::CastOpGenericAdaptorBase *a3, uint64_t **a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = *(a3 + 6);
  v8 = (*(mlir::ValueRange::dereference_iterator(&v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v19[0] = v8;
  v19[1] = v9;
  *&v20 = mlir::mps::detail::CastOpGenericAdaptorBase::getResultElementType(a3);
  if (mlir::Type::isInteger(&v20, 1))
  {
    mlir::TypeConverter::TypeConverter(&v20, *(a1 + 96));
    v10 = *(a2 + 24);
    v22 = *(a3 + 6);
    v23 = 0;
    v18 = mlir::ValueRange::dereference_iterator(&v22, 0);
    v22 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, v10, &v18);
    if (*(a2 + 36))
    {
      v11 = a2 - 16;
    }

    else
    {
      v11 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
    v18 = mlir::TypeConverter::convertType(&v20, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v13 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>((a4 + 1), *(a2 + 24), &v18, &v22);
    ((*a4)[1])(a4, a2, v13);
    mlir::TypeConverter::~TypeConverter(&v20);
  }

  ResultElementType = mlir::mps::detail::CastOpGenericAdaptorBase::getResultElementType(a3);
  LOBYTE(v20) = 0;
  v21 = 0;
  v22 = mlir::ShapedType::cloneWith(v19, &v20, ResultElementType);
  v23 = v15;
  v20 = *(a3 + 6);
  *&v20 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v16 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>((a4 + 1), *(a2 + 24), &v22, &v20);
  ((*a4)[1])(a4, a2, v16);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Cast,mlir::ShapedType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cast,void>::id)
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

void mlir::anonymous namespace::ConvertSoftmax::~ConvertSoftmax(mlir::_anonymous_namespace_::ConvertSoftmax *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftmaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SoftmaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSoftmax::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::UnitAttr **a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = *(a3 + 40);
  v6 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if ((mlir::ElementsAttr::getShapedType(v18) & 1) == 0)
  {
    operator new();
  }

  v8 = 1;
  v9 = mlir::ValueRange::dereference_iterator(&v19, 1);
  mlir::ShapedType::getShape(v18);
  __p = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  LOBYTE(v17) = v11;
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v15 = 1;
  v14 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v12 = mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(a4 + 1, *(a2 + 24), &v14, &__p, &v15);
  (*(*a4 + 1))(a4, a2, v12);
  return v8;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Softmax,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Softmax,mlir::Value,mlir::DenseIntElementsAttr &,BOOL &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Softmax::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Softmax,void>::id)
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

void mlir::anonymous namespace::ConvertConcat::~ConvertConcat(mlir::_anonymous_namespace_::ConvertConcat *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ConcatOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ConcatOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertConcat::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v26 = a2;
  v5 = *(a3 + 48);
  v6 = *(a3 + 56);
  v28[0] = v5;
  v28[1] = v6;
  if (v6 == 2)
  {
    __p[0] = mlir::ValueRange::dereference_iterator(v28, 0);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, 1);
  }

  ODSOperandIndexAndLength = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v26, 0);
  v9 = (*(*(*(v26 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v25[0] = v9;
  v25[1] = v10;
  v11 = mlir::mps::ConcatOp::getODSOperandIndexAndLength(&v26, 1u);
  v12 = *(*(v26 + 72) + 32 * v11 + 24);
  mlir::ShapedType::getShape(v25);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v12, v13, *(v26 + 24), 1);
  v24 = v14;
  if ((v14 & 1) == 0)
  {
    operator new();
  }

  if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
  {
    operator new();
  }

  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(__p, SortedUniquePromotedPositiveAxesAttr, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(__p, &v21);
  if (v22 > 0x40)
  {
    v15 = *v21;
  }

  else if (v22)
  {
    v15 = (v21 << -v22) >> -v22;
  }

  else
  {
    v15 = 0;
  }

  v20 = v15;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v26);
  v16 = v26;
  __p[0] = v5;
  __p[1] = (v6 - 1);
  v17 = mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(a4 + 1, *(v26 + 24), __p, &v20, &InferredResultTypes);
  ((*a4)[1])(a4, v16, v17);
  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertSplit::~ConvertSplit(mlir::_anonymous_namespace_::ConvertSplit *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SplitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SplitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SplitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSplit::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  v80 = a2;
  v89 = *(a3 + 48);
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v80, 0);
  v6 = (*(*(*(v80 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v79[0] = v6;
  v79[1] = v7;
  v8 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v80, 1u);
  v9 = *(*(v80 + 72) + 32 * v8 + 24);
  mlir::ShapedType::getShape(v79);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(v80 + 24), 1);
  v78 = v11;
  if ((v11 & 1) == 0)
  {
    operator new();
  }

  if (mlir::DenseElementsAttr::getNumElements(&SortedUniquePromotedPositiveAxesAttr) != 1)
  {
    operator new();
  }

  v12 = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v86, SortedUniquePromotedPositiveAxesAttr, 0);
  mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &v75);
  if (v76 > 0x40)
  {
    v13 = *v75;
  }

  else if (v76)
  {
    v13 = (v75 << -v76) >> -v76;
  }

  else
  {
    v13 = 0;
  }

  v74 = v13;
  v14 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v73[0] = v14;
  v73[1] = v15;
  v16 = *(mlir::ShapedType::getShape(v73) + 8 * v13);
  v86 = v88;
  v87 = 0x400000000;
  v17 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v80, 2u);
  v18 = *(v80 + 44);
  if ((v18 & 0x800000) != 0)
  {
    v19 = *(v80 + 72);
  }

  else
  {
    v19 = 0;
  }

  if (HIDWORD(v17) + v17 != v17 && *(v19 + 32 * v17 + 24))
  {
    v20 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v80, 2u);
    if ((*(v80 + 46) & 0x80) != 0)
    {
      v21 = *(v80 + 72);
    }

    else
    {
      v21 = 0;
    }

    if (HIDWORD(v20) + v20 == v20)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 32 * v20 + 24);
    }

    if ((mlir::matchConstantWithIntVector<long long>(v22, &v86) & 1) == 0)
    {
      operator new();
    }

    LODWORD(v25) = v87;
    goto LABEL_57;
  }

  if (!*(v80 + 16 * ((v18 >> 23) & 1) + 64))
  {
    operator new();
  }

  v83 = *(v80 + 16 * ((v18 >> 23) & 1) + 64);
  UInt = mlir::IntegerAttr::getUInt(&v83);
  v24 = (UInt + v16 - 1) / UInt;
  v25 = v16 / v24;
  if (v16 / v24 > HIDWORD(v87))
  {
    LODWORD(v87) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v16 / v24, 8);
    v26 = v86;
    v27 = v86;
    v28 = v16 / v24;
    if (v25 < 4)
    {
      goto LABEL_98;
    }

    v27 = &v86->i64[v25 & 0xFFFFFFFFFFFFFFFCLL];
    v28 = (v16 / v24) & 3;
    v29 = vdupq_n_s64(v24);
    v30 = v86 + 1;
    v31 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v30[-1] = v29;
      *v30 = v29;
      v30 += 2;
      v31 -= 4;
    }

    while (v31);
    if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_98:
      do
      {
        *v27++ = v24;
        --v28;
      }

      while (v28);
    }

    goto LABEL_53;
  }

  v26 = v86;
  v32 = v87;
  if (v87 >= v25)
  {
    v33 = v16 / v24;
  }

  else
  {
    v33 = v87;
  }

  if (v33)
  {
    v34 = v86;
    v35 = v33;
    if (v33 < 4)
    {
      goto LABEL_99;
    }

    v34 = &v86->i64[v33 & 0xFFFFFFFC];
    v35 = v33 & 3;
    v36 = vdupq_n_s64(v24);
    v37 = v86 + 1;
    v38 = v33 & 0xFFFFFFFC;
    do
    {
      v37[-1] = v36;
      *v37 = v36;
      v37 += 2;
      v38 -= 4;
    }

    while (v38);
    if (v33 != (v33 & 0xFFFFFFFC))
    {
LABEL_99:
      do
      {
        *v34++ = v24;
        --v35;
      }

      while (v35);
    }
  }

  v39 = v25 - v32;
  if (v25 <= v32)
  {
    goto LABEL_53;
  }

  v40 = &v26[v32];
  if (v39 < 4)
  {
    v41 = &v26[v32];
    v42 = v39;
    do
    {
LABEL_52:
      *v41++ = v24;
      --v42;
    }

    while (v42);
    goto LABEL_53;
  }

  v41 = &v40->i64[v39 & 0xFFFFFFFFFFFFFFFCLL];
  v42 = v39 & 3;
  v43 = vdupq_n_s64(v24);
  v44 = v40 + 1;
  v45 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v44[-1] = v43;
    *v44 = v43;
    v44 += 2;
    v45 -= 4;
  }

  while (v45);
  if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_52;
  }

LABEL_53:
  LODWORD(v87) = v16 / v24;
  v46 = v16 % v24;
  if (v46)
  {
    if (HIDWORD(v87) <= v25)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v25 + 1, 8);
      LODWORD(v25) = v87;
      v26 = v86;
    }

    v26[v25] = v46;
    LODWORD(v25) = v87 + 1;
    LODWORD(v87) = v87 + 1;
  }

LABEL_57:
  v83 = v85;
  v84 = 0x400000000;
  if (v25 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v85, v25, 8);
    LODWORD(v25) = v87;
  }

  v72 = 0;
  if (v25)
  {
    v47 = v86;
    v48 = 8 * v25;
    do
    {
      __p[0] = *v47;
      v49 = *(v80 + 24);
      v71.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(&v89, 0);
      v50 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>((a4 + 8), v49, &v71, &v74, &v72, __p);
      v51 = v84;
      if (v84 >= HIDWORD(v84))
      {
        v53 = v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v85, v84 + 1, 8);
        v50 = v53;
        v51 = v84;
      }

      v83[v51] = v50 - 16;
      LODWORD(v84) = v84 + 1;
      v52 = __p[0] + v72;
      v72 += __p[0];
      ++v47;
      v48 -= 8;
    }

    while (v48);
  }

  else
  {
    v52 = 0;
  }

  if (v52 == v16)
  {
    v54 = v80;
    mlir::ValueRange::ValueRange(__p, v83, v84);
    mlir::ConversionPatternRewriter::replaceOp(a4, v54, __p[0], __p[1]);
  }

  std::to_string(&v68, v52);
  v55 = std::string::insert(&v68, 0, "Sum of split sizes (");
  v56 = v55->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  v57 = std::string::append(&v69, ") does not match the input dimension size (");
  v58 = v57->__r_.__value_.__r.__words[2];
  *&v70.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
  v70.__r_.__value_.__r.__words[2] = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v67, v16);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v67;
  }

  else
  {
    v59 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  v61 = std::string::append(&v70, v59, size);
  v62 = v61->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v71, ") along the split axis");
  v64 = v63->__r_.__value_.__r.__words[2];
  *__p = *&v63->__r_.__value_.__l.__data_;
  v82 = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v80 + 24), a4);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_76:
      if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_90;
    }
  }

  else if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v67.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

LABEL_92:
    operator delete(v69.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_93;
  }

LABEL_91:
  operator delete(v70.__r_.__value_.__l.__data_);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_92;
  }

LABEL_79:
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_80;
  }

LABEL_93:
  operator delete(v68.__r_.__value_.__l.__data_);
LABEL_80:
  if (v83 != v85)
  {
    free(v83);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if (v76 >= 0x41 && v75)
  {
    MEMORY[0x1AC55A040](v75, 0x1000C8000313F17);
  }

  return matched;
}

uint64_t mlir::matchConstantWithIntVector<long long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::ElementsAttr::getShapedType(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<long long>(v8, v9, a2, 1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value,long long const&,unsigned long long &,long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)0>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)0>::~ConvertResize(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ResizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 96);
  v36 = *(a3 + 88);
  v37 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v37 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v36, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v27) || !mlir::ElementsAttr::getShapedType(&v27))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v27);
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
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v37 + 1;
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
        v36 = v18;
        v37 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v36) || !mlir::ElementsAttr::getShapedType(&v36))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v36);
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
        v36 = 0;
        v37 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v35 = *(a3 + 96);
  v23 = *(a3 + 80);
  v33 = *(a3 + 64);
  v34 = v23;
  v24 = *(a3 + 16);
  *__p = *a3;
  v30 = v24;
  v25 = *(a3 + 48);
  v31 = *(a3 + 32);
  v32 = v25;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v38[38] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v18 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id, Context);
  if ((v19 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v38, v33, v32);
  }

  mlir::OperationState::OperationState(v38, a2, v18);
  v20 = *a3;
  v21 = *a4;
  v22 = *a5;
  v24 = *(a6 + 8);
  v23 = (a6 + 8);
  v26 = llvm::APFloatBase::PPCDoubleDouble(v25);
  if (v26 == v24)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v37, v23);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v37, v23);
  }

  v27 = (a7 + 8);
  if (v26 == *(a7 + 8))
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v35, v27);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v35, v27);
  }

  mlir::anec::Resize::build(a1, v38, v20, v21, v22, v36, v34, *a8, *a9);
  if (v26 == v35.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v35);
  }

  if (v26 == v37.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v37);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v37);
  }

  v28 = mlir::OpBuilder::create(a1, v38);
  if (*(*(v28 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Resize,void>::id)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(v38);
  return v29;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Transpose::build(a1, v17, *a3 - 16, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)1>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)1>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)2>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)2>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_113;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
          goto LABEL_109;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_113:
          operator new();
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
LABEL_109:
      memset_pattern16(&v168, v73, 0x10uLL);
      __p[1] = 0x600000002;
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
      if (__p[0] != &v168)
      {
        free(__p[0]);
      }

      __p[0] = 2;
      v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
      if (v114)
      {
        v115 = v114;
        v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
        v114 = v115;
      }

      else
      {
        v116 = 0;
      }

      v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
      v117 = v183;
      v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
      v122 = llvm::APFloatBase::IEEEsingle(v121);
      llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
      llvm::detail::IEEEFloat::~IEEEFloat(&v189);
      llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
      llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
      llvm::detail::IEEEFloat::~IEEEFloat(&v158);
      v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
      v158 = v126;
      v127 = *(&v189 + 1);
      v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
      if (v128 == v127)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
      }

      if (v128 == __p[1])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
      }

      if (v146 == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v22;
        *&v169 = v21;
        *(&v169 + 1) = v20;
        *&v170 = v22;
        *(&v170 + 1) = v21;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
        if (v130)
        {
          v131 = v130;
          v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
          v130 = v131;
        }

        else
        {
          v132 = 0;
        }

        v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
        v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      mlir::ShapedType::getShape(v154);
      if (v133 <= 3)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v149;
        *&v169 = v21;
        *(&v169 + 1) = v20;
        *&v170 = v149;
        *(&v170 + 1) = v21;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
        if (v135)
        {
          v136 = v135;
          v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
          v135 = v136;
        }

        else
        {
          v137 = 0;
        }

        v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
        *&v189 = v126 - 16;
        v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      if (v174 != v176)
      {
        free(v174);
      }

      if (v177 != v179)
      {
        free(v177);
      }

      if (v180 != v182)
      {
        free(v180);
      }

      if (v183 != v185)
      {
        free(v183);
      }

      if (v186 != v187)
      {
        free(v186);
      }

      *&v160 = v126 - 16;
      mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)3>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)3>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)4>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)4>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}

void *mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)5>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResize<(mlir::anec::Family)5>::~ConvertResize(void *a1)
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

void mlir::anonymous namespace::ConvertResizeGeneric<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::mps *a2, __int128 *a3, uint64_t a4)
{
  v190[3] = *MEMORY[0x1E69E9840];
  v6 = a3[5];
  v164 = a3[4];
  v165 = v6;
  *v166 = *(a3 + 12);
  v7 = a3[1];
  v160 = *a3;
  v161 = v7;
  v8 = a3[3];
  v162 = a3[2];
  v163 = v8;
  v156 = a2;
  v188[0] = *(&v165 + 1);
  v188[1] = *v166;
  v9 = *(a2 + 3);
  v155 = mlir::ValueRange::dereference_iterator(v188, 0);
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 0);
  v11 = (*(*(*(v156 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v154[0] = v11;
  v154[1] = v12;
  v13 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(&v160, 0);
  v14 = *(&v165 + 1);
  __p[0] = *(&v165 + 1);
  __p[1] = v13;
  if (v13)
  {
    v14 = mlir::ValueRange::offset_base(__p, v13);
  }

  __p[0] = v14;
  __p[1] = 0;
  v15 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  __p[0] = v15;
  __p[1] = v16;
  mlir::ShapedType::getShape(__p);
  v18 = v17;
  IndexFromDim = mlir::anec::getIndexFromDim(0, v17);
  v20 = mlir::anec::getIndexFromDim(1, v18);
  v21 = mlir::anec::getIndexFromDim(3, v18);
  v22 = mlir::anec::getIndexFromDim(4, v18);
  mlir::ShapedType::getShape(v154);
  if (v23 <= 3)
  {
    __p[0] = &v168;
    *&v168 = IndexFromDim;
    *(&v168 + 1) = v20;
    *&v169 = v20;
    *(&v169 + 1) = v21;
    *&v170 = v21;
    *(&v170 + 1) = IndexFromDim;
    __p[1] = 0x600000006;
    v186 = xmmword_1A75EA050;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v25 = mlir::RankedTensorType::get(&v186, 2, IntegerType, 0);
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

    *&v189 = mlir::DenseElementsAttr::getFromRawBuffer(v25, v27, __p[0], 8 * LODWORD(__p[1]));
    v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v189) - 16;
    if (__p[0] != &v168)
    {
      free(__p[0]);
    }
  }

  if (*(v156 + 9))
  {
    v28 = v156 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v149 = IndexFromDim;
  if (v29)
  {
    v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  v153[0] = v29;
  v153[1] = v30;
  Shape = mlir::ShapedType::getShape(v153);
  v33 = v32;
  *&v186 = v187;
  *(&v186 + 1) = 0x400000000;
  v34 = (8 * v32) >> 3;
  if (v34 < 5)
  {
    v35 = 0;
    v36 = v187;
    v37 = 8 * v33;
    if (!v33)
    {
      goto LABEL_26;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v186, v187, v34, 8);
    v35 = DWORD2(v186);
    v36 = v186;
    v37 = 8 * v33;
    if (!v33)
    {
LABEL_26:
      v38 = v35 + (v37 >> 3);
      DWORD2(v186) = v38;
      if (v38 <= 3)
      {
        llvm::SmallVectorImpl<long long>::insert(&v186, v36, 4 - v38, 1uLL);
        v36 = v186;
      }

      v39 = *(v36 + v21);
      v40 = *(v36 + v22);
      v183 = v185;
      v185[0] = v39;
      v185[1] = v40;
      v184 = 0x200000002;
      ResizeLayout = mlir::mps::getResizeLayout(v156, v36);
      if ((ResizeLayout & 0x100000000) == 0)
      {
        operator new();
      }

      v42 = ResizeLayout;
      if (ResizeLayout == 1)
      {
        __p[0] = &v168;
        *&v168 = v20;
        *(&v168 + 1) = v21;
        *&v169 = v21;
        *(&v169 + 1) = v22;
        *&v170 = v22;
        *(&v170 + 1) = v20;
        __p[1] = 0x600000006;
        v189 = xmmword_1A75EA050;
        v43 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
        v44 = mlir::RankedTensorType::get(&v189, 2, v43, 0);
        if (v44)
        {
          v45 = v44;
          v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
          v44 = v45;
          v42 = 1;
        }

        else
        {
          v46 = 0;
        }

        v180 = mlir::DenseElementsAttr::getFromRawBuffer(v44, v46, __p[0], 8 * LODWORD(__p[1]));
        v155 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v9, &v155, &v180) - 16;
        v47 = v186;
        v48 = v183;
        *v183 = *(v186 + 8 * v20);
        v48[1] = *(v47 + 8 * v21);
        if (__p[0] != &v168)
        {
          free(__p[0]);
        }
      }

      v152[0] = 0;
      v152[1] = 0;
      v49 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 1u);
      v50 = *(*(v156 + 9) + 32 * v49 + 24);
      *&v189 = v152;
      __p[0] = v50;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v189, DefiningOp) & 1) == 0)
      {
        operator new();
      }

      v146 = v42;
      v147 = v9;
      v180 = v182;
      v182[1] = 0;
      v182[0] = 0;
      v181 = 0x200000002;
      v177 = v179;
      memset_pattern16(v179, &unk_1A75989B0, 0x10uLL);
      v178 = 0x200000002;
      InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v156);
      __p[0] = 2;
      v53 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v53, 0);
      if (v54)
      {
        v55 = v54;
        v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        v54 = v55;
      }

      else
      {
        v56 = 0;
      }

      if (InterpolationMode == 1)
      {
        v57 = &v180;
      }

      else
      {
        v57 = &v177;
      }

      v58 = *v57;
      v59 = &v181;
      if (InterpolationMode != 1)
      {
        v59 = &v178;
      }

      v151 = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v58, 8 * *v59);
      v174 = v176;
      v175 = 0x200000000;
      InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v156);
      IsSize = mlir::mps::StridedSliceOp::getEndIsSize(&v156);
      v62 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 2u);
      v64 = v156;
      if ((*(v156 + 46) & 0x80) != 0)
      {
        v65 = *(v156 + 9);
      }

      else
      {
        v65 = 0;
      }

      v66 = v147;
      if ((HIDWORD(v62) + v62 == v62 || !*(v65 + 32 * v62 + 24)) && ((v67 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v156, 3u), v64 = v156, (*(v156 + 46) & 0x80) == 0) ? (v68 = 0) : (v68 = *(v156 + 9)), HIDWORD(v67) + v67 == v67 || !*(v68 + 32 * v67 + 24)))
      {
        if (InferredResultTypes)
        {
          if (!IsSize)
          {
            operator new();
          }

          goto LABEL_110;
        }

        if (IsSize)
        {
LABEL_68:
          __p[0] = &v168;
          v73 = &unk_1A75989B0;
LABEL_109:
          memset_pattern16(&v168, v73, 0x10uLL);
          goto LABEL_111;
        }
      }

      else
      {
        v171 = v164;
        v172 = v165;
        *v173 = *v166;
        *__p = v160;
        v168 = v161;
        v169 = v162;
        v170 = v163;
        v69 = mlir::mps::getResizeLayout(v64, v63);
        if ((v69 & 0x100000000) == 0)
        {
          goto LABEL_61;
        }

        v144 = qword_1A75EA3D0[v69];
        v145 = qword_1A75EA398[v69];
        v70 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
        v71 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v70;
        if (v70)
        {
          v71 = mlir::ValueRange::offset_base(&v189, v70);
          v72 = *(&v189 + 1);
        }

        else
        {
          v72 = 0;
        }

        if (HIDWORD(v70) + v70 == v72 || (v189 = v71, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v77 = 1.0;
          v78 = 1.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v74 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 2u);
          v75 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v74;
          if (v74)
          {
            v75 = mlir::ValueRange::offset_base(&v189, v74);
            v76 = *(&v189 + 1);
          }

          else
          {
            v76 = 0;
          }

          if (HIDWORD(v74) + v74 == v76)
          {
            v138 = 0;
          }

          else
          {
            v189 = v75;
            v138 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v138;
          v139 = mlir::Value::getDefiningOp(&v189);
          if (!v139 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v139))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v140 = DWORD2(v189);
          v77 = 1.0;
          v78 = 1.0;
          if (v145 < DWORD2(v189))
          {
            v78 = *(v189 + 4 * v145);
            v77 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v140)
          {
            goto LABEL_61;
          }
        }

        v79 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
        v80 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v79;
        if (v79)
        {
          v80 = mlir::ValueRange::offset_base(&v189, v79);
          v81 = *(&v189 + 1);
        }

        else
        {
          v81 = 0;
        }

        if (HIDWORD(v79) + v79 == v81 || (v189 = v80, !mlir::ValueRange::dereference_iterator(&v189, 0)))
        {
          v85 = 0.0;
          v86 = 0.0;
        }

        else
        {
          v158 = 0;
          v159 = 0;
          v82 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 3u);
          v83 = *(&v172 + 1);
          *&v189 = *(&v172 + 1);
          *(&v189 + 1) = v82;
          if (v82)
          {
            v83 = mlir::ValueRange::offset_base(&v189, v82);
            v84 = *(&v189 + 1);
          }

          else
          {
            v84 = 0;
          }

          if (HIDWORD(v82) + v82 == v84)
          {
            v141 = 0;
          }

          else
          {
            v189 = v83;
            v141 = mlir::ValueRange::dereference_iterator(&v189, 0);
          }

          v157 = &v158;
          *&v189 = v141;
          v142 = mlir::Value::getDefiningOp(&v189);
          if (!v142 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v157, v142))
          {
            goto LABEL_61;
          }

          *&v189 = v190;
          *(&v189 + 1) = 0x400000000;
          mlir::getIntValues<float>(v158, v159, &v189, 1);
          v143 = DWORD2(v189);
          v85 = 0.0;
          v86 = 0.0;
          if (v145 < DWORD2(v189))
          {
            v86 = *(v189 + 4 * v145);
            v85 = *(v189 + 4 * v144);
          }

          if (v189 != v190)
          {
            free(v189);
          }

          if (v145 >= v143)
          {
            goto LABEL_61;
          }
        }

        v87 = mlir::mps::detail::ResizeOpGenericAdaptorBase::getODSOperandIndexAndLength(__p, 0);
        v88 = *(&v172 + 1);
        *&v189 = *(&v172 + 1);
        *(&v189 + 1) = v87;
        if (v87)
        {
          v88 = mlir::ValueRange::offset_base(&v189, v87);
        }

        v189 = v88;
        v89 = (*(mlir::ValueRange::dereference_iterator(&v189, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v89)
        {
          v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
        }

        else
        {
          v90 = 0;
        }

        *&v189 = v89;
        *(&v189 + 1) = v90;
        v91 = mlir::ShapedType::getShape(&v189);
        v93 = v92;
        v94 = *(a1 + 96);
        if (*(v64 + 9))
        {
          v95 = v64 - 16;
        }

        else
        {
          v95 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v95, 0);
        v97 = mlir::TypeConverter::convertType(v94, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        v98 = v97;
        if (v97)
        {
          v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
        }

        *&v189 = v98;
        *(&v189 + 1) = v97;
        v99 = mlir::ShapedType::getShape(&v189);
        v101 = v100;
        v102 = mlir::anec::getIndexFromDim(3, v93);
        v103 = mlir::anec::getIndexFromDim(4, v101);
        v104 = *(v91 + 8 * v102);
        v105 = *(v91 + 8 * v103);
        v106 = *(v99 + 8 * v102);
        v107 = v86 != 0.0;
        if (v85 != 0.0)
        {
          v107 = 1;
        }

        v108 = (v78 + -1.0) * 0.5 != v86 || (v77 + -1.0) * 0.5 != v85;
        v66 = v147;
        v109 = v105;
        v110 = *(v99 + 8 * v103);
        v111 = v78 != (v106 / v104) || v77 != (v110 / v109);
        v112 = v78 != ((v106 + -1.0) / (v104 + -1.0)) || v77 != ((v110 + -1.0) / (v109 + -1.0));
        if (v107 || v111)
        {
          if (v107 || v112)
          {
            if (!v108 && !v111)
            {
              goto LABEL_68;
            }

LABEL_61:
            operator new();
          }

LABEL_110:
          __p[0] = &v168;
          v168 = 0uLL;
LABEL_111:
          __p[1] = 0x600000002;
          llvm::SmallVectorImpl<mlir::Value>::operator=(&v174, __p);
          if (__p[0] != &v168)
          {
            free(__p[0]);
          }

          __p[0] = 2;
          v113 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v114 = mlir::RankedTensorType::get(__p, 1, v113, 0);
          if (v114)
          {
            v115 = v114;
            v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
            v114 = v115;
          }

          else
          {
            v116 = 0;
          }

          v157 = mlir::DenseElementsAttr::getFromRawBuffer(v114, v116, v174, 8 * v175);
          v117 = v183;
          v121 = llvm::detail::IEEEFloat::IEEEFloat(&v189, -1.0, v118, v119, v120);
          v122 = llvm::APFloatBase::IEEEsingle(v121);
          llvm::APFloat::Storage::Storage(&__p[1], &v189, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v189);
          llvm::detail::IEEEFloat::IEEEFloat(&v158, -1.0, v123, v124, v125);
          llvm::APFloat::Storage::Storage(&v189 + 8, &v158, v122);
          llvm::detail::IEEEFloat::~IEEEFloat(&v158);
          v126 = mlir::OpBuilder::create<mlir::anec::Resize,mlir::Value &,unsigned long long &,unsigned long long &,llvm::APFloat,llvm::APFloat,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), v66, &v155, v117, v117 + 1, __p, &v189, &v151, &v157);
          v158 = v126;
          v127 = *(&v189 + 1);
          v128 = llvm::APFloatBase::PPCDoubleDouble(v126);
          if (v128 == v127)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v189 + 8));
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat((&v189 + 8));
          }

          if (v128 == __p[1])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
          }

          if (v146 == 1)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v22;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v22;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v189, 2, v129, 0);
            if (v130)
            {
              v131 = v130;
              v132 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v130 + 8);
              v130 = v131;
            }

            else
            {
              v132 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, __p[0], 8 * LODWORD(__p[1]));
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::anec::Resize &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v158, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          mlir::ShapedType::getShape(v154);
          if (v133 <= 3)
          {
            __p[0] = &v168;
            *&v168 = v20;
            *(&v168 + 1) = v149;
            *&v169 = v21;
            *(&v169 + 1) = v20;
            *&v170 = v149;
            *(&v170 + 1) = v21;
            __p[1] = 0x600000006;
            v189 = xmmword_1A75EA050;
            v134 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v135 = mlir::RankedTensorType::get(&v189, 2, v134, 0);
            if (v135)
            {
              v136 = v135;
              v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
              v135 = v136;
            }

            else
            {
              v137 = 0;
            }

            v150 = mlir::DenseElementsAttr::getFromRawBuffer(v135, v137, __p[0], 8 * LODWORD(__p[1]));
            *&v189 = v126 - 16;
            v126 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,mlir::DenseIntElementsAttr &>((a4 + 8), v147, &v189, &v150);
            if (__p[0] != &v168)
            {
              free(__p[0]);
            }
          }

          if (v174 != v176)
          {
            free(v174);
          }

          if (v177 != v179)
          {
            free(v177);
          }

          if (v180 != v182)
          {
            free(v180);
          }

          if (v183 != v185)
          {
            free(v183);
          }

          if (v186 != v187)
          {
            free(v186);
          }

          *&v160 = v126 - 16;
          mlir::ValueRange::ValueRange(__p, &v160, 1uLL);
          mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p[0], __p[1]);
        }
      }

      __p[0] = &v168;
      v73 = &unk_1A75EA230;
      goto LABEL_109;
    }
  }

  memcpy(v36 + 8 * v35, Shape, v37);
  v35 = DWORD2(v186);
  v36 = v186;
  goto LABEL_26;
}