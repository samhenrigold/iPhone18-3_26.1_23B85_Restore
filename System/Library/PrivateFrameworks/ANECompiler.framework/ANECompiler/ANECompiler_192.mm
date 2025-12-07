uint64_t mlir::OpConversionPattern<mlir::mps::PowerOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::PowerOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PowerOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwisePower,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v35;
  v33 = v35;
  v34 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v6, 8);
    v9 = v34;
    v8 = v33;
    v38 = v7;
    goto LABEL_4;
  }

  v9 = 0;
  v38 = v7;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; *(&v38 + 1) = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&v38, i);
      i = *(&v38 + 1) + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v38, 1);
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
  {
    v17 = a4;
    v18 = a2;
    v19 = v13;
    v20 = 0;
    v21 = v14;
    goto LABEL_12;
  }

  {
    v37 = 1;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v22);
    v24 = mlir::RankedTensorType::get(&v37, 1, F16Type, 0);
    v30[0] = mlir::createSplatF16ElementsAttr(v24, -1.0);
    v30[1] = v25;
    v26 = *(a2 + 24);
    v36 = 1;
    v27 = mlir::Builder::getF16Type(a4 + 1, v25);
    v37 = mlir::MemRefType::get(&v36, 1, v27, 0, 0, 0);
    v20 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v26, &v37, v30) - 16);
    v17 = a4;
    v18 = a2;
    v19 = v14;
    v21 = v13;
LABEL_12:
  }

  v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>((a4 + 1), *(a2 + 24), &v33);
  (*(*a4 + 1))(a4, a2, v28);
  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v24;
  v22 = v24;
  v23 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v25 = v7;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v6, 8);
    v9 = v23;
    v8 = v22;
    v25 = v7;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; *(&v25 + 1) = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v25, i);
    i = *(&v25 + 1) + 1;
  }

  v12 = v23;
LABEL_7:
  LODWORD(v23) = v12 + v6;
  mlir::ValueRange::ValueRange(&v21, v22, v23);
  v25 = v21;
  v13 = mlir::ValueRange::dereference_iterator(&v25, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v25, 1);
  {
    v15 = a4;
    v16 = a2;
    v17 = v13;
    v18 = v14;
    goto LABEL_11;
  }

  {
    v15 = a4;
    v16 = a2;
    v17 = v14;
    v18 = v13;
LABEL_11:
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v22);
  (*(*a4 + 8))(a4, a2, v19);
  if (v22 != v24)
  {
    free(v22);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v35;
  v33 = v35;
  v34 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v6, 8);
    v9 = v34;
    v8 = v33;
    v38 = v7;
    goto LABEL_4;
  }

  v9 = 0;
  v38 = v7;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; *(&v38 + 1) = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&v38, i);
      i = *(&v38 + 1) + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(&v38, 1);
  if (*(a2 + 36))
  {
    v15 = a2 - 16;
  }

  else
  {
    v15 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(NextResultAtOffset);
  {
    v17 = a4;
    v18 = a2;
    v19 = v13;
    v20 = 0;
    v21 = v14;
    goto LABEL_12;
  }

  {
    v37 = 1;
    F16Type = mlir::Builder::getF16Type(a4 + 1, v22);
    v24 = mlir::RankedTensorType::get(&v37, 1, F16Type, 0);
    v30[0] = mlir::createSplatF16ElementsAttr(v24, -1.0);
    v30[1] = v25;
    v26 = *(a2 + 24);
    v36 = 1;
    v27 = mlir::Builder::getF16Type(a4 + 1, v25);
    v37 = mlir::MemRefType::get(&v36, 1, v27, 0, 0, 0);
    v20 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v26, &v37, v30) - 16);
    v17 = a4;
    v18 = a2;
    v19 = v14;
    v21 = v13;
LABEL_12:
  }

  v28 = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>((a4 + 1), *(a2 + 24), &v33);
  (*(*a4 + 1))(a4, a2, v28);
  if (v33 != v35)
  {
    free(v33);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Minus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::~ConvertElementwiseBinaryA14Minus(void *a1)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v17;
  v15 = v17;
  v16 = 0x200000000;
  if (v6 < 3)
  {
    v9 = 0;
    v18 = v7;
    v19 = 0;
    if (!v6)
    {
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v6, 8);
    v9 = v16;
    v8 = v15;
    v18 = v7;
    v19 = 0;
  }

  v10 = &v8[8 * v9];
  for (i = 0; i != v6; v19 = i)
  {
    *v10++ = mlir::ValueRange::dereference_iterator(&v18, i);
    i = v19 + 1;
  }

  v12 = v16;
LABEL_7:
  LODWORD(v16) = v12 + v6;
  mlir::ValueRange::ValueRange(&v18, v15, v16);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwisePower,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::AbsoluteOp,mlir::anec::ElementwiseAbs>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0E0F8;
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

void *sub_1A6E95590()
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

uint64_t mlir::OpConversionPattern<mlir::mps::AbsoluteOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::AbsoluteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::AbsoluteOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::AbsoluteOp,mlir::anec::ElementwiseAbs>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

uint64_t llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::DenseMap<std::pair<unsigned int,std::string> const*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*a3 - *a2) >> 5;
  if (!v6)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_12;
  }

  v7 = (4 * v6 / 3u + 1) | ((4 * v6 / 3u + 1) >> 1);
  v8 = v7 | (v7 >> 2) | ((v7 | (v7 >> 2)) >> 4);
  LODWORD(v8) = (((v8 | (v8 >> 8)) >> 16) | v8 | (v8 >> 8)) + 1;
  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = (v10 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v14 = buffer;
LABEL_10:
    v17 = &buffer[8 * v10];
    do
    {
      *v14 = -1;
      v14 += 8;
    }

    while (v14 != v17);
    goto LABEL_12;
  }

  v12 = v11 + 1;
  v13 = (v11 + 1) & 0xFFFFFFFFFFFFFFELL;
  v14 = &buffer[8 * v13];
  v15 = buffer + 8;
  v16 = v13;
  do
  {
    *(v15 - 8) = -1;
    *v15 = -1;
    v15 += 16;
    v16 -= 2;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = *a2;
  v19 = *a3;
  if (v18 != v19)
  {
    while (1)
    {
      v24 = *(a1 + 16);
      if (!v24)
      {
        break;
      }

      v20 = v24 - 1;
      v21 = (37 * *v18) & v20;
      v22 = (*a1 + 32 * v21);
      v23 = *v22;
      if (*v18 != *v22)
      {
        v26 = 0;
        v27 = 1;
        while (v23 != -1)
        {
          if (v26)
          {
            v28 = 0;
          }

          else
          {
            v28 = v23 == -2;
          }

          if (v28)
          {
            v26 = v22;
          }

          v29 = v21 + v27++;
          v21 = v29 & v20;
          v22 = (*a1 + 32 * v21);
          v23 = *v22;
          if (*v18 == *v22)
          {
            goto LABEL_15;
          }
        }

        if (v26)
        {
          v25 = v26;
        }

        else
        {
          v25 = v22;
        }

        goto LABEL_18;
      }

LABEL_15:
      v18 += 32;
      if (v18 == v19)
      {
        return a1;
      }
    }

    v25 = 0;
LABEL_18:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::InsertIntoBucket<unsigned int const&,std::string const&>(a1, v25, v18, (v18 + 8));
    goto LABEL_15;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::InsertIntoBucket<unsigned int const&,std::string const&>(uint64_t *a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  v4 = a2;
  v13 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v10 = a3;
    v11 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      goto LABEL_3;
    }

    v10 = a3;
    v11 = a4;
  }

  v12 = a1;
  llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::LookupBucketFor<unsigned int>(v12, v10, &v13);
  a1 = v12;
  a3 = v10;
  v5 = *(v12 + 2);
  v4 = v13;
  a4 = v11;
LABEL_3:
  *(a1 + 2) = v5 + 1;
  if (*v4 != -1)
  {
    --*(a1 + 3);
  }

  *v4 = *a3;
  v7 = (v4 + 8);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(v4 + 24) = *(a4 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  return v4;
}

_DWORD *llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[8 * v14];
      v16 = result + 8;
      v17 = v14;
      do
      {
        *(v16 - 8) = -1;
        *v16 = -1;
        v16 += 16;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[8 * v11];
    do
    {
      *v15 = -1;
      v15 += 8;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::moveFromOldBuckets(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0xFFFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -1;
        *v12 = -1;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -1;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if (*v4 <= 0xFFFFFFFD)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & (37 * v15);
        v18 = *a1 + 32 * v17;
        v19 = *v18;
        if (v15 != *v18)
        {
          v21 = 0;
          v22 = 1;
          while (v19 != -1)
          {
            if (v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v19 == -2;
            }

            if (v23)
            {
              v21 = v18;
            }

            v24 = v17 + v22++;
            v17 = v24 & v16;
            v18 = *a1 + 32 * v17;
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v21)
          {
            v18 = v21;
          }
        }

LABEL_15:
        *v18 = v15;
        v20 = *(v4 + 2);
        *(v18 + 24) = *(v4 + 3);
        *(v18 + 8) = v20;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        *(v4 + 1) = 0;
        ++*(a1 + 8);
        if (*(v4 + 31) < 0)
        {
          operator delete(*(v4 + 1));
        }
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void llvm::SmallVectorImpl<std::pair<llvm::APFloat,std::string>>::append<std::pair<llvm::APFloat,std::string> const*,void>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 3);
  v7 = a1[2];
  if (v6 + v7 > a1[3])
  {
    v19 = 0;
    v8 = a1 + 4;
    v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v6 + v7, 56, &v19);
    llvm::SmallVectorTemplateBase<std::pair<llvm::APFloat,std::string>,false>::moveElementsForGrow(v5, v9);
    v10 = v19;
    a1 = *v5;
    if (*v5 != v8)
    {
      free(a1);
    }

    *v5 = v9;
    v5[3] = v10;
    LODWORD(v7) = v5[2];
  }

  if (a2 != a3)
  {
    v11 = *v5 + 56 * v7;
    v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v13 = 0;
    do
    {
      v14 = (a2 + v13 + 8);
      v15 = (v11 + v13 + 8);
      if (v12 == *v14)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v15, v14);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v15, v14);
      }

      v16 = v11 + v13;
      v17 = a2 + v13;
      if (*(a2 + v13 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v16 + 32), *(v17 + 32), *(v17 + 40));
      }

      else
      {
        v18 = *(v17 + 32);
        *(v16 + 48) = *(v17 + 48);
        *(v16 + 32) = v18;
      }

      v13 += 56;
    }

    while (a2 + v13 != a3);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + v6;
}

void llvm::SmallVectorTemplateBase<std::pair<llvm::APFloat,std::string>,false>::moveElementsForGrow(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = *a1;
    v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v7 = a2 + 32;
    v8 = 56 * v2;
    v9 = (v5 + 32);
    do
    {
      v11 = (v7 - 24);
      v12 = (v9 - 24);
      if (v6 == *(v9 - 3))
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v12);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
      }

      v10 = *v9;
      *(v7 + 16) = *(v9 + 2);
      *v7 = v10;
      v7 += 56;
      *(v9 + 1) = 0;
      *(v9 + 2) = 0;
      *v9 = 0;
      v9 = (v9 + 56);
      v8 -= 56;
    }

    while (v8);
    v13 = *(a1 + 2);
    if (v13)
    {
      v14 = -56 * v13;
      v15 = *a1 + 56 * v13 - 48;
      do
      {
        if (*(v15 + 47) < 0)
        {
          operator delete(*(v15 + 24));
        }

        if (v6 == *v15)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v15);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v15);
        }

        v15 -= 56;
        v14 += 56;
      }

      while (v14);
    }
  }
}

uint64_t mlir::matchConstantWithFloatVector<float>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  if (!a1)
  {
    return 0;
  }

  v22 = &v23;
  v25 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v25);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v22, DefiningOp))
  {
    return 0;
  }

  v21[0] = mlir::ElementsAttr::getShapedType(&v23);
  v21[1] = v4;
  v5 = *(*mlir::ElementsAttr::isSplat(v21) + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v7 = v6 || v5 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v8 = v7 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v9 = v8 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v10 = v9 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v11 = v10 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v12 = v11 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = v12 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v14 = v13 || v5 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v15 = v14 || v5 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v16 = v15 || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v17 = v16 || v5 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v18 = v17 || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v19 = v18 || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (!v19 && v5 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<float>(v23, v24, a2, 1);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAbs,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAbs,void>::id)
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

void mlir::anonymous namespace::ConvertExponent::~ConvertExponent(mlir::_anonymous_namespace_::ConvertExponent *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExponentOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertExponent::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, mlir::Float16Type **a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = *(a3 + 40);
  v25 = mlir::ValueRange::dereference_iterator(&v26, 0);
  v6 = (*(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v8 = *(a2 + 3);
  Shape = mlir::ShapedType::getShape(v24);
  v11 = v10;
  F16Type = mlir::Builder::getF16Type(a4 + 1, v10);
  v23 = mlir::MemRefType::get(Shape, v11, F16Type, 0, 0, 0);
  v13 = mlir::ShapedType::getShape(v24);
  v15 = v14;
  v16 = mlir::Builder::getF16Type(a4 + 1, v14);
  v17 = mlir::RankedTensorType::get(v13, v15, v16, 0);
  v22[0] = mlir::createSplatF16ElementsAttr(v17, 1.4427);
  v22[1] = v18;
  v21 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v8, &v23, v22);
  v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 1), v8, &v25, &v21);
  v19 = mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>((a4 + 1), v8, &v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v19);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(mlir::OpBuilder *a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3 - 16);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
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

void mlir::anonymous namespace::ConvertLogarithm::~ConvertLogarithm(mlir::_anonymous_namespace_::ConvertLogarithm *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LogarithmOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertLogarithm::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29 = *(a3 + 40);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v28[0] = v7;
  v28[1] = v8;
  v9 = *(a2 + 24);
  Shape = mlir::ShapedType::getShape(v28);
  v12 = v11;
  F16Type = mlir::Builder::getF16Type(a4 + 1, v11);
  v27 = mlir::MemRefType::get(Shape, v12, F16Type, 0, 0, 0);
  v14 = mlir::ShapedType::getShape(v28);
  v16 = v15;
  v17 = mlir::Builder::getF16Type(a4 + 1, v15);
  v18 = mlir::RankedTensorType::get(v14, v16, v17, 0);
  v26[0] = mlir::createSplatF16ElementsAttr(v18, 0.69315);
  v26[1] = v19;
  v25 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v9, &v27, v26);
  v30[0] = *(a3 + 40);
  v30[1] = 0;
  v24 = mlir::ValueRange::dereference_iterator(v30, 0);
  F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, 0.0, v20);
  v30[0] = mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>((a4 + 1), v9, &v24, &F16FloatAttr);
  v21 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::anec::Log2 &,mlir::mps::ConstantOp &>((a4 + 1), *(a2 + 24), v30, &v25);
  (*(*a4 + 1))(a4, a2, v21);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Invert::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::anec::Log2 &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

void mlir::anonymous namespace::ConvertSelect::~ConvertSelect(mlir::_anonymous_namespace_::ConvertSelect *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SelectOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SelectOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertSelect::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v8 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, v7, &v19);
  v9 = *(a2 + 24);
  v10 = *(a3 + 40);
  v18 = v8 - 16;
  v19 = v10;
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v17 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>((a4 + 1), v9, &v19) - 16;
  v11 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 1;
  v19 = mlir::ValueRange::offset_base(&v19, 1);
  v20 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v16 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 1), v11, &v19, &v18);
  v12 = *(a2 + 24);
  v19 = *(a3 + 40);
  v20 = 2;
  v19 = mlir::ValueRange::offset_base(&v19, 2);
  v20 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v19, 0);
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 1), v12, &v15, &v17);
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseMult &,mlir::anec::ElementwiseMult &>((a4 + 1), *(a2 + 24), &v16, &v19);
  ((*a4)[1])(a4, a2, v13);
  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqualZero,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::anec::ElementwiseMult &,mlir::anec::ElementwiseMult &>(mlir::OpBuilder *a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void mlir::anonymous namespace::ConvertFlatten2D::~ConvertFlatten2D(mlir::_anonymous_namespace_::ConvertFlatten2D *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Flatten2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Flatten2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Flatten2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

float mlir::anonymous namespace::ConvertFlatten2D::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v57 = *(a3 + 40);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v52 = v7;
  v53 = v8;
  v9 = *(v6 + 56);
  mlir::ShapedType::getShape(&v52);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v9, v10, *(a2 + 24), 1);
  if ((v12 & 1) == 0)
  {
    LOBYTE(v54[0]) = 0;
    v56 = 0;
    goto LABEL_35;
  }

  RankPromotionTypeForANE = v66;
  v65 = 0x100000000;
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

  v15 = 1;
  mlir::getIntValues<long long>(SortedUniquePromotedPositiveAxesAttr, v14, &RankPromotionTypeForANE, 1);
  mlir::getRankPromotionShapeForANE(v52, v53, 0, &__p);
  v58 = v60;
  HIDWORD(v59) = 2;
  v16 = *RankPromotionTypeForANE;
  if (*RankPromotionTypeForANE)
  {
    v17 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = __p + 8 * v19;
      v21 = __p + 8;
      v22 = 1;
      v23 = v19;
      v24 = 1;
      do
      {
        v22 *= *(v21 - 1);
        v24 *= *v21;
        v21 += 2;
        v23 -= 2;
      }

      while (v23);
      v15 = v24 * v22;
      if (v18 == v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = 1;
      v20 = __p;
    }

    v25 = __p + 8 * v16;
    do
    {
      v26 = *v20;
      v20 += 8;
      v15 *= v26;
    }

    while (v20 != v25);
  }

LABEL_18:
  v60[0] = v15;
  v27 = *RankPromotionTypeForANE;
  if (*RankPromotionTypeForANE == v62)
  {
    v28 = 1;
    goto LABEL_26;
  }

  v29 = 8 * v27;
  v30 = (__p + 8 * v27);
  v31 = 8 * v62 - 8 - v29;
  if (!v31)
  {
    v28 = 1;
    do
    {
LABEL_25:
      v37 = *v30++;
      v28 *= v37;
    }

    while (v30 != (__p + 8 * v62));
    goto LABEL_26;
  }

  v32 = (v31 >> 3) + 1;
  v30 += v32 & 0x3FFFFFFFFFFFFFFELL;
  v33 = __p + v29 + 8;
  v34 = 1;
  v35 = v32 & 0x3FFFFFFFFFFFFFFELL;
  v36 = 1;
  do
  {
    v34 *= *(v33 - 1);
    v36 *= *v33;
    v33 += 2;
    v35 -= 2;
  }

  while (v35);
  v28 = v36 * v34;
  if (v32 != (v32 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_25;
  }

LABEL_26:
  v60[1] = v28;
  LODWORD(v59) = 2;
  v54[0] = v55;
  v54[1] = 0x200000000;
  llvm::SmallVectorImpl<mlir::Value>::operator=(v54, &v58);
  v56 = 1;
  if (v58 != v60)
  {
    free(v58);
  }

  if (__p != v63)
  {
    free(__p);
  }

  if (RankPromotionTypeForANE != v66)
  {
    free(RankPromotionTypeForANE);
  }

  if ((v56 & 1) == 0)
  {
LABEL_35:
    operator new();
  }

  v38 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v38)
  {
    v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  v58 = v38;
  v59 = v39;
  if (v56)
  {
    v40 = *v54[0];
    __p = v63;
    v63[0] = v40;
    v62 = 0x500000002;
    isSplat = mlir::ElementsAttr::isSplat(&v58);
    v42 = mlir::MemRefType::get(v63, 2, isSplat, 0, 0, 0);
    if (v42)
    {
      v43 = v42;
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
      v42 = v43;
    }

    else
    {
      v44 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v42, v44);
    v65 = v45;
    v52 = mlir::ValueRange::dereference_iterator(&v57, 0);
    v46 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), *(a2 + 24), &RankPromotionTypeForANE, &v52);
    (*(*a4 + 8))(a4, a2, v46);
    if (__p != v63)
    {
      free(__p);
    }

    if (v56 == 1 && v54[0] != v55)
    {
      free(v54[0]);
    }
  }

  else
  {
    v48 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::getIntValues<long long>(v48, v49, v50, v51);
  }

  return result;
}

float mlir::getIntValues<long long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92[5] = *MEMORY[0x1E69E9840];
  *&v87 = a1;
  *(&v87 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v87) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v87, *(&v87 + 1));
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
  v90 = v87;
  Type = mlir::ElementsAttr::getType(&v90);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v89[0] = v10;
  v89[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v89);
  v11 = mlir::ElementsAttr::isSplat(&v90);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v90);
  v14 = v13;
  if (!v11 || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v90, *(&v90 + 1));
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
        goto LABEL_198;
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

      goto LABEL_116;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_127;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_134;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_150;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_165;
    }

LABEL_167:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v11)
      {
        v63 = 1;
      }

      else
      {
        v63 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v91, v63);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v91[0], v91[1]);
      v64 = v91[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (v11)
          {
            v66 = 0;
          }

          else
          {
            v66 = i;
          }

          v8[i] = v64[v66];
        }
      }

      if (v64 != v92)
      {
        free(v64);
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
        v78 = 0;
      }

      else
      {
        v78 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v78];
LABEL_198:
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
      goto LABEL_203;
    }

    v27 = 0;
    do
    {
      if (v11)
      {
        v79 = 0;
      }

      else
      {
        v79 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v79];
LABEL_203:
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
      goto LABEL_208;
    }

    v28 = 0;
    do
    {
      if (v11)
      {
        v80 = 0;
      }

      else
      {
        v80 = v28;
      }

      v8[v28++] = *&ElementsAttrRawData[4 * v80];
LABEL_208:
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
      v42 = 0;
      v34 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v43 = v8 + 1;
      do
      {
        if (v11)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v11)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[4 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[4 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v34);
      goto LABEL_213;
    }

    v34 = 0;
    do
    {
      if (v11)
      {
        v81 = 0;
      }

      else
      {
        v81 = v34;
      }

      v8[v34++] = *&ElementsAttrRawData[4 * v81];
LABEL_213:
      ;
    }

    while (v16 != v34);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_96:
    for (m = 0; m != v16; ++m)
    {
      if (v11)
      {
        v41 = 0;
      }

      else
      {
        v41 = m;
      }

      v8[m] = *&ElementsAttrRawData[8 * v41];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_116:
    for (n = 0; n != v16; ++n)
    {
      if (v11)
      {
        v48 = 0;
      }

      else
      {
        v48 = n;
      }

      v8[n] = *&ElementsAttrRawData[8 * v48];
    }

    return *&v15;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    v16 = 1;
LABEL_127:
    if (v16 >= 2)
    {
      v51 = 0;
      v49 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v52 = v8 + 1;
      do
      {
        if (v11)
        {
          v53 = 0;
        }

        else
        {
          v53 = v51;
        }

        if (v11)
        {
          v54 = 0;
        }

        else
        {
          v54 = v51 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v53];
        v55 = *&ElementsAttrRawData[2 * v54];
        *(v52 - 1) = *&v15;
        *v52 = v55;
        v52 += 2;
        v51 += 2;
      }

      while (v51 != v49);
      goto LABEL_218;
    }

    v49 = 0;
    do
    {
      if (v11)
      {
        v82 = 0;
      }

      else
      {
        v82 = v49;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v82];
      v8[v49++] = *&v15;
LABEL_218:
      ;
    }

    while (v16 != v49);
    return *&v15;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    v16 = 1;
LABEL_134:
    if (v16 >= 2)
    {
      v57 = 0;
      v50 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v58 = v8 + 1;
      do
      {
        if (v11)
        {
          v59 = 0;
        }

        else
        {
          v59 = v57;
        }

        if (v11)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v59];
        v61 = *&ElementsAttrRawData[4 * v60];
        *(v58 - 1) = *&v15;
        *v58 = v61;
        v58 += 2;
        v57 += 2;
      }

      while (v57 != v50);
      goto LABEL_223;
    }

    v50 = 0;
    do
    {
      if (v11)
      {
        v83 = 0;
      }

      else
      {
        v83 = v50;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v83];
      v8[v50++] = *&v15;
LABEL_223:
      ;
    }

    while (v16 != v50);
    return *&v15;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    v16 = 1;
LABEL_150:
    if (v16 >= 2)
    {
      v67 = 0;
      v56 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v68 = v8 + 1;
      do
      {
        if (v11)
        {
          v69 = 0;
        }

        else
        {
          v69 = v67;
        }

        if (v11)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v69];
        v71 = *&ElementsAttrRawData[8 * v70];
        *(v68 - 1) = v15;
        *v68 = v71;
        v68 += 2;
        v67 += 2;
      }

      while (v67 != v56);
      goto LABEL_228;
    }

    v56 = 0;
    do
    {
      if (v11)
      {
        v84 = 0;
      }

      else
      {
        v84 = v56;
      }

      v15 = *&ElementsAttrRawData[8 * v84];
      v8[v56++] = v15;
LABEL_228:
      ;
    }

    while (v16 != v56);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_167;
  }

LABEL_165:
  if (v16 >= 2)
  {
    v73 = 0;
    v62 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v74 = v8 + 1;
    do
    {
      if (v11)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (v11)
      {
        v76 = 0;
      }

      else
      {
        v76 = v73 + 1;
      }

      LODWORD(v15) = *&ElementsAttrRawData[2 * v75] << 16;
      v77 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v76] << 16);
      *(v74 - 1) = *&v15;
      *v74 = v77;
      v74 += 2;
      v73 += 2;
    }

    while (v73 != v62);
    goto LABEL_233;
  }

  v62 = 0;
  do
  {
    if (v11)
    {
      v85 = 0;
    }

    else
    {
      v85 = v62;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v85] << 16;
    v8[v62++] = *&v15;
LABEL_233:
    ;
  }

  while (v16 != v62);
  return *&v15;
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)0>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)0>::~ConvertDivide(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)0,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 40);
  v13 = mlir::ValueRange::dereference_iterator(&v14, 0);
  v12 = mlir::ValueRange::dereference_iterator(&v14, 1);
  v6 = *(a2 + 24);
  __p = v12;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    {
      v9 = DefiningOp;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      __p = mlir::getElementTypeOrSelf(v12);
      if (mlir::Type::isF16(&__p))
      {
        __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
        v10 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v12, &__p);
        __p = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v13, &v10) - 16;
        mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
      }
    }
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::Invert::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
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

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)1>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)1>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)1,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 40);
  v13 = mlir::ValueRange::dereference_iterator(&v14, 0);
  v12 = mlir::ValueRange::dereference_iterator(&v14, 1);
  v6 = *(a2 + 24);
  __p = v12;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    {
      v9 = DefiningOp;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      __p = mlir::getElementTypeOrSelf(v12);
      if (mlir::Type::isF16(&__p))
      {
        __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
        v10 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v12, &__p);
        __p = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v13, &v10) - 16;
        mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
      }
    }
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)2>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)2>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)2,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseDiv,void>::id)
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

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)3>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)3>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)3,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)4>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)4>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)4,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)5>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)5>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)5,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)6>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)6>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)6,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)7>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivide<(mlir::anec::Family)7>::~ConvertDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)7,mlir::mps::DivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 40);
  v8 = mlir::ValueRange::dereference_iterator(&v9, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v9, 1);
  v6 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v8, &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)0>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)0>::~ConvertFloorDivide(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorDivideOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::FloorDivideOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)0,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 40);
  v14 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v12 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v15, 1);
  v6 = *(a2 + 24);
  __p = v13;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    {
      v9 = DefiningOp;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      __p = mlir::getElementTypeOrSelf(v13);
      if (mlir::Type::isF16(&__p))
      {
        __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
        v10 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v13, &__p);
        v12 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v14, &v10) - 16;
        __p = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v12) - 16;
        mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
      }
    }
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
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

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)1>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)1>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)1,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 40);
  v14 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v12 = 0;
  v13 = mlir::ValueRange::dereference_iterator(&v15, 1);
  v6 = *(a2 + 24);
  __p = v13;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    {
      v9 = DefiningOp;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      __p = mlir::getElementTypeOrSelf(v13);
      if (mlir::Type::isF16(&__p))
      {
        __p = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v8);
        v10 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a4 + 8), v6, &v13, &__p);
        v12 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(a2 + 24), &v14, &v10) - 16;
        __p = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v12) - 16;
        mlir::ConversionPatternRewriter::replaceOp(a4, a2, &__p, 1);
      }
    }
  }

  operator new();
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)2>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)2>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)2,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)3>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)3>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)3,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)4>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)4>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)4,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)5>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)5>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)5,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)6>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)6>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)6,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)7>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertFloorDivide<(mlir::anec::Family)7>::~ConvertFloorDivide(void *a1)
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

void mlir::anonymous namespace::ConvertDivideImpl<(mlir::anec::Family)7,mlir::mps::FloorDivideOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 40);
  v9 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v8 = mlir::ValueRange::dereference_iterator(&v10, 1);
  v7 = mlir::OpBuilder::create<mlir::anec::ElementwiseDiv,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), &v9, &v8) - 16;
  v6 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>((a4 + 8), *(a2 + 24), &v7) - 16;
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, &v6, 1);
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::~ConvertMatMul(void *a1)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MatMulOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::MatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MatMulOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v34 + 1;
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
        v33 = v18;
        v34 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v33);
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
        v33 = 0;
        v34 = 0;
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
  v24 = *(a3 + 16);
  *__p = *a3;
  v29 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

uint64_t mlir::anonymous namespace::matchAsConst(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v46 = a1;
  v48 = a2;
  ShapedType = a1;
  DefiningOp = mlir::Value::getDefiningOp(&ShapedType);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp) & 1) != 0)
  {
    return 1;
  }

  ShapedType = a2;
  v43 = a2 + 16;
  v44 = a2 + 32;
  v45 = a2 + 64;
  v47 = a1;
  v19 = mlir::Value::getDefiningOp(&v47);
  if (!v19)
  {
    return 0;
  }

  v41[0] = v19;
  if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    return 0;
  }

  if ((*(v19 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(v19 + 68) != 4)
  {
    return 0;
  }

  v50 = 1;
  v48 = &v50;
  v49 = v41;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&ShapedType, &v48);
  if (v50 != 1 || mlir::ElementsAttr::getNumElements(*(a2 + 8), *(a2 + 9)) != 1 || (mlir::getSingleFloatValue<float>(*(a2 + 8), *(a2 + 9)) & 0x7FFFFFFF) != 0)
  {
    return 0;
  }

  v47 = mlir::Value::getDefiningOp(&v46);
  ShapedType = mlir::ElementsAttr::getShapedType((a2 + 16));
  v43 = v20;
  v48 = mlir::ElementsAttr::getShapedType((a2 + 32));
  v49 = v21;
  Shape = mlir::ShapedType::getShape(&ShapedType);
  if (mlir::ShapedType::getNumElements(Shape, v23) == 1)
  {
    v24 = mlir::ShapedType::getShape(&v48);
    if (mlir::ShapedType::getNumElements(v24, v25) == 1 && (mlir::mps::DequantizeOp::getAxis(&v47) & 0x100000000) == 0)
    {
      return 1;
    }
  }

  if ((mlir::mps::DequantizeOp::getAxis(&v47) & 0x100000000) == 0)
  {
    return 0;
  }

  v41[0] = mlir::ElementsAttr::getShapedType(a2);
  v41[1] = v26;
  mlir::ShapedType::getShape(v41);
  v28 = v27;
  mlir::ShapedType::getShape(&ShapedType);
  v30 = v29;
  mlir::ShapedType::getShape(&v48);
  result = 0;
  if (v30 <= 1 && v31 <= 1)
  {
    if (v30 == 1 || v31 == 1)
    {
      Axis = mlir::mps::DequantizeOp::getAxis(&v47);
      if ((Axis & 0x100000000) != 0)
      {
        mlir::anec::getKernelDimFromIndex(Axis, v28);
      }

      v33 = std::__throw_bad_optional_access[abi:nn200100]();
    }

    return 1;
  }

  return result;
}

char *mlir::anonymous namespace::convertToLinear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t *a7, mlir::ElementsAttr *a8, char a9, char a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16)
{
  v100 = a12;
  v101 = a1;
  v98 = a14;
  v99 = a11;
  v96 = a16;
  v97 = a13;
  v94 = 0;
  v95 = a15;
  v93 = 0;
  if (a10)
  {
    mlir::ShapedType::getShape(&v99);
    v23 = a5;
    if (v24 >= 4)
    {
      v108[0] = a5;
      *&v102 = mlir::getRankPromotionTypeForANE(v99, v100);
      *(&v102 + 1) = v25;
      mlir::ShapedType::getShape(&v102);
      v27 = v26;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v26);
      LOBYTE(v107) = v28;
      v104 = mlir::anec::getIndexFromDim(3, v27);
      LOBYTE(v105) = v29;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    if (!mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v101))
    {
      v108[0] = v23;
      *&v102 = mlir::getRankPromotionTypeForANE(v99, v100);
      *(&v102 + 1) = v30;
      mlir::ShapedType::getShape(&v102);
      v32 = v31;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v31);
      LOBYTE(v107) = v33;
      v104 = mlir::anec::getIndexFromDim(4, v32);
      LOBYTE(v105) = v34;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    a5 = a6;
    v35 = a8;
  }

  else
  {
    mlir::ShapedType::getShape(&v97);
    v23 = a6;
    if (v36 >= 4)
    {
      v108[0] = a6;
      *&v102 = mlir::getRankPromotionTypeForANE(v97, v98);
      *(&v102 + 1) = v37;
      mlir::ShapedType::getShape(&v102);
      v39 = v38;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v38);
      LOBYTE(v107) = v40;
      v104 = mlir::anec::getIndexFromDim(3, v39);
      LOBYTE(v105) = v41;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    if (mlir::mps::MatMulOp::getTransposeRhs(&v101))
    {
      v108[0] = v23;
      *&v102 = mlir::getRankPromotionTypeForANE(v97, v98);
      *(&v102 + 1) = v42;
      mlir::ShapedType::getShape(&v102);
      v44 = v43;
      IndexFromDim = mlir::anec::getIndexFromDim(1, v43);
      LOBYTE(v107) = v45;
      v104 = mlir::anec::getIndexFromDim(4, v44);
      LOBYTE(v105) = v46;
      v23 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
    }

    v35 = a7;
  }

  v93 = a5;
  v94 = v23;
  v47 = v35[2];
  v48 = v35[6];
  if (v47)
  {
    v49 = mlir::convertElementsAttr(v47, v35[3], 1);
    *&v102 = mlir::getElementTypeOrSelf(v35[4]);
    isSignedInteger = mlir::Type::isSignedInteger(&v102);
    IntegerType = mlir::Builder::getIntegerType((a2 + 8), 8, isSignedInteger);
    IndexFromDim = mlir::ElementsAttr::getShapedType((v35 + 4));
    v107 = v52;
    LOBYTE(v102) = 0;
    v103 = 0;
    v53 = mlir::ShapedType::cloneWith(&IndexFromDim, &v102, IntegerType);
    v55 = mlir::rewriteElementsAttr(v35[4], v35[5], v53, v54, 1);
    Type = mlir::ElementsAttr::getType(v35);
    v57 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *&v102 = v57;
    *(&v102 + 1) = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v102);
    v59 = (*(v93 + 1) & 0xFFFFFFFFFFFFFFF8);
    if (v59)
    {
      v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
    }

    else
    {
      v60 = 0;
    }

    IndexFromDim = v59;
    v107 = v60;
    LOBYTE(v102) = 0;
    v103 = 0;
    v64 = mlir::ShapedType::cloneWith(&IndexFromDim, &v102, isSplat);
    v66 = v65;
    *&v102 = mlir::rewriteElementsAttr(*v35, v35[1], v64, v66, 0);
    *(&v102 + 1) = v67;
    v68 = 0;
    v93 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 8), a4, &IndexFromDim, &v102) - 16;
    *&v102 = v49;
  }

  else
  {
    if (v48)
    {
      if (a9)
      {
        a8 = a7;
      }

      v61 = mlir::ElementsAttr::getType(a8);
      if (v61)
      {
        v62 = v61;
        v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v61 + 8);
        v61 = v62;
      }

      else
      {
        v63 = 0;
      }

      *&v102 = v61;
      *(&v102 + 1) = v63;
      IndexFromDim = mlir::getRankPromotionTypeForANE(v61, v63);
      v107 = v69;
      Shape = mlir::ShapedType::getShape(&IndexFromDim);
      v72 = v71;
      v73 = mlir::ElementsAttr::isSplat(&v102);
      v74 = mlir::MemRefType::get(Shape, v72, v73, 0, 0, 0);
      v108[0] = v74;
      v68 = mlir::convertElementsAttr(*(a8 + 6), *(a8 + 7), 1);
      v76 = *a8;
      v75 = *(a8 + 1);
      if (v74)
      {
        v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v74 + 8);
      }

      else
      {
        v77 = 0;
      }

      v104 = mlir::rewriteElementsAttr(v76, v75, v74, v77, 0);
      v105 = v78;
      v93 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a2 + 8), *(v101 + 24), v108, &v104) - 16;
    }

    else
    {
      v68 = 0;
    }

    v55 = 0;
    *&v102 = 0;
  }

  IndexFromDim = v55;
  if (v48)
  {
    v79 = v68;
  }

  else
  {
    v79 = 0;
  }

  v104 = v79;
  v80 = mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>((a2 + 8), a4, &v94, &v93, &v102, &IndexFromDim, &v104) - 16;
  if (a10)
  {
    v108[0] = v80;
    *&v102 = mlir::getRankPromotionTypeForANE(v95, v96);
    *(&v102 + 1) = v81;
    mlir::ShapedType::getShape(&v102);
    v83 = v82;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v82);
    LOBYTE(v107) = v84;
    v104 = mlir::anec::getIndexFromDim(4, v83);
    LOBYTE(v105) = v85;
    v80 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  mlir::ShapedType::getShape(&v95);
  if (v86 >= 4)
  {
    v108[0] = v80;
    *&v102 = mlir::getRankPromotionTypeForANE(v95, v96);
    *(&v102 + 1) = v87;
    mlir::ShapedType::getShape(&v102);
    v89 = v88;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v88);
    LOBYTE(v107) = v90;
    v104 = mlir::anec::getIndexFromDim(3, v89);
    LOBYTE(v105) = v91;
    return mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  return v80;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::anec::MatMul::build(a1, v17, *a3, *a4, 0);
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

uint64_t mlir::getSingleFloatValue<float>(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v25[0] = mlir::ElementsAttr::getShapedType(&v26);
  v25[1] = v2;
  Shape = mlir::ShapedType::getShape(v25);
  if (mlir::ShapedType::getNumElements(Shape, v4) == 1 && ((v24[0] = mlir::ElementsAttr::getShapedType(&v26), v24[1] = v5, v6 = *(*mlir::ElementsAttr::isSplat(v24) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    LODWORD(v24[0]) = 0;
    mlir::copyElementsAttrData<float>(v26, v27, v24, 1);
    v21 = LODWORD(v24[0]);
    v22 = 0x100000000;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  return v21 | v22;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(void **a1, uint64_t a2)
{
  v8 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v8);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v8 = *(*(**(a2 + 8) + 72) + 56);
  v5 = mlir::Value::getDefiningOp(&v8);
  if (v5)
  {
    LOBYTE(v5) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, v5);
  }

  **a2 &= v5;
  v8 = *(*(**(a2 + 8) + 72) + 88);
  v6 = mlir::Value::getDefiningOp(&v8);
  if (v6)
  {
    LOBYTE(v6) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 2, v6);
  }

  **a2 &= v6;
  v8 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v8);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 3, result);
  }

  **a2 &= result;
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::Linear::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Transpose::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
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

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void *mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::~ConvertMatMul(void *a1)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v108 = *(a3 + 56);
  v6 = *(a2 + 72);
  v7 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v6 = *(a2 + 72);
  }

  else
  {
    v8 = 0;
  }

  v91 = v8;
  v92 = a4;
  v101 = v7;
  v102 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v99 = v9;
  v100 = v10;
  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v97 = v12;
  v98 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v108, 0);
  v96 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v108, 1);
  v95 = v15;
  v16 = *(a2 + 24);
  memset(v94, 0, sizeof(v94));
  memset(v93, 0, sizeof(v93));
  if (TransposeRhs)
  {
    TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v103);
    v31 = TransposeRhs;
    if ((matched & 1) == 0)
    {
      if (!TransposeRhs)
      {
LABEL_24:
        Instance = mlir::ANEPropertiesRegistry::getInstance(TransposeRhs);
        v37 = (v92 + 8);
        Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v92 + 8));
        if (Properties)
        {
          if (*Properties)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }
        }

        else
        {
          v39 = 4;
        }

        mlir::ShapedType::getShape(&v101);
        if (v41 >= v39)
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v42;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v43 = v15;
          v45 = v44;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
          LOBYTE(v110) = v46;
          v47 = v45;
          v15 = v43;
          v104 = mlir::anec::getIndexFromDim(3, v47);
          v105 = v48;
          v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v96 = v14;
        }

        mlir::ShapedType::getShape(&v99);
        if (v49 >= v39)
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v50;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v52 = v51;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
          LOBYTE(v110) = v53;
          v104 = mlir::anec::getIndexFromDim(3, v52);
          v105 = v54;
          v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
          v95 = v15;
        }

        if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v103))
        {
          v106 = v14;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v101, v102);
          v112 = v55;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v56 = v15;
          v58 = v57;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
          LOBYTE(v110) = v59;
          v60 = v58;
          v15 = v56;
          v104 = mlir::anec::getIndexFromDim(4, v60);
          v105 = v61;
          v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        if (mlir::mps::MatMulOp::getTransposeRhs(&v103))
        {
          v106 = v15;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v99, v100);
          v112 = v62;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v64 = v63;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
          LOBYTE(v110) = v65;
          v104 = mlir::anec::getIndexFromDim(4, v64);
          v105 = v66;
          v95 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        RankPromotionTypeForANE = 0;
        v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v96, &v95) - 16;
        mlir::ShapedType::getShape(&v97);
        if (v68 >= v39)
        {
          v106 = v67;
          RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v97, v98);
          v112 = v69;
          mlir::ShapedType::getShape(&RankPromotionTypeForANE);
          v71 = v70;
          IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
          LOBYTE(v110) = v72;
          v104 = mlir::anec::getIndexFromDim(3, v71);
          v105 = v73;
          v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v106, &IndexFromDim, &v104) - 16;
        }

        v74 = v103;
        IndexFromDim = v67;
        mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &IndexFromDim, 1uLL);
        mlir::ConversionPatternRewriter::replaceOp(v92, v74, RankPromotionTypeForANE, v112);
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
  }

  RankPromotionTypeForANE = mlir::ElementsAttr::getShapedType(v94);
  v112 = v32;
  TransposeRhs = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v33 == 2 || (v31 & 1) == 0)
  {
    if (v33 != 2)
    {
      goto LABEL_24;
    }

LABEL_28:
    v89 = v15;
    v40 = v103;
    mlir::TypeConverter::TypeConverter(v107, *(a1 + 96));
    mlir::TypeConverter::~TypeConverter(v107);
  }

LABEL_21:
  IndexFromDim = mlir::ElementsAttr::getShapedType(v93);
  v110 = v34;
  TransposeRhs = mlir::ShapedType::getShape(&IndexFromDim);
  if (v35 != 2)
  {
    goto LABEL_24;
  }

  v31 = 1;
  goto LABEL_28;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DegammaOp,mlir::anec::Degamma>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EDA8;
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

void *sub_1A6EA0950()
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

uint64_t mlir::OpConversionPattern<mlir::mps::DegammaOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DegammaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DegammaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DegammaOp,mlir::anec::Degamma>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DiracOp,mlir::anec::Dirac>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EE18;
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

void *sub_1A6EA15C4()
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

uint64_t mlir::OpConversionPattern<mlir::mps::DiracOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DiracOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DiracOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DiracOp,mlir::anec::Dirac>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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