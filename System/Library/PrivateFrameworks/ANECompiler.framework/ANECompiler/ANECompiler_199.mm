uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SignbitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertSignBit::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v12, *(a1 + 96));
  v7 = *(a2 + 24);
  v13[0] = *(a3 + 40);
  v13[1] = 0;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  v13[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(a4 + 1, v7, &v11);
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v11 = mlir::TypeConverter::convertType(v12, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = mlir::OpBuilder::create<mlir::anec::Cast,mlir::Type &,mlir::anec::ElementwiseNotEqualZero &>((a4 + 1), *(a2 + 24), &v11, v13);
  ((*a4)[1])(a4, a2, v10);
  mlir::TypeConverter::~TypeConverter(v12);
}

void mlir::anonymous namespace::ConvertTile::~ConvertTile(mlir::_anonymous_namespace_::ConvertTile *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertTile::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v24 = 0x500000000;
  __p = *(a3 + 40);
  *&v22 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v22 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<unsigned long long>(v7, &v23) & 1) == 0)
  {
    operator new();
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      llvm::SmallVectorImpl<long long>::insert(&v23, v23 + 8, 1uLL, 1uLL);
      v8 = v23;
    }

    else
    {
      if (v24 != 3)
      {
        goto LABEL_18;
      }

      v8 = v23 + 16;
    }

    v9 = 1;
    goto LABEL_14;
  }

  if (v24)
  {
    if (v24 != 1)
    {
      goto LABEL_18;
    }

    v8 = v23;
    v9 = 3;
LABEL_14:
    llvm::SmallVectorImpl<long long>::insert(&v23, v8, v9, 1uLL);
    if (v24 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  LODWORD(v24) = 0;
  if (HIDWORD(v24) > 3)
  {
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, 4uLL, 8);
    v10 = v24;
  }

  v11 = v23 + 8 * v10;
  *v11 = xmmword_1A75EA2C0;
  v11[1] = unk_1A75EA2D0;
  LODWORD(v24) = v24 + 4;
  if (v24 <= 3)
  {
LABEL_15:
    operator new();
  }

LABEL_18:
  __p = *(a3 + 40);
  *&v22 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&__p, 0);
  v20 = v24;
  __p = v12;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v14 = mlir::RankedTensorType::get(&v20, 1, IntegerType, 0);
  if (v14)
  {
    v15 = v14;
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v14 = v15;
  }

  else
  {
    v16 = 0;
  }

  v19 = mlir::DenseElementsAttr::getFromRawBuffer(v14, v16, v23, 8 * v24);
  v17 = mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(a4 + 1, *(a2 + 24), &__p, &v19);
  ((*a4)[1])(a4, a2, v17);
  if (v23 != v25)
  {
    free(v23);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Tile,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Tile::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Tile,void>::id)
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

void mlir::anonymous namespace::ConvertFusionOp::~ConvertFusionOp(mlir::_anonymous_namespace_::ConvertFusionOp *this)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::FusionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mpsx::FusionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mpsx::FusionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertFusionOp::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::ForwardIterator *a2, uint64_t a3, uint64_t a4)
{
  v243[6] = *MEMORY[0x1E69E9840];
  v215 = a2;
  mlir::mpsx::FusionOp::getCustomFusionType(__p, &v215);
  if ((v221 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = __p[0];
  if (__p[1] > 16)
  {
    if (__p[1] == 17)
    {
      if (!memcmp(__p[0], "ANECQuantizedConv", 0x11uLL))
      {
        v51 = *(a3 + 16);
        *__p = *a3;
        v221 = v51;
        v222 = *(a3 + 32);
        v223 = *(a3 + 48);
      }

      goto LABEL_40;
    }

    if (__p[1] == 20)
    {
      if (!memcmp(__p[0], "ANECRingBufferWriter", 0x14uLL))
      {
        v45 = v215;
        v47 = *(a3 + 48);
        __p[0] = *(a3 + 40);
        v46 = __p[0];
        __p[1] = v47;
        v48 = mlir::ValueRange::dereference_iterator(__p, 0);
        v219 = v48;
        __p[0] = v46;
        __p[1] = v47;
        v218 = mlir::ValueRange::dereference_iterator(__p, 1);
        v49 = (*(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v49)
        {
          v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
        }

        else
        {
          v50 = 0;
        }

        __p[0] = v49;
        __p[1] = v50;
        mlir::ShapedType::getShape(__p);
        v59 = v58;
        v60 = (*(v218 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v60)
        {
          v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
        }

        else
        {
          v61 = 0;
        }

        __p[0] = v60;
        __p[1] = v61;
        mlir::ShapedType::getShape(__p);
        v214 = v62;
        v217 = 0;
        v228.n128_u64[0] = &v217;
        __p[0] = &v228;
        mlir::detail::walk<mlir::ForwardIterator>(v45, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferWriterENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps16AssignVariableOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        __p[0] = *(*(v217 + 72) + 56);
        DefiningOp = mlir::Value::getDefiningOp(__p);
        v64 = *(*(DefiningOp + 72) + 152);
        v239 = v241;
        v240 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v64, &v239))
        {
          if (v240)
          {
            v65 = v239;
            v66 = 8 * v240;
            do
            {
              if (*v65 != 1)
              {
                operator new();
              }

              ++v65;
              v66 -= 8;
            }

            while (v66);
          }

          __p[0] = &v221;
          __p[1] = 0x600000000;
          v228.n128_u64[0] = v229;
          v228.n128_u64[1] = 0x600000000;
          v224[0].n128_u64[0] = &v224[1].n128_u64[1];
          *(v224 + 8) = xmmword_1A75D9A70;
          v67 = *(*(DefiningOp + 72) + 88);
          {
            operator new();
          }

          v242.n128_u64[0] = v46;
          v242.n128_u64[1] = v47;
          v242 = mlir::ValueRange::offset_base(&v242, 2);
          v68 = v47 - 2;
          if (v47 != 2)
          {
            v69 = 0;
            do
            {
              v70 = mlir::ValueRange::dereference_iterator(&v242, v69);
              v71 = LODWORD(__p[1]);
              if (LODWORD(__p[1]) >= HIDWORD(__p[1]))
              {
                v72 = v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &v221, LODWORD(__p[1]) + 1, 8);
                v70 = v72;
                v71 = LODWORD(__p[1]);
              }

              *(__p[0] + v71) = v70;
              ++LODWORD(__p[1]);
              v69 = v242.n128_u64[1] + 1;
              v242.n128_u64[1] = v69;
            }

            while (v69 != v68);
          }

          if (v214 < v59)
          {
            if (!*(DefiningOp + 47) || (InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, "shrink_axis_mask", 16), (v89 & 1) == 0))
            {
              InherentAttr = mlir::DictionaryAttr::get(DefiningOp + 56, "shrink_axis_mask", 0x10uLL);
            }

            v242.n128_u64[0] = InherentAttr;
            mlir::IntegerAttr::getValue(&v242, &v216);
            v90 = (*(v67 + 8) & 0xFFFFFFFFFFFFFFF8);
            if (v90)
            {
              v91 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v90 + 8);
            }

            else
            {
              v91 = 0;
            }

            v242.n128_u64[0] = v90;
            v242.n128_u64[1] = v91;
            v113 = *mlir::ShapedType::getShape(&v242);
            v242.n128_u64[0] = v243;
            v242.n128_u64[1] = 0xC00000000;
            mlir::anec::getANEDefaultLayout(v113, &v242);
          }

          v242.n128_u64[0] = v228.n128_i32[2];
          IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
          v145 = mlir::RankedTensorType::get(&v242, 1, IntegerType, 0);
          if (v145)
          {
            v146 = v145;
            v147 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v145 + 8);
            v145 = v146;
          }

          else
          {
            v147 = 0;
          }

          v236 = mlir::DenseElementsAttr::getFromRawBuffer(v145, v147, v228.n128_i64[0], 8 * v228.n128_u32[2]);
          v242.n128_u64[0] = v224[0].n128_i32[2];
          v148 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
          v149 = mlir::RankedTensorType::get(&v242, 1, v148, 0);
          if (v149)
          {
            v150 = v149;
            v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v149 + 8);
            v149 = v150;
          }

          else
          {
            v151 = 0;
          }

          matched = 1;
          v233 = mlir::DenseElementsAttr::getFromRawBuffer(v149, v151, v224[0].n128_i64[0], v224[0].n128_i64[1]);
          mlir::ValueRange::ValueRange(v242.n128_u64, __p[0], LODWORD(__p[1]));
          v152 = mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v45[3], &v219, &v218, &v236, &v233, &v242);
          (*(*a4 + 8))(a4, v45, v152);
          if (v224[0].n128_u64[0] != &v224[1].n128_i8[8])
          {
            free(v224[0].n128_u64[0]);
          }

          if (v228.n128_u64[0] != v229)
          {
            free(v228.n128_u64[0]);
          }

          if (__p[0] != &v221)
          {
            free(__p[0]);
          }
        }

        else
        {
          matched = 0;
        }

        v143 = v239;
        if (v239 == v241)
        {
          return matched;
        }
      }

      else
      {
        if (*v7 != 0x676E695243454E41 || v7[1] != 0x6552726566667542 || *(v7 + 4) != 1919247457)
        {
          goto LABEL_40;
        }

        v13 = v215;
        v15 = *(a3 + 40);
        v14 = *(a3 + 48);
        __p[0] = v15;
        __p[1] = v14;
        v16 = mlir::ValueRange::dereference_iterator(__p, 0);
        v235 = v16;
        v239 = 0;
        v228.n128_u64[0] = &v239;
        __p[0] = &v228;
        mlir::detail::walk<mlir::ForwardIterator>(v13, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferReaderENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps14StridedSliceOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        v17 = *(*(v239 + 9) + 120);
        v236 = v238;
        v237 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v17, &v236))
        {
          if (v237)
          {
            v18 = v236;
            v19 = 8 * v237;
            do
            {
              if (*v18 != 1)
              {
                operator new();
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }

          __p[0] = &v221;
          __p[1] = 0x600000000;
          v228.n128_u64[0] = v229;
          v228.n128_u64[1] = 0x600000000;
          v224[0].n128_u64[0] = &v224[1].n128_u64[1];
          *(v224 + 8) = xmmword_1A75D9A70;
          v20 = *(*(v239 + 9) + 56);
          v21 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
          if (v21)
          {
            v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
          }

          else
          {
            v22 = 0;
          }

          v242.n128_u64[0] = v21;
          v242.n128_u64[1] = v22;
          mlir::ShapedType::getShape(&v242);
          {
            operator new();
          }

          v242.n128_u64[0] = v243;
          v242.n128_u64[1] = 0x600000000;
          if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(v239 + 9) + 88), &v242))
          {
            v233 = v15;
            v234 = v14;
            v233 = mlir::ValueRange::offset_base(&v233, 1);
            v234 = 0;
            v104 = v14 - 1;
            if (v104)
            {
              for (i = 0; i != v104; v234 = i)
              {
                v106 = mlir::ValueRange::dereference_iterator(&v233, i);
                v107 = LODWORD(__p[1]);
                if (LODWORD(__p[1]) >= HIDWORD(__p[1]))
                {
                  v108 = v106;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &v221, LODWORD(__p[1]) + 1, 8);
                  v106 = v108;
                  v107 = LODWORD(__p[1]);
                }

                *(__p[0] + v107) = v106;
                ++LODWORD(__p[1]);
                i = (v234 + 1);
              }
            }

            v233 = v228.n128_i32[2];
            v109 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v110 = mlir::RankedTensorType::get(&v233, 1, v109, 0);
            if (v110)
            {
              v111 = v110;
              v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v110 + 8);
              v110 = v111;
            }

            else
            {
              v112 = 0;
            }

            v216 = mlir::DenseElementsAttr::getFromRawBuffer(v110, v112, v228.n128_i64[0], 8 * v228.n128_u32[2]);
            v233 = v224[0].n128_i32[2];
            v125 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
            v126 = mlir::RankedTensorType::get(&v233, 1, v125, 0);
            if (v126)
            {
              v127 = v126;
              v128 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v126 + 8);
              v126 = v127;
            }

            else
            {
              v128 = 0;
            }

            v230 = mlir::DenseElementsAttr::getFromRawBuffer(v126, v128, v224[0].n128_i64[0], v224[0].n128_i64[1]);
            v233 = v242.n128_i32[2];
            v129 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
            v130 = mlir::RankedTensorType::get(&v233, 1, v129, 0);
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

            v219 = mlir::DenseElementsAttr::getFromRawBuffer(v130, v132, v242.n128_i64[0], 8 * v242.n128_u32[2]);
            mlir::ValueRange::ValueRange(&v233, __p[0], LODWORD(__p[1]));
            v133 = (*(v13 - 1) & 0xFFFFFFFFFFFFFFF8);
            if (v133)
            {
              v134 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v133 + 8);
            }

            else
            {
              v134 = 0;
            }

            RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v133, v134);
            v232 = v135;
            Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
            v138 = v137;
            isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
            v140 = mlir::MemRefType::get(Shape, v138, isSplat, 0, 0, 0);
            v141 = v140;
            if (v140)
            {
              v140 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v140 + 8);
            }

            RankPromotionTypeForANE = v141;
            v232 = v140;
            v142 = mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v13[3], &RankPromotionTypeForANE, &v235, &v216, &v230, &v219, &v233);
            (*(*a4 + 8))(a4, v13, v142);
            matched = 1;
          }

          else
          {
            matched = 0;
          }

          if (v242.n128_u64[0] != v243)
          {
            free(v242.n128_u64[0]);
          }

          if (v224[0].n128_u64[0] != &v224[1].n128_i8[8])
          {
            free(v224[0].n128_u64[0]);
          }

          if (v228.n128_u64[0] != v229)
          {
            free(v228.n128_u64[0]);
          }

          if (__p[0] != &v221)
          {
            free(__p[0]);
          }
        }

        else
        {
          matched = 0;
        }

        v143 = v236;
        if (v236 == v238)
        {
          return matched;
        }
      }

      free(v143);
      return matched;
    }

LABEL_40:
    std::string::basic_string[abi:nn200100]<0>(__p, "Error: unknown fused op type");
    v33 = *(v215 + 3);
    goto LABEL_41;
  }

  if (__p[1] != 14)
  {
    if (__p[1] != 16)
    {
      goto LABEL_40;
    }

    if (memcmp(__p[0], "PalettizedLinear", 0x10uLL))
    {
      if (!memcmp(v7, "ANECTensorBuffer", 0x10uLL))
      {
        v8 = v215;
        v212 = *(a3 + 40);
        v9 = (*(v215 - 1) & 0xFFFFFFFFFFFFFFF8);
        if (v9)
        {
          v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
        }

        else
        {
          v10 = 0;
        }

        __p[0] = v9;
        __p[1] = v10;
        v76 = mlir::ShapedType::getShape(__p);
        if (v77 <= 2)
        {
          __p[0] = "Error: do not support tensor buffer op with rank <= 2";
          LOWORD(v222) = 259;
          v228.n128_u64[0] = __p;
          v78 = *(a4 + 16);
          if (!v78)
          {
            return 0;
          }

          goto LABEL_114;
        }

        v79 = v77;
        Instance = mlir::ANEPropertiesRegistry::getInstance(v76);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
        if (Properties)
        {
          v82 = *Properties;
        }

        else
        {
          v82 = 0;
        }

        if (v79 == 3 && (v82 & 1) == 0)
        {
          v92 = "Error: unsupported NCW layout for rank3 tensor buffer. Please use CHW instead.";
          goto LABEL_113;
        }

        v233 = 0;
        RankPromotionTypeForANE = 0;
        v93 = *(((v8 + 16 * ((*(v8 + 11) >> 23) & 1) + ((*(v8 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 10) + 8);
        if (v93)
        {
          v94 = v93 - 8;
        }

        else
        {
          v94 = 0;
        }

        __p[0] = &v233;
        __p[1] = &RankPromotionTypeForANE;
        v95 = *(v94 + 40);
        v96 = (v94 + 32);
        if (v95 != (v94 + 32))
        {
          do
          {
            v97 = *(v95 + 1);
            ZinIrHalH13g::~ZinIrHalH13g(v95);
            v95 = v97;
          }

          while (v97 != v96);
        }

        v235 = 0;
        v239 = 0;
        *__p = v212;
        v216 = mlir::ValueRange::dereference_iterator(__p, 0);
        if (mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v233))
        {
          v99 = *(v8 + 9);
          if (v99)
          {
            v100 = v8 - 16;
          }

          else
          {
            v100 = 0;
          }

          __p[0] = v100;
          __p[1] = v99;
          mlir::ResultRange::use_begin(__p, &v228);
          v101 = *(v8 + 9);
          if (v101)
          {
            v102 = v8 - 16;
          }

          else
          {
            v102 = 0;
          }

          v224[0].n128_u64[0] = v102;
          v224[0].n128_u64[1] = v101;
          mlir::ResultRange::use_end(v224, (&v222 + 8));
          *&v222 = *&v229[1];
          *__p = v228;
          v221 = v229[0];
          if (*(*(*(*&v229[1] + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
          {
            operator new();
          }

          v114 = v233;
          if (*(v233 + 9))
          {
            v115 = v233 - 16;
          }

          else
          {
            v115 = 0;
          }

          v116 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v115, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v242.n128_u64[0] = v114;
          v236 = v116;
          __p[0] = &v221;
          __p[1] = 0x600000000;
          InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v242);
          mlir::getValues<unsigned long>(InterleaveAttr, __p);
          mlir::ArrayAttr::getValue(&v236);
          v118 = 1;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v119);
          v121 = __p[0];
          if (v122)
          {
            v123 = *(__p[0] + IndexFromDim);
            if (LODWORD(__p[1]))
            {
              v124 = 0;
              while (IndexFromDim == v124 || *(__p[0] + v124) == 1)
              {
                if (LODWORD(__p[1]) == ++v124)
                {
                  goto LABEL_197;
                }
              }

              v118 = 1;
            }

            else
            {
LABEL_197:
              v228.n128_u64[0] = v229;
              v228.n128_u64[1] = 0x600000000;
              if ((mlir::calculateANEStridesFromAffineMap(v236, &v228) & 1) != 0 && (v154 = v228.n128_u32[2], mlir::ArrayAttr::getValue(&v236), v155 == v154))
              {
                v156 = v228.n128_u32[2] - 1;
                v157 = (v228.n128_u64[0] + 8);
                while (v156)
                {
                  v158 = *(v157 - 1);
                  v159 = *v157++;
                  --v156;
                  if (v158 < v159)
                  {
                    operator new();
                  }
                }

                v224[0].n128_u64[0] = 1;
                v178 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                v179 = mlir::RankedTensorType::get(v224, 1, v178, 0);
                v180 = v179;
                if (v179)
                {
                  v181 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v179 + 8);
                }

                else
                {
                  v181 = 0;
                }

                LOBYTE(v230) = v123;
                v235 = mlir::DenseElementsAttr::getFromRawBuffer(v180, v181, &v230, 1);
                v224[0].n128_u64[0] = v228.n128_i32[2];
                v191 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
                v192 = mlir::RankedTensorType::get(v224, 1, v191, 0);
                v193 = v192;
                if (v192)
                {
                  v194 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v192 + 8);
                }

                else
                {
                  v194 = 0;
                }

                v195 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v194, v228.n128_i64[0], 8 * v228.n128_u32[2]);
                v118 = 0;
                v239 = v195;
              }

              else
              {
                v118 = 1;
              }

              if (v228.n128_u64[0] != v229)
              {
                free(v228.n128_u64[0]);
              }

              v121 = __p[0];
            }
          }

          if (v121 != &v221)
          {
            free(v121);
          }

          if (v118)
          {
            operator new();
          }

          if (*(v233 + 9))
          {
            v160 = v233 - 16;
          }

          else
          {
            v160 = 0;
          }

          v161 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v160, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v161)
          {
            v162 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v161 + 8);
          }

          else
          {
            v162 = 0;
          }

          __p[0] = mlir::getRankPromotionTypeForANE(v161, v162);
          __p[1] = v163;
          v164 = mlir::ShapedType::getShape(__p);
          v166 = v165;
          v167 = mlir::ElementsAttr::isSplat(__p);
          v228.n128_u64[0] = mlir::MemRefType::get(v164, v166, v167, 0, 0, 0);
          v168 = mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), *(v8 + 3), &v228, &v216, &v239, &v235);
          (*(*a4 + 8))(a4, v8, v168);
          return 1;
        }

        if (!mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&RankPromotionTypeForANE))
        {
          operator new();
        }

        if ((mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(*(*(v8 + 9) + 24)) & 1) == 0)
        {
          v92 = "The input of tensor_buffer_to_tensor must be a block argument";
LABEL_113:
          __p[0] = v92;
          LOWORD(v222) = 259;
          v228.n128_u64[0] = __p;
          v78 = *(a4 + 16);
          if (!v78)
          {
            return 0;
          }

LABEL_114:
          if (instruction::util::IsTasklet(v78))
          {
            (*(*v78 + 88))(v78, *(v8 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::FusionOp &>(mlir::mpsx::FusionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v228);
          }

          return 0;
        }

        v169 = (*(*(*(RankPromotionTypeForANE + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v242.n128_u64[0] = RankPromotionTypeForANE;
        v236 = v169;
        __p[0] = &v221;
        __p[1] = 0x600000000;
        v170 = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v242);
        mlir::getValues<unsigned long>(v170, __p);
        mlir::ArrayAttr::getValue(&v236);
        v171 = 1;
        v173 = mlir::anec::getIndexFromDim(1, v172);
        v174 = __p[0];
        if (v175)
        {
          v176 = *(__p[0] + v173);
          if (LODWORD(__p[1]))
          {
            v177 = 0;
            while (v173 == v177 || *(__p[0] + v177) == 1)
            {
              if (LODWORD(__p[1]) == ++v177)
              {
                goto LABEL_229;
              }
            }

            v171 = 1;
          }

          else
          {
LABEL_229:
            v228.n128_u64[0] = v229;
            v228.n128_u64[1] = 0x600000000;
            if ((mlir::calculateANEStridesFromAffineMap(v236, &v228) & 1) != 0 && (v182 = v228.n128_u32[2], mlir::ArrayAttr::getValue(&v236), v183 == v182))
            {
              v184 = v228.n128_u32[2] - 1;
              v185 = (v228.n128_u64[0] + 8);
              while (v184)
              {
                v186 = *(v185 - 1);
                v187 = *v185++;
                --v184;
                if (v186 < v187)
                {
                  operator new();
                }
              }

              v224[0].n128_u64[0] = 1;
              v201 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
              v202 = mlir::RankedTensorType::get(v224, 1, v201, 0);
              v203 = v202;
              if (v202)
              {
                v204 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v202 + 8);
              }

              else
              {
                v204 = 0;
              }

              LOBYTE(v230) = v176;
              v235 = mlir::DenseElementsAttr::getFromRawBuffer(v203, v204, &v230, 1);
              v224[0].n128_u64[0] = v228.n128_i32[2];
              v205 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
              v206 = mlir::RankedTensorType::get(v224, 1, v205, 0);
              v207 = v206;
              if (v206)
              {
                v208 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v206 + 8);
              }

              else
              {
                v208 = 0;
              }

              v171 = 0;
              v239 = mlir::DenseElementsAttr::getFromRawBuffer(v207, v208, v228.n128_i64[0], 8 * v228.n128_u32[2]);
            }

            else
            {
              v171 = 1;
            }

            if (v228.n128_u64[0] != v229)
            {
              free(v228.n128_u64[0]);
            }

            v174 = __p[0];
          }
        }

        if (v174 != &v221)
        {
          free(v174);
        }

        if ((v171 & 1) == 0)
        {
          if (*(RankPromotionTypeForANE + 9))
          {
            v188 = RankPromotionTypeForANE - 16;
          }

          else
          {
            v188 = 0;
          }

          v189 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v188, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v189)
          {
            v190 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v189 + 8);
          }

          else
          {
            v190 = 0;
          }

          __p[0] = mlir::getRankPromotionTypeForANE(v189, v190);
          __p[1] = v196;
          v197 = mlir::ShapedType::getShape(__p);
          v199 = v198;
          v200 = mlir::ElementsAttr::isSplat(__p);
          v228.n128_u64[0] = mlir::MemRefType::get(v197, v199, v200, 0, 0, 0);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4, v8, &v228, &v216, &v239, &v235);
          return 1;
        }

        std::string::basic_string[abi:nn200100]<0>(__p, "Error: failed to extract the stride and interleave info");
        v33 = *(v8 + 3);
LABEL_41:
        matched = mlir::logMatchFailure(__p, v33, a4);
        if (SBYTE7(v221) < 0)
        {
          operator delete(__p[0]);
        }

        return matched;
      }

      goto LABEL_40;
    }

    v34 = v215;
    v35 = *(a3 + 40);
    v36 = *(a3 + 48);
    v236 = 0;
    v228.n128_u64[0] = &v236;
    v37 = v236;
    if (!v236)
    {
      operator new();
    }

    v38 = *(v236 + 9);
    if (v38)
    {
      v39 = v236 - 16;
    }

    else
    {
      v39 = 0;
    }

    v228.n128_u64[0] = v39;
    v228.n128_u64[1] = v38;
    mlir::ResultRange::use_begin(&v228, v224);
    v40 = v37[9];
    if (v40)
    {
      v41 = (v37 - 4);
    }

    else
    {
      v41 = 0;
    }

    v242.n128_u64[0] = v41;
    v242.n128_u64[1] = v40;
    mlir::ResultRange::use_end(&v242, (&v229[1] + 8));
    *&v229[1] = v225;
    v228 = v224[0];
    v229[0] = v224[1];
    v233 = *(v225 + 16);
    v42 = v233;
    memset(v229, 0, sizeof(v229));
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    memset(v224, 0, sizeof(v224));
    if (v44)
    {
      TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v233);
      if (!v43)
      {
        goto LABEL_52;
      }
    }

    else
    {
      TransposeRhs = 0;
      if (!v43)
      {
LABEL_52:
        v242.n128_u64[0] = v35;
        v242.n128_u64[1] = v36;
        v210 = mlir::ValueRange::dereference_iterator(&v242, 0);
        v213 = v43;
        if (!v44)
        {
LABEL_53:
          v242.n128_u64[0] = v35;
          v242.n128_u64[1] = v36;
          v209 = mlir::ValueRange::dereference_iterator(&v242, 1);
          goto LABEL_85;
        }

LABEL_84:
        v209 = v236 - 16;
LABEL_85:
        v73 = *(v233 + 9);
        v74 = (*(*(v73 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v74)
        {
          v75 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
          v73 = *(v233 + 9);
        }

        else
        {
          v75 = 0;
        }

        v83 = (*(*(v73 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v83)
        {
          v84 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v83 + 8);
        }

        else
        {
          v84 = 0;
        }

        v85 = (*(v34 - 1) & 0xFFFFFFFFFFFFFFF8);
        if (v85)
        {
          v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v85 + 8);
        }

        else
        {
          v86 = 0;
        }

        v87 = v233;
        mlir::TypeConverter::TypeConverter(__p, *(a1 + 96));
        mlir::TypeConverter::~TypeConverter(__p);
      }
    }

    v210 = v236 - 16;
    v213 = v43;
    if (!v44)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

  if (*__p[0] != 0x7A697474656C6150 || *(__p[0] + 6) != 0x766E6F4364657A69)
  {
    goto LABEL_40;
  }

  v24 = v215;
  v25 = *(a3 + 40);
  v26 = *(a3 + 48);
  v27 = *(((v215 + 16 * ((*(v215 + 11) >> 23) & 1) + ((*(v215 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v215 + 10) + 8);
  if (v27)
  {
    v28 = v27 - 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v28 + 32);
  v30 = *(v28 + 40);
  if (v30 != (v28 + 32))
  {
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v30);
      if (*(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
      {
        break;
      }

      matched = 0;
      v30 = *(v30 + 1);
      if (v30 == v29)
      {
        return matched;
      }
    }
  }

  if (v30 == v29)
  {
    return 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v30);
  if (*(*(v52 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v224[0].n128_u64[0] = v25;
  v224[0].n128_u64[1] = v26;
  v54 = mlir::ValueRange::dereference_iterator(v224, 0);
  v55 = *(*(v53 + 72) + 56);
  v228.n128_u64[0] = v54;
  v228.n128_u64[1] = v55;
  mlir::ValueRange::ValueRange(__p, &v228, 2uLL);
  matched = 0;
  if (v57)
  {
    mlir::ConversionPatternRewriter::replaceOp(a4, v24, v56);
  }

  return matched;
}

uint64_t mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToQuantizedConv(mlir::ForwardIterator *a1, uint64_t a2, uint64_t **a3)
{
  __p[3] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21[0] = &v22;
  __p[0] = v21;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp30convertFusionOpToQuantizedConvENS1_4mpsx8FusionOpENSD_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps8Conv2DOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_, __p, 1);
  if (!v22)
  {
    return 0;
  }

  __p[0] = *(*(v22 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(__p);
  if (!DefiningOp)
  {
    operator new();
  }

  v7 = DefiningOp;
  v8 = *(DefiningOp + 72);
  v9 = (*(v8[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v8 = *(v7 + 72);
  }

  else
  {
    v10 = 0;
  }

  v21[0] = v9;
  v21[1] = v10;
  v12 = (*(v8[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v8 = *(v7 + 72);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(v8[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  __p[0] = mlir::ElementsAttr::isSplat(v21);
  if (!mlir::Type::isInteger(__p, 8))
  {
    v20[0] = mlir::ElementsAttr::isSplat(v21);
    if (!mlir::Type::isInteger(v20, 4))
    {
      operator new();
    }
  }

  v20[0] = v21;
  v20[1] = &v22;
  {
    operator new();
  }

  {
    operator new();
  }

  v23 = *(a2 + 40);
  v16 = mlir::ValueRange::dereference_iterator(&v23, 0);
  v17 = *(*(v22 + 72) + 56);
  v24[0] = v16;
  v24[1] = v17;
  mlir::ValueRange::ValueRange(__p, v24, 2uLL);
  result = 0;
  if (v19)
  {
    mlir::ConversionPatternRewriter::replaceOp(a3, a1, v18);
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::convert2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, char a5)
{
  v237 = *MEMORY[0x1E69E9840];
  v194 = a1;
  v233[0] = a2;
  v233[1] = a3;
  v193 = 0;
  v178 = *(a1 + 24);
  v8 = mlir::ValueRange::dereference_iterator(v233, 0);
  v192 = v8;
  v191 = mlir::ValueRange::dereference_iterator(v233, 1);
  if (*(a1 + 36))
  {
    v9 = a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v190[0] = v11;
  v190[1] = v12;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  Shape = mlir::ShapedType::getShape(v190);
  v15 = v14;
  v16 = (*(v191 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v188 = v16;
  v189 = v17;
  *&v212 = v194;
  Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v212);
  v18 = mlir::ShapedType::getShape(&v188);
  v19 = mlir::ShapedType::getShape(&v188);
  v21 = (v19 + 8 * v20);
  v230 = v232;
  v231 = 0x400000000;
  v22 = (v21 - v18) >> 3;
  if (v22 < 5)
  {
    v23 = 0;
    if (v21 == v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v230, v232, v22, 8);
  v23 = v231;
  if (v21 != v18)
  {
LABEL_16:
    memcpy(v230 + 8 * v23, v18, v21 - v18);
    v23 = v231;
  }

LABEL_17:
  LODWORD(v231) = v23 + ((v21 - v18) >> 3);
  v227 = v229;
  v228 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v194);
  if (InputAttributeNames)
  {
    v25 = InputAttributeNames;
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v26, &v227, 1);
  if (mlir::mps::PadOp::getPaddingMode(&v194))
  {
    operator new();
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v194) != 2 && mlir::mps::Conv3DOp::getWeightsLayout(&v194) != 3)
  {
    operator new();
  }

  v186 = 0uLL;
  v184 = 0;
  v185 = 0;
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  v30 = *(*(v194 + 72) + 56);
  *&v212 = &v186;
  *(&v212 + 1) = &v184;
  *&v213 = &v182;
  *(&v213 + 1) = &v180;
  v208 = v30;
  DefiningOp = mlir::Value::getDefiningOp(&v208);
  v174 = (DefiningOp && (v218 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v224) = 1, __dst = &v224, v222 = &v218, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&v212, &__dst), (v224 & 1) != 0) || (v32 = *(*(v194 + 72) + 56), v222 = &v184, v223[0] = &v182, v223[1] = &v180, v224 = v32, (v33 = mlir::Value::getDefiningOp(&v224)) != 0) && (v208 = v33, *(*(v33 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v33 + 46) & 0x80) != 0 && *(v33 + 68) == 4 && (LOBYTE(v198) = 1, v218 = &v198, v219 = &v208, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v218), v198 == 1)) && mlir::ElementsAttr::getNumElements(v180, v181) == 1 && (mlir::getSingleFloatValue<float>(v180, v181) & 0x7FFFFFFF) == 0;
  if (v186)
  {
    v34 = a5;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v170 = 0;
    v171 = 0;
  }

  else
  {
    v171 = mlir::convertElementsAttr(v184, v185, 1);
    *&v212 = mlir::getElementTypeOrSelf(v182);
    isSignedInteger = mlir::Type::isSignedInteger(&v212);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::ElementsAttr::getShapedType(&v182);
    v222 = v37;
    LOBYTE(v212) = 0;
    LOBYTE(v213) = 0;
    v38 = mlir::ShapedType::cloneWith(&__dst, &v212, IntegerType);
    v170 = mlir::rewriteElementsAttr(v182, v183, v38, v39, 1);
  }

  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v208 = &v205;
  v209 = &v204;
  v210[0] = 0;
  __dst = &v208;
  v222 = &v206;
  LOBYTE(v223[0]) = 0;
  LOBYTE(v223[1]) = 0;
  v224 = &v207;
  p_dst = &__dst;
  v226[0] = 0;
  if (*(v194 + 36))
  {
    v40 = v194 - 16;
  }

  else
  {
    v40 = 0;
  }

  *&v212 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  v41 = mlir::Value::getDefiningOp(&v212);
  if (v41 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v224, v41))
  {
    v84 = v205;
    *&v235 = v205;
    v197[0] = v204;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v197);
    v169 = mlir::convertElementsAttr(AsAttribute, v86, 1);
    if (*(v84 + 36))
    {
      v87 = v84 - 16;
    }

    else
    {
      v87 = 0;
    }

    v88 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v87, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v177 = a4;
    if (v88)
    {
      v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
    }

    else
    {
      v89 = 0;
    }

    v188 = v88;
    v189 = v89;
    v117 = mlir::ShapedType::getShape(&v188);
    v118 = mlir::ShapedType::getShape(&v188);
    v120 = (v118 + 8 * v119);
    *&v212 = &v213;
    *(&v212 + 1) = 0x400000000;
    v121 = (v120 - v117) >> 3;
    if (v121 < 5)
    {
      v122 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v212, &v213, v121, 8);
      v122 = DWORD2(v212);
    }

    if (v120 != v117)
    {
      memcpy((v212 + 8 * v122), v117, v120 - v117);
      v122 = DWORD2(v212);
    }

    DWORD2(v212) = v122 + ((v120 - v117) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v230, &v212);
    if (v212 != &v213)
    {
      free(v212);
    }

    v123 = (*(v197[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v123)
    {
      v124 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v123 + 8);
    }

    else
    {
      v124 = 0;
    }

    *&v212 = v123;
    *(&v212 + 1) = v124;
    v173 = mlir::ShapedType::getShape(&v212);
    v99 = v125;
    v126 = *(v194 + 24);
    v127 = v230;
    v128 = v231;
    v218 = mlir::mps::ConstantOp::getAsAttribute(&v235);
    v219 = v129;
    *&v212 = mlir::ElementsAttr::getShapedType(&v218);
    *(&v212 + 1) = v130;
    isSplat = mlir::ElementsAttr::isSplat(&v212);
    *&v196 = mlir::MemRefType::get(v127, v128, isSplat, 0, 0, 0);
    *&v198 = mlir::mps::ConstantOp::getAsAttribute(&v235);
    *(&v198 + 1) = v132;
    a4 = v177;
    v133 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v177 + 1), v126, &v196, &v198);
    if (*(v133 + 9))
    {
      v134 = v133 - 16;
    }

    else
    {
      v134 = 0;
    }

    DictionaryAttr = 0;
    v191 = mlir::detail::OpResultImpl::getNextResultAtOffset(v134, 0);
  }

  else
  {
    v202 = 0;
    v203 = 0;
    v200 = 0;
    v201 = 0;
    *&v198 = &v201;
    *(&v198 + 1) = &v200;
    v199 = 0;
    *&v235 = &v202;
    *(&v235 + 1) = &v198;
    v236 = 0;
    v218 = &v235;
    v219 = &v203;
    v220[0] = 0;
    v220[8] = 0;
    if (*(v194 + 36))
    {
      v42 = v194 - 16;
    }

    else
    {
      v42 = 0;
    }

    *&v196 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
    v43 = mlir::Value::getDefiningOp(&v196);
    if (!v43 || (v197[0] = v43, *(*(v43 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v43 + 46) & 0x80) == 0 || *(v43 + 68) != 2 || (*&v212 = &v195, *(&v212 + 1) = v197, LOBYTE(v195) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(&v212, 1u, &v218), (v195 & 1) == 0))
    {
      DictionaryAttr = 0;
      v169 = 0;
      v172 = 0;
      goto LABEL_70;
    }

    v166 = v202;
    v168 = v201;
    if (*(v202 + 36))
    {
      v44 = v202 - 16;
    }

    else
    {
      v44 = 0;
    }

    v45 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v176 = a4;
    if (v45)
    {
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
    }

    else
    {
      v46 = 0;
    }

    v188 = v45;
    v189 = v46;
    v90 = mlir::ShapedType::getShape(&v188);
    v91 = mlir::ShapedType::getShape(&v188);
    v93 = (v91 + 8 * v92);
    *&v212 = &v213;
    *(&v212 + 1) = 0x400000000;
    v94 = (v93 - v90) >> 3;
    if (v94 < 5)
    {
      v95 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v212, &v213, v94, 8);
      v95 = DWORD2(v212);
    }

    if (v93 != v90)
    {
      memcpy((v212 + 8 * v95), v90, v93 - v90);
      v95 = DWORD2(v212);
    }

    DWORD2(v212) = v95 + ((v93 - v90) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v230, &v212);
    if (v212 != &v213)
    {
      free(v212);
    }

    v96 = (*(v199 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v96)
    {
      v97 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    }

    else
    {
      v97 = 0;
    }

    v197[0] = v96;
    v197[1] = v97;
    v173 = mlir::ShapedType::getShape(v197);
    v99 = v98;
    v100 = *(v194 + 24);
    v101 = v230;
    v102 = v231;
    v103 = mlir::ElementsAttr::isSplat(&v188);
    *&v212 = mlir::MemRefType::get(v101, v102, v103, 0, 0, 0);
    v104 = (v166 + 16 * ((*(v166 + 44) >> 23) & 1));
    *&v196 = v104[8];
    *&v195 = v104[10];
    F16FloatAttr = v104[9];
    a4 = v176;
    v105 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v176 + 1), v100, &v212, &v196, &v195, &F16FloatAttr);
    if (*(v105 + 9))
    {
      v106 = v105 - 16;
    }

    else
    {
      v106 = 0;
    }

    v191 = mlir::detail::OpResultImpl::getNextResultAtOffset(v106, 0);
    *&v212 = "offset";
    LOWORD(v214) = 259;
    StringAttr = mlir::Builder::getStringAttr(v176 + 1, &v212);
    ZinMirCacheTensors::ZinMirCacheTensors(&v196, StringAttr, *(v168 + 16 * ((*(v168 + 44) >> 23) & 1) + 80));
    *&v212 = "type";
    LOWORD(v214) = 259;
    v108 = mlir::Builder::getStringAttr(v176 + 1, &v212);
    v109 = mlir::TypeAttr::get(v197[0]);
    ZinMirCacheTensors::ZinMirCacheTensors(&v195, v108, v109);
    v212 = v196;
    v213 = v195;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v176 + 1, &v212, 2);
    v169 = 0;
  }

  if (v99 < 2)
  {
    v135 = 1;
  }

  else
  {
    v135 = *v173;
  }

  v136 = v99 - 1;
  if (v99 == 6)
  {
    v136 = 4;
  }

  if (v136 >= 2)
  {
    v137 = v136 - 1;
    v138 = v173 + 1;
    do
    {
      v139 = *v138++;
      if (v139 >= 2)
      {
        operator new();
      }

      --v137;
    }

    while (v137);
  }

  if (v135 >= 2 && *v230 % v135)
  {
    operator new();
  }

  *&v212 = mlir::ElementsAttr::isSplat(&v188);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v212);
  if (IntOrFloatBitWidth > 8 || (v172 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    operator new();
  }

LABEL_70:
  v167 = DictionaryAttr;
  v198 = 0uLL;
  __dst = &v198;
  *&v212 = v191;
  v48 = mlir::Value::getDefiningOp(&v212);
  if (v48)
  {
    v49 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v48);
  }

  else
  {
    v49 = 0;
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v194);
  v179 = 0;
  v197[0] = 0;
  if ((v49 & 1) == 0)
  {
    v51 = v174;
    if (v197[0])
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      *&v212 = *(*(v194 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v212);
      if (AttrData)
      {
        v60 = v59;
        if (v59 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (v59 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v223[0]) = v59;
        if (v59)
        {
          memmove(&__dst, AttrData, v59);
        }

        *(&__dst + v60) = 0;
      }

      else
      {
        __dst = 0;
        v222 = 0;
        v223[0] = 0;
      }

      v80 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
      v81 = v80->__r_.__value_.__r.__words[2];
      v212 = *&v80->__r_.__value_.__l.__data_;
      *&v213 = v81;
      v80->__r_.__value_.__l.__size_ = 0;
      v80->__r_.__value_.__r.__words[2] = 0;
      v80->__r_.__value_.__r.__words[0] = 0;
      mlir::logMatchFailure(&v212, *(v194 + 24), a4);
      if (SBYTE7(v213) < 0)
      {
        operator delete(v212);
      }

      if ((SHIBYTE(v223[0]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v27 = __dst;
      goto LABEL_24;
    }
  }

  if ((v34 & 1) == 0)
  {
    v198 = v186;
    v52 = v230;
    v53 = v231;
    *&v212 = mlir::ElementsAttr::getShapedType(&v198);
    *(&v212 + 1) = v54;
    v55 = mlir::ElementsAttr::isSplat(&v212);
    __dst = mlir::MemRefType::get(v52, v53, v55, 0, 0, 0);
    v191 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v178, &__dst, &v198) - 16;
  }

  if (WeightsLayout != 3)
  {
    goto LABEL_104;
  }

  if (v179 != 1)
  {
    if ((v172 & 1) == 0)
    {
      Loc = mlir::Value::getLoc(&v191);
      v212 = xmmword_1A7598A20;
      v213 = xmmword_1A75A1AD0;
      v214 = xmmword_1A7595BC0;
      v215 = xmmword_1A75EA200;
      std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:nn200100](&__dst, &v212, 4uLL);
      v191 = mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(a4 + 1, Loc, &v191, &__dst);
      if (__dst)
      {
        v222 = __dst;
        operator delete(__dst);
      }
    }

    goto LABEL_94;
  }

  v56 = v197[0];
  if (!v197[0])
  {
    std::string::basic_string[abi:nn200100]<0>(&v212, "Cannot get the filter definition op");
    mlir::logMatchFailure(&v212, *(v194 + 24), a4);
    if ((SBYTE7(v213) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v27 = v212;
LABEL_24:
    operator delete(v27);
LABEL_25:
    v28 = 0;
    goto LABEL_26;
  }

  if (*(*(mlir::Value::getDefiningOp(&v191) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    v57 = mlir::Value::getDefiningOp(&v191);
    mlir::ConversionPatternRewriter::eraseOp(a4, v57);
  }

  v191 = v56 - 16;
LABEL_94:
  v62 = (*(v191 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v62)
  {
    v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
  }

  else
  {
    v63 = 0;
  }

  v188 = v62;
  v189 = v63;
  v64 = mlir::ShapedType::getShape(&v188);
  v65 = mlir::ShapedType::getShape(&v188);
  v67 = (v65 + 8 * v66);
  *&v212 = &v213;
  *(&v212 + 1) = 0x400000000;
  v68 = (v67 - v64) >> 3;
  if (v68 < 5)
  {
    v69 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v212, &v213, v68, 8);
    v69 = DWORD2(v212);
  }

  if (v67 != v64)
  {
    memcpy((v212 + 8 * v69), v64, v67 - v64);
    v69 = DWORD2(v212);
  }

  DWORD2(v212) = v69 + ((v67 - v64) >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v230, &v212);
  if (v212 != &v213)
  {
    free(v212);
  }

LABEL_104:
  *&v212 = 3;
  v70 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v71 = mlir::RankedTensorType::get(&v212, 1, v70, 0);
  *&v212 = 6;
  v72 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v73 = mlir::RankedTensorType::get(&v212, 1, v72, 0);
  v224 = v226;
  p_dst = 0x200000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v194);
  if (Strides)
  {
    v75 = Strides;
    v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v75;
  }

  else
  {
    v76 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v76, &v224, 1);
  v77 = v224;
  if (*v224 != 1 || v224[1] != 1)
  {
    operator new();
  }

  v78 = 8 * p_dst - 16;
  if (p_dst != 2)
  {
    memmove(v224, v224 + 2, 8 * p_dst - 16);
  }

  LODWORD(p_dst) = (v77 + v78 - v224) >> 3;
  *&v212 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v224, v224, &v212);
  if (v71)
  {
    v79 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
  }

  else
  {
    v79 = 0;
  }

  *&v196 = mlir::DenseElementsAttr::getFromRawBuffer(v71, v79, v224, 8 * p_dst);
  v82 = v227;
  if (*v227 != 1 || v227[1] != 1)
  {
    operator new();
  }

  v83 = 8 * v228 - 16;
  if (v228 != 2)
  {
    memmove(v227, v227 + 2, 8 * v228 - 16);
  }

  LODWORD(v228) = (&v82[v83] - v227) >> 3;
  *&v212 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v227, v227, &v212);
  if (v71)
  {
    v110 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
  }

  else
  {
    v110 = 0;
  }

  *&v195 = mlir::DenseElementsAttr::getFromRawBuffer(v71, v110, v227, 8 * v228);
  v175 = (*(v230 + 2) - 1) * v227[1] + 1;
  v111 = (*(v230 + 3) - 1) * v227[2] + 1;
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v194);
  v113 = Rewriter;
  if (Rewriter)
  {
    v114 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v114 = 0;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v194);
  {
    __dst = v223;
    memset(v223, 0, sizeof(v223));
    v222 = 0x600000006;
    v218 = v220;
    memset(v220, 0, sizeof(v220));
    v219 = 0x600000006;
    if (v73)
    {
      v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v73 + 8);
    }

    else
    {
      v116 = 0;
    }

    v208 = v73;
    v209 = v116;
    v212 = 0uLL;
    *&v213 = v207;
    *(&v213 + 1) = v206;
    *&v214 = v205;
    *(&v214 + 1) = v204;
    *&v235 = &v212;
    *(&v235 + 1) = 6;
    v141 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v208, &v235);
    v202 = 0;
    v203 = v141;
    v142 = *(v194 + 24);
    *&v212 = v171;
    v208 = v170;
    v144 = v167;
    v143 = v169;
    if (!v172)
    {
      v143 = 0;
      v144 = 0;
    }

    *&v235 = v143;
    v200 = v144;
    v201 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(a4 + 1, v142, &v192, &v191, &v196, &v195, &v203, &v202, &Groups, &v193, &v212, &v208, &v235, &v200) - 16;
    if (v219)
    {
      v145 = v218;
      v146 = 8 * v219;
      v147 = v218;
      while (*v147 < 1)
      {
        ++v147;
        v146 -= 8;
        if (!v146)
        {
          goto LABEL_215;
        }
      }

      *&v212 = &v213;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      *(&v212 + 1) = 0xA0000000ALL;
      v208 = v210;
      memset_pattern16(v210, &unk_1A75EA240, 0x28uLL);
      v209 = 0x500000005;
      v211 = vdupq_n_s64(6uLL);
      v216 = v145[1];
      v217 = v145[2];
      v235 = xmmword_1A75EA150;
      v148 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
      v149 = mlir::RankedTensorType::get(&v235, 2, v148, 0);
      if (v149)
      {
        v150 = v149;
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v149 + 8);
        v149 = v150;
      }

      else
      {
        v151 = 0;
      }

      v200 = mlir::DenseElementsAttr::getFromRawBuffer(v149, v151, v212, 8 * DWORD2(v212));
      F16FloatAttr = 5;
      v152 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
      v153 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v152, 0);
      if (v153)
      {
        v154 = v153;
        v155 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v153 + 8);
        v153 = v154;
      }

      else
      {
        v155 = 0;
      }

      *&v235 = mlir::DenseElementsAttr::getFromRawBuffer(v153, v155, v208, 8 * v209);
      F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, 0.0, v156);
      v201 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(a4 + 1, v178, &v201, &v235, &v200, &F16FloatAttr) - 16;
      if (v208 != v210)
      {
        free(v208);
      }

      if (v212 != &v213)
      {
        free(v212);
      }
    }

LABEL_215:
    v157 = __dst;
    if (__dst[2] || __dst[3])
    {
      v158 = (*(v201 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v158)
      {
        v159 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v158 + 8);
      }

      else
      {
        v159 = 0;
      }

      *&v212 = v158;
      *(&v212 + 1) = v159;
      v160 = *(mlir::ShapedType::getShape(&v212) + 16);
      LODWORD(v235) = 2;
      v161 = __dst[3];
      *&v212 = __dst[2];
      v208 = (v160 - (v161 + v212));
      v201 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(a4 + 1, v178, &v201, &v235, &v212, &v208) - 16;
      v157 = __dst;
    }

    if (v157[4] || v157[5])
    {
      v162 = (*(v201 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v162)
      {
        v163 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v162 + 8);
      }

      else
      {
        v163 = 0;
      }

      *&v212 = v162;
      *(&v212 + 1) = v163;
      v164 = *(mlir::ShapedType::getShape(&v212) + 24);
      LODWORD(v235) = 3;
      v165 = __dst[5];
      *&v212 = __dst[4];
      v208 = (v164 - (v165 + v212));
      v201 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(a4 + 1, v178, &v201, &v235, &v212, &v208) - 16;
    }

    v28 = mlir::Value::getDefiningOp(&v201);
    if (v218 != v220)
    {
      free(v218);
    }

    if (__dst != v223)
    {
      free(__dst);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v212, "Unsupported padding values for Conv2D");
    mlir::logMatchFailure(&v212, *(v194 + 24), a4);
    if (SBYTE7(v213) < 0)
    {
      operator delete(v212);
    }

    v28 = 0;
  }

  if (v224 != v226)
  {
    free(v224);
  }

LABEL_26:
  if (v227 != v229)
  {
    free(v227);
  }

  if (v230 != v232)
  {
    free(v230);
  }

  return v28;
}

mlir::Operation *mlir::anonymous namespace::getWeightFileProducerAndLayout(uint64_t a1, _BYTE *a2, mlir::Operation **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = a1;
  result = mlir::Value::getDefiningOp(&v23);
  if (result)
  {
    v6 = *(*(result + 6) + 16);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
    {
      v7 = result;
      v24[0] = mlir::Operation::getAttrDictionary(result);
      Value = mlir::ArrayAttr::getValue(v24);
      v24[0] = mlir::Operation::getAttrDictionary(v7);
      v9 = mlir::ArrayAttr::getValue(v24);
      v11 = v7;
      v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(v7 + 6) + 96));
      v24[0] = mlir::ArrayAttr::getValue(&v25);
      v24[1] = v12;
      result = mlir::ShapedType::getShape(v24);
      v26 = xmmword_1A7595C20;
      if (v13 == 2 && *result == v26 && *(result + 1) == *(&v26 + 1))
      {
        mlir::DenseElementsAttr::isValidIntOrFloat(&v25, 8, 1, 0);
        RawStringData = mlir::DenseElementsAttr::getRawStringData(&v25);
        isSplat = mlir::DenseElementsAttr::isSplat(&v25);
        mlir::ArrayAttr::getValue(&v25);
        result = mlir::DenseElementsAttr::getNumElements(&v25);
        if (*RawStringData == 2 && !RawStringData[isSplat ^ 1u])
        {
          v17 = 2;
          if (isSplat)
          {
            v17 = 0;
          }

          if (RawStringData[v17] == 3)
          {
            v18 = 3;
            if (isSplat)
            {
              v18 = 0;
            }

            if (RawStringData[v18] == 1)
            {
              v19 = 4;
              if (isSplat)
              {
                v19 = 0;
              }

              if (RawStringData[v19] == 1)
              {
                v20 = 5;
                if (isSplat)
                {
                  v20 = 0;
                }

                if (RawStringData[v20] == 2)
                {
                  v21 = 6;
                  if (isSplat)
                  {
                    v21 = 0;
                  }

                  if (!RawStringData[v21])
                  {
                    v22 = 7;
                    if (isSplat)
                    {
                      v22 = 0;
                    }

                    if (RawStringData[v22] == 3)
                    {
                      v24[0] = *(*(v11 + 9) + 24);
                      result = mlir::Value::getDefiningOp(v24);
                      if (result)
                      {
                        if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
                        {
                          *a2 = 1;
                          goto LABEL_4;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
LABEL_4:
      *a3 = result;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6[0] = v7;
  v6[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(a1, v6, a2, a3, a4);
  v4 = *v6[0];
  if (v6[0] != v7)
  {
    free(v6[0]);
  }

  return v4;
}

void *std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:nn200100](void *a1, char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  return a1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Convolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t *a5, uint64_t *a6)
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

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(void **a1, uint64_t a2)
{
  mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::DequantizeOp &)#1}::operator()<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>>(a2, 0);
  v7 = *(*(**(a2 + 8) + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v7);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v7 = *(*(**(a2 + 8) + 72) + 88);
  v5 = mlir::Value::getDefiningOp(&v7);
  if (v5)
  {
    LOBYTE(v5) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 2, v5);
  }

  **a2 &= v5;
  v7 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 3, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v13 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
    {
      *v4 = DefiningOp;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  v9 = a1[1];
  v13 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == result))
    {
      *v9 = result;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!result)
  {
    v12 = 0;
  }

  **a2 = v12;
  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v11 = *(*(**(a1 + 8) + 72) + 32 * a2 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v11);
  if (!DefiningOp)
  {
    v9 = *a3;
    v12[0] = v11;
    result = mlir::Value::getDefiningOp(v12);
    if (!result)
    {
      goto LABEL_12;
    }

    v6 = result;
    v10 = v9;
LABEL_14:
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v10, v6);
    goto LABEL_12;
  }

  v6 = DefiningOp;
  v14 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v10 = *a3;
    goto LABEL_14;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 2)
  {
    v13 = 1;
    v12[0] = &v13;
    v12[1] = &v14;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul>(a3, v12);
    result = v13;
    if (v13 == 1)
    {
      v8 = v14;
      if ((a3[3] & 1) == 0)
      {
        *(a3 + 24) = 1;
      }

      a3[2] = v8;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  **a1 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v13 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
    {
      *v4 = DefiningOp;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  v9 = a1[1];
  v13 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == result))
    {
      *v9 = result;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!result)
  {
    v12 = 0;
  }

  **a2 = v12;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v10 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v4, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = a1[1];
  v10 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v6 || *v6 == result))
    {
      *v6 = result;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v8 & **a2;
  if (!result)
  {
    v9 = 0;
  }

  **a2 = v9;
  return result;
}

void mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(uint64_t **a1, _DWORD *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30[38] = *MEMORY[0x1E69E9840];
  v27 = a3;
  Context = mlir::Attribute::getContext(&v27);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v30, v29, v28);
  }

  mlir::OperationState::OperationState(v30, a3, v11);
  mlir::anec::Transpose::build(a1, v30, *a4, *a5, (*(a5 + 8) - *a5) >> 4);
  v14 = mlir::Operation::create(v30, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList((v15 + 4), v14);
    ZinIrHalH13g::~ZinIrHalH13g(v14);
    v17 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v17 + 8) = v18;
    *v16 = v18;
    ZinIrHalH13g::~ZinIrHalH13g(v14);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && a2[2])
  {
    mlir::Operation::erase(v14, v19);
    goto LABEL_20;
  }

  v20 = v14[9];
  if (v20)
  {
    v21 = (v14 - 4);
  }

  else
  {
    v21 = 0;
  }

  a2[2] = 0;
  if (v20 <= a2[3])
  {
    if (!v20)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v22 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 4, v20, 8);
    v22 = a2[2];
  }

  v23 = 0;
  v24 = *a2 + 8 * v22;
  do
  {
    *(v24 + 8 * v23) = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v23);
    ++v23;
  }

  while (v20 != v23);
  v25 = a2[2];
LABEL_17:
  a2[2] = v25 + v20;
  if (a1[2])
  {
    v26 = a1[1];
    if (v26)
    {
      (*(*v26 + 16))(v26, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v30);
}

uint64_t mlir::anonymous namespace::matchPalettizedLinearKernel(uint64_t a1, mlir::ElementsAttr *a2)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = (a2 + 48);
  ShapedType = a2;
  v20 = a2 + 48;
  v21 = a1;
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    v18[0] = result;
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id && (*(result + 46) & 0x80) != 0 && *(result + 68) == 2 && (v22 = 1, v23 = &v22, v24 = v18, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeLUTOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul>(&ShapedType, &v23), v22 == 1) && (ShapedType = mlir::ElementsAttr::getShapedType(a2), v20 = v5, v18[0] = mlir::ElementsAttr::getShapedType(v3), v18[1] = v6, mlir::ShapedType::getShape(&ShapedType), v7 == 2) && (mlir::ShapedType::getShape(v18), v8 <= 4))
    {
      Shape = mlir::ShapedType::getShape(v18);
      v10 = mlir::ShapedType::getShape(v18);
      v12 = (v10 + 8 * v11);
      v23 = v25;
      v24 = 0x600000000;
      v13 = (v12 - Shape) >> 3;
      if (v13 < 7)
      {
        v14 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13, 8);
        v14 = v24;
      }

      if (v12 != Shape)
      {
        memcpy(v23 + 8 * v14, Shape, v12 - Shape);
        v14 = v24;
      }

      LODWORD(v24) = v14 + ((v12 - Shape) >> 3);
      mlir::ShapedType::getShape(v18);
      if (v15 < 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = *v23;
      }

      result = *mlir::ShapedType::getShape(&ShapedType) % v16 == 0;
      if (v23 != v25)
      {
        v17 = result;
        free(v23);
        return v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToPalettizedLinear(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)::$_0>(void **result, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
  {
    **result = a2;
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeLUTOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul>(void **a1, uint64_t a2)
{
  v6 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v6);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v6);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::matchConstantWithIntVector<unsigned long>(uint64_t a1, uint64_t a2)
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

  mlir::getIntValues<unsigned long>(v8, v9, a2, 1);
  return 1;
}

uint64_t mlir::anonymous namespace::ConvertFusionOp::getRingBufferOffsetInfo(uint64_t a1, size_t a2, uint64_t a3, void *a4)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v31 = a1;
  *(a3 + 8) = 0;
  a4[1] = 0;
  v7 = *(*(mlir::Value::getDefiningOp(&v31) + 48) + 16);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      DefiningOp = mlir::Value::getDefiningOp(&v31);
      if ((*(DefiningOp + 46) & 0x80) == 0)
      {
        v11 = 0;
        v10 = -1;
        goto LABEL_6;
      }

      v9 = *(DefiningOp + 68);
      v10 = v9 - 1;
      if (v9 != 1)
      {
        v11 = *(DefiningOp + 72);
LABEL_6:
        v12 = (v11 + 24);
        while (1)
        {
          v30 = *v12;
          if ((mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(v30) & 1) != 0 || *(*(mlir::Value::getDefiningOp(&v30) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
          {
            break;
          }

          v17 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
          if (v17)
          {
            v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          __src = v17;
          v38 = v18;
          isSplat = mlir::ElementsAttr::isSplat(&__src);
          if (!mlir::Type::isInteger(&isSplat, 32))
          {
            return 0;
          }

          __src = 0;
          v38 = 0;
          v32[0] = &__src;
          isSplat = v30;
          v19 = mlir::Value::getDefiningOp(&isSplat);
          if (!v19)
          {
            return 0;
          }

          if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v32, v19) & 1) == 0)
          {
            return 0;
          }

          SingleInt = mlir::getSingleIntValue<unsigned long long>(__src, v38);
          if ((v21 & 1) == 0)
          {
            return 0;
          }

          v22 = *(a3 + 8);
          if (v22 >= *(a3 + 12))
          {
            v23 = SingleInt;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v22 + 1, 8);
            SingleInt = v23;
            v22 = *(a3 + 8);
          }

          v16 = 0;
          *(*a3 + 8 * v22) = SingleInt;
          ++*(a3 + 8);
          v14 = a4[1];
          v15 = v14 + 1;
          if ((v14 + 1) > a4[2])
          {
            goto LABEL_24;
          }

LABEL_12:
          *(*a4 + v14) = v16;
          ++a4[1];
          v12 += 4;
          if (!--v10)
          {
            goto LABEL_32;
          }
        }

        v13 = *(a3 + 8);
        if (v13 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
          v13 = *(a3 + 8);
        }

        *(*a3 + 8 * v13) = 0;
        ++*(a3 + 8);
        v14 = a4[1];
        v15 = v14 + 1;
        v16 = 1;
        if ((v14 + 1) <= a4[2])
        {
          goto LABEL_12;
        }

LABEL_24:
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v15, 1);
        v14 = a4[1];
        goto LABEL_12;
      }

LABEL_32:
      LODWORD(v26) = *(a3 + 8);
      goto LABEL_34;
    }

    return 0;
  }

  if ((mlir::matchConstantWithIntVector<unsigned long long>(v31, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    v24 = 0;
    v25 = a4[1];
    do
    {
      if ((v25 + 1) > a4[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v25 + 1, 1);
        v25 = a4[1];
      }

      *(*a4 + v25) = 0;
      v25 = a4[1] + 1;
      a4[1] = v25;
      ++v24;
      v26 = *(a3 + 8);
    }

    while (v24 < v26);
  }

  else
  {
    LODWORD(v26) = 0;
  }

LABEL_34:
  v27 = v26;
  if (v26 < a2)
  {
    __src = v39;
    HIDWORD(v38) = 6;
    if (a2 <= 6)
    {
      bzero(v39, 8 * a2);
      LODWORD(v38) = a2;
      isSplat = v36;
      *__len = xmmword_1A75D9A70;
    }

    else
    {
      LODWORD(v38) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v39, a2, 8);
      bzero(__src, 8 * a2);
      LODWORD(v38) = a2;
      isSplat = v36;
      *__len = xmmword_1A75D9A70;
      if (a2 >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&isSplat, v36, a2, 1);
        v28 = isSplat;
        goto LABEL_40;
      }
    }

    v28 = v36;
LABEL_40:
    bzero(v28, a2);
    __len[0] = a2;
    v32[0] = &v33;
    v32[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v27, v32);
  }

  return 1;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferWriterENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps16AssignVariableOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
    {
      result = 0;
      ***a1 = a2;
    }
  }

  return result;
}

float mlir::getIntValues<unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v102[5] = *MEMORY[0x1E69E9840];
  *&v97 = a1;
  *(&v97 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v97) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v97, *(&v97 + 1));
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), NumElements, 8);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  v8 = *a3;
  v100 = v97;
  Type = mlir::ElementsAttr::getType(&v100);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v99[0] = v10;
  v99[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v99);
  v11 = mlir::ElementsAttr::isSplat(&v100);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v100);
  v14 = v13;
  if (!v11 || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v100, *(&v100 + 1));
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_31;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      if (v16 >= 2)
      {
        v22 = 0;
        v21 = v16 & 0x7FFFFFFFFFFFFFFELL;
        v23 = v8 + 1;
        do
        {
          if (v11)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v11)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          v26 = *&ElementsAttrRawData[2 * v25];
          *(v23 - 1) = *&ElementsAttrRawData[2 * v24];
          *v23 = v26;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_208;
      }

      goto LABEL_40;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_57;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_64;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_80;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_96;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_128;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_144;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_160;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_175;
    }

LABEL_177:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v11)
      {
        v71 = 1;
      }

      else
      {
        v71 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v101, v71);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v101[0], v101[1]);
      v72 = v101[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (v11)
          {
            v74 = 0;
          }

          else
          {
            v74 = i;
          }

          v8[i] = v72[v74];
        }
      }

      if (v72 != v102)
      {
        free(v72);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v14, v8, v16, IntOrFloatBitWidth);
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_20:
    for (j = 0; j != v16; ++j)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      v8[j] = ElementsAttrRawData[v18];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_31:
    for (k = 0; k != v16; ++k)
    {
      if (v11)
      {
        v20 = 0;
      }

      else
      {
        v20 = k;
      }

      v8[k] = ElementsAttrRawData[v20];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_40:
    v21 = 0;
    do
    {
      if (v11)
      {
        v86 = 0;
      }

      else
      {
        v86 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v86];
LABEL_208:
      ;
    }

    while (v16 != v21);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_57:
    if (v16 >= 2)
    {
      v29 = 0;
      v27 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v30 = v8 + 1;
      do
      {
        if (v11)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if (v11)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29 + 1;
        }

        v33 = *&ElementsAttrRawData[2 * v32];
        *(v30 - 1) = *&ElementsAttrRawData[2 * v31];
        *v30 = v33;
        v30 += 2;
        v29 += 2;
      }

      while (v29 != v27);
      goto LABEL_213;
    }

    v27 = 0;
    do
    {
      if (v11)
      {
        v87 = 0;
      }

      else
      {
        v87 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v87];
LABEL_213:
      ;
    }

    while (v16 != v27);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_64:
    if (v16 >= 2)
    {
      v35 = 0;
      v28 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v36 = v8 + 1;
      do
      {
        if (v11)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (v11)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 + 1;
        }

        v39 = *&ElementsAttrRawData[4 * v38];
        *(v36 - 1) = *&ElementsAttrRawData[4 * v37];
        *v36 = v39;
        v36 += 2;
        v35 += 2;
      }

      while (v35 != v28);
      goto LABEL_218;
    }

    v28 = 0;
    do
    {
      if (v11)
      {
        v88 = 0;
      }

      else
      {
        v88 = v28;
      }

      v8[v28++] = *&ElementsAttrRawData[4 * v88];
LABEL_218:
      ;
    }

    while (v16 != v28);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_80:
    if (v16 >= 2)
    {
      v41 = 0;
      v34 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v42 = v8 + 1;
      do
      {
        if (v11)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        if (v11)
        {
          v44 = 0;
        }

        else
        {
          v44 = v41 + 1;
        }

        v45 = *&ElementsAttrRawData[4 * v44];
        *(v42 - 1) = *&ElementsAttrRawData[4 * v43];
        *v42 = v45;
        v42 += 2;
        v41 += 2;
      }

      while (v41 != v34);
      goto LABEL_223;
    }

    v34 = 0;
    do
    {
      if (v11)
      {
        v89 = 0;
      }

      else
      {
        v89 = v34;
      }

      v8[v34++] = *&ElementsAttrRawData[4 * v89];
LABEL_223:
      ;
    }

    while (v16 != v34);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_96:
    if (v16 >= 2)
    {
      v47 = 0;
      v40 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v48 = v8 + 1;
      do
      {
        if (v11)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        if (v11)
        {
          v50 = 0;
        }

        else
        {
          v50 = v47 + 1;
        }

        v51 = *&ElementsAttrRawData[8 * v50];
        *(v48 - 1) = *&ElementsAttrRawData[8 * v49];
        *v48 = v51;
        v48 += 2;
        v47 += 2;
      }

      while (v47 != v40);
      goto LABEL_228;
    }

    v40 = 0;
    do
    {
      if (v11)
      {
        v90 = 0;
      }

      else
      {
        v90 = v40;
      }

      v8[v40++] = *&ElementsAttrRawData[8 * v90];
LABEL_228:
      ;
    }

    while (v16 != v40);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_112:
    if (v16 >= 2)
    {
      v53 = 0;
      v46 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v54 = v8 + 1;
      do
      {
        if (v11)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if (v11)
        {
          v56 = 0;
        }

        else
        {
          v56 = v53 + 1;
        }

        v57 = *&ElementsAttrRawData[8 * v56];
        *(v54 - 1) = *&ElementsAttrRawData[8 * v55];
        *v54 = v57;
        v54 += 2;
        v53 += 2;
      }

      while (v53 != v46);
      goto LABEL_233;
    }

    v46 = 0;
    do
    {
      if (v11)
      {
        v91 = 0;
      }

      else
      {
        v91 = v46;
      }

      v8[v46++] = *&ElementsAttrRawData[8 * v91];
LABEL_233:
      ;
    }

    while (v16 != v46);
    return *&v15;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    v16 = 1;
LABEL_128:
    if (v16 >= 2)
    {
      v59 = 0;
      v52 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v60 = v8 + 1;
      do
      {
        if (v11)
        {
          v61 = 0;
        }

        else
        {
          v61 = v59;
        }

        if (v11)
        {
          v62 = 0;
        }

        else
        {
          v62 = v59 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v61];
        v63 = *&ElementsAttrRawData[2 * v62];
        *(v60 - 1) = *&v15;
        *v60 = v63;
        v60 += 2;
        v59 += 2;
      }

      while (v59 != v52);
      goto LABEL_238;
    }

    v52 = 0;
    do
    {
      if (v11)
      {
        v92 = 0;
      }

      else
      {
        v92 = v52;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v92];
      v8[v52++] = *&v15;
LABEL_238:
      ;
    }

    while (v16 != v52);
    return *&v15;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    v16 = 1;
LABEL_144:
    if (v16 >= 2)
    {
      v65 = 0;
      v58 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v66 = v8 + 1;
      do
      {
        if (v11)
        {
          v67 = 0;
        }

        else
        {
          v67 = v65;
        }

        if (v11)
        {
          v68 = 0;
        }

        else
        {
          v68 = v65 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v67];
        v69 = *&ElementsAttrRawData[4 * v68];
        *(v66 - 1) = *&v15;
        *v66 = v69;
        v66 += 2;
        v65 += 2;
      }

      while (v65 != v58);
      goto LABEL_243;
    }

    v58 = 0;
    do
    {
      if (v11)
      {
        v93 = 0;
      }

      else
      {
        v93 = v58;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v93];
      v8[v58++] = *&v15;
LABEL_243:
      ;
    }

    while (v16 != v58);
    return *&v15;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    v16 = 1;
LABEL_160:
    if (v16 >= 2)
    {
      v75 = 0;
      v64 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v76 = v8 + 1;
      do
      {
        if (v11)
        {
          v77 = 0;
        }

        else
        {
          v77 = v75;
        }

        if (v11)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v77];
        v79 = *&ElementsAttrRawData[8 * v78];
        *(v76 - 1) = v15;
        *v76 = v79;
        v76 += 2;
        v75 += 2;
      }

      while (v75 != v64);
      goto LABEL_248;
    }

    v64 = 0;
    do
    {
      if (v11)
      {
        v94 = 0;
      }

      else
      {
        v94 = v64;
      }

      v15 = *&ElementsAttrRawData[8 * v94];
      v8[v64++] = v15;
LABEL_248:
      ;
    }

    while (v16 != v64);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_177;
  }

LABEL_175:
  if (v16 >= 2)
  {
    v81 = 0;
    v70 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v82 = v8 + 1;
    do
    {
      if (v11)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      if (v11)
      {
        v84 = 0;
      }

      else
      {
        v84 = v81 + 1;
      }

      LODWORD(v15) = *&ElementsAttrRawData[2 * v83] << 16;
      v85 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v84] << 16);
      *(v82 - 1) = *&v15;
      *v82 = v85;
      v82 += 2;
      v81 += 2;
    }

    while (v81 != v70);
    goto LABEL_253;
  }

  v70 = 0;
  do
  {
    if (v11)
    {
      v95 = 0;
    }

    else
    {
      v95 = v70;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v95] << 16;
    v8[v70++] = *&v15;
LABEL_253:
    ;
  }

  while (v16 != v70);
  return *&v15;
}

unint64_t mlir::getSingleIntValue<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10[0] = mlir::ElementsAttr::getShapedType(&v11);
  v10[1] = v2;
  Shape = mlir::ShapedType::getShape(v10);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && (v9[0] = mlir::ElementsAttr::getShapedType(&v11), v9[1] = v5, *(*mlir::ElementsAttr::isSplat(v9) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    v9[0] = 0;
    mlir::copyElementsAttrData<unsigned long long>(v11, v12, v9, 1);
    v7 = v9[0] & 0xFFFFFFFFFFFFFF00;
    v6 = LOBYTE(v9[0]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::RingBufferWriter::build(a1, v23, *a3, *a4, *a5, *a6, *a7, a7[1]);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
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

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferReaderENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps14StridedSliceOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    ***a1 = a2;
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(v26, v25, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v17);
  mlir::anec::RingBufferReader::build(a1, v26, *a3, *a4, *a5, *a6, *a7, v19, *a8, *(a8 + 8));
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

ZinIrHalH13g *mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a1 + 8), *(a2 + 24), a3, a4, a5, a6);
  (*(*a1 + 8))(a1, a2, v8);
  return v8;
}

void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToTensorBuffer(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)::$_0>(void **result, uint64_t a2)
{
  v2 = *(*(a2 + 48) + 16);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id)
    {
      return result;
    }

    ++result;
  }

  **result = a2;
  return result;
}

uint64_t mlir::getValues<unsigned long>(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v14, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v16);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v12, a1, NumElements); v15 != v13; ++v15)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v14, &v10);
    v6 = v11;
    v7 = v10;
    if (v11 < 0x41)
    {
      v7 = &v10;
    }

    v8 = *v7;
    v9 = *(a2 + 8);
    if (v9 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v8);
      if (v11 >= 0x41)
      {
LABEL_9:
        result = v10;
        if (v10)
        {
          result = MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(*a2 + 8 * v9) = v8;
      *(a2 + 8) = v9 + 1;
      if (v6 >= 0x41)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::TensorBufferToTensor::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::TensorBufferToTensor::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id)
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

BOOL mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToQuantizedConv(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)const::$_1::operator()(mlir::ShapedType **a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  mlir::ShapedType::getShape(v17);
  if (v4 < 2)
  {
    return 1;
  }

  mlir::ShapedType::getShape(v17);
  v7 = v6;
  mlir::ShapedType::getShape(*a1);
  if (v7 == v8)
  {
    if (mlir::mps::Conv3DOp::getWeightsLayout(a1[1]) == 2)
    {
      Shape = mlir::ShapedType::getShape(v17);
      NumElements = mlir::ShapedType::getNumElements(Shape, v10);
      v12 = mlir::ShapedType::getShape(v17);
      return NumElements == *v12;
    }

    if (mlir::mps::Conv3DOp::getWeightsLayout(a1[1]) == 3)
    {
      v13 = mlir::ShapedType::getShape(v17);
      NumElements = mlir::ShapedType::getNumElements(v13, v14);
      v15 = mlir::ShapedType::getShape(v17);
      v12 = (v15 + 8 * v16 - 8);
      return NumElements == *v12;
    }
  }

  return 0;
}

void ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp30convertFusionOpToQuantizedConvENS1_4mpsx8FusionOpENSD_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps8Conv2DOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(void ***result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
    {
      ***result = a2;
    }
  }

  return result;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::Sigmoid>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A138E8;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F090FC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::SigmoidOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::Sigmoid>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::HighPrecisionSigmoid>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13958;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F09D70()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::HighPrecisionSigmoid>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
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

void mlir::anonymous namespace::RegionReturnTypeConversion::~RegionReturnTypeConversion(mlir::_anonymous_namespace_::RegionReturnTypeConversion *this)
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

uint64_t mlir::OpConversionPattern<mlir::anec::RegionReturn>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::anec::RegionReturn>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::RegionReturnTypeConversion::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  (*(*a4 + 40))(a4);
  mlir::Operation::setOperands(a2, *(a3 + 40), *(a3 + 48));
  (*(*a4 + 48))(a4, a2);
  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LeakyReluOp,mlir::anec::LeakyRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13A30;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0A80C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::LeakyReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LeakyReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LeakyReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LeakyReluOp,mlir::anec::LeakyRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ClampOp,mlir::anec::ClampedRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13AA0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0B480()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ClampOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ClampOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ClampOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ClampOp,mlir::anec::ClampedRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NReluOp,mlir::anec::NRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13B10;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0C0F4()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::NReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NReluOp,mlir::anec::NRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::PReluOp,mlir::anec::LeakyRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13B80;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0CD68()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::PReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::PReluOp,mlir::anec::LeakyRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::Relu6Op,mlir::anec::NRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13BF0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0D8D8()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::Relu6Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Relu6Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Relu6Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::Relu6Op,mlir::anec::NRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalOp,mlir::anec::Invert>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13C60;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0E448()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReciprocalOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalOp,mlir::anec::Invert>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Invert,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalSquareRootOp,mlir::anec::Rsqrt>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13CD0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0F0BC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalSquareRootOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalSquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReciprocalSquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalSquareRootOp,mlir::anec::Rsqrt>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v72[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v71[0] = v72;
  v71[1] = 0x400000000;
  v72[8] = 4;
  v67 = 0;
  v68 = v70;
  v69 = 0x400000000;
  v65 = 0;
  v66 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v66, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v59 = &v61;
      v60 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v59);
      v19 = matched & (v60 == 1);
      if (!v19)
      {
        operator new();
      }

      v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
      v21 = llvm::APFloatBase::IEEEsingle(v20);
      llvm::APFloat::Storage::Storage(&v64, v62, v21);
      llvm::detail::IEEEFloat::~IEEEFloat(v62);
      v23 = llvm::APFloatBase::IEEEhalf(v22);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v23, 1u, v62);
      v25 = v11 + 32 * v12;
      v28 = *(v25 + 8);
      v26 = v25 + 8;
      v27 = v28;
      v29 = *(v26 + 23);
      if (v29 >= 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = *(v26 + 8);
      if (v29 >= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

      F16Type = mlir::Builder::getF16Type(a4 + 1, v24);
      FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
      v35 = mlir::NamedAttrList::set(v71, v30, v32, FloatAttr);
      v36 = v64;
      if (llvm::APFloatBase::PPCDoubleDouble(v35) == v36)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_44;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_28;
      }
    }

    v38 = 1;
    while (v13 != -1)
    {
      v39 = v12 + v38++;
      v12 = v39 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v69;
    if (v69 >= HIDWORD(v69))
    {
      v37 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v69 + 1, 8);
      a1 = v37;
      v14 = v69;
    }

    *(v68 + v14) = a1;
    LODWORD(v69) = v69 + 1;
    goto LABEL_4;
  }

LABEL_28:
  v40 = *(v5 + 34);
  if (v40)
  {
    v41 = *(v5 + 16);
    v42 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v43 = v41 + 32;
    v44 = 56 * v40;
    do
    {
      v45 = (v43 - 24);
      if (v42 == *(v43 - 24))
      {
        v46 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v64, v45);
      }

      else
      {
        v46 = llvm::detail::IEEEFloat::IEEEFloat(&v64, v45);
      }

      v47 = llvm::APFloatBase::IEEEhalf(v46);
      LOBYTE(v62[0]) = 0;
      llvm::APFloat::convert(&__p, v47, 1u, v62);
      v49 = *(v43 + 23);
      if (v49 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *v43;
      }

      if (v49 >= 0)
      {
        v51 = *(v43 + 23);
      }

      else
      {
        v51 = *(v43 + 8);
      }

      v52 = mlir::Builder::getF16Type(a4 + 1, v48);
      v53 = mlir::Builder::getFloatAttr((a4 + 1), v52, &__p);
      mlir::NamedAttrList::append(v71, v50, v51, v53);
      if (v42 == v64)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v64);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v64);
      }

      v43 += 56;
      v44 -= 56;
    }

    while (v44);
  }

  mlir::ValueRange::ValueRange(&__p, v68, v69);
  v54 = mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
  (*(*a4 + 1))(a4, a2, v54);
  v55 = 1;
LABEL_44:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71[0] != v72)
  {
    free(v71[0]);
  }

  return v55;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LogarithmBase2Op,mlir::anec::Log2>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13D40;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6F0FD30()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmBase2Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LogarithmBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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