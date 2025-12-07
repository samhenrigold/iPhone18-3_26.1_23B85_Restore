ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::GeluOp,mlir::anec::Gelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EE88;
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

void *sub_1A6EA2238()
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

uint64_t mlir::OpConversionPattern<mlir::mps::GeluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GeluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GeluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::GeluOp,mlir::anec::Gelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReluOp,mlir::anec::Relu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EEF8;
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

void *sub_1A6EA2EAC()
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReluOp,mlir::anec::Relu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::RoundOp,mlir::anec::RoundNearest>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EF68;
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

void *sub_1A6EA3B20()
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

uint64_t mlir::OpConversionPattern<mlir::mps::RoundOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::RoundOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::RoundOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::RoundOp,mlir::anec::RoundNearest>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareOp,mlir::anec::ElementwiseSquare>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0EFD8;
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

void *sub_1A6EA4794()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SquareOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SquareOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SquareOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareOp,mlir::anec::ElementwiseSquare>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSquare,void>::id)
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

void mlir::anonymous namespace::ConvertSquareA13Minus::~ConvertSquareA13Minus(mlir::_anonymous_namespace_::ConvertSquareA13Minus *this)
{
  *this = &unk_1F1A0EFD8;
  v2 = *(this + 16);
  v3 = *(this + 34);
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
    v2 = *(this + 16);
  }

  if (v2 != (this + 144))
  {
    free(v2);
  }

  v7 = *(this + 30);
  v8 = *(this + 13);
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
    v8 = *(this + 13);
    v10 = (32 * *(this + 30));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1A6EA5408()
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

void mlir::anonymous namespace::ConvertSquareA14Plus::~ConvertSquareA14Plus(mlir::_anonymous_namespace_::ConvertSquareA14Plus *this)
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

uint64_t mlir::anonymous namespace::ConvertSquareA14Plus::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v39 = &v41;
  v40 = 0x100000000;
  if (v6 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, &v41, v6, 8);
    v8 = v40;
    v9 = v39;
    RankPromotionTypeForANE = v7;
    v43 = 0;
    goto LABEL_5;
  }

  RankPromotionTypeForANE = v7;
  v43 = 0;
  if (v6)
  {
    v8 = 0;
    v9 = &v41;
LABEL_5:
    v10 = 0;
    v11 = &v9[v8];
    do
    {
      *v11++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, v10);
      v10 = v43 + 1;
      v43 = v10;
    }

    while (v10 != v6);
    v12 = v40;
    v13 = v39;
    goto LABEL_8;
  }

  v12 = 0;
  v13 = &v41;
LABEL_8:
  LODWORD(v40) = v12 + v6;
  v37[0] = *v13;
  v37[1] = v37[0];
  mlir::ValueRange::ValueRange(&v38, v37, 2uLL);
  v45 = v38;
  v44 = 261;
  RankPromotionTypeForANE = "mul";
  v43 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v34 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v15);
  v33 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v16);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0, v17);
  v31 = mlir::Builder::getBoolAttr(a4 + 1, 0, v18);
  if (*(a2 + 36))
  {
    v19 = a2 - 16;
  }

  else
  {
    v19 = 0;
  }

  v20 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v20)
  {
    v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v20, v21);
  v43 = v22;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v29 = mlir::MemRefType::get(Shape, v24, isSplat, 0, 0, 0);
  v28 = mlir::ValueRange::dereference_iterator(&v45, 0);
  v27 = mlir::ValueRange::dereference_iterator(&v45, 1);
  v25 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v29, &v28, &v27, &StringAttr, &F32FloatAttr, &v34, &v33, &BoolAttr, &v31);
  (*(*a4 + 1))(a4, a2, v25);
  if (v39 != &v41)
  {
    free(v39);
  }

  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareRootOp,mlir::anec::Sqrt>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0F128;
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

void *sub_1A6EA5910()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SquareRootOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareRootOp,mlir::anec::Sqrt>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SwishOp,mlir::anec::Swish>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0F198;
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

void *sub_1A6EA6584()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SwishOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SwishOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SwishOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SwishOp,mlir::anec::Swish>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TanhOp,mlir::anec::Tanh>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0F208;
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

void *sub_1A6EA71F8()
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

uint64_t mlir::OpConversionPattern<mlir::mps::TanhOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TanhOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TanhOp,mlir::anec::Tanh>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::EqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::EqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::EqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

uint64_t mlir::detail::constant_int_op_binder_any_splat::match(mlir::detail::constant_int_op_binder_any_splat *this, mlir::Operation *a2)
{
  v20 = 0;
  v22 = &v20;
  result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v22, a2);
  if (result)
  {
    v5 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v7 = *this;
      v8 = v20;
      v9 = *(*v20 + 136);
      result = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
      if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v8 = 0;
      }

      v21[0] = v8;
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        mlir::IntegerAttr::getValue(v21, &v22);
        if (*(v7 + 8) >= 0x41u && *v7)
        {
          MEMORY[0x1AC55A040](*v7, 0x1000C8000313F17);
        }

        *v7 = v22;
        *(v7 + 8) = v23;
        return 1;
      }
    }

    else
    {
      v10 = v20;
      if (mlir::DenseElementsAttr::classof(v20))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v22 = v12;
      if (v12)
      {
        v12 = mlir::DenseElementsAttr::isSplat(&v22) ? v10 : 0;
        v19 = v12;
        if (v12)
        {
          v13 = *this;
          mlir::ArrayAttr::getValue(&v19);
          ZinMirCacheTensors::ZinMirCacheTensors(&v22, v19, 0);
          this = v19;
          NumElements = mlir::DenseElementsAttr::getNumElements(&v19);
          ZinMirCacheTensors::ZinMirCacheTensors(v21, this, NumElements);
          v15 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v22);
          v16 = *(*v15 + 136);
          v17 = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
          LODWORD(this) = v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
          if (v16 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v18 = v15;
          }

          else
          {
            v18 = 0;
          }

          v21[0] = v18;
          if (v17)
          {
            mlir::IntegerAttr::getValue(v21, &v22);
            if (*(v13 + 8) >= 0x41u)
            {
              if (*v13)
              {
                MEMORY[0x1AC55A040](*v13, 0x1000C8000313F17);
              }
            }

            *v13 = v22;
            *(v13 + 8) = v23;
          }

          LODWORD(v12) = 1;
        }
      }

      return v12 & this;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>((a4 + 8), *(a2 + 24), v25);
  (*(*a4 + 8))(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NotEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseNotEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, *(a2 + 24), v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GreaterThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThan,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(a4 + 1, *(a2 + 24), v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanZero,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOrEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::GreaterThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::GreaterThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(a4 + 1, *(a2 + 24), v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanEqualZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseGreaterThanEqualZero,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LessThanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThan>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThan,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThan,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOp,mlir::anec::ElementwiseLessThanZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(a4 + 1, *(a2 + 24), v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanZero,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::~ConvertBinaryCompare(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOrEqualToOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::LessThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LessThanOrEqualToOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_25;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 < 0x41)
  {
    v17 = &__p;
    goto LABEL_17;
  }

  if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40)
  {
    v17 = __p;
LABEL_17:
    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (__p)
  {
    MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
  }

LABEL_25:
  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqual,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::ElementwiseEqual::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqual,void>::id)
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

void *mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::~ConvertBinaryCompareToZero(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::LessThanOrEqualToOp,mlir::anec::ElementwiseLessThanEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v25 = v27;
  v26 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v24 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v27;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v6, 8);
    v8 = v26;
    v9 = v25;
    __p = v7;
    *&v24 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v24 + 1;
    *&v24 = v10;
  }

  while (v10 != v6);
  v12 = v26;
  v13 = v25;
LABEL_8:
  LODWORD(v26) = v12 + v6;
  v21 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v24) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v24;
  if (!v15)
  {
    v18 = 0;
    if (v24 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v24 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
      }

LABEL_24:
      operator new();
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 >= 0x41)
  {
LABEL_18:
    if (__p)
    {
      MEMORY[0x1AC55A040](__p, 0x1000C8000313F17);
    }
  }

LABEL_20:
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(a4 + 1, *(a2 + 24), v25);
  ((*a4)[1])(a4, a2, v19);
  if (v25 != v27)
  {
    free(v25);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseLessThanEqualZero,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::anec::ElementwiseGreaterThanEqualZero::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseLessThanEqualZero,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NotOp,mlir::anec::ElementwiseEqualZero>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0F7B8;
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

void *sub_1A6EAD2A8()
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NotOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NotOp,mlir::anec::ElementwiseEqualZero>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseEqualZero,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolAvgOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolAvgOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v28 = v10;
        v29 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v28) || !mlir::ElementsAttr::getShapedType(&v28))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v28);
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
        v28 = 0;
        v29 = 0;
      }

LABEL_3:
      i = v38 + 1;
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
        v37 = v18;
        v38 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v37) || !mlir::ElementsAttr::getShapedType(&v37))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v37);
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
        v37 = 0;
        v38 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 96);
  v35 = *(a3 + 80);
  v36 = v23;
  v24 = *(a3 + 64);
  v25 = *(a3 + 16);
  *__p = *a3;
  v31 = v25;
  v26 = *(a3 + 32);
  v33 = *(a3 + 48);
  v34 = v24;
  v32 = v26;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

uint64_t mlir::anonymous namespace::ConvertPool<mlir::mps::PoolAvgOp,mlir::anec::AveragePool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = *MEMORY[0x1E69E9840];
  v124 = a2;
  v156 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v156, 0);
  if (*(a2 + 36) >= 2u && *(a2 - 32))
  {
    operator new();
  }

  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  if ((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::mps::getElementBitWidth(v7);
  __src = &v155;
  v154 = 0x400000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v124);
  if (Strides)
  {
    v9 = Strides;
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v10, &__src, 1);
  v150 = &v152;
  v151 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v124);
  if (InputAttributeNames)
  {
    v12 = InputAttributeNames;
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v13, &v150, 1);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v124);
  v147 = &v149;
  v148 = 0x800000000;
  if (PaddingStyle)
  {
LABEL_22:
    v144 = &v146;
    v145 = 0x400000000;
    WindowSizes = mlir::mps::PoolAvgOp::getWindowSizes(&v124);
    if (WindowSizes)
    {
      v21 = WindowSizes;
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
      WindowSizes = v21;
    }

    else
    {
      v22 = 0;
    }

    mlir::getIntValues<unsigned long long>(WindowSizes, v22, &v144, 1);
    NormalizeCoordinates = mlir::mps::CropResizeOp::getNormalizeCoordinates(&v124);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v124);
    if (v151)
    {
      v25 = v150;
      v26 = 8 * v151;
      do
      {
        if (*v25 != 1)
        {
          operator new();
        }

        ++v25;
        v26 -= 8;
      }

      while (v26);
    }

    v27 = v124;
    v123 = v156;
    __dst = v143;
    v142 = 0x400000000;
    v28 = v154;
    if (!v154)
    {
LABEL_37:
      v122 = NormalizeCoordinates;
      v138 = v140;
      v139 = 0x400000000;
      v31 = v145;
      if (!v145)
      {
        goto LABEL_44;
      }

      if (v145 < 5)
      {
        v33 = v140;
        v32 = v145;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v145, 8);
        v32 = v145;
        if (!v145)
        {
LABEL_43:
          LODWORD(v139) = v31;
LABEL_44:
          v135 = v137;
          v136 = 0x800000000;
          v34 = v148;
          if (!v148)
          {
            goto LABEL_51;
          }

          if (v148 < 9)
          {
            v36 = v137;
            v35 = v148;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v137, v148, 8);
            v35 = v148;
            if (!v148)
            {
LABEL_50:
              LODWORD(v136) = v34;
LABEL_51:
              v162 = v123;
              v134 = mlir::ValueRange::dereference_iterator(&v162, 0);
              v37 = *(v27 + 24);
              v38 = (*(v134 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v38)
              {
                v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
              }

              else
              {
                v39 = 0;
              }

              RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v38, v39);
              v133 = v40;
              mlir::mps::getElementBitWidth(RankPromotionTypeForANE);
              v42 = *__dst;
              v41 = *(__dst + 1);
              if (*__dst == 1)
              {
                v43 = *(__dst + 1);
                if (v41 == 1)
                {
                  v44 = 0;
                  goto LABEL_62;
                }
              }

              else
              {
                if (v41 != 1)
                {
                  operator new();
                }

                v43 = 1;
              }

              v45 = v42 >= v43;
              LODWORD(v43) = v42 >= v43;
              v44 = !v45;
LABEL_62:
              v46 = v138;
              v47 = *v138;
              v48 = *(v138 + 1);
              if (*v138 == 1)
              {
                if (v48 == 1)
                {
                  v49 = 0;
                  goto LABEL_69;
                }
              }

              else if (v48 != 1)
              {
                operator new();
              }

              v45 = v47 >= v48;
              LODWORD(v48) = v47 >= v48;
              v49 = !v45;
LABEL_69:
              if (v42 == 1 && v41 == 1)
              {
                LODWORD(v43) = v48;
                v44 = v49;
              }

              else if (v43 != v48 || v44 != v49)
              {
                strcpy(v161, "Unable to infer layout");
                HIBYTE(v161[2]) = 22;
                mlir::logMatchFailure(v161, *(v27 + 24), a4);
                if (SHIBYTE(v161[2]) < 0)
                {
                  operator delete(v161[0]);
                }

                v60 = 0;
                v61 = 0;
                v62 = 0;
LABEL_102:
                if (v135 != v137)
                {
                  free(v135);
                }

                if (v138 != v140)
                {
                  free(v138);
                }

                if (__dst != v143)
                {
                  free(__dst);
                }

                if (v61)
                {
                  v161[0] = &v161[2];
                  v161[2] = (v62 | v60);
                  v161[1] = 0x200000001;
                  v63 = v124;
                  if (*(v124 + 36) < 2u)
                  {
                    v64 = 1;
                  }

                  else
                  {
                    v161[3] = 0;
                    v64 = 2;
                    LODWORD(v161[1]) = 2;
                  }

                  mlir::ValueRange::ValueRange(&__p, &v161[2], v64);
                  mlir::ConversionPatternRewriter::replaceOp(a4, v63, __p, v158);
                }

                operator new();
              }

              if (v43)
              {
                v50 = 0;
              }

              else
              {
                v50 = v44 == 1;
              }

              v51 = v50;
              if (v50)
              {
                mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                __p = mlir::anec::getIndexFromDim(1, v52);
                LOBYTE(v158) = v53;
                mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                IndexFromDim = mlir::anec::getIndexFromDim(2, v54);
                LOBYTE(v131) = v55;
                if (v158 != 1 || (v55 & 1) == 0)
                {
                  operator new();
                }

                *__dst = vextq_s8(*__dst, *__dst, 8uLL);
                *v138 = vextq_s8(*v138, *v138, 8uLL);
                if (!PaddingStyle)
                {
                  v56 = v135;
                  v57 = *v135;
                  *v135 = *(v135 + 1);
                  v56[1] = v57;
                }

                v134 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), v37, &v134, &IndexFromDim, &__p) - 16;
                LODWORD(v43) = 1;
                v46 = v138;
              }

              if (v46[v43] != 1)
              {
                operator new();
              }

              v58 = v43;
              v59 = __dst;
              if (*(__dst + v43) != 1)
              {
                operator new();
              }

              if (PaddingStyle > 1)
              {
                if (PaddingStyle != 2 && PaddingStyle != 4)
                {
LABEL_141:
                  v103 = "Unsupported paddingStyle";
LABEL_145:
                  v105 = std::string::basic_string[abi:nn200100]<0>(v161, v103);
                  mlir::logMatchFailure(v105, *(v27 + 24), a4);
                  if (SHIBYTE(v161[2]) < 0)
                  {
                    operator delete(v161[0]);
                  }

                  v60 = 0;
                  v61 = 0;
                  v62 = 0;
                  goto LABEL_102;
                }

                v121 = v51;
                llvm::SmallVectorImpl<unsigned long long>::resize(&v135, 8uLL, 0);
              }

              else
              {
                if (PaddingStyle)
                {
                  if (PaddingStyle == 1)
                  {
                    v121 = v51;
                    llvm::SmallVectorImpl<unsigned long long>::resize(&v135, 8uLL, 0);
                    goto LABEL_117;
                  }

                  goto LABEL_141;
                }

                v104 = v135 + 8 * (2 * v43);
                if (*v104 || v104[1])
                {
                  v103 = "padding is only supported in t,b,l,r,f,b";
                  goto LABEL_145;
                }

                v121 = v51;
                if (InferredResultTypes && v142)
                {
                  v112 = 0;
                  v113 = 0;
                  v114 = 16 * v142;
                  do
                  {
                    Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                    v116 = *(v135 + v113 + 8);
                    if ((*(v135 + v113) + *(Shape + v112) + v116 - *(v138 + v112) + *&v59[v112]) % *&v59[v112])
                    {
                      *(v135 + v113 + 8) = v116 + 1;
                    }

                    v113 += 16;
                    v112 += 8;
                  }

                  while (v114 != v113);
                }
              }

LABEL_117:
              v65 = __dst;
              v66 = __dst + 8 * v58;
              v67 = v142;
              v68 = __dst + 8 * v142;
              if (v68 != v66 + 8)
              {
                memmove(v66, v66 + 8, v68 - (v66 + 8));
                v67 = v142;
                v65 = __dst;
              }

              v69 = v67 - 1;
              LODWORD(v142) = v69;
              if (v69 != 1)
              {
                v70 = *v65;
                v71 = 8 * v69 - 8;
                memmove(v65, v65 + 1, v71);
                *(v65 + v71) = v70;
              }

              v72 = v138;
              v73 = v138 + 8 * v58;
              v74 = v139;
              v75 = v138 + 8 * v139;
              if (v75 != v73 + 8)
              {
                memmove(v73, v73 + 8, v75 - (v73 + 8));
                v74 = v139;
                v72 = v138;
              }

              v76 = v74 - 1;
              LODWORD(v139) = v76;
              if (v76 != 1)
              {
                v77 = *v72;
                v78 = 8 * v76 - 8;
                memmove(v72, v72 + 1, v78);
                *(v72 + v78) = v77;
              }

              v79 = v135;
              v80 = v135 + 8 * (2 * v58);
              v81 = v135 + 8 * v136;
              v82 = v81 - (v80 + 16);
              if (v81 != v80 + 16)
              {
                memmove(v135 + 8 * (2 * v58), v80 + 16, v81 - (v80 + 16));
                v79 = v135;
              }

              v83 = &v80[v82] - v79;
              LODWORD(v136) = v83 >> 3;
              std::rotate[abi:nn200100]<unsigned long long *>(v79, v79 + 16, &v79[v83 & 0x7FFFFFFF8]);
              v161[0] = &v161[2];
              v161[1] = 0x400000000;
              v161[10] = 4;
              __p = 3;
              IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v85 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
              __p = 6;
              v86 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v87 = mlir::RankedTensorType::get(&__p, 1, v86, 0);
              __p = "ksize";
              v160 = 259;
              StringAttr = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v85)
              {
                v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v85 + 8);
              }

              else
              {
                v89 = 0;
              }

              v90 = mlir::DenseElementsAttr::getFromRawBuffer(v85, v89, v138, 8 * v139);
              mlir::NamedAttrList::set(v161, StringAttr, v90);
              __p = "stride";
              v160 = 259;
              v91 = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v85)
              {
                v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v85 + 8);
              }

              else
              {
                v92 = 0;
              }

              v93 = mlir::DenseElementsAttr::getFromRawBuffer(v85, v92, __dst, 8 * v142);
              mlir::NamedAttrList::set(v161, v91, v93);
              __p = "padding";
              v160 = 259;
              v94 = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v87)
              {
                v95 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v87 + 8);
              }

              else
              {
                v95 = 0;
              }

              v96 = mlir::DenseElementsAttr::getFromRawBuffer(v87, v95, v135, 8 * v136);
              mlir::NamedAttrList::set(v161, v94, v96);
              if (v122)
              {
                UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v97);
                mlir::NamedAttrList::set(v161, "inc_pad", 7uLL, UnitAttr);
              }

              v99 = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v27 + 24), &v134, v161);
              v100 = v99 - 16;
              v129 = v99 - 16;
              if (v121)
              {
                v101 = (*(v99 - 1) & 0xFFFFFFFFFFFFFFF8);
                if (v101)
                {
                  v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v101 + 8);
                }

                else
                {
                  v102 = 0;
                }

                IndexFromDim = v101;
                v131 = v102;
                mlir::ShapedType::getShape(&IndexFromDim);
                v107 = mlir::anec::getIndexFromDim(1, v106);
                v109 = v108;
                v127 = v107;
                v128 = v108;
                mlir::ShapedType::getShape(&IndexFromDim);
                v125 = mlir::anec::getIndexFromDim(2, v110);
                v126 = v111;
                if ((v109 & 1) == 0 || (v111 & 1) == 0)
                {
                  std::string::basic_string[abi:nn200100]<0>(&__p, "Cannot infer channel and depth dimensions for 3D Pooling");
                  mlir::logMatchFailure(&__p, *(v27 + 24), a4);
                  if (v159 < 0)
                  {
                    operator delete(__p);
                  }

                  v60 = 0;
                  v61 = 0;
                  v62 = 0;
                  goto LABEL_156;
                }

                v100 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), *(v27 + 24), &v129, &v125, &v127) - 16;
                v129 = v100;
              }

              v62 = v100 & 0xFFFFFFFFFFFFFF00;
              v60 = v100;
              v61 = 1;
LABEL_156:
              if (v161[0] != &v161[2])
              {
                free(v161[0]);
              }

              goto LABEL_102;
            }

            v36 = v135;
          }

          memcpy(v36, v147, 8 * v35);
          goto LABEL_50;
        }

        v33 = v138;
      }

      memcpy(v33, v144, 8 * v32);
      goto LABEL_43;
    }

    if (v154 < 5)
    {
      v30 = v143;
      v29 = v154;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v143, v154, 8);
      v29 = v154;
      if (!v154)
      {
LABEL_36:
        LODWORD(v142) = v28;
        goto LABEL_37;
      }

      v30 = __dst;
    }

    memcpy(v30, __src, 8 * v29);
    goto LABEL_36;
  }

  mlir::mps::PoolAvgOp::getExplicitPadding(&v124);
  if ((v15 & 1) == 0)
  {
    operator new();
  }

  ExplicitPadding = mlir::mps::PoolAvgOp::getExplicitPadding(&v124);
  if (v17)
  {
    if (ExplicitPadding)
    {
      v18 = ExplicitPadding;
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      ExplicitPadding = v18;
    }

    else
    {
      v19 = 0;
    }

    mlir::getIntValues<unsigned long long>(ExplicitPadding, v19, &v147, 1);
    goto LABEL_22;
  }

  v117 = std::__throw_bad_optional_access[abi:nn200100]();
  return llvm::SmallVectorImpl<unsigned long long>::resize(v117, v118, v119);
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::resize(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  v4 = a2 - v3;
  if (a2 != v3)
  {
    if (a2 < v3)
    {
LABEL_11:
      *(result + 8) = a2;
      return result;
    }

    if (*(result + 12) < a2)
    {
      v12 = a2 - v3;
      v13 = result;
      v11 = a3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), a2, 8);
      a3 = v11;
      v4 = v12;
      result = v13;
      v3 = *(v13 + 8);
      if (v12)
      {
        goto LABEL_5;
      }
    }

    else if (v4)
    {
LABEL_5:
      v5 = *result + 8 * v3;
      v6 = v5;
      v7 = v4;
      if (v4 < 4)
      {
        goto LABEL_17;
      }

      v6 = (v5 + 8 * (v4 & 0xFFFFFFFFFFFFFFFCLL));
      v7 = v4 & 3;
      v8 = vdupq_n_s64(a3);
      v9 = (v5 + 16);
      v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v9[-1] = v8;
        *v9 = v8;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v4 != (v4 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_17:
        do
        {
          *v6++ = a3;
          --v7;
        }

        while (v7);
      }
    }

    LODWORD(a2) = v3 + v4;
    goto LABEL_11;
  }

  return result;
}

uint64_t mlir::anonymous namespace::updatePoolPadding(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t **a7, int a8, char a9)
{
  v55[0] = a1;
  v55[1] = a2;
  v13 = *a3;
  v14 = *a5;
  mlir::ShapedType::getShape(v55);
  v16 = *(mlir::ShapedType::getShape(v55) + 8 * (v15 - 4));
  v17 = v16 % v14;
  if (v16 % v14)
  {
    v18 = v16 % v14;
  }

  else
  {
    v18 = v14;
  }

  v19 = (v13 - v18) & ~((v13 - v18) >> 63);
  v20 = v19 >> 1;
  v21 = *a7;
  v22 = v19 - (v19 >> 1);
  *v21 = v20;
  v21[1] = v22;
  if (a9)
  {
    *v21 = v22;
    v21[1] = v20;
    v22 = v20;
  }

  if (v17)
  {
    v23 = a8 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v21[1] = v22 + 1;
  }

  v24 = a3[1];
  v25 = a5[1];
  mlir::ShapedType::getShape(v55);
  v27 = *(mlir::ShapedType::getShape(v55) + 8 * (v26 - 3));
  v28 = v27 % v25;
  if (v27 % v25)
  {
    v29 = v27 % v25;
  }

  else
  {
    v29 = v25;
  }

  v30 = (v24 - v29) & ~((v24 - v29) >> 63);
  v31 = v30 >> 1;
  v32 = *a7;
  v33 = v30 - (v30 >> 1);
  v32[2] = v31;
  v32[3] = v33;
  if (a9)
  {
    v32[2] = v33;
    v32[3] = v31;
    v33 = v31;
  }

  if (v28)
  {
    v34 = a8 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v32[3] = v33 + 1;
  }

  v35 = a3[2];
  v36 = a5[2];
  mlir::ShapedType::getShape(v55);
  v38 = *(mlir::ShapedType::getShape(v55) + 8 * (v37 - 2)) % v36;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v36;
  }

  v40 = (v35 - v39) & ~((v35 - v39) >> 63);
  v41 = v40 >> 1;
  v42 = *a7;
  v43 = v40 - (v40 >> 1);
  v42[4] = v41;
  v42[5] = v43;
  if (a9)
  {
    v42[4] = v43;
    v42[5] = v41;
    v43 = v41;
  }

  if (v38 && a8)
  {
    v42[5] = v43 + 1;
  }

  v44 = a3[3];
  v45 = a5[3];
  mlir::ShapedType::getShape(v55);
  v47 = v46 - 1;
  result = mlir::ShapedType::getShape(v55);
  v49 = *(result + 8 * v47) % v45;
  if (v49)
  {
    v50 = *(result + 8 * v47) % v45;
  }

  else
  {
    v50 = v45;
  }

  v51 = (v44 - v50) & ~((v44 - v50) >> 63);
  v52 = v51 >> 1;
  v53 = *a7;
  v54 = v51 - (v51 >> 1);
  v53[6] = v52;
  v53[7] = v54;
  if (a9)
  {
    v53[6] = v54;
    v53[7] = v52;
    v54 = v52;
  }

  if (v49)
  {
    if (a8)
    {
      v53[7] = v54 + 1;
    }
  }

  return result;
}

char *std::rotate[abi:nn200100]<unsigned long long *>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else
    {
      v4 = __src + 8;
      if (__src + 8 == a2)
      {
        v11 = *__src;
        v12 = a3 - a2;
        v13 = __src;
        memmove(__src, __src + 8, a3 - a2);
        v3 = &v13[v12];
        *v3 = v11;
      }

      else
      {
        v5 = a2 + 8;
        if (a2 + 8 == a3)
        {
          v14 = a3 - 8;
          v15 = *(a3 - 1);
          v3 = __src + 8;
          v16 = a3 - 8 - __src;
          if (v14 != __src)
          {
            v17 = __src;
            memmove(__src + 8, __src, v16);
            __src = v17;
          }

          *__src = v15;
        }

        else
        {
          v6 = a2 - __src;
          v7 = (a2 - __src) >> 3;
          v8 = (a3 - a2) >> 3;
          if (v7 == v8)
          {
            do
            {
              v9 = *(v4 - 1);
              *(v4 - 1) = *(v5 - 1);
              *(v5 - 1) = v9;
              if (v4 == a2)
              {
                break;
              }

              v4 += 8;
              v10 = v5 == a3;
              v5 += 8;
            }

            while (!v10);
            return a2;
          }

          else
          {
            v18 = (a2 - __src) >> 3;
            do
            {
              v19 = v18;
              v18 = v8;
              v8 = v19 % v8;
            }

            while (v8);
            v20 = &__src[8 * v18];
            do
            {
              v22 = *(v20 - 1);
              v20 -= 8;
              v21 = v22;
              v23 = &v20[v6];
              v24 = v20;
              do
              {
                v25 = v24;
                v24 = v23;
                *v25 = *v23;
                v26 = (a3 - v23) >> 3;
                v27 = __OFSUB__(v7, v26);
                v29 = v7 - v26;
                v28 = (v29 < 0) ^ v27;
                v23 = &__src[8 * v29];
                if (v28)
                {
                  v23 = v24 + v6;
                }
              }

              while (v23 != v20);
              *v24 = v21;
            }

            while (v20 != __src);
            return &__src[a3 - a2];
          }
        }
      }
    }
  }

  return v3;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = ANECStepToZinIrDims3D(a4);
  mlir::anec::AveragePool::build(a1, v19, a3, 1uLL, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolL2NormOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PoolL2NormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolL2NormOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 104);
  v37 = *(a3 + 96);
  v38 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v38 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v37, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v28 = v10;
        v29 = v11;
        if (v10)
        {
          if (!mlir::ElementsAttr::getShapedType(&v28) || !mlir::ElementsAttr::getShapedType(&v28))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v28);
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
        v28 = 0;
        v29 = 0;
      }

LABEL_3:
      i = v38 + 1;
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
        v37 = v18;
        v38 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v37) || !mlir::ElementsAttr::getShapedType(&v37))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v37);
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
        v37 = 0;
        v38 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 96);
  v35 = *(a3 + 80);
  v36 = v23;
  v24 = *(a3 + 64);
  v25 = *(a3 + 16);
  *__p = *a3;
  v31 = v25;
  v26 = *(a3 + 32);
  v33 = *(a3 + 48);
  v34 = v24;
  v32 = v26;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

ZinIrHalH13g *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolL2NormOp,mlir::anec::L2NormPool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v121 = a2;
  v153 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v153, 0);
  if (*(a2 + 36) >= 2u && *(a2 - 32))
  {
    operator new();
  }

  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  if ((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::mps::getElementBitWidth(v7);
  __src = &v152;
  v151 = 0x400000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v121);
  if (Strides)
  {
    v9 = Strides;
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v10, &__src, 1);
  v147 = &v149;
  v148 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v121);
  if (InputAttributeNames)
  {
    v12 = InputAttributeNames;
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v13, &v147, 1);
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v121);
  v144 = &v146;
  v145 = 0x800000000;
  if (PaddingStyle)
  {
LABEL_22:
    v141 = &v143;
    v142 = 0x400000000;
    WindowSizes = mlir::mps::PoolAvgOp::getWindowSizes(&v121);
    if (WindowSizes)
    {
      v21 = WindowSizes;
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*WindowSizes + 8);
      WindowSizes = v21;
    }

    else
    {
      v22 = 0;
    }

    mlir::getIntValues<unsigned long long>(WindowSizes, v22, &v141, 1);
    mlir::mps::CropResizeOp::getNormalizeCoordinates(&v121);
    InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v121);
    if (v148)
    {
      v24 = v147;
      v25 = 8 * v148;
      do
      {
        if (*v24 != 1)
        {
          operator new();
        }

        ++v24;
        v25 -= 8;
      }

      while (v25);
    }

    v26 = v121;
    v120 = v153;
    __dst = v140;
    v139 = 0x400000000;
    v27 = v151;
    if (!v151)
    {
LABEL_37:
      v135 = v137;
      v136 = 0x400000000;
      v30 = v142;
      if (!v142)
      {
        goto LABEL_44;
      }

      if (v142 < 5)
      {
        v32 = v137;
        v31 = v142;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v135, v137, v142, 8);
        v31 = v142;
        if (!v142)
        {
LABEL_43:
          LODWORD(v136) = v30;
LABEL_44:
          v132 = v134;
          v133 = 0x800000000;
          v33 = v145;
          if (!v145)
          {
            goto LABEL_51;
          }

          if (v145 < 9)
          {
            v35 = v134;
            v34 = v145;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v134, v145, 8);
            v34 = v145;
            if (!v145)
            {
LABEL_50:
              LODWORD(v133) = v33;
LABEL_51:
              v159 = v120;
              v131 = mlir::ValueRange::dereference_iterator(&v159, 0);
              v36 = *(v26 + 24);
              v37 = (*(v131 + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v37)
              {
                v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
              }

              else
              {
                v38 = 0;
              }

              RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v37, v38);
              v130 = v39;
              mlir::mps::getElementBitWidth(RankPromotionTypeForANE);
              v41 = *__dst;
              v40 = *(__dst + 1);
              if (*__dst == 1)
              {
                v42 = *(__dst + 1);
                if (v40 == 1)
                {
                  v43 = 0;
                  goto LABEL_62;
                }
              }

              else
              {
                if (v40 != 1)
                {
                  operator new();
                }

                v42 = 1;
              }

              v44 = v41 >= v42;
              LODWORD(v42) = v41 >= v42;
              v43 = !v44;
LABEL_62:
              v45 = v135;
              v46 = *v135;
              v47 = *(v135 + 1);
              if (*v135 == 1)
              {
                if (v47 == 1)
                {
                  v48 = 0;
                  goto LABEL_69;
                }
              }

              else if (v47 != 1)
              {
                operator new();
              }

              v44 = v46 >= v47;
              LODWORD(v47) = v46 >= v47;
              v48 = !v44;
LABEL_69:
              if (v41 == 1 && v40 == 1)
              {
                LODWORD(v42) = v47;
                v43 = v48;
              }

              else if (v42 != v47 || v43 != v48)
              {
                strcpy(v158, "Unable to infer layout");
                HIBYTE(v158[2]) = 22;
                mlir::logMatchFailure(v158, *(v26 + 24), a4);
                if (SHIBYTE(v158[2]) < 0)
                {
                  operator delete(v158[0]);
                }

                v59 = 0;
                v60 = 0;
                v61 = 0;
LABEL_102:
                if (v132 != v134)
                {
                  free(v132);
                }

                if (v135 != v137)
                {
                  free(v135);
                }

                if (__dst != v140)
                {
                  free(__dst);
                }

                if (v60)
                {
                  v158[0] = &v158[2];
                  v158[2] = (v61 | v59);
                  v158[1] = 0x200000001;
                  v62 = v121;
                  if (*(v121 + 36) < 2u)
                  {
                    v63 = 1;
                  }

                  else
                  {
                    v158[3] = 0;
                    v63 = 2;
                    LODWORD(v158[1]) = 2;
                  }

                  mlir::ValueRange::ValueRange(&__p, &v158[2], v63);
                  mlir::ConversionPatternRewriter::replaceOp(a4, v62, __p, v155);
                }

                operator new();
              }

              if (v42)
              {
                v49 = 0;
              }

              else
              {
                v49 = v43 == 1;
              }

              v50 = v49;
              if (v49)
              {
                mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                __p = mlir::anec::getIndexFromDim(1, v51);
                LOBYTE(v155) = v52;
                mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                IndexFromDim = mlir::anec::getIndexFromDim(2, v53);
                LOBYTE(v128) = v54;
                if (v155 != 1 || (v54 & 1) == 0)
                {
                  operator new();
                }

                *__dst = vextq_s8(*__dst, *__dst, 8uLL);
                *v135 = vextq_s8(*v135, *v135, 8uLL);
                if (!PaddingStyle)
                {
                  v55 = v132;
                  v56 = *v132;
                  *v132 = *(v132 + 1);
                  v55[1] = v56;
                }

                v131 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), v36, &v131, &IndexFromDim, &__p) - 16;
                LODWORD(v42) = 1;
                v45 = v135;
              }

              if (v45[v42] != 1)
              {
                operator new();
              }

              v57 = v42;
              v58 = __dst;
              if (*(__dst + v42) != 1)
              {
                operator new();
              }

              if (PaddingStyle > 1)
              {
                if (PaddingStyle != 2 && PaddingStyle != 4)
                {
LABEL_139:
                  v100 = "Unsupported paddingStyle";
LABEL_143:
                  v102 = std::string::basic_string[abi:nn200100]<0>(v158, v100);
                  mlir::logMatchFailure(v102, *(v26 + 24), a4);
                  if (SHIBYTE(v158[2]) < 0)
                  {
                    operator delete(v158[0]);
                  }

                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  goto LABEL_102;
                }

                v119 = v50;
                llvm::SmallVectorImpl<unsigned long long>::resize(&v132, 8uLL, 0);
              }

              else
              {
                if (PaddingStyle)
                {
                  if (PaddingStyle == 1)
                  {
                    v119 = v50;
                    llvm::SmallVectorImpl<unsigned long long>::resize(&v132, 8uLL, 0);
                    goto LABEL_117;
                  }

                  goto LABEL_139;
                }

                v101 = v132 + 8 * (2 * v42);
                if (*v101 || v101[1])
                {
                  v100 = "padding is only supported in t,b,l,r,f,b";
                  goto LABEL_143;
                }

                v119 = v50;
                if (InferredResultTypes && v139)
                {
                  v109 = 0;
                  v110 = 0;
                  v111 = 16 * v139;
                  do
                  {
                    Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
                    v113 = *(v132 + v110 + 8);
                    if ((*(v132 + v110) + *(Shape + v109) + v113 - *(v135 + v109) + *&v58[v109]) % *&v58[v109])
                    {
                      *(v132 + v110 + 8) = v113 + 1;
                    }

                    v110 += 16;
                    v109 += 8;
                  }

                  while (v111 != v110);
                }
              }

LABEL_117:
              v64 = __dst;
              v65 = __dst + 8 * v57;
              v66 = v139;
              v67 = __dst + 8 * v139;
              if (v67 != v65 + 8)
              {
                memmove(v65, v65 + 8, v67 - (v65 + 8));
                v66 = v139;
                v64 = __dst;
              }

              v68 = v66 - 1;
              LODWORD(v139) = v68;
              if (v68 != 1)
              {
                v69 = *v64;
                v70 = 8 * v68 - 8;
                memmove(v64, v64 + 1, v70);
                *(v64 + v70) = v69;
              }

              v71 = v135;
              v72 = v135 + 8 * v57;
              v73 = v136;
              v74 = v135 + 8 * v136;
              if (v74 != v72 + 8)
              {
                memmove(v72, v72 + 8, v74 - (v72 + 8));
                v73 = v136;
                v71 = v135;
              }

              v75 = v73 - 1;
              LODWORD(v136) = v75;
              if (v75 != 1)
              {
                v76 = *v71;
                v77 = 8 * v75 - 8;
                memmove(v71, v71 + 1, v77);
                *(v71 + v77) = v76;
              }

              v78 = v132;
              v79 = v132 + 8 * (2 * v57);
              v80 = v132 + 8 * v133;
              v81 = v80 - (v79 + 16);
              if (v80 != v79 + 16)
              {
                memmove(v132 + 8 * (2 * v57), v79 + 16, v80 - (v79 + 16));
                v78 = v132;
              }

              v82 = &v79[v81] - v78;
              LODWORD(v133) = v82 >> 3;
              std::rotate[abi:nn200100]<unsigned long long *>(v78, v78 + 16, &v78[v82 & 0x7FFFFFFF8]);
              v158[0] = &v158[2];
              v158[1] = 0x400000000;
              v158[10] = 4;
              __p = 3;
              IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v84 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
              __p = 6;
              v85 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v86 = mlir::RankedTensorType::get(&__p, 1, v85, 0);
              __p = "ksize";
              v157 = 259;
              StringAttr = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v84)
              {
                v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
              }

              else
              {
                v88 = 0;
              }

              v89 = mlir::DenseElementsAttr::getFromRawBuffer(v84, v88, v135, 8 * v136);
              mlir::NamedAttrList::set(v158, StringAttr, v89);
              __p = "stride";
              v157 = 259;
              v90 = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v84)
              {
                v91 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
              }

              else
              {
                v91 = 0;
              }

              v92 = mlir::DenseElementsAttr::getFromRawBuffer(v84, v91, __dst, 8 * v139);
              mlir::NamedAttrList::set(v158, v90, v92);
              __p = "padding";
              v157 = 259;
              v93 = mlir::Builder::getStringAttr((a4 + 8), &__p);
              if (v86)
              {
                v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
              }

              else
              {
                v94 = 0;
              }

              v95 = mlir::DenseElementsAttr::getFromRawBuffer(v86, v94, v132, 8 * v133);
              mlir::NamedAttrList::set(v158, v93, v95);
              v96 = mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v26 + 24), &v131, v158);
              v97 = v96 - 16;
              v126 = v96 - 16;
              if (v119)
              {
                v98 = (*(v96 - 1) & 0xFFFFFFFFFFFFFFF8);
                if (v98)
                {
                  v99 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
                }

                else
                {
                  v99 = 0;
                }

                IndexFromDim = v98;
                v128 = v99;
                mlir::ShapedType::getShape(&IndexFromDim);
                v104 = mlir::anec::getIndexFromDim(1, v103);
                v106 = v105;
                v124 = v104;
                v125 = v105;
                mlir::ShapedType::getShape(&IndexFromDim);
                v122 = mlir::anec::getIndexFromDim(2, v107);
                v123 = v108;
                if ((v106 & 1) == 0 || (v108 & 1) == 0)
                {
                  std::string::basic_string[abi:nn200100]<0>(&__p, "Cannot infer channel and depth dimensions for 3D Pooling");
                  mlir::logMatchFailure(&__p, *(v26 + 24), a4);
                  if (v156 < 0)
                  {
                    operator delete(__p);
                  }

                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  goto LABEL_154;
                }

                v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a4 + 8), *(v26 + 24), &v126, &v122, &v124) - 16;
                v126 = v97;
              }

              v61 = v97 & 0xFFFFFFFFFFFFFF00;
              v59 = v97;
              v60 = 1;
LABEL_154:
              if (v158[0] != &v158[2])
              {
                free(v158[0]);
              }

              goto LABEL_102;
            }

            v35 = v132;
          }

          memcpy(v35, v144, 8 * v34);
          goto LABEL_50;
        }

        v32 = v135;
      }

      memcpy(v32, v141, 8 * v31);
      goto LABEL_43;
    }

    if (v151 < 5)
    {
      v29 = v140;
      v28 = v151;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v140, v151, 8);
      v28 = v151;
      if (!v151)
      {
LABEL_36:
        LODWORD(v139) = v27;
        goto LABEL_37;
      }

      v29 = __dst;
    }

    memcpy(v29, __src, 8 * v28);
    goto LABEL_36;
  }

  mlir::mps::PoolAvgOp::getExplicitPadding(&v121);
  if ((v15 & 1) == 0)
  {
    operator new();
  }

  ExplicitPadding = mlir::mps::PoolAvgOp::getExplicitPadding(&v121);
  if (v17)
  {
    if (ExplicitPadding)
    {
      v18 = ExplicitPadding;
      v19 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
      ExplicitPadding = v18;
    }

    else
    {
      v19 = 0;
    }

    mlir::getIntValues<unsigned long long>(ExplicitPadding, v19, &v144, 1);
    goto LABEL_22;
  }

  v114 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(v114, v115, v116, v117);
}