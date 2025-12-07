void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CosOp,mlir::anec::Cos>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A12F48;
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

void *sub_1A6EF4270()
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

uint64_t mlir::OpConversionPattern<mlir::mps::CosOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CosOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CosOp,mlir::anec::Cos>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Cos,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SinOp,mlir::anec::Sin>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A12FB8;
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

void *sub_1A6EF4EE4()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SinOp,mlir::anec::Sin>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sin,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
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

void *mlir::anonymous namespace::FoldOperation<mlir::mps::IdentityOp>::~FoldOperation(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::FoldOperation<mlir::mps::IdentityOp>::~FoldOperation(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::IdentityOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::IdentityOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::IdentityOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertNormalization::~ConvertNormalization(mlir::_anonymous_namespace_::ConvertNormalization *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NormalizationOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NormalizationOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NormalizationOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertNormalization::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v42 = a2;
  v7 = *(a3 + 48);
  v8 = *(a3 + 56);
  v45 = a2;
  v49 = v7;
  v50[0] = v8;
  v9 = (*(mlir::ValueRange::dereference_iterator(&v49, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  *&v53 = v9;
  *(&v53 + 1) = v10;
  mlir::ShapedType::getShape(&v53);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(mlir::ShapedType::getShape(&v53) + 8 * IndexFromDim);
  v15 = v50[0];
  RankPromotionTypeForANE = mlir::ValueRange::offset_base(&v49, 1);
  v52 = 0;
  v16 = v15 - 1;
  if (v15 != 1)
  {
    v17 = 0;
    while (1)
    {
      v47 = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, v17);
      DefiningOp = mlir::Value::getDefiningOp(&v47);
      if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
      {
        break;
      }

      v19 = (*(v47 + 8) & 0xFFFFFFFFFFFFFFF8);
      v20 = v19 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8) : 0;
      v46[0] = v19;
      v46[1] = v20;
      Shape = mlir::ShapedType::getShape(v46);
      if (mlir::ShapedType::getNumElements(Shape, v22) != v14)
      {
        break;
      }

      mlir::ShapedType::getShape(v46);
      v24 = mlir::anec::getIndexFromDim(1, v23);
      if ((v25 & 1) == 0 || *(mlir::ShapedType::getShape(v46) + 8 * v24) != v14)
      {
        break;
      }

      v17 = v52 + 1;
      v52 = v17;
      if (v17 == v16)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v53 = *(a3 + 48);
    v46[0] = mlir::ValueRange::dereference_iterator(&v53, 0);
    v47 = mlir::ValueRange::dereference_iterator(&v53, 1);
    v45 = mlir::ValueRange::dereference_iterator(&v53, 2);
    v44 = mlir::ValueRange::dereference_iterator(&v53, 3);
    v43 = mlir::ValueRange::dereference_iterator(&v53, 4);
    v46[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>((a4 + 8), *(a2 + 24), v46, &v47) - 16;
    Epsilon = mlir::mps::NormalizationOp::getEpsilon(&v49, &v42);
    v29 = llvm::APFloatBase::IEEEhalf(Epsilon);
    LOBYTE(RankPromotionTypeForANE) = 0;
    llvm::APFloat::convert(&v49, v29, 1u, &RankPromotionTypeForANE);
    v45 = mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>((a4 + 8), *(v42 + 24), &v45, &v49) - 16;
    v46[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 8), *(v42 + 24), v46, &v45) - 16;
    v46[0] = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 8), *(v42 + 24), v46, &v44) - 16;
    v30 = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::Value &,mlir::Value &>((a4 + 8), *(v42 + 24), v46, &v43);
    v31 = v42;
    v48 = v30 - 16;
    mlir::ValueRange::ValueRange(&RankPromotionTypeForANE, &v48, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v31, RankPromotionTypeForANE, v52);
  }

LABEL_16:
  *&v53 = v7;
  *(&v53 + 1) = v8;
  mlir::mps::NormalizationOp::getEpsilon(&v49, &v45);
  v26 = (*(mlir::ValueRange::dereference_iterator(&v53, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v26, v27);
  v52 = v32;
  v33 = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v35 = v34;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  mlir::MemRefType::get(v33, v35, isSplat, 0, 0, 0);
  v37 = v45;
  v46[0] = mlir::ValueRange::dereference_iterator(&v53, 0);
  v47 = mlir::ValueRange::dereference_iterator(&v53, 1);
  v44 = mlir::ValueRange::dereference_iterator(&v53, 2);
  v43 = mlir::ValueRange::dereference_iterator(&v53, 3);
  v48 = mlir::ValueRange::dereference_iterator(&v53, 4);
  v38 = mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>((a4 + 8), *(v37 + 24), v46, &v47, &v44, &v43, &v48, &v49);
  v39 = (*(*a4 + 8))(a4, v37, v38);
  v40 = v50[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v39) == v40)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v50);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v50);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(mlir::Float16Type **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(v24, v21, v20);
  }

  mlir::OperationState::OperationState(v24, a2, v9);
  v11 = *a3;
  v13 = *(a4 + 8);
  v12 = (a4 + 8);
  v15 = llvm::APFloatBase::PPCDoubleDouble(v14);
  if (v15 == v13)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v12);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v23, v12);
  }

  mlir::anec::Rsqrt::build(a1, v24, v11, v22);
  if (v15 == v23[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v23);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v23);
  }

  v16 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v16 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  mlir::anec::ElementwiseAdd::build(a1, v17, *a3, *a4);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v36[38] = *MEMORY[0x1E69E9840];
  v31 = a2;
  Context = mlir::Attribute::getContext(&v31);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::BatchNorm,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::BatchNorm,mlir::Value,mlir::Value,mlir::Value,mlir::Value,mlir::Value,llvm::APFloat &>(v36, v33, v32);
  }

  mlir::OperationState::OperationState(v36, a2, v17);
  v19 = *a3;
  v20 = *a4;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v25 = *(a8 + 8);
  v24 = (a8 + 8);
  v27 = llvm::APFloatBase::PPCDoubleDouble(v26);
  if (v27 == v25)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v35, v24);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v35, v24);
  }

  mlir::anec::BatchNorm::build(a1, v36, v19, v20, v21, v22, v23, v34);
  if (v27 == v35[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v35);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v35);
  }

  v28 = mlir::OpBuilder::create(a1, v36);
  if (*(*(v28 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::BatchNorm,void>::id)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(v36);
  return v29;
}

void mlir::anonymous namespace::ConvertReductionVariance::~ConvertReductionVariance(mlir::_anonymous_namespace_::ConvertReductionVariance *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionVarianceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionVarianceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionVarianceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void *mlir::anonymous namespace::ConvertReductionVariance::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v7 = *(a3 + 56);
  v53[0] = *(a3 + 48);
  v6 = v53[0];
  v53[1] = v7;
  mlir::TypeConverter::TypeConverter(v52, *(a1 + 96));
  v45 = v8;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v43 = mlir::ValueRange::dereference_iterator(v53, 0);
  v9 = (v43[1] & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v42[0] = mlir::getRankPromotionTypeForANE(v9, v10);
  v42[1] = v11;
  v41 = mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), *(a2 + 24), &v43, &v44) - 16;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v46))
  {
    if (*(v46 + 36))
    {
      v12 = v46 - 16;
    }

    else
    {
      v12 = 0;
    }

    v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  v43 = (mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::Value &,mlir::Value &>((a4 + 8), *(v46 + 24), &v43, &v41) - 16);
  v43 = (mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value,mlir::Value&>((a4 + 8), *(v46 + 24), &v43, &v43) - 16);
  v43 = (mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), *(v46 + 24), &v43, &v44) - 16);
  if (v45)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&__p, v44, 0);
    v15 = v44;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v44);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v47, v15, NumElements);
    if (v51 != v48)
    {
      v17 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&__p, &v39);
        if (v40 >= 0x41)
        {
          v18 = v39;
        }

        else
        {
          v18 = &v39;
        }

        v19 = *v18;
        v23 = *(mlir::ShapedType::getShape(v42) + 8 * v19);
        if (v40 >= 0x41 && v39)
        {
          MEMORY[0x1AC55A040](v39, 0x1000C8000313F17);
        }

        v17 *= v23;
        ++v51;
      }

      while (v51 != v48);
      if (v17 != 1)
      {
        v24 = llvm::detail::IEEEFloat::IEEEFloat(v47, 1.0 / (v17 + -1.0), v20, v21, v22);
        v25 = llvm::APFloatBase::IEEEdouble(v24);
        llvm::APFloat::Storage::Storage(&v50, v47, v25);
        llvm::detail::IEEEFloat::~IEEEFloat(v47);
        v27 = llvm::APFloatBase::IEEEhalf(v26);
        LOBYTE(v47[0]) = 0;
        llvm::APFloat::convert(&__p, v27, 1u, v47);
        if (*(v46 + 36))
        {
          v28 = v46 - 16;
        }

        else
        {
          v28 = 0;
        }

        v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v29)
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
        }

        else
        {
          v30 = 0;
        }

        RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v29, v30);
        v47[0] = mlir::DenseElementsAttr::get(RankPromotionTypeForANE, v32, &__p, 1);
        v39 = mlir::TypeConverter::convertType(v52, RankPromotionTypeForANE);
        v38 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>((a4 + 8), *(v46 + 24), &v39, v47);
        v33 = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::Value &,mlir::mps::ConstantOp &>((a4 + 8), *(v46 + 24), &v43, &v38);
        v43 = (v33 - 16);
        v34 = v50;
        if (llvm::APFloatBase::PPCDoubleDouble(v33) == v34)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v50);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v50);
        }
      }
    }

    v35 = v46;
    v47[0] = v43;
    mlir::ValueRange::ValueRange(&__p, v47, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v35, __p, v50);
  }

  v36 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionArgMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

ZinIrHalH13g *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v124[1] = *MEMORY[0x1E69E9840];
  v115 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v114[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v114[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v113 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v113 = 0;
    if (v19)
    {
      v120.__r_.__value_.__r.__words[0] = &v113;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v120, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v122 = v124;
  v123 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v115, 0);
  v22 = (*(*(*(v115 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v113, v24, &v122, 0, 0))
  {
    operator new();
  }

  if (v123 != 1)
  {
    std::to_string(&v120, v123);
    v44 = std::string::insert(&v120, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v119[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
    if (SBYTE7(v119[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v47 = v120.__r_.__value_.__r.__words[0];
LABEL_79:
    operator delete(v47);
    goto LABEL_80;
  }

  v27 = *v122;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v111 = 0;
  v112 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v114);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v114), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v99 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(v99, v100, v101, v102, v103, v104, v105, v106);
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v114) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v114) + 8 * v37);
  v121.__r_.__value_.__r.__words[0] = &v121.__r_.__value_.__r.__words[2];
  v121.__r_.__value_.__r.__words[2] = v27;
  v121.__r_.__value_.__l.__size_ = 0x100000001;
  v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
  memset_pattern16(&v120.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v120.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v119;
  memset(v119, 0, sizeof(v119));
  __p[1] = 0x400000004;
  v117.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v117, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v110.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v121.__r_.__value_.__r.__words[2], 8);
  v117.__r_.__value_.__r.__words[0] = v38;
  v117.__r_.__value_.__l.__size_ = v39;
  v116.__r_.__value_.__r.__words[0] = 2;
  v48 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v49 = mlir::RankedTensorType::get(&v116, 1, v48, 0);
  if (v49)
  {
    v50 = v49;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
    v49 = v50;
  }

  else
  {
    v51 = 0;
  }

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v117, 16);
  v52 = v120.__r_.__value_.__r.__words[0];
  v53 = LODWORD(v120.__r_.__value_.__r.__words[1]);
  v116.__r_.__value_.__r.__words[0] = LODWORD(v120.__r_.__value_.__r.__words[1]);
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(&v116, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53);
  v58 = __p[0];
  v59 = LODWORD(__p[1]);
  v116.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v60 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v61 = mlir::RankedTensorType::get(&v116, 1, v60, 0);
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

  v116.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59);
  v112 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v112, &v110, &v111, &v109, &v108, &v116) - 16);
  if (__p[0] != v119)
  {
    free(__p[0]);
  }

  if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
  {
    free(v120.__r_.__value_.__l.__data_);
  }

  if (v121.__r_.__value_.__l.__data_ != &v121.__r_.__value_.__r.__words[2])
  {
    free(v121.__r_.__value_.__l.__data_);
  }

  v64 = *(mlir::ShapedType::getShape(v114) + 8 * v27);
  if (v64 < 0x10000)
  {
    if (*(v115 + 9))
    {
      v81 = v115 - 16;
    }

    else
    {
      v81 = 0;
    }

    v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v82)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
    }

    else
    {
      v83 = 0;
    }

    v120.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
    v120.__r_.__value_.__l.__size_ = v85;
    Shape = mlir::ShapedType::getShape(&v120);
    v88 = v87;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v112);
    v90 = mlir::MemRefType::get(Shape, v88, ElementTypeOrSelf, 0, 0, 0);
    v91 = v112;
    if (v90 == (v112[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v92 = v115;
      v93 = *(v115 - 2);
      if (v93)
      {
        do
        {
          v94 = *v93;
          v95 = v93[2];
          ((*a4)[5])(a4, v95);
          v96 = v93[1];
          if (v96)
          {
            v97 = *v93;
            *v96 = *v93;
            if (v97)
            {
              v97[1] = v93[1];
            }
          }

          v93[3] = v91;
          v93[1] = v91;
          v98 = *v91;
          *v93 = *v91;
          if (v98)
          {
            *(v98 + 8) = v93;
          }

          *v91 = v93;
          ((*a4)[6])(a4, v95);
          v93 = v94;
        }

        while (v94);
        v92 = v115;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v92);
    }

    operator new();
  }

  std::to_string(&v108, v64);
  v65 = std::string::insert(&v108, 0, "Tensor size on reduction axis (");
  v66 = v65->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v109, ") ");
  v68 = v67->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v110, "exceeds the maximum value of UInt16 (");
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v107, 0xFFFF);
  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v107;
  }

  else
  {
    v71 = v107.__r_.__value_.__r.__words[0];
  }

  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v107.__r_.__value_.__l.__size_;
  }

  v73 = std::string::append(&v116, v71, size);
  v74 = v73->__r_.__value_.__r.__words[2];
  *&v117.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
  v117.__r_.__value_.__r.__words[2] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v117, "), ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v121.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v121.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v121, "so the 32 bit output type could not be safely converted to ");
  v78 = v77->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = std::string::append(&v120, "UInt16 so that it could be supported on ANE.");
  v80 = v79->__r_.__value_.__r.__words[2];
  *__p = *&v79->__r_.__value_.__l.__data_;
  *&v119[0] = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
  if (SBYTE7(v119[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v121.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v117.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v107.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

LABEL_77:
  operator delete(v109.__r_.__value_.__l.__data_);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    v47 = v108.__r_.__value_.__r.__words[0];
    goto LABEL_79;
  }

LABEL_80:
  if (v122 != v124)
  {
    free(v122);
  }

  return matched;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ArgMinMax,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::anec::ArgMinMax::build(a1, v25, *a3, *a4, *a5, *a6, *a7, *a8);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ArgMinMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v106 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    operator new();
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v44 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v112[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if (SBYTE7(v112[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v47 = v113.__r_.__value_.__r.__words[0];
LABEL_79:
    operator delete(v47);
    goto LABEL_80;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v104 = 0;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v107), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v99 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v107) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v107) + 8 * v37);
  v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
  v114.__r_.__value_.__r.__words[2] = v27;
  v114.__r_.__value_.__l.__size_ = 0x100000001;
  v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
  memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v113.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v112;
  memset(v112, 0, sizeof(v112));
  __p[1] = 0x400000004;
  v110.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8);
  v110.__r_.__value_.__r.__words[0] = v38;
  v110.__r_.__value_.__l.__size_ = v39;
  v109.__r_.__value_.__r.__words[0] = 2;
  v48 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
  if (v49)
  {
    v50 = v49;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
    v49 = v50;
  }

  else
  {
    v51 = 0;
  }

  v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16);
  v52 = v113.__r_.__value_.__r.__words[0];
  v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53);
  v58 = __p[0];
  v59 = LODWORD(__p[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v60 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59);
  v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
  if (__p[0] != v112)
  {
    free(__p[0]);
  }

  if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
  {
    free(v113.__r_.__value_.__l.__data_);
  }

  if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
  {
    free(v114.__r_.__value_.__l.__data_);
  }

  v64 = *(mlir::ShapedType::getShape(v107) + 8 * v27);
  if (v64 < 0x10000)
  {
    if (*(v108 + 9))
    {
      v81 = v108 - 16;
    }

    else
    {
      v81 = 0;
    }

    v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v82)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
    }

    else
    {
      v83 = 0;
    }

    v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
    v113.__r_.__value_.__l.__size_ = v85;
    Shape = mlir::ShapedType::getShape(&v113);
    v88 = v87;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
    v90 = mlir::MemRefType::get(Shape, v88, ElementTypeOrSelf, 0, 0, 0);
    v91 = v105;
    if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v92 = v108;
      v93 = *(v108 - 2);
      if (v93)
      {
        do
        {
          v94 = *v93;
          v95 = v93[2];
          ((*a4)[5])(a4, v95);
          v96 = v93[1];
          if (v96)
          {
            v97 = *v93;
            *v96 = *v93;
            if (v97)
            {
              v97[1] = v93[1];
            }
          }

          v93[3] = v91;
          v93[1] = v91;
          v98 = *v91;
          *v93 = *v91;
          if (v98)
          {
            *(v98 + 8) = v93;
          }

          *v91 = v93;
          ((*a4)[6])(a4, v95);
          v93 = v94;
        }

        while (v94);
        v92 = v108;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v92);
    }

    operator new();
  }

  std::to_string(&v101, v64);
  v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
  v66 = v65->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v102, ") ");
  v68 = v67->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v100, 0xFFFF);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v100;
  }

  else
  {
    v71 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v73 = std::string::append(&v109, v71, size);
  v74 = v73->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v110, "), ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v114.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
  v78 = v77->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
  v80 = v79->__r_.__value_.__r.__words[2];
  *__p = *&v79->__r_.__value_.__l.__data_;
  *&v112[0] = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
  if (SBYTE7(v112[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v114.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v100.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v103.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

LABEL_77:
  operator delete(v102.__r_.__value_.__l.__data_);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    v47 = v101.__r_.__value_.__r.__words[0];
    goto LABEL_79;
  }

LABEL_80:
  if (v115 != v117)
  {
    free(v115);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v112 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    operator new();
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v44 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v118[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if (SBYTE7(v118[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
    goto LABEL_99;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v113), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v105 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v113) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v113) + 8 * v37);
  v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
  v120.__r_.__value_.__r.__words[2] = v27;
  v120.__r_.__value_.__l.__size_ = 0x100000001;
  v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
  memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v119.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v118;
  memset(v118, 0, sizeof(v118));
  __p[1] = 0x400000004;
  v116.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8);
  v116.__r_.__value_.__r.__words[0] = v38;
  v116.__r_.__value_.__l.__size_ = v39;
  v115.__r_.__value_.__r.__words[0] = 2;
  v47 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
  if (v48)
  {
    v49 = v48;
    v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
    v48 = v49;
  }

  else
  {
    v50 = 0;
  }

  v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16);
  v51 = v119.__r_.__value_.__r.__words[0];
  v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v53 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
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

  v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52);
  v57 = __p[0];
  v58 = LODWORD(__p[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v59 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
  if (v60)
  {
    v61 = v60;
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
    v60 = v61;
  }

  else
  {
    v62 = 0;
  }

  v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58);
  v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
  if (__p[0] != v118)
  {
    free(__p[0]);
  }

  if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
  {
    free(v119.__r_.__value_.__l.__data_);
  }

  if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
  {
    free(v120.__r_.__value_.__l.__data_);
  }

  v63 = *(mlir::ShapedType::getShape(v113) + 8 * v27);
  if (v63 < 0x10000)
  {
    if (*(v114 + 9))
    {
      v80 = v114 - 16;
    }

    else
    {
      v80 = 0;
    }

    v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v81)
    {
      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
    }

    else
    {
      v82 = 0;
    }

    __p[0] = mlir::getRankPromotionTypeForANE(v81, v82);
    __p[1] = v83;
    Shape = mlir::ShapedType::getShape(__p);
    v86 = v85;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
    v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v86, ElementTypeOrSelf, 0, 0, 0);
    v88 = v111;
    v89 = v114;
    if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v90 = *(v114 - 2);
      if (!v90)
      {
LABEL_98:
        mlir::ConversionPatternRewriter::eraseOp(a4, v89);
      }

      do
      {
        v91 = *v90;
        v92 = v90[2];
        ((*a4)[5])(a4, v92);
        v93 = v90[1];
        if (v93)
        {
          v94 = *v90;
          *v93 = *v90;
          if (v94)
          {
            v94[1] = v90[1];
          }
        }

        v90[3] = v88;
        v90[1] = v88;
        v95 = *v88;
        *v90 = *v88;
        if (v95)
        {
          *(v95 + 8) = v90;
        }

        *v88 = v90;
        ((*a4)[6])(a4, v92);
        v90 = v91;
      }

      while (v91);
    }

    else
    {
      v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v114 + 3), &v119, &v111);
      v89 = v114;
      v97 = *(v114 - 2);
      if (!v97)
      {
        goto LABEL_98;
      }

      v98 = (v96 - 16);
      do
      {
        v99 = *v97;
        v100 = v97[2];
        ((*a4)[5])(a4, v100);
        v101 = v97[1];
        if (v101)
        {
          v102 = *v97;
          *v101 = *v97;
          if (v102)
          {
            v102[1] = v97[1];
          }
        }

        v97[3] = v98;
        v97[1] = v98;
        v103 = *v98;
        *v97 = *v98;
        if (v103)
        {
          *(v103 + 8) = v97;
        }

        *v98 = v97;
        ((*a4)[6])(a4, v100);
        v97 = v99;
      }

      while (v99);
    }

    v89 = v114;
    goto LABEL_98;
  }

  std::to_string(&v107, v63);
  v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
  v65 = v64->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  v66 = std::string::append(&v108, ") ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
  v69 = v68->__r_.__value_.__r.__words[2];
  *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
  v115.__r_.__value_.__r.__words[2] = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v106, 0xFFFF);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v106;
  }

  else
  {
    v70 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v72 = std::string::append(&v115, v70, size);
  v73 = v72->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v116, "), ");
  v75 = v74->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
  v77 = v76->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
  v79 = v78->__r_.__value_.__r.__words[2];
  *__p = *&v78->__r_.__value_.__l.__data_;
  *&v118[0] = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
  if (SBYTE7(v118[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v119.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v115.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

LABEL_77:
  operator delete(v108.__r_.__value_.__l.__data_);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    operator delete(v107.__r_.__value_.__l.__data_);
  }

LABEL_99:
  if (v121 != v123)
  {
    free(v121);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v112 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    operator new();
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v44 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v118[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if (SBYTE7(v118[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
    goto LABEL_99;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v113), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v105 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v113) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v113) + 8 * v37);
  v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
  v120.__r_.__value_.__r.__words[2] = v27;
  v120.__r_.__value_.__l.__size_ = 0x100000001;
  v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
  memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v119.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v118;
  memset(v118, 0, sizeof(v118));
  __p[1] = 0x400000004;
  v116.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8);
  v116.__r_.__value_.__r.__words[0] = v38;
  v116.__r_.__value_.__l.__size_ = v39;
  v115.__r_.__value_.__r.__words[0] = 2;
  v47 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
  if (v48)
  {
    v49 = v48;
    v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
    v48 = v49;
  }

  else
  {
    v50 = 0;
  }

  v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16);
  v51 = v119.__r_.__value_.__r.__words[0];
  v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v53 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
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

  v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52);
  v57 = __p[0];
  v58 = LODWORD(__p[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v59 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
  if (v60)
  {
    v61 = v60;
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
    v60 = v61;
  }

  else
  {
    v62 = 0;
  }

  v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58);
  v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
  if (__p[0] != v118)
  {
    free(__p[0]);
  }

  if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
  {
    free(v119.__r_.__value_.__l.__data_);
  }

  if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
  {
    free(v120.__r_.__value_.__l.__data_);
  }

  v63 = *(mlir::ShapedType::getShape(v113) + 8 * v27);
  if (v63 < 0x10000)
  {
    if (*(v114 + 9))
    {
      v80 = v114 - 16;
    }

    else
    {
      v80 = 0;
    }

    v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v81)
    {
      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
    }

    else
    {
      v82 = 0;
    }

    __p[0] = mlir::getRankPromotionTypeForANE(v81, v82);
    __p[1] = v83;
    Shape = mlir::ShapedType::getShape(__p);
    v86 = v85;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
    v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v86, ElementTypeOrSelf, 0, 0, 0);
    v88 = v111;
    v89 = v114;
    if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v90 = *(v114 - 2);
      if (!v90)
      {
LABEL_98:
        mlir::ConversionPatternRewriter::eraseOp(a4, v89);
      }

      do
      {
        v91 = *v90;
        v92 = v90[2];
        ((*a4)[5])(a4, v92);
        v93 = v90[1];
        if (v93)
        {
          v94 = *v90;
          *v93 = *v90;
          if (v94)
          {
            v94[1] = v90[1];
          }
        }

        v90[3] = v88;
        v90[1] = v88;
        v95 = *v88;
        *v90 = *v88;
        if (v95)
        {
          *(v95 + 8) = v90;
        }

        *v88 = v90;
        ((*a4)[6])(a4, v92);
        v90 = v91;
      }

      while (v91);
    }

    else
    {
      v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v114 + 3), &v119, &v111);
      v89 = v114;
      v97 = *(v114 - 2);
      if (!v97)
      {
        goto LABEL_98;
      }

      v98 = (v96 - 16);
      do
      {
        v99 = *v97;
        v100 = v97[2];
        ((*a4)[5])(a4, v100);
        v101 = v97[1];
        if (v101)
        {
          v102 = *v97;
          *v101 = *v97;
          if (v102)
          {
            v102[1] = v97[1];
          }
        }

        v97[3] = v98;
        v97[1] = v98;
        v103 = *v98;
        *v97 = *v98;
        if (v103)
        {
          *(v103 + 8) = v97;
        }

        *v98 = v97;
        ((*a4)[6])(a4, v100);
        v97 = v99;
      }

      while (v99);
    }

    v89 = v114;
    goto LABEL_98;
  }

  std::to_string(&v107, v63);
  v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
  v65 = v64->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  v66 = std::string::append(&v108, ") ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
  v69 = v68->__r_.__value_.__r.__words[2];
  *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
  v115.__r_.__value_.__r.__words[2] = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v106, 0xFFFF);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v106;
  }

  else
  {
    v70 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v72 = std::string::append(&v115, v70, size);
  v73 = v72->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v116, "), ");
  v75 = v74->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
  v77 = v76->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
  v79 = v78->__r_.__value_.__r.__words[2];
  *__p = *&v78->__r_.__value_.__l.__data_;
  *&v118[0] = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
  if (SBYTE7(v118[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v119.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v115.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

LABEL_77:
  operator delete(v108.__r_.__value_.__l.__data_);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    operator delete(v107.__r_.__value_.__l.__data_);
  }

LABEL_99:
  if (v121 != v123)
  {
    free(v121);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GlobalArgMinMax,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GlobalArgMinMax::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GlobalArgMinMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 0;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionArgMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionArgMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v106 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    operator new();
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v44 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v112[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if (SBYTE7(v112[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v47 = v113.__r_.__value_.__r.__words[0];
LABEL_79:
    operator delete(v47);
    goto LABEL_80;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v107), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v99 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v107) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v107) + 8 * v37);
  v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
  v114.__r_.__value_.__r.__words[2] = v27;
  v114.__r_.__value_.__l.__size_ = 0x100000001;
  v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
  memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v113.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v112;
  memset(v112, 0, sizeof(v112));
  __p[1] = 0x400000004;
  v110.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8);
  v110.__r_.__value_.__r.__words[0] = v38;
  v110.__r_.__value_.__l.__size_ = v39;
  v109.__r_.__value_.__r.__words[0] = 2;
  v48 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
  if (v49)
  {
    v50 = v49;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
    v49 = v50;
  }

  else
  {
    v51 = 0;
  }

  v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16);
  v52 = v113.__r_.__value_.__r.__words[0];
  v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53);
  v58 = __p[0];
  v59 = LODWORD(__p[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v60 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59);
  v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
  if (__p[0] != v112)
  {
    free(__p[0]);
  }

  if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
  {
    free(v113.__r_.__value_.__l.__data_);
  }

  if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
  {
    free(v114.__r_.__value_.__l.__data_);
  }

  v64 = *(mlir::ShapedType::getShape(v107) + 8 * v27);
  if (v64 < 0x10000)
  {
    if (*(v108 + 9))
    {
      v81 = v108 - 16;
    }

    else
    {
      v81 = 0;
    }

    v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v82)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
    }

    else
    {
      v83 = 0;
    }

    v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
    v113.__r_.__value_.__l.__size_ = v85;
    Shape = mlir::ShapedType::getShape(&v113);
    v88 = v87;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
    v90 = mlir::MemRefType::get(Shape, v88, ElementTypeOrSelf, 0, 0, 0);
    v91 = v105;
    if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v92 = v108;
      v93 = *(v108 - 2);
      if (v93)
      {
        do
        {
          v94 = *v93;
          v95 = v93[2];
          ((*a4)[5])(a4, v95);
          v96 = v93[1];
          if (v96)
          {
            v97 = *v93;
            *v96 = *v93;
            if (v97)
            {
              v97[1] = v93[1];
            }
          }

          v93[3] = v91;
          v93[1] = v91;
          v98 = *v91;
          *v93 = *v91;
          if (v98)
          {
            *(v98 + 8) = v93;
          }

          *v91 = v93;
          ((*a4)[6])(a4, v95);
          v93 = v94;
        }

        while (v94);
        v92 = v108;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v92);
    }

    operator new();
  }

  std::to_string(&v101, v64);
  v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
  v66 = v65->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v102, ") ");
  v68 = v67->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v100, 0xFFFF);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v100;
  }

  else
  {
    v71 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v73 = std::string::append(&v109, v71, size);
  v74 = v73->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v110, "), ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v114.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
  v78 = v77->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
  v80 = v79->__r_.__value_.__r.__words[2];
  *__p = *&v79->__r_.__value_.__l.__data_;
  *&v112[0] = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
  if (SBYTE7(v112[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v114.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v100.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v103.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

LABEL_77:
  operator delete(v102.__r_.__value_.__l.__data_);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    v47 = v101.__r_.__value_.__r.__words[0];
    goto LABEL_79;
  }

LABEL_80:
  if (v115 != v117)
  {
    free(v115);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v107[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v107[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v106 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v115 = v117;
  v116 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v108, 0);
  v22 = (*(*(*(v108 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    operator new();
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v44 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v112[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if (SBYTE7(v112[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    v47 = v113.__r_.__value_.__r.__words[0];
LABEL_79:
    operator delete(v47);
    goto LABEL_80;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v107), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v99 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v107) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v107) + 8 * v37);
  v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
  v114.__r_.__value_.__r.__words[2] = v27;
  v114.__r_.__value_.__l.__size_ = 0x100000001;
  v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
  memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v113.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v112;
  memset(v112, 0, sizeof(v112));
  __p[1] = 0x400000004;
  v110.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v110, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v103.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v114.__r_.__value_.__r.__words[2], 8);
  v110.__r_.__value_.__r.__words[0] = v38;
  v110.__r_.__value_.__l.__size_ = v39;
  v109.__r_.__value_.__r.__words[0] = 2;
  v48 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v49 = mlir::RankedTensorType::get(&v109, 1, v48, 0);
  if (v49)
  {
    v50 = v49;
    v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
    v49 = v50;
  }

  else
  {
    v51 = 0;
  }

  v102.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v49, v51, &v110, 16);
  v52 = v113.__r_.__value_.__r.__words[0];
  v53 = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(v113.__r_.__value_.__r.__words[1]);
  v54 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v55 = mlir::RankedTensorType::get(&v109, 1, v54, 0);
  if (v55)
  {
    v56 = v55;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v55 + 8);
    v55 = v56;
  }

  else
  {
    v57 = 0;
  }

  v101.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, v52, 8 * v53);
  v58 = __p[0];
  v59 = LODWORD(__p[1]);
  v109.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v60 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v61 = mlir::RankedTensorType::get(&v109, 1, v60, 0);
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

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v61, v63, v58, 8 * v59);
  v105 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16);
  if (__p[0] != v112)
  {
    free(__p[0]);
  }

  if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
  {
    free(v113.__r_.__value_.__l.__data_);
  }

  if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
  {
    free(v114.__r_.__value_.__l.__data_);
  }

  v64 = *(mlir::ShapedType::getShape(v107) + 8 * v27);
  if (v64 < 0x10000)
  {
    if (*(v108 + 9))
    {
      v81 = v108 - 16;
    }

    else
    {
      v81 = 0;
    }

    v82 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v81, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v82)
    {
      v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
    }

    else
    {
      v83 = 0;
    }

    v113.__r_.__value_.__r.__words[0] = mlir::getRankPromotionTypeForANE(v82, v83);
    v113.__r_.__value_.__l.__size_ = v85;
    Shape = mlir::ShapedType::getShape(&v113);
    v88 = v87;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
    v90 = mlir::MemRefType::get(Shape, v88, ElementTypeOrSelf, 0, 0, 0);
    v91 = v105;
    if (v90 == (v105[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v92 = v108;
      v93 = *(v108 - 2);
      if (v93)
      {
        do
        {
          v94 = *v93;
          v95 = v93[2];
          ((*a4)[5])(a4, v95);
          v96 = v93[1];
          if (v96)
          {
            v97 = *v93;
            *v96 = *v93;
            if (v97)
            {
              v97[1] = v93[1];
            }
          }

          v93[3] = v91;
          v93[1] = v91;
          v98 = *v91;
          *v93 = *v91;
          if (v98)
          {
            *(v98 + 8) = v93;
          }

          *v91 = v93;
          ((*a4)[6])(a4, v95);
          v93 = v94;
        }

        while (v94);
        v92 = v108;
      }

      mlir::ConversionPatternRewriter::eraseOp(a4, v92);
    }

    operator new();
  }

  std::to_string(&v101, v64);
  v65 = std::string::insert(&v101, 0, "Tensor size on reduction axis (");
  v66 = v65->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = *&v65->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  v67 = std::string::append(&v102, ") ");
  v68 = v67->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = *&v67->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v68;
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  v69 = std::string::append(&v103, "exceeds the maximum value of UInt16 (");
  v70 = v69->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v69->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v100, 0xFFFF);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = &v100;
  }

  else
  {
    v71 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v73 = std::string::append(&v109, v71, size);
  v74 = v73->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = *&v73->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v74;
  v73->__r_.__value_.__l.__size_ = 0;
  v73->__r_.__value_.__r.__words[2] = 0;
  v73->__r_.__value_.__r.__words[0] = 0;
  v75 = std::string::append(&v110, "), ");
  v76 = v75->__r_.__value_.__r.__words[2];
  *&v114.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
  v114.__r_.__value_.__r.__words[2] = v76;
  v75->__r_.__value_.__l.__size_ = 0;
  v75->__r_.__value_.__r.__words[2] = 0;
  v75->__r_.__value_.__r.__words[0] = 0;
  v77 = std::string::append(&v114, "so the 32 bit output type could not be safely converted to ");
  v78 = v77->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = *&v77->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = std::string::append(&v113, "UInt16 so that it could be supported on ANE.");
  v80 = v79->__r_.__value_.__r.__words[2];
  *__p = *&v79->__r_.__value_.__l.__data_;
  *&v112[0] = v80;
  v79->__r_.__value_.__l.__size_ = 0;
  v79->__r_.__value_.__r.__words[2] = 0;
  v79->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
  if (SBYTE7(v112[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v114.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v100.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v103.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_80;
  }

LABEL_77:
  operator delete(v102.__r_.__value_.__l.__data_);
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    v47 = v101.__r_.__value_.__r.__words[0];
    goto LABEL_79;
  }

LABEL_80:
  if (v115 != v117)
  {
    free(v115);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v112 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    operator new();
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v44 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v118[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if (SBYTE7(v118[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
    goto LABEL_99;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v113), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v105 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v113) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v113) + 8 * v37);
  v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
  v120.__r_.__value_.__r.__words[2] = v27;
  v120.__r_.__value_.__l.__size_ = 0x100000001;
  v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
  memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v119.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v118;
  memset(v118, 0, sizeof(v118));
  __p[1] = 0x400000004;
  v116.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8);
  v116.__r_.__value_.__r.__words[0] = v38;
  v116.__r_.__value_.__l.__size_ = v39;
  v115.__r_.__value_.__r.__words[0] = 2;
  v47 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
  if (v48)
  {
    v49 = v48;
    v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
    v48 = v49;
  }

  else
  {
    v50 = 0;
  }

  v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16);
  v51 = v119.__r_.__value_.__r.__words[0];
  v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v53 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
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

  v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52);
  v57 = __p[0];
  v58 = LODWORD(__p[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v59 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
  if (v60)
  {
    v61 = v60;
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
    v60 = v61;
  }

  else
  {
    v62 = 0;
  }

  v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58);
  v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
  if (__p[0] != v118)
  {
    free(__p[0]);
  }

  if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
  {
    free(v119.__r_.__value_.__l.__data_);
  }

  if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
  {
    free(v120.__r_.__value_.__l.__data_);
  }

  v63 = *(mlir::ShapedType::getShape(v113) + 8 * v27);
  if (v63 < 0x10000)
  {
    if (*(v114 + 9))
    {
      v80 = v114 - 16;
    }

    else
    {
      v80 = 0;
    }

    v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v81)
    {
      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
    }

    else
    {
      v82 = 0;
    }

    __p[0] = mlir::getRankPromotionTypeForANE(v81, v82);
    __p[1] = v83;
    Shape = mlir::ShapedType::getShape(__p);
    v86 = v85;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
    v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v86, ElementTypeOrSelf, 0, 0, 0);
    v88 = v111;
    v89 = v114;
    if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v90 = *(v114 - 2);
      if (!v90)
      {
LABEL_98:
        mlir::ConversionPatternRewriter::eraseOp(a4, v89);
      }

      do
      {
        v91 = *v90;
        v92 = v90[2];
        ((*a4)[5])(a4, v92);
        v93 = v90[1];
        if (v93)
        {
          v94 = *v90;
          *v93 = *v90;
          if (v94)
          {
            v94[1] = v90[1];
          }
        }

        v90[3] = v88;
        v90[1] = v88;
        v95 = *v88;
        *v90 = *v88;
        if (v95)
        {
          *(v95 + 8) = v90;
        }

        *v88 = v90;
        ((*a4)[6])(a4, v92);
        v90 = v91;
      }

      while (v91);
    }

    else
    {
      v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v114 + 3), &v119, &v111);
      v89 = v114;
      v97 = *(v114 - 2);
      if (!v97)
      {
        goto LABEL_98;
      }

      v98 = (v96 - 16);
      do
      {
        v99 = *v97;
        v100 = v97[2];
        ((*a4)[5])(a4, v100);
        v101 = v97[1];
        if (v101)
        {
          v102 = *v97;
          *v101 = *v97;
          if (v102)
          {
            v102[1] = v97[1];
          }
        }

        v97[3] = v98;
        v97[1] = v98;
        v103 = *v98;
        *v97 = *v98;
        if (v103)
        {
          *(v103 + 8) = v97;
        }

        *v98 = v97;
        ((*a4)[6])(a4, v100);
        v97 = v99;
      }

      while (v99);
    }

    v89 = v114;
    goto LABEL_98;
  }

  std::to_string(&v107, v63);
  v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
  v65 = v64->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  v66 = std::string::append(&v108, ") ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
  v69 = v68->__r_.__value_.__r.__words[2];
  *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
  v115.__r_.__value_.__r.__words[2] = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v106, 0xFFFF);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v106;
  }

  else
  {
    v70 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v72 = std::string::append(&v115, v70, size);
  v73 = v72->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v116, "), ");
  v75 = v74->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
  v77 = v76->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
  v79 = v78->__r_.__value_.__r.__words[2];
  *__p = *&v78->__r_.__value_.__l.__data_;
  *&v118[0] = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
  if (SBYTE7(v118[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v119.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v115.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

LABEL_77:
  operator delete(v108.__r_.__value_.__l.__data_);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    operator delete(v107.__r_.__value_.__l.__data_);
  }

LABEL_99:
  if (v121 != v123)
  {
    free(v121);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  __p[0] = v10;
  __p[1] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  __p[0] = v10;
  __p[1] = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(__p, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v113[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v113[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  __p[0] = v17;
  __p[1] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = __p[1];
  }

  else
  {
    v18 = 0;
  }

  if ((HIDWORD(v16) + v16) == v18)
  {
    v112 = 0;
  }

  else
  {
    __p[0] = v17;
    __p[1] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      __p[0] = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v121 = v123;
  v122 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v114, 0);
  v22 = (*(*(*(v114 + 9) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p[0] = v22;
  __p[1] = v23;
  mlir::ShapedType::getShape(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    operator new();
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v44 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v45 = v44->__r_.__value_.__r.__words[2];
    *__p = *&v44->__r_.__value_.__l.__data_;
    *&v118[0] = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if (SBYTE7(v118[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
    goto LABEL_99;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  __p[0] = v29;
  __p[1] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  __p[0] = v29;
  __p[1] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::ShapedType::getShape(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if ((v32 & 1) == 0 || (v33 = IndexFromDim, mlir::ShapedType::getShape(v113), v35 = mlir::anec::getIndexFromDim(3, v34), (v36 & 1) == 0))
  {
    v105 = std::__throw_bad_optional_access[abi:nn200100]();
  }

  v37 = v35;
  v38 = *(mlir::ShapedType::getShape(v113) + 8 * v33);
  v39 = *(mlir::ShapedType::getShape(v113) + 8 * v37);
  v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
  v120.__r_.__value_.__r.__words[2] = v27;
  v120.__r_.__value_.__l.__size_ = 0x100000001;
  v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
  memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1A75989B0, 0x10uLL);
  v119.__r_.__value_.__l.__size_ = 0x200000002;
  __p[0] = v118;
  memset(v118, 0, sizeof(v118));
  __p[1] = 0x400000004;
  v116.__r_.__value_.__r.__words[0] = 1;
  IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v41 = mlir::RankedTensorType::get(&v116, 1, IntegerType, 0);
  if (v41)
  {
    v42 = v41;
    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    v41 = v42;
  }

  else
  {
    v43 = 0;
  }

  v109.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v41, v43, &v120.__r_.__value_.__r.__words[2], 8);
  v116.__r_.__value_.__r.__words[0] = v38;
  v116.__r_.__value_.__l.__size_ = v39;
  v115.__r_.__value_.__r.__words[0] = 2;
  v47 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v48 = mlir::RankedTensorType::get(&v115, 1, v47, 0);
  if (v48)
  {
    v49 = v48;
    v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
    v48 = v49;
  }

  else
  {
    v50 = 0;
  }

  v108.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v48, v50, &v116, 16);
  v51 = v119.__r_.__value_.__r.__words[0];
  v52 = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(v119.__r_.__value_.__r.__words[1]);
  v53 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v54 = mlir::RankedTensorType::get(&v115, 1, v53, 0);
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

  v107.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v54, v56, v51, 8 * v52);
  v57 = __p[0];
  v58 = LODWORD(__p[1]);
  v115.__r_.__value_.__r.__words[0] = LODWORD(__p[1]);
  v59 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v60 = mlir::RankedTensorType::get(&v115, 1, v59, 0);
  if (v60)
  {
    v61 = v60;
    v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
    v60 = v61;
  }

  else
  {
    v62 = 0;
  }

  v115.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::getFromRawBuffer(v60, v62, v57, 8 * v58);
  v111 = (mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16);
  if (__p[0] != v118)
  {
    free(__p[0]);
  }

  if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
  {
    free(v119.__r_.__value_.__l.__data_);
  }

  if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
  {
    free(v120.__r_.__value_.__l.__data_);
  }

  v63 = *(mlir::ShapedType::getShape(v113) + 8 * v27);
  if (v63 < 0x10000)
  {
    if (*(v114 + 9))
    {
      v80 = v114 - 16;
    }

    else
    {
      v80 = 0;
    }

    v81 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v80, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v81)
    {
      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v81 + 8);
    }

    else
    {
      v82 = 0;
    }

    __p[0] = mlir::getRankPromotionTypeForANE(v81, v82);
    __p[1] = v83;
    Shape = mlir::ShapedType::getShape(__p);
    v86 = v85;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
    v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v86, ElementTypeOrSelf, 0, 0, 0);
    v88 = v111;
    v89 = v114;
    if (v119.__r_.__value_.__r.__words[0] == (v111[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v90 = *(v114 - 2);
      if (!v90)
      {
LABEL_98:
        mlir::ConversionPatternRewriter::eraseOp(a4, v89);
      }

      do
      {
        v91 = *v90;
        v92 = v90[2];
        ((*a4)[5])(a4, v92);
        v93 = v90[1];
        if (v93)
        {
          v94 = *v90;
          *v93 = *v90;
          if (v94)
          {
            v94[1] = v90[1];
          }
        }

        v90[3] = v88;
        v90[1] = v88;
        v95 = *v88;
        *v90 = *v88;
        if (v95)
        {
          *(v95 + 8) = v90;
        }

        *v88 = v90;
        ((*a4)[6])(a4, v92);
        v90 = v91;
      }

      while (v91);
    }

    else
    {
      v96 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v114 + 3), &v119, &v111);
      v89 = v114;
      v97 = *(v114 - 2);
      if (!v97)
      {
        goto LABEL_98;
      }

      v98 = (v96 - 16);
      do
      {
        v99 = *v97;
        v100 = v97[2];
        ((*a4)[5])(a4, v100);
        v101 = v97[1];
        if (v101)
        {
          v102 = *v97;
          *v101 = *v97;
          if (v102)
          {
            v102[1] = v97[1];
          }
        }

        v97[3] = v98;
        v97[1] = v98;
        v103 = *v98;
        *v97 = *v98;
        if (v103)
        {
          *(v103 + 8) = v97;
        }

        *v98 = v97;
        ((*a4)[6])(a4, v100);
        v97 = v99;
      }

      while (v99);
    }

    v89 = v114;
    goto LABEL_98;
  }

  std::to_string(&v107, v63);
  v64 = std::string::insert(&v107, 0, "Tensor size on reduction axis (");
  v65 = v64->__r_.__value_.__r.__words[2];
  *&v108.__r_.__value_.__l.__data_ = *&v64->__r_.__value_.__l.__data_;
  v108.__r_.__value_.__r.__words[2] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  v66 = std::string::append(&v108, ") ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = *&v66->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  v68 = std::string::append(&v109, "exceeds the maximum value of UInt16 (");
  v69 = v68->__r_.__value_.__r.__words[2];
  *&v115.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
  v115.__r_.__value_.__r.__words[2] = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v106, 0xFFFF);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = &v106;
  }

  else
  {
    v70 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v106.__r_.__value_.__l.__size_;
  }

  v72 = std::string::append(&v115, v70, size);
  v73 = v72->__r_.__value_.__r.__words[2];
  *&v116.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
  v116.__r_.__value_.__r.__words[2] = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v116, "), ");
  v75 = v74->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v120, "so the 32 bit output type could not be safely converted to ");
  v77 = v76->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v119, "UInt16 so that it could be supported on ANE.");
  v79 = v78->__r_.__value_.__r.__words[2];
  *__p = *&v78->__r_.__value_.__l.__data_;
  *&v118[0] = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
  if (SBYTE7(v118[0]) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v119.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v116.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v106.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_61:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v115.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_62:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v109.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_63:
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

LABEL_77:
  operator delete(v108.__r_.__value_.__l.__data_);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    operator delete(v107.__r_.__value_.__l.__data_);
  }

LABEL_99:
  if (v121 != v123)
  {
    free(v121);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v90 = v10;
  v91 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v90, ODSOperandIndexAndLength);
  }

  v90 = v10;
  v91 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v86[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v86[1] = v13;
  v16 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 14), v14, v15);
  v17 = *(this + 6);
  v90 = v17;
  v91 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v90, v16);
    v18 = v91;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
  }

  else
  {
    v90 = v17;
    v91 = 0;
    v19 = mlir::ValueRange::dereference_iterator(&v90, 0);
    v85 = 0;
    if (v19)
    {
      *&v88 = &v85;
      v90 = v19;
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v88, DefiningOp) & 1) == 0)
      {
        operator new();
      }
    }
  }

  v90 = v92;
  v91 = 0x100000000;
  v21 = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v87, 0);
  v22 = (*(*(*(v87 + 72) + 32 * v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  *&v88 = v22;
  *(&v88 + 1) = v23;
  mlir::ShapedType::getShape(&v88);
  if (!mlir::getPositivePromotedAxes(v85, v24, &v90, 0, 0))
  {
    operator new();
  }

  if (v91 == 1)
  {
    v27 = *v90;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *&v88 = v29;
    *(&v88 + 1) = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(&v88, v28);
    }

    v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(&v88, 0);
    v82 = 1;
    v83 = (mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v90, &v82) - 16);
    v30 = *(mlir::ShapedType::getShape(v86) + 8 * v27);
    if (v30 >= 0x10000)
    {
      std::to_string(&v76, v30);
      v31 = std::string::insert(&v76, 0, "Tensor size on reduction axis (");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      v33 = std::string::append(&v77, ") ");
      v34 = v33->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = *&v33->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v78, "exceeds the maximum value of UInt16 (");
      v36 = v35->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&__p, 0xFFFF);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v79, p_p, size);
      v40 = v39->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = *&v39->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v80, "), ");
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      v43 = std::string::append(&v81, "so the 32 bit output type could not be safely converted to ");
      v44 = v43->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v43->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&v84, "UInt16 so that it could be supported on ANE.");
      v46 = v45->__r_.__value_.__r.__words[2];
      v88 = *&v45->__r_.__value_.__l.__data_;
      v89 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_53;
      }

LABEL_52:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_54;
      }

LABEL_53:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_55;
      }

LABEL_54:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_58:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_79;
      }

LABEL_57:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (*(v87 + 36))
    {
      v50 = v87 - 16;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v51)
    {
      v52 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
    }

    else
    {
      v52 = 0;
    }

    *&v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *(&v88 + 1) = v53;
    Shape = mlir::ShapedType::getShape(&v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(Shape, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (v83[1] & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
LABEL_78:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
      }

      do
      {
        v61 = *v60;
        v62 = v60[2];
        ((*a4)[5])(a4, v62);
        v63 = v60[1];
        if (v63)
        {
          v64 = *v60;
          *v63 = *v60;
          if (v64)
          {
            v64[1] = v60[1];
          }
        }

        v60[3] = v58;
        v60[1] = v58;
        v65 = *v58;
        *v60 = *v58;
        if (v65)
        {
          *(v65 + 8) = v60;
        }

        *v58 = v60;
        ((*a4)[6])(a4, v62);
        v60 = v61;
      }

      while (v61);
    }

    else
    {
      v66 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 1), *(v87 + 24), &v84, &v83);
      v59 = v87;
      v67 = *(v87 - 16);
      if (!v67)
      {
        goto LABEL_78;
      }

      v68 = (v66 - 16);
      do
      {
        v69 = *v67;
        v70 = v67[2];
        ((*a4)[5])(a4, v70);
        v71 = v67[1];
        if (v71)
        {
          v72 = *v67;
          *v71 = *v67;
          if (v72)
          {
            v72[1] = v67[1];
          }
        }

        v67[3] = v68;
        v67[1] = v68;
        v73 = *v68;
        *v67 = *v68;
        if (v73)
        {
          *(v73 + 8) = v67;
        }

        *v68 = v67;
        ((*a4)[6])(a4, v70);
        v67 = v69;
      }

      while (v69);
    }

    v59 = v87;
    goto LABEL_78;
  }

  std::to_string(&v84, v91);
  v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
  v49 = v48->__r_.__value_.__r.__words[2];
  v88 = *&v48->__r_.__value_.__l.__data_;
  v89 = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&v88, *(v87 + 24), a4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

  operator delete(v84.__r_.__value_.__l.__data_);
LABEL_79:
  if (v90 != v92)
  {
    free(v90);
  }

  return matched;
}

void mlir::anonymous namespace::ConvertSignBit::~ConvertSignBit(mlir::_anonymous_namespace_::ConvertSignBit *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignbitOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignbitOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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