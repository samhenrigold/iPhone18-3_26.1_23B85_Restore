uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LogarithmBase2Op,mlir::anec::Log2>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Log2,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Log2,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::EluOp,mlir::anec::Elu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A13DB0;
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

void *sub_1A6F109A4()
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

uint64_t mlir::OpConversionPattern<mlir::mps::EluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::EluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::EluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::EluOp,mlir::anec::Elu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
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

void *mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::~ConvertQuantizationOp(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::~ConvertQuantizationOp(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57[3] = *MEMORY[0x1E69E9840];
  v49 = a2;
  v54 = *(a3 + 56);
  v7 = mlir::ValueRange::dereference_iterator(&v54, 0);
  v48 = v7;
  v8 = mlir::ValueRange::dereference_iterator(&v54, 1);
  v9 = mlir::ValueRange::dereference_iterator(&v54, 2);
  if (mlir::mps::DequantizeOp::hasNDParams(&v49))
  {
    operator new();
  }

  v10 = mlir::ValueRange::dereference_iterator(&v54, 3);
  if (!mlir::isConstantFPZero(v10))
  {
    operator new();
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    v11 = v49;
    v12 = *(a3 + 56);
    v13 = *(a1 + 96);
    if (*(v49 + 36))
    {
      v14 = v49 - 16;
    }

    else
    {
      v14 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
    v16 = mlir::TypeConverter::convertType(v13, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = v16;
    if (v16)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    }

    v52[0] = v17;
    v52[1] = v16;
    __p = v12;
    *&v56 = 1;
    __p = mlir::ValueRange::offset_base(&__p, 1);
    *&v56 = 0;
    v18 = mlir::ValueRange::dereference_iterator(&__p, 0);
    __p = 0;
    *&v56 = 0;
    p_p = &__p;
    v57[0] = v18;
    DefiningOp = mlir::Value::getDefiningOp(v57);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, DefiningOp) & 1) == 0 || (SplatFloat = mlir::getSplatFloatValue<float>(__p, v56), (SplatFloat & 0x100000000) == 0))
    {
      operator new();
    }

    v35 = *&SplatFloat;
    __p = v12;
    *&v56 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v56 = 0;
    v36 = mlir::ValueRange::dereference_iterator(&__p, 0);
    __p = 0;
    *&v56 = 0;
    p_p = &__p;
    v57[0] = v36;
    v37 = mlir::Value::getDefiningOp(v57);
    if (!v37 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v37) & 1) == 0 || (SplatInt = mlir::getSplatIntValue<int>(__p, v56), v50 = SplatInt, v51 = BYTE4(SplatInt), (SplatInt & 0x100000000) == 0))
    {
      operator new();
    }

    v39 = *(v11 + 24);
    __p = v12;
    *&v56 = 0;
    p_p = mlir::ValueRange::dereference_iterator(&__p, 0);
    v43 = llvm::detail::IEEEFloat::IEEEFloat(v57, v35, v40, v41, v42);
    v44 = llvm::APFloatBase::IEEEsingle(v43);
    llvm::APFloat::Storage::Storage(&v56, v57, v44);
    llvm::detail::IEEEFloat::~IEEEFloat(v57);
    v45 = mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>((a4 + 8), v39, v52, &p_p, &__p, &v50);
    v46 = v45 - 16;
    v47 = v56;
    if (llvm::APFloatBase::PPCDoubleDouble(v45) == v47)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v56);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v56);
    }

    v57[0] = v46;
    mlir::ValueRange::ValueRange(&__p, v57, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v11, __p, v56);
  }

  v21 = *(v49 + 24);
  v22 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v22)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  __p = mlir::getRankPromotionTypeForANE(v22, v23);
  *&v56 = v24;
  Shape = mlir::ShapedType::getShape(&__p);
  v27 = v26;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
  v57[0] = mlir::MemRefType::get(Shape, v27, ElementTypeOrSelf, 0, 0, 0);
  v48 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v21, v57, &v48) - 16;
  if (v30)
  {
    if (v32)
    {
      v33 = v49;
      v57[0] = v31;
      mlir::ValueRange::ValueRange(&__p, v57, 1uLL);
      mlir::ConversionPatternRewriter::replaceOp(a4, v33, __p, v56);
    }
  }

  return 0;
}

unint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::createBiasScaleOp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v70[1] = *MEMORY[0x1E69E9840];
  v63 = a3;
  v64 = a2;
  v62 = a4;
  v11 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v61[0] = v11;
  v61[1] = v12;
  v13 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    v59 = 0;
    v60 = 0;
LABEL_11:
    operator new();
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v59 = v13;
  v60 = v14;
  if (!v11)
  {
    goto LABEL_11;
  }

  v15 = mlir::TypeConverter::convertType(*(a1 + 96), v11);
  v16 = v15;
  if (v15)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  v58[0] = v16;
  v58[1] = v15;
  v68 = v70;
  v69 = 0x100000000;
  if ((mlir::mps::DequantizeOp::getAxis(&v64) & 0x100000000) != 0)
  {
    Axis = mlir::mps::DequantizeOp::getAxis(&v64);
  }

  else
  {
    Axis = 0;
  }

  __p[0] = Axis;
  mlir::ShapedType::getShape(v61);
  if ((mlir::getPositivePromotedAxes(__p, 1, v18, &v68, 0, 0) & 1) == 0)
  {
    operator new();
  }

  if (v69 != 1)
  {
    std::to_string(&v57, v69);
    v25 = std::string::insert(&v57, 0, "Operation requires exactly one axis for quantization, but got ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v65, " axes.");
    v28 = v27->__r_.__value_.__r.__words[2];
    *__p = *&v27->__r_.__value_.__l.__data_;
    v67[0] = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    mlir::logMatchFailure(__p, *(v64 + 24), a6);
    if (SHIBYTE(v67[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_21:
        if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

LABEL_43:
        operator delete(v57.__r_.__value_.__l.__data_);
        goto LABEL_44;
      }
    }

    else if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v65.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  Shape = mlir::ShapedType::getShape(&v59);
  NumElements = mlir::ShapedType::getNumElements(Shape, v20);
  FunctionType = mlir::func::FuncOp::getFunctionType(&v64);
  v23 = *(v64 + 24);
  {
    v24 = v9 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_56;
  }

  mlir::ShapedType::getShape(v58);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v29);
  if (NumElements == 1 || *v68 == IndexFromDim)
  {
    __p[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(__p);
    if (DefiningOp)
    {
      {
        v54 = DefiningOp;
        mlir::collect_regions::detail::verifyShouldAddToQueue();
        DefiningOp = v54;
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        if (a5)
        {
          v32 = v62;
        }

        else
        {
          v32 = 0;
        }

        if (a5)
        {
          v33 = 0;
        }

        else
        {
          v33 = v62;
        }

        goto LABEL_52;
      }
    }

    if (NumElements == 1)
    {
LABEL_49:
      v49 = mlir::ShapedType::getShape(v58);
      __p[0] = mlir::MemRefType::get(v49, v50, FunctionType, 0, 0, 0);
      if (a5)
      {
        GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v23, __p, &v63, &v62);
      }

      else
      {
        GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v23, __p, &v63, &v62);
      }

LABEL_52:
      if (*(GOC + 36))
      {
        v51 = GOC - 16;
      }

      else
      {
        v51 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0);
      LOBYTE(v9) = NextResultAtOffset;
      v24 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
      goto LABEL_56;
    }

    v8 = v62;
  }

  __p[0] = v67;
  __p[1] = 0xC00000000;
  v57.__r_.__value_.__r.__words[0] = 0;
  {
    mlir::ShapedType::getShape(v58);
    v56 = 1;
    llvm::SmallVector<long long,6u>::SmallVector(&v65, v38, &v56);
    v39 = mlir::ShapedType::getShape(&v59);
    v41 = mlir::ShapedType::getNumElements(v39, v40);
    v42 = v65.__r_.__value_.__r.__words[0];
    *(v65.__r_.__value_.__r.__words[0] + 8 * *v68) = v41;
    v43 = LODWORD(v65.__r_.__value_.__r.__words[1]);
    isSplat = mlir::ElementsAttr::isSplat(&v59);
    v56 = mlir::MemRefType::get(v42, v43, isSplat, 0, 0, 0);
    v45 = mlir::ShapedType::getShape(v58);
    v47 = v46;
    v48 = mlir::ElementsAttr::isSplat(&v59);
    v55 = mlir::MemRefType::get(v45, v47, v48, 0, 0, 0);
    v62 = (mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), v23, &v56, &v62) - 16);
    v62 = (mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a6 + 8), v23, &v55, &v62) - 16);
    if (v65.__r_.__value_.__l.__data_ != &v65.__r_.__value_.__r.__words[2])
    {
      free(v65.__r_.__value_.__l.__data_);
    }

    goto LABEL_47;
  }

  mlir::ShapedType::getShape(v58);
  if (v37)
  {
    v62 = (GOCConstant - 16);
LABEL_47:
    if (__p[0] != v67)
    {
      free(__p[0]);
    }

    goto LABEL_49;
  }

  if (__p[0] != v67)
  {
    free(__p[0]);
  }

LABEL_44:
  LOBYTE(v9) = 0;
  v24 = 0;
LABEL_56:
  if (v68 != v70)
  {
    free(v68);
  }

  return v24 | v9;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unsigned int *a6)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(v29, v26, v25);
  }

  mlir::OperationState::OperationState(v29, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v18 = *(a5 + 8);
  v17 = (a5 + 8);
  v20 = llvm::APFloatBase::PPCDoubleDouble(v19);
  if (v20 == v18)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v17);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v17);
  }

  mlir::anec::DeQuant::build(a1, v29, v15, v16, v27, *a6);
  if (v20 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v21 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::DeQuant,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v22;
}

uint64_t mlir::getSplatFloatValue<float>(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  if (mlir::ElementsAttr::isSplat(&v22) && ((v21[0] = mlir::ElementsAttr::getShapedType(&v22), v21[1] = v2, v3 = *(*mlir::ElementsAttr::isSplat(v21) + 136), v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v4 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v4 = 1), !v4 ? (v5 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v5 = 1), !v5 ? (v6 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v6 = 1), !v6 ? (v7 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v7 = 1), !v7 ? (v8 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v9 = 1), !v9 ? (v10 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v10 = 1), !v10 ? (v11 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v12 = 1), !v12 ? (v13 = v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v13 = 1), !v13 ? (v14 = v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v14 = 1), !v14 ? (v15 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v15 = 1), !v15 ? (v16 = v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v16 = 1), !v16 ? (v17 = v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v17 = 1), v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    LODWORD(v21[0]) = 0;
    mlir::copyElementsAttrData<float>(v22, v23, v21, 0);
    v18 = LODWORD(v21[0]);
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  return v18 | v19;
}

uint64_t mlir::getSplatIntValue<int>(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  if (mlir::ElementsAttr::isSplat(&v8) && (v7[0] = mlir::ElementsAttr::getShapedType(&v8), v7[1] = v2, *(*mlir::ElementsAttr::isSplat(v7) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    LODWORD(v7[0]) = 0;
    mlir::copyElementsAttrData<int>(v8, v9, v7, 0);
    v5 = v7[0] & 0xFFFFFF00;
    v3 = LOBYTE(v7[0]);
    v4 = 0x100000000;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v4 | v5 | v3;
}

BOOL mlir::anonymous namespace::anonymous namespace::isZeroConstant(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v18 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseIntOrFPElementsAttr>::match(&v15, DefiningOp) || (mlir::DenseElementsAttr::isSplat(&v14) & 1) == 0)
  {
    return 0;
  }

  v2 = v14;
  if (mlir::DenseIntElementsAttr::classof(v14))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v13 = v3;
  if (!v3)
  {
    v6 = v14;
    if (mlir::DenseFPElementsAttr::classof(v14))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v15 = v7;
    if (v7)
    {
      v8 = mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v15, &v18);
      v9 = v19;
      if (llvm::APFloatBase::PPCDoubleDouble(v8) == v9)
      {
        v10 = *(v20 + 28);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
      }

      else
      {
        v10 = BYTE12(v20);
        llvm::detail::IEEEFloat::~IEEEFloat(&v19);
      }

      return (v10 & 7) == 3;
    }

    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v13, &v18);
  v17 = v20;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v18, &v15);
  v4 = v16;
  if (v16 <= 0x40)
  {
    return v15 == 0;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(&v15) == v4;
  if (v15)
  {
    v12 = result;
    MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    return v12;
  }

  return result;
}

int64x2_t **llvm::SmallVector<long long,6u>::SmallVector(int64x2_t **result, unint64_t a2, int64x2_t **a3)
{
  v4 = result + 2;
  *result = (result + 2);
  *(result + 3) = 6;
  v5 = *a3;
  if (a2 >= 7)
  {
    *(result + 2) = 0;
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, a2, 8);
    result = v6;
    v7 = *v6 + (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = a2 & 3;
    v9 = vdupq_n_s64(v5);
    v10 = *v6 + 1;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      do
      {
        *v7++ = v5;
        --v8;
      }

      while (v8);
    }

    goto LABEL_23;
  }

  if (a2)
  {
    v12 = vdupq_n_s64(a2 - 1);
    v13 = vmovn_s64(vcgeq_u64(v12, xmmword_1A7598670));
    if (v13.i8[0])
    {
      *v4 = v5;
    }

    v14 = (a2 + 1) & 0xE;
    if (v13.i8[4])
    {
      result[3] = v5;
    }

    if (v14 != 2)
    {
      v15 = vmovn_s64(vcgtq_u64(v12, xmmword_1A75989F0));
      if (v15.i8[0])
      {
        result[4] = v5;
        if ((v15.i8[4] & 1) == 0)
        {
LABEL_15:
          if (v14 == 4)
          {
            goto LABEL_23;
          }

LABEL_19:
          v16 = vmovn_s64(vcgtq_u64(v12, xmmword_1A75DA400));
          if (v16.i8[0])
          {
            result[6] = v5;
          }

          if (v16.i8[4])
          {
            result[7] = v5;
          }

          goto LABEL_23;
        }
      }

      else if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_15;
      }

      result[5] = v5;
      if (v14 == 4)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

LABEL_23:
  *(result + 2) = a2;
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

uint64_t mlir::detail::constant_op_binder<mlir::DenseIntOrFPElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

void *mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::~ConvertQuantizationOp(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::~ConvertQuantizationOp(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::QuantizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::QuantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v54[3] = *MEMORY[0x1E69E9840];
  v51 = *(a3 + 56);
  v8 = mlir::ValueRange::dereference_iterator(&v51, 0);
  v46 = v8;
  v9 = mlir::ValueRange::dereference_iterator(&v51, 1);
  v10 = mlir::ValueRange::dereference_iterator(&v51, 2);
  if ((*(a1 + 104) & 1) == 0)
  {
    v11 = *(a3 + 56);
    v12 = *(a1 + 96);
    if (*(a2 + 36))
    {
      v13 = a2 - 16;
    }

    else
    {
      v13 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v15 = mlir::TypeConverter::convertType(v12, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    v16 = v15;
    if (v15)
    {
      v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    v49[0] = v16;
    v49[1] = v15;
    __p = v11;
    *&v53 = 1;
    __p = mlir::ValueRange::offset_base(&__p, 1);
    *&v53 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&__p, 0);
    __p = 0;
    *&v53 = 0;
    p_p = &__p;
    v54[0] = v17;
    DefiningOp = mlir::Value::getDefiningOp(v54);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, DefiningOp) & 1) == 0 || (SplatFloat = mlir::getSplatFloatValue<float>(__p, v53), (SplatFloat & 0x100000000) == 0))
    {
      operator new();
    }

    v33 = *&SplatFloat;
    __p = v11;
    *&v53 = 2;
    __p = mlir::ValueRange::offset_base(&__p, 2);
    *&v53 = 0;
    v34 = mlir::ValueRange::dereference_iterator(&__p, 0);
    __p = 0;
    *&v53 = 0;
    p_p = &__p;
    v54[0] = v34;
    v35 = mlir::Value::getDefiningOp(v54);
    if (!v35 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v35) & 1) == 0 || (SplatInt = mlir::getSplatIntValue<int>(__p, v53), v47 = SplatInt, v48 = BYTE4(SplatInt), (SplatInt & 0x100000000) == 0))
    {
      operator new();
    }

    v37 = *(a2 + 24);
    __p = v11;
    *&v53 = 0;
    p_p = mlir::ValueRange::dereference_iterator(&__p, 0);
    v41 = llvm::detail::IEEEFloat::IEEEFloat(v54, v33, v38, v39, v40);
    v42 = llvm::APFloatBase::IEEEsingle(v41);
    llvm::APFloat::Storage::Storage(&v53, v54, v42);
    llvm::detail::IEEEFloat::~IEEEFloat(v54);
    v43 = mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>((a4 + 8), v37, v49, &p_p, &__p, &v47);
    v44 = v43 - 16;
    v45 = v53;
    if (llvm::APFloatBase::PPCDoubleDouble(v43) == v45)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v53);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v53);
    }

    v54[0] = v44;
    mlir::ValueRange::ValueRange(&__p, v54, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v53);
  }

  v20 = *(a2 + 24);
  v21 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21)
  {
    v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  __p = mlir::getRankPromotionTypeForANE(v21, v22);
  *&v53 = v23;
  Shape = mlir::ShapedType::getShape(&__p);
  v26 = v25;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v8);
  v54[0] = mlir::MemRefType::get(Shape, v26, ElementTypeOrSelf, 0, 0, 0);
  v46 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v20, v54, &v46) - 16;
  if (v29)
  {
    if (v31)
    {
      v54[0] = v30;
      mlir::ValueRange::ValueRange(&__p, v54, 1uLL);
      mlir::ConversionPatternRewriter::replaceOp(a4, a2, __p, v53);
    }
  }

  return 0;
}

unint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::QuantizeOp>::createBiasScaleOp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v74[1] = *MEMORY[0x1E69E9840];
  v67 = a3;
  v68 = a2;
  v66 = a4;
  v11 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v65[0] = v11;
  v65[1] = v12;
  v13 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    v63 = 0;
    v64 = 0;
LABEL_11:
    operator new();
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  v63 = v13;
  v64 = v14;
  if (!v11)
  {
    goto LABEL_11;
  }

  v15 = mlir::TypeConverter::convertType(*(a1 + 96), v11);
  v16 = v15;
  if (v15)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  v62[0] = v16;
  v62[1] = v15;
  v72 = v74;
  v73 = 0x100000000;
  if ((mlir::mps::DequantizeOp::getAxis(&v68) & 0x100000000) != 0)
  {
    Axis = mlir::mps::DequantizeOp::getAxis(&v68);
  }

  else
  {
    Axis = 0;
  }

  __p[0] = Axis;
  mlir::ShapedType::getShape(v65);
  if ((mlir::getPositivePromotedAxes(__p, 1, v18, &v72, 0, 0) & 1) == 0)
  {
    operator new();
  }

  if (v73 != 1)
  {
    std::to_string(&v61, v73);
    v25 = std::string::insert(&v61, 0, "Operation requires exactly one axis for quantization, but got ");
    v26 = v25->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&v69, " axes.");
    v28 = v27->__r_.__value_.__r.__words[2];
    *__p = *&v27->__r_.__value_.__l.__data_;
    v71[0] = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    mlir::logMatchFailure(__p, *(v68 + 24), a6);
    if (SHIBYTE(v71[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_21:
        if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_41:
        operator delete(v61.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }
    }

    else if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v69.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  Shape = mlir::ShapedType::getShape(&v63);
  NumElements = mlir::ShapedType::getNumElements(Shape, v20);
  FunctionType = mlir::func::FuncOp::getFunctionType(&v68);
  v23 = *(v68 + 24);
  {
    v24 = v9 & 0xFFFFFFFFFFFFFF00;
    goto LABEL_63;
  }

  mlir::ShapedType::getShape(v62);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v29);
  if (NumElements == 1 || *v72 == IndexFromDim)
  {
    __p[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(__p);
    if (DefiningOp)
    {
      {
        v58 = DefiningOp;
        mlir::collect_regions::detail::verifyShouldAddToQueue();
        DefiningOp = v58;
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        if (a5)
        {
          v33 = v66;
        }

        else
        {
          v33 = 0;
        }

        if (a5)
        {
          v34 = 0;
        }

        else
        {
          v34 = v66;
        }

        goto LABEL_59;
      }
    }

    if (NumElements == 1)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v8 = v66;
  }

  __p[0] = v71;
  __p[1] = 0xC00000000;
  v61.__r_.__value_.__r.__words[0] = 0;
  if ((GOCConstantValue & 1) == 0)
  {
    mlir::ShapedType::getShape(v62);
    v60 = 1;
    llvm::SmallVector<long long,6u>::SmallVector(&v69, v39, &v60);
    v40 = mlir::ShapedType::getShape(&v63);
    v42 = mlir::ShapedType::getNumElements(v40, v41);
    v43 = v69.__r_.__value_.__r.__words[0];
    *(v69.__r_.__value_.__r.__words[0] + 8 * *v72) = v42;
    v44 = LODWORD(v69.__r_.__value_.__r.__words[1]);
    isSplat = mlir::ElementsAttr::isSplat(&v63);
    v60 = mlir::MemRefType::get(v43, v44, isSplat, 0, 0, 0);
    v46 = mlir::ShapedType::getShape(v62);
    v48 = v47;
    v49 = mlir::ElementsAttr::isSplat(&v63);
    v59 = mlir::MemRefType::get(v46, v48, v49, 0, 0, 0);
    v66 = (mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), v23, &v60, &v66) - 16);
    v66 = (mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a6 + 8), v23, &v59, &v66) - 16);
    if (v69.__r_.__value_.__l.__data_ != &v69.__r_.__value_.__r.__words[2])
    {
      free(v69.__r_.__value_.__l.__data_);
    }

    goto LABEL_49;
  }

  mlir::ShapedType::getShape(v62);
  if (v32)
  {
    v66 = (GOCConstant - 16);
LABEL_49:
    v50 = 1;
    goto LABEL_51;
  }

  v50 = 0;
LABEL_51:
  if (__p[0] != v71)
  {
    free(__p[0]);
  }

  if (v50)
  {
    if ((a5 & 1) == 0)
    {
LABEL_58:
      v53 = mlir::ShapedType::getShape(v62);
      __p[0] = mlir::MemRefType::get(v53, v54, FunctionType, 0, 0, 0);
      GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v23, __p, &v67, &v66);
      goto LABEL_59;
    }

    if (GOCConstantValue)
    {
LABEL_57:
      v51 = mlir::ShapedType::getShape(v62);
      __p[0] = mlir::MemRefType::get(v51, v52, FunctionType, 0, 0, 0);
      GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v23, __p, &v67, &v66);
LABEL_59:
      if (*(GOC + 36))
      {
        v55 = GOC - 16;
      }

      else
      {
        v55 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v55, 0);
      LOBYTE(v9) = NextResultAtOffset;
      v24 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
      goto LABEL_63;
    }

LABEL_56:
    __p[0] = mlir::Builder::getF16FloatAttr((a6 + 8), 0.0, v32);
    v66 = (mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>((a6 + 8), v23, &v66, __p) - 16);
    goto LABEL_57;
  }

LABEL_42:
  LOBYTE(v9) = 0;
  v24 = 0;
LABEL_63:
  if (v72 != v74)
  {
    free(v72);
  }

  return v24 | v9;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unsigned int *a6)
{
  v29[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Quant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>(v29, v26, v25);
  }

  mlir::OperationState::OperationState(v29, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v18 = *(a5 + 8);
  v17 = (a5 + 8);
  v20 = llvm::APFloatBase::PPCDoubleDouble(v19);
  if (v20 == v18)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v28, v17);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v28, v17);
  }

  mlir::anec::DeQuant::build(a1, v29, v15, v16, v27, *a6);
  if (v20 == v28.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v28);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v28);
  }

  v21 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Quant,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v22;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,mlir::MemRefType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::BroadcastToOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DDataGradientOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv2DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DDataGradientOp,mlir::anec::Deconvolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v269 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 104);
  v226 = a2;
  v265 = *(a3 + 96);
  v225 = 0;
  v208 = *(a2 + 24);
  v7 = mlir::ValueRange::dereference_iterator(&v265, 0);
  v224 = v7;
  v223 = mlir::ValueRange::dereference_iterator(&v265, 1);
  v209 = a2;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v222[0] = v10;
  v222[1] = v11;
  v12 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v221[0] = v12;
  v221[1] = v13;
  Shape = mlir::ShapedType::getShape(v221);
  v16 = v15;
  v17 = (*(v223 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  v219 = v17;
  v220 = v18;
  *&v244 = v226;
  Groups = mlir::mps::Conv2DDataGradientOp::getGroups(&v244);
  v19 = mlir::ShapedType::getShape(&v219);
  v20 = mlir::ShapedType::getShape(&v219);
  v22 = (v20 + 8 * v21);
  v262 = v264;
  v263 = 0x400000000;
  v23 = (v22 - v19) >> 3;
  if (v23 < 5)
  {
    v24 = 0;
    if (v22 == v19)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v262, v264, v23, 8);
  v24 = v263;
  if (v22 != v19)
  {
LABEL_17:
    memcpy(v262 + 8 * v24, v19, v22 - v19);
    v24 = v263;
  }

LABEL_18:
  LODWORD(v263) = v24 + ((v22 - v19) >> 3);
  v259 = v261;
  v260 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v226);
  if (InputAttributeNames)
  {
    v26 = InputAttributeNames;
    v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v27, &v259, 1);
  if (mlir::mps::PadOp::getPaddingMode(&v226))
  {
    operator new();
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v226) != 2 && mlir::mps::Conv3DOp::getWeightsLayout(&v226) != 3)
  {
    operator new();
  }

  v217 = 0uLL;
  v215 = 0;
  v216 = 0;
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
  v33 = *(*(v226 + 72) + 56);
  *&v244 = &v217;
  *(&v244 + 1) = &v215;
  *&v245 = &v213;
  *(&v245 + 1) = &v211;
  v240 = v33;
  DefiningOp = mlir::Value::getDefiningOp(&v240);
  v207 = (DefiningOp && (v250 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v256) = 1, __dst = &v256, v254 = &v250, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&v244, &__dst), (v256 & 1) != 0) || (v35 = *(*(v226 + 72) + 56), v254 = &v215, v255[0] = &v213, v255[1] = &v211, v256 = v35, (v36 = mlir::Value::getDefiningOp(&v256)) != 0) && (v240 = v36, *(*(v36 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v36 + 46) & 0x80) != 0 && *(v36 + 68) == 4 && (LOBYTE(v230) = 1, v250 = &v230, v251 = &v240, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v250), v230 == 1)) && mlir::ElementsAttr::getNumElements(v211, v212) == 1 && (mlir::getSingleFloatValue<float>(v211, v212) & 0x7FFFFFFF) == 0;
  if (!v217)
  {
    v6 = 1;
  }

  if (v6)
  {
    v203 = 0;
    v204 = 0;
  }

  else
  {
    v204 = mlir::convertElementsAttr(v215, v216, 1);
    *&v244 = mlir::getElementTypeOrSelf(v213);
    isSignedInteger = mlir::Type::isSignedInteger(&v244);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::ElementsAttr::getShapedType(&v213);
    v254 = v39;
    LOBYTE(v244) = 0;
    LOBYTE(v245) = 0;
    v40 = mlir::ShapedType::cloneWith(&__dst, &v244, IntegerType);
    v203 = mlir::rewriteElementsAttr(v213, v214, v40, v41, 1);
  }

  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v240 = &v237;
  v241 = &v236;
  v242[0] = 0;
  __dst = &v240;
  v254 = &v238;
  LOBYTE(v255[0]) = 0;
  LOBYTE(v255[1]) = 0;
  v256 = &v239;
  p_dst = &__dst;
  v258[0] = 0;
  if (*(v226 + 36))
  {
    v42 = v226 - 16;
  }

  else
  {
    v42 = 0;
  }

  *&v244 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  v43 = mlir::Value::getDefiningOp(&v244);
  if (v43 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v256, v43))
  {
    v85 = v237;
    *&v267 = v237;
    v229[0] = v236;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v229);
    v202 = mlir::convertElementsAttr(AsAttribute, v87, 1);
    if (*(v85 + 36))
    {
      v88 = v85 - 16;
    }

    else
    {
      v88 = 0;
    }

    v89 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v88, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v198 = a4;
    if (v89)
    {
      v90 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
    }

    else
    {
      v90 = 0;
    }

    v219 = v89;
    v220 = v90;
    v145 = mlir::ShapedType::getShape(&v219);
    v146 = mlir::ShapedType::getShape(&v219);
    v148 = (v146 + 8 * v147);
    *&v244 = &v245;
    *(&v244 + 1) = 0x400000000;
    v149 = (v148 - v145) >> 3;
    if (v149 < 5)
    {
      v150 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v244, &v245, v149, 8);
      v150 = DWORD2(v244);
    }

    if (v148 != v145)
    {
      memcpy((v244 + 8 * v150), v145, v148 - v145);
      v150 = DWORD2(v244);
    }

    DWORD2(v244) = v150 + ((v148 - v145) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v262, &v244);
    if (v244 != &v245)
    {
      free(v244);
    }

    v151 = (*(v229[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v151)
    {
      v152 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v151 + 8);
    }

    else
    {
      v152 = 0;
    }

    *&v244 = v151;
    *(&v244 + 1) = v152;
    v206 = mlir::ShapedType::getShape(&v244);
    v100 = v153;
    v154 = *(v226 + 24);
    v155 = v262;
    v156 = v263;
    v250 = mlir::mps::ConstantOp::getAsAttribute(&v267);
    v251 = v157;
    *&v244 = mlir::ElementsAttr::getShapedType(&v250);
    *(&v244 + 1) = v158;
    isSplat = mlir::ElementsAttr::isSplat(&v244);
    *&v228 = mlir::MemRefType::get(v155, v156, isSplat, 0, 0, 0);
    *&v230 = mlir::mps::ConstantOp::getAsAttribute(&v267);
    *(&v230 + 1) = v160;
    a4 = v198;
    v161 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v198 + 1), v154, &v228, &v230);
    if (*(v161 + 9))
    {
      v162 = v161 - 16;
    }

    else
    {
      v162 = 0;
    }

    DictionaryAttr = 0;
    v223 = mlir::detail::OpResultImpl::getNextResultAtOffset(v162, 0);
  }

  else
  {
    v234 = 0;
    v235 = 0;
    v232 = 0;
    v233 = 0;
    *&v230 = &v233;
    *(&v230 + 1) = &v232;
    v231 = 0;
    *&v267 = &v234;
    *(&v267 + 1) = &v230;
    v268 = 0;
    v250 = &v267;
    v251 = &v235;
    v252[0] = 0;
    v252[8] = 0;
    if (*(v226 + 36))
    {
      v44 = v226 - 16;
    }

    else
    {
      v44 = 0;
    }

    *&v228 = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
    v45 = mlir::Value::getDefiningOp(&v228);
    if (!v45 || (v229[0] = v45, *(*(v45 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v45 + 46) & 0x80) == 0 || *(v45 + 68) != 2 || (*&v244 = &v227, *(&v244 + 1) = v229, LOBYTE(v227) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(&v244, 1u, &v250), (v227 & 1) == 0))
    {
      DictionaryAttr = 0;
      v202 = 0;
      v205 = 0;
      goto LABEL_72;
    }

    v199 = v234;
    v201 = v233;
    if (*(v234 + 36))
    {
      v46 = v234 - 16;
    }

    else
    {
      v46 = 0;
    }

    v47 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v197 = a4;
    if (v47)
    {
      v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
    }

    else
    {
      v48 = 0;
    }

    v219 = v47;
    v220 = v48;
    v91 = mlir::ShapedType::getShape(&v219);
    v92 = mlir::ShapedType::getShape(&v219);
    v94 = (v92 + 8 * v93);
    *&v244 = &v245;
    *(&v244 + 1) = 0x400000000;
    v95 = (v94 - v91) >> 3;
    if (v95 < 5)
    {
      v96 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v244, &v245, v95, 8);
      v96 = DWORD2(v244);
    }

    if (v94 != v91)
    {
      memcpy((v244 + 8 * v96), v91, v94 - v91);
      v96 = DWORD2(v244);
    }

    DWORD2(v244) = v96 + ((v94 - v91) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v262, &v244);
    if (v244 != &v245)
    {
      free(v244);
    }

    v97 = (*(v231 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v97)
    {
      v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
    }

    else
    {
      v98 = 0;
    }

    v229[0] = v97;
    v229[1] = v98;
    v206 = mlir::ShapedType::getShape(v229);
    v100 = v99;
    v101 = *(v226 + 24);
    v102 = v262;
    v103 = v263;
    v104 = mlir::ElementsAttr::isSplat(&v219);
    *&v244 = mlir::MemRefType::get(v102, v103, v104, 0, 0, 0);
    a4 = v197;
    v105 = (v199 + 16 * ((*(v199 + 44) >> 23) & 1));
    *&v228 = v105[8];
    *&v227 = v105[10];
    F16FloatAttr = v105[9];
    v106 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v197 + 1), v101, &v244, &v228, &v227, &F16FloatAttr);
    if (*(v106 + 9))
    {
      v107 = v106 - 16;
    }

    else
    {
      v107 = 0;
    }

    v223 = mlir::detail::OpResultImpl::getNextResultAtOffset(v107, 0);
    *&v244 = "offset";
    LOWORD(v246) = 259;
    StringAttr = mlir::Builder::getStringAttr(v197 + 1, &v244);
    ZinMirCacheTensors::ZinMirCacheTensors(&v228, StringAttr, *(v201 + 16 * ((*(v201 + 44) >> 23) & 1) + 80));
    *&v244 = "type";
    LOWORD(v246) = 259;
    v109 = mlir::Builder::getStringAttr(v197 + 1, &v244);
    v110 = mlir::TypeAttr::get(v229[0]);
    ZinMirCacheTensors::ZinMirCacheTensors(&v227, v109, v110);
    v244 = v228;
    v245 = v227;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v197 + 1, &v244, 2);
    v202 = 0;
  }

  if (v100 < 2)
  {
    v163 = 1;
  }

  else
  {
    v163 = *v206;
  }

  v164 = v100 - 1;
  if (v100 == 6)
  {
    v164 = 4;
  }

  if (v164 >= 2)
  {
    v165 = v164 - 1;
    v166 = v206 + 1;
    do
    {
      v167 = *v166++;
      if (v167 >= 2)
      {
        operator new();
      }

      --v165;
    }

    while (v165);
  }

  if (v163 >= 2 && *v262 % v163)
  {
    operator new();
  }

  *&v244 = mlir::ElementsAttr::isSplat(&v219);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v244);
  if (IntOrFloatBitWidth > 8 || (v205 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    operator new();
  }

LABEL_72:
  v230 = 0uLL;
  __dst = &v230;
  *&v244 = v223;
  v50 = mlir::Value::getDefiningOp(&v244);
  v200 = DictionaryAttr;
  if (v50)
  {
    v51 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v50);
  }

  else
  {
    v51 = 0;
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v226);
  v210 = 0;
  v229[0] = 0;
  if ((v51 & 1) == 0)
  {
    v53 = v207;
    if (v229[0])
    {
      v53 = 1;
    }

    if ((v53 & 1) == 0)
    {
      *&v244 = *(*(v226 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v244);
      if (AttrData)
      {
        v62 = v61;
        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (v61 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v255[0]) = v61;
        if (v61)
        {
          memmove(&__dst, AttrData, v61);
        }

        *(&__dst + v62) = 0;
      }

      else
      {
        __dst = 0;
        v254 = 0;
        v255[0] = 0;
      }

      v81 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
      v82 = v81->__r_.__value_.__r.__words[2];
      v244 = *&v81->__r_.__value_.__l.__data_;
      *&v245 = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      mlir::logMatchFailure(&v244, *(v226 + 24), a4);
      if (SBYTE7(v245) < 0)
      {
        operator delete(v244);
      }

      v28 = a4;
      if ((SHIBYTE(v255[0]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v29 = __dst;
      goto LABEL_25;
    }
  }

  if ((v6 & 1) == 0)
  {
    v230 = v217;
    v54 = v262;
    v55 = v263;
    *&v244 = mlir::ElementsAttr::getShapedType(&v230);
    *(&v244 + 1) = v56;
    v57 = mlir::ElementsAttr::isSplat(&v244);
    __dst = mlir::MemRefType::get(v54, v55, v57, 0, 0, 0);
    v223 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v208, &__dst, &v230) - 16;
  }

  if (WeightsLayout != 3)
  {
    goto LABEL_105;
  }

  if (v210 != 1)
  {
    if ((v205 & 1) == 0)
    {
      mlir::Value::getLoc(&v223);
      __dst = 0;
      v254 = 0;
      v255[0] = 0;
      operator new();
    }

    goto LABEL_95;
  }

  v58 = v229[0];
  if (!v229[0])
  {
    std::string::basic_string[abi:nn200100]<0>(&v244, "Cannot get the filter definition op");
    v28 = a4;
    mlir::logMatchFailure(&v244, *(v226 + 24), a4);
    if ((SBYTE7(v245) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    v29 = v244;
LABEL_25:
    operator delete(v29);
LABEL_26:
    v30 = 0;
    v31 = 0;
    goto LABEL_27;
  }

  if (*(*(mlir::Value::getDefiningOp(&v223) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    v59 = mlir::Value::getDefiningOp(&v223);
    mlir::ConversionPatternRewriter::eraseOp(a4, v59);
  }

  v223 = v58 - 16;
LABEL_95:
  v63 = (*(v223 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v63)
  {
    v64 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
  }

  else
  {
    v64 = 0;
  }

  v219 = v63;
  v220 = v64;
  v65 = mlir::ShapedType::getShape(&v219);
  v66 = mlir::ShapedType::getShape(&v219);
  v68 = (v66 + 8 * v67);
  *&v244 = &v245;
  *(&v244 + 1) = 0x400000000;
  v69 = (v68 - v65) >> 3;
  if (v69 < 5)
  {
    v70 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v244, &v245, v69, 8);
    v70 = DWORD2(v244);
  }

  if (v68 != v65)
  {
    memcpy((v244 + 8 * v70), v65, v68 - v65);
    v70 = DWORD2(v244);
  }

  DWORD2(v244) = v70 + ((v68 - v65) >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v262, &v244);
  if (v244 != &v245)
  {
    free(v244);
  }

LABEL_105:
  *&v244 = 3;
  v71 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v72 = mlir::RankedTensorType::get(&v244, 1, v71, 0);
  *&v244 = 6;
  v73 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v74 = mlir::RankedTensorType::get(&v244, 1, v73, 0);
  v256 = v258;
  p_dst = 0x200000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v226);
  if (Strides)
  {
    v76 = Strides;
    v77 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v76;
  }

  else
  {
    v77 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v77, &v256, 1);
  v78 = v256;
  if (*v256 != 1 || v256[1] != 1)
  {
    operator new();
  }

  v196 = v74;
  v28 = a4;
  v79 = 8 * p_dst - 16;
  if (p_dst != 2)
  {
    memmove(v256, v256 + 2, 8 * p_dst - 16);
  }

  LODWORD(p_dst) = (v78 + v79 - v256) >> 3;
  *&v244 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v256, v256, &v244);
  if (v72)
  {
    v80 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v80 = 0;
  }

  *&v228 = mlir::DenseElementsAttr::getFromRawBuffer(v72, v80, v256, 8 * p_dst);
  v83 = v259;
  if (*v259 != 1 || v259[1] != 1)
  {
    operator new();
  }

  v84 = 8 * v260 - 16;
  if (v260 != 2)
  {
    memmove(v259, v259 + 2, 8 * v260 - 16);
  }

  LODWORD(v260) = (&v83[v84] - v259) >> 3;
  *&v244 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v259, v259, &v244);
  if (v72)
  {
    v111 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
  }

  else
  {
    v111 = 0;
  }

  *&v227 = mlir::DenseElementsAttr::getFromRawBuffer(v72, v111, v259, 8 * v260);
  v113 = v259[1];
  v112 = v259[2];
  v31 = v113 < 2 && v112 < 2;
  v195 = (*(v262 + 2) - 1) * v113;
  v194 = (*(v262 + 3) - 1) * v112;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v226);
  v116 = Rewriter;
  if (Rewriter)
  {
    v117 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v117 = 0;
  }

  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v226);
  {
    __dst = v255;
    memset(v255, 0, sizeof(v255));
    v254 = 0x600000006;
    v250 = v252;
    memset(v252, 0, sizeof(v252));
    v251 = 0x600000006;
    if (v31)
    {
      v119 = *(Shape + 16);
      v120 = *(mlir::ShapedType::getShape(v222) + 16);
      v121 = v256[1];
      v122 = v239;
      v123 = *(Shape + 24);
      v124 = *(mlir::ShapedType::getShape(v222) + 24);
      v125 = v256;
      v126 = v256[2];
      *&v244 = &v245;
      v246 = 0u;
      v245 = 0u;
      v247 = 0u;
      v127 = v126 - v126 * v124;
      *(&v244 + 1) = 0x600000006;
      *&v246 = v195 - v122;
      v128 = v122 + v119 + v121 - v121 * v120 - v256[1];
      *(&v246 + 1) = v128;
      *&v247 = v194 - v237;
      *(&v247 + 1) = v237 + v123 + v127 - v256[2];
      v129 = v250;
      if ((v195 - v122) > v195)
      {
        *(v250 + 2) = -v122;
        *&v246 = v195;
        v128 = *(&v246 + 1);
      }

      v130 = v128 <= v195;
      v131 = v128 - v195;
      if (!v130)
      {
        *(v129 + 3) = v131;
        *(&v246 + 1) = v195;
      }

      if (v247 > v194)
      {
        *(v129 + 4) = v247 - v194;
        *&v247 = v194;
      }

      if (*(&v247 + 1) > v194)
      {
        *(v129 + 5) = *(&v247 + 1) - v194;
        *(&v247 + 1) = v194;
      }

      v132 = *v125 + v245 - 2 + *(&v245 + 1);
      if (v132 >= 1)
      {
        *(&v245 + 1) = 2 - (*v125 + v245);
        *(v129 + 1) += v132;
      }

      if (v195 + 2 >= 0)
      {
        v133 = (v195 + 2) & 1;
      }

      else
      {
        v133 = -((v195 + 2) & 1);
      }

      v134 = v133 + 2 * ~v195 + v125[1] + v246;
      v135 = v134 + *(&v246 + 1);
      if (v134 + *(&v246 + 1) >= 1)
      {
        *(&v246 + 1) = -v134;
        *(v129 + 3) += v135;
      }

      v136 = v125[2];
      if (v194 + 2 >= 0)
      {
        v137 = (v194 + 2) & 1;
      }

      else
      {
        v137 = -((v194 + 2) & 1);
      }

      v138 = v137 + 2 * ~v194 + v136 + v247;
      v139 = v138 + *(&v247 + 1);
      if (v138 + *(&v247 + 1) >= 1)
      {
        *(&v247 + 1) = -v138;
        *(v129 + 5) += v139;
      }

      v140 = __dst;
      *__dst = -(v245 & (v245 >> 63));
      *&v245 = v245 & ~(v245 >> 63);
      *(v140 + 1) = -(*(&v245 + 1) & (*(&v245 + 1) >> 63));
      *(&v245 + 1) &= ~(*(&v245 + 1) >> 63);
      *(v140 + 2) = -(v246 & (v246 >> 63));
      *&v246 = v246 & ~(v246 >> 63);
      *(v140 + 3) = -(*(&v246 + 1) & (*(&v246 + 1) >> 63));
      *(&v246 + 1) &= ~(*(&v246 + 1) >> 63);
      *(v140 + 4) = -(v247 & (v247 >> 63));
      *&v247 = v247 & ~(v247 >> 63);
      *(v140 + 5) = -(*(&v247 + 1) & (*(&v247 + 1) >> 63));
      v141 = v247;
      v142 = (*(&v247 + 1) & ~(*(&v247 + 1) >> 63));
      *(&v247 + 1) = v142;
      v143 = v246;
      v238 = *(&v246 + 1);
      v239 = v246;
      v236 = v142;
      v237 = v247;
      if (v196)
      {
        v144 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v196 + 8);
      }

      else
      {
        v144 = 0;
      }

      v240 = v196;
      v241 = v144;
      v244 = 0uLL;
      v245 = v143;
      *&v246 = v141;
      *(&v246 + 1) = v142;
      *&v267 = &v244;
      *(&v267 + 1) = 6;
      v169 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v240, &v267);
      v234 = 0;
      v235 = v169;
      v170 = *(v226 + 24);
      *&v244 = v204;
      v240 = v203;
      v172 = v200;
      v171 = v202;
      if (!v205)
      {
        v171 = 0;
        v172 = 0;
      }

      *&v267 = v171;
      v232 = v172;
      v233 = mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v28 + 1, v170, &v224, &v223, &v228, &v227, &v235, &v234, &Groups, &v225, &v244, &v240, &v267, &v232) - 16;
      if (v251)
      {
        v173 = v250;
        v174 = 8 * v251;
        v175 = v250;
        while (*v175 < 1)
        {
          ++v175;
          v174 -= 8;
          if (!v174)
          {
            goto LABEL_246;
          }
        }

        *&v244 = &v245;
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v249 = 0u;
        *(&v244 + 1) = 0xA0000000ALL;
        v240 = v242;
        memset_pattern16(v242, &unk_1A75EA240, 0x28uLL);
        v241 = 0x500000005;
        v243 = vdupq_n_s64(6uLL);
        v248 = v173[1];
        v249 = v173[2];
        v267 = xmmword_1A75EA150;
        v176 = mlir::Builder::getIntegerType(v28 + 1, 64, 0);
        v177 = mlir::RankedTensorType::get(&v267, 2, v176, 0);
        if (v177)
        {
          v178 = v177;
          v179 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v177 + 8);
          v177 = v178;
        }

        else
        {
          v179 = 0;
        }

        v232 = mlir::DenseElementsAttr::getFromRawBuffer(v177, v179, v244, 8 * DWORD2(v244));
        F16FloatAttr = 5;
        v180 = mlir::Builder::getIntegerType(v28 + 1, 64, 0);
        v181 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v180, 0);
        if (v181)
        {
          v182 = v181;
          v183 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v181 + 8);
          v181 = v182;
        }

        else
        {
          v183 = 0;
        }

        *&v267 = mlir::DenseElementsAttr::getFromRawBuffer(v181, v183, v240, 8 * v241);
        F16FloatAttr = mlir::Builder::getF16FloatAttr(v28 + 1, 0.0, v184);
        v233 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(v28 + 1, v208, &v233, &v267, &v232, &F16FloatAttr) - 16;
        if (v240 != v242)
        {
          free(v240);
        }

        if (v244 != &v245)
        {
          free(v244);
        }
      }

LABEL_246:
      v185 = __dst;
      if (*(__dst + 2) || *(__dst + 3))
      {
        v186 = (*(v233 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v186)
        {
          v187 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v186 + 8);
        }

        else
        {
          v187 = 0;
        }

        *&v244 = v186;
        *(&v244 + 1) = v187;
        v188 = *(mlir::ShapedType::getShape(&v244) + 16);
        LODWORD(v267) = 2;
        v189 = *(__dst + 3);
        *&v244 = *(__dst + 2);
        v240 = (v188 - (v244 + v189));
        v233 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(v28 + 1, v208, &v233, &v267, &v244, &v240) - 16;
        v185 = __dst;
      }

      if (*(v185 + 4) || *(v185 + 5))
      {
        v190 = (*(v233 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v190)
        {
          v191 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v190 + 8);
        }

        else
        {
          v191 = 0;
        }

        *&v244 = v190;
        *(&v244 + 1) = v191;
        v192 = *(mlir::ShapedType::getShape(&v244) + 24);
        LODWORD(v267) = 3;
        v193 = *(__dst + 5);
        *&v244 = *(__dst + 4);
        v240 = (v192 - (v244 + v193));
        v233 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(v28 + 1, v208, &v233, &v267, &v244, &v240) - 16;
      }

      v30 = mlir::Value::getDefiningOp(&v233);
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v244, "Dilation not supported for deconvolution");
      mlir::logMatchFailure(&v244, *(v226 + 24), v28);
      if (SBYTE7(v245) < 0)
      {
        operator delete(v244);
      }

      v30 = 0;
    }

    if (v250 != v252)
    {
      free(v250);
    }

    if (__dst != v255)
    {
      free(__dst);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v244, "Unsupported padding values for Conv2D");
    mlir::logMatchFailure(&v244, *(v226 + 24), v28);
    if (SBYTE7(v245) < 0)
    {
      operator delete(v244);
    }

    v30 = 0;
    v31 = 0;
  }

  if (v256 != v258)
  {
    free(v256);
  }

LABEL_27:
  if (v259 != v261)
  {
    free(v259);
  }

  if (v262 != v264)
  {
    free(v262);
  }

  if (v31)
  {
    __dst = (v30 - 16);
    mlir::ValueRange::ValueRange(&v244, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(v28, v209, v244, *(&v244 + 1));
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Deconvolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
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

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (v7)
  {
    v9 = v6 - 16;
    mlir::ValueRange::ValueRange(v10, &v9, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, a2, v10[0], v10[1]);
  }

  return 0;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DDataGradientOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv3DDataGradientOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DDataGradientOp,mlir::anec::Deconvolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v93 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v93, 0);
  v77 = mlir::ValueRange::dereference_iterator(&v93, 1);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v9 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v76[2] = v9;
  v76[3] = v10;
  v11 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v76[0] = v11;
  v76[1] = v12;
  Shape = mlir::ShapedType::getShape(v76);
  v14 = (*(v77 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v75[0] = v14;
  v75[1] = v15;
  v74[3] = 1;
  v16 = mlir::ShapedType::getShape(v75);
  v17 = mlir::ShapedType::getShape(v75);
  v19 = (v17 + 8 * v18);
  v90 = v92;
  v91 = 0x500000000;
  v20 = (v19 - v16) >> 3;
  if (v20 < 6)
  {
    v21 = 0;
    if (v19 == v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v92, v20, 8);
    v21 = v91;
    if (v19 == v16)
    {
LABEL_18:
      LODWORD(v91) = v21 + ((v19 - v16) >> 3);
      v87 = &v89;
      v88 = 0x500000000;
      InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v78);
      if (InputAttributeNames)
      {
        v23 = InputAttributeNames;
        v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
        InputAttributeNames = v23;
      }

      else
      {
        v24 = 0;
      }

      mlir::getIntValues<unsigned long long>(InputAttributeNames, v24, &v87, 1);
      PaddingMode = mlir::mps::PadOp::getPaddingMode(&v78);
      v26 = mlir::mps::PadOp::getPaddingMode(&v78);
      WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v78);
      v28 = mlir::mps::Conv3DOp::getWeightsLayout(&v78);
      if (PaddingMode != 7 && v26 != 8)
      {
        operator new();
      }

      if (WeightsLayout != 10 && v28 != 9)
      {
        operator new();
      }

      if (PaddingMode == 7)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      v30 = 2;
      if (PaddingMode == 7)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      if (PaddingMode == 7)
      {
        v32 = 4;
      }

      else
      {
        v32 = 3;
      }

      v67 = *(Shape + 8 * v31);
      v68 = *(Shape + 8 * v29);
      if (v28 == 9)
      {
        v33 = 3;
      }

      else
      {
        v33 = 1;
      }

      v59 = v28 == 9;
      v62 = v33;
      v34 = *(Shape + 8 * v32);
      __p[0] = 3;
      if (v28 == 9)
      {
        v30 = 4;
      }

      v64 = v30;
      v66 = v34;
      IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v36 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
      __p[0] = 6;
      v37 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v58 = mlir::RankedTensorType::get(__p, 1, v37, 0);
      __dst = &v86;
      v85 = 0x200000000;
      Strides = mlir::mps::Conv3DOp::getStrides(&v78);
      if (Strides)
      {
        v39 = Strides;
        v40 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
        Strides = v39;
      }

      else
      {
        v40 = 0;
      }

      mlir::getIntValues<unsigned long long>(Strides, v40, &__dst, 1);
      v41 = __dst;
      if (*__dst == 1 && *(__dst + 1) == 1)
      {
        v42 = 8 * v85 - 16;
        if (v85 != 2)
        {
          memmove(__dst, __dst + 16, 8 * v85 - 16);
        }

        v43 = __dst;
        v44 = (&v41[v42] - __dst) >> 3;
        LODWORD(v85) = v44;
        if (v36)
        {
          v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
          v43 = __dst;
          LODWORD(v44) = v85;
        }

        else
        {
          v45 = 0;
        }

        v74[2] = mlir::DenseElementsAttr::getFromRawBuffer(v36, v45, v43, 8 * v44);
        v46 = v87;
        if (*v87 == 1 && v87[1] == 1)
        {
          v47 = 8 * v88 - 16;
          if (v88 != 2)
          {
            memmove(v87, v87 + 2, 8 * v88 - 16);
          }

          v48 = v87;
          v60 = 2 * v59;
          v49 = (v46 + v47 - v87) >> 3;
          LODWORD(v88) = v49;
          if (v36)
          {
            v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
            v48 = v87;
            LODWORD(v49) = v88;
          }

          else
          {
            v50 = 0;
          }

          v74[1] = mlir::DenseElementsAttr::getFromRawBuffer(v36, v50, v48, 8 * v49);
          v61 = (*&v90[8 * v60] - 1) * *v87 + 1;
          v63 = (*&v90[8 * v62] - 1) * v87[1] + 1;
          v65 = (*&v90[8 * v64] - 1) * v87[2] + 1;
          v73 = 0;
          v74[0] = 0;
          v71 = 0;
          v72 = 0;
          v69 = 0;
          v70 = 0;
          Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v78);
          v52 = Rewriter;
          if (Rewriter)
          {
            v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
          }

          else
          {
            v53 = 0;
          }

          PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v78);
          {
            v81 = v83;
            memset(v83, 0, sizeof(v83));
            v82 = 0x600000006;
            __p[20] = v80;
            memset(v80, 0, sizeof(v80));
            __p[21] = 0x600000006;
            v55 = v58;
            if (v58)
            {
              v56 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
              v55 = v58;
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }

            __p[0] = v74[0];
            __p[1] = v73;
            __p[2] = v72;
            __p[3] = v71;
            __p[4] = v70;
            __p[5] = v69;
            mlir::DenseElementsAttr::getFromRawBuffer(v55, v57, __p, 48);
            operator new();
          }

          operator new();
        }

        operator new();
      }

      operator new();
    }
  }

  memcpy(&v90[8 * v21], v16, v19 - v16);
  v21 = v91;
  goto LABEL_18;
}

void *llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

uint64_t mlir::anonymous namespace::getExplicitConv3DPadding(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13, unint64_t *a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  v36[10] = *MEMORY[0x1E69E9840];
  v17 = 1;
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v18 = a4[1];
      v19 = a15 % *a4;
      if (!v19)
      {
        v19 = *a4;
      }

      v20 = (a6 - v19) & ~((a6 - v19) >> 63);
      v21 = a16 % v18;
      if (!(a16 % v18))
      {
        v21 = a4[1];
      }

      v22 = (a7 - v21) & ~((a7 - v21) >> 63);
      v23 = a4[2];
      if (a17 % v23)
      {
        v23 = a17 % v23;
      }

      v24 = (a8 - v23) & ~((a8 - v23) >> 63);
      *a9 = v20 >> 1;
      *a10 = v20 - (v20 >> 1);
      *a11 = v22 >> 1;
      *a12 = v22 - (v22 >> 1);
      *a13 = v24 >> 1;
      *a14 = v24 - (v24 >> 1);
      if (a3 == 4)
      {
        v25 = *a9;
        *a9 = *a10;
        *a10 = v25;
        v26 = *a11;
        *a11 = *a12;
        *a12 = v26;
        v27 = *a13;
        *a13 = *a14;
        *a14 = v27;
      }

      return 1;
    }

    return v17;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *a9 = 0;
      *a10 = 0;
      *a11 = 0;
      *a12 = 0;
      *a13 = 0;
      *a14 = 0;
    }

    return v17;
  }

  v34 = v36;
  v35 = 0xA00000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v34, 1);
  v28 = v34;
  v29 = v34 + 8 * v35;
  if (v34 == v29 - 48)
  {
LABEL_20:
    *a9 = *(v29 - 6);
    *a10 = *(v29 - 5);
    *a11 = *(v29 - 4);
    *a12 = *(v29 - 3);
    *a13 = *(v29 - 2);
    *a14 = *(v29 - 1);
    v17 = 1;
    if (v28 == v36)
    {
      return v17;
    }

LABEL_21:
    v32 = v17;
    free(v28);
    return v32;
  }

  v30 = 8 * v35 - 48;
  v31 = v34;
  while (!*v31)
  {
    ++v31;
    v30 -= 8;
    if (!v30)
    {
      goto LABEL_20;
    }
  }

  v17 = 0;
  if (v34 != v36)
  {
    goto LABEL_21;
  }

  return v17;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Deconvolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::Conv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Conv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::Conv3DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v73 = a2;
  v87 = *(a3 + 96);
  v6 = mlir::ValueRange::dereference_iterator(&v87, 0);
  v7 = mlir::ValueRange::dereference_iterator(&v87, 1);
  v72[2] = v7;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v72[0] = v10;
  v72[1] = v11;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  Shape = mlir::ShapedType::getShape(v72);
  v13 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v71[0] = v13;
  v71[1] = v14;
  v70[3] = 1;
  v15 = mlir::ShapedType::getShape(v71);
  v16 = mlir::ShapedType::getShape(v71);
  v18 = (v16 + 8 * v17);
  v84 = v86;
  v85 = 0x500000000;
  v19 = (v18 - v15) >> 3;
  if (v19 < 6)
  {
    v20 = 0;
    if (v18 == v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v19, 8);
    v20 = v85;
    if (v18 == v15)
    {
LABEL_17:
      LODWORD(v85) = v20 + ((v18 - v15) >> 3);
      v81 = &v83;
      v82 = 0x500000000;
      InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v73);
      if (InputAttributeNames)
      {
        v22 = InputAttributeNames;
        v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
        InputAttributeNames = v22;
      }

      else
      {
        v23 = 0;
      }

      mlir::getIntValues<unsigned long long>(InputAttributeNames, v23, &v81, 1);
      PaddingMode = mlir::mps::PadOp::getPaddingMode(&v73);
      v25 = mlir::mps::PadOp::getPaddingMode(&v73);
      WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v73);
      v27 = mlir::mps::Conv3DOp::getWeightsLayout(&v73);
      if (PaddingMode != 7 && v25 != 8)
      {
        operator new();
      }

      if (WeightsLayout != 10 && v27 != 9)
      {
        operator new();
      }

      v28 = 8;
      v29 = 16;
      if (PaddingMode == 7)
      {
        v28 = 16;
      }

      v30 = 24;
      if (PaddingMode == 7)
      {
        v29 = 24;
        v30 = 32;
      }

      v55 = v27 == 9;
      if (v27 == 9)
      {
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      v64 = *(Shape + v28);
      v63 = *(Shape + v29);
      v60 = v31;
      v62 = *(Shape + v30);
      __p[0] = 3;
      if (v27 == 9)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }

      v58 = v32;
      IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v34 = mlir::RankedTensorType::get(__p, 1, IntegerType, 0);
      __p[0] = 6;
      v35 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
      v54 = mlir::RankedTensorType::get(__p, 1, v35, 0);
      __dst = &v80;
      v79 = 0x200000000;
      Strides = mlir::mps::Conv3DOp::getStrides(&v73);
      if (Strides)
      {
        v37 = Strides;
        v38 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
        Strides = v37;
      }

      else
      {
        v38 = 0;
      }

      mlir::getIntValues<unsigned long long>(Strides, v38, &__dst, 1);
      v39 = __dst;
      if (*__dst == 1 && *(__dst + 1) == 1)
      {
        v40 = 8 * v79 - 16;
        if (v79 != 2)
        {
          memmove(__dst, __dst + 16, 8 * v79 - 16);
        }

        v41 = __dst;
        v42 = (&v39[v40] - __dst) >> 3;
        LODWORD(v79) = v42;
        if (v34)
        {
          v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
          v41 = __dst;
          LODWORD(v42) = v79;
        }

        else
        {
          v43 = 0;
        }

        v70[2] = mlir::DenseElementsAttr::getFromRawBuffer(v34, v43, v41, 8 * v42);
        v44 = v81;
        if (*v81 == 1 && v81[1] == 1)
        {
          v45 = 8 * v82 - 16;
          if (v82 != 2)
          {
            memmove(v81, v81 + 2, 8 * v82 - 16);
          }

          v46 = v81;
          v56 = 2 * v55;
          v47 = (v44 + v45 - v81) >> 3;
          LODWORD(v82) = v47;
          if (v34)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
            v46 = v81;
            LODWORD(v47) = v82;
          }

          else
          {
            v48 = 0;
          }

          v70[1] = mlir::DenseElementsAttr::getFromRawBuffer(v34, v48, v46, 8 * v47);
          v57 = (*&v84[8 * v56] - 1) * *v81 + 1;
          v61 = (*&v84[8 * v60] - 1) * v81[1] + 1;
          v59 = (*&v84[8 * v58] - 1) * v81[2] + 1;
          v69 = 0;
          v70[0] = 0;
          v67 = 0;
          v68 = 0;
          v65 = 0;
          v66 = 0;
          Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v73);
          v50 = Rewriter;
          if (Rewriter)
          {
            v51 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
          }

          else
          {
            v51 = 0;
          }

          PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v73);
          {
            __p[0] = v77;
            memset(v77, 0, sizeof(v77));
            __p[1] = 0x600000006;
            v74[8] = v75;
            memset(v75, 0, sizeof(v75));
            v74[9] = 0x600000006;
            if (v54)
            {
              v53 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
            }

            else
            {
              v53 = 0;
            }

            v74[0] = v70[0];
            v74[1] = v69;
            v74[2] = v68;
            v74[3] = v67;
            v74[4] = v66;
            v74[5] = v65;
            mlir::DenseElementsAttr::getFromRawBuffer(v54, v53, v74, 48);
            operator new();
          }

          operator new();
        }

        operator new();
      }

      operator new();
    }
  }

  memcpy(&v84[8 * v20], v15, v18 - v15);
  v20 = v85;
  goto LABEL_17;
}

void *mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::~ConvertConv(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv2DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::DepthwiseConv2DOp,mlir::anec::Convolution>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  v238 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 104);
  v195 = a2;
  v234 = *(a3 + 88);
  v194 = 1;
  v178 = *(a2 + 24);
  v7 = mlir::ValueRange::dereference_iterator(&v234, 0);
  v193 = v7;
  v192 = mlir::ValueRange::dereference_iterator(&v234, 1);
  v179 = a2;
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v191[0] = v10;
  v191[1] = v11;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  Shape = mlir::ShapedType::getShape(v191);
  v14 = v13;
  v15 = (*(v192 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v189 = v15;
  v190 = v16;
  v188 = 1;
  v17 = mlir::ShapedType::getShape(&v189);
  v18 = mlir::ShapedType::getShape(&v189);
  v20 = (v18 + 8 * v19);
  v231 = v233;
  v232 = 0x400000000;
  v21 = (v20 - v17) >> 3;
  if (v21 < 5)
  {
    v22 = 0;
    if (v20 == v17)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v231, v233, v21, 8);
  v22 = v232;
  if (v20 != v17)
  {
LABEL_16:
    memcpy(v231 + 8 * v22, v17, v20 - v17);
    v22 = v232;
  }

LABEL_17:
  LODWORD(v232) = v22 + ((v20 - v17) >> 3);
  v228 = v230;
  v229 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v195);
  if (InputAttributeNames)
  {
    v24 = InputAttributeNames;
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v25, &v228, 1);
  if (mlir::mps::PadOp::getPaddingMode(&v195))
  {
    operator new();
  }

  if (mlir::mps::StencilOp::getPaddingStyle(&v195) != 2 && mlir::mps::StencilOp::getPaddingStyle(&v195) != 3)
  {
    operator new();
  }

  v187 = 0uLL;
  v185 = 0;
  v186 = 0;
  v183 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  v30 = *(*(v195 + 72) + 56);
  *&v213 = &v187;
  *(&v213 + 1) = &v185;
  *&v214 = &v183;
  *(&v214 + 1) = &v181;
  v209 = v30;
  DefiningOp = mlir::Value::getDefiningOp(&v209);
  v176 = (DefiningOp && (v219 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v225) = 1, __dst = &v225, v223 = &v219, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&v213, &__dst), (v225 & 1) != 0) || (v32 = *(*(v195 + 72) + 56), v223 = &v185, v224[0] = &v183, v224[1] = &v181, v225 = v32, (v33 = mlir::Value::getDefiningOp(&v225)) != 0) && (v209 = v33, *(*(v33 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v33 + 46) & 0x80) != 0 && *(v33 + 68) == 4 && (LOBYTE(v199) = 1, v219 = &v199, v220 = &v209, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v219), v199 == 1)) && mlir::ElementsAttr::getNumElements(v181, v182) == 1 && (mlir::getSingleFloatValue<float>(v181, v182) & 0x7FFFFFFF) == 0;
  if (!v187)
  {
    v6 = 1;
  }

  if (v6)
  {
    v172 = 0;
    v173 = 0;
  }

  else
  {
    v173 = mlir::convertElementsAttr(v185, v186, 1);
    *&v213 = mlir::getElementTypeOrSelf(v183);
    isSignedInteger = mlir::Type::isSignedInteger(&v213);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::ElementsAttr::getShapedType(&v183);
    v223 = v36;
    LOBYTE(v213) = 0;
    LOBYTE(v214) = 0;
    v37 = mlir::ShapedType::cloneWith(&__dst, &v213, IntegerType);
    v172 = mlir::rewriteElementsAttr(v183, v184, v37, v38, 1);
  }

  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v209 = &v206;
  v210 = &v205;
  v211[0] = 0;
  __dst = &v209;
  v223 = &v207;
  LOBYTE(v224[0]) = 0;
  LOBYTE(v224[1]) = 0;
  v225 = &v208;
  p_dst = &__dst;
  v227[0] = 0;
  if (*(v195 + 36))
  {
    v39 = v195 - 16;
  }

  else
  {
    v39 = 0;
  }

  *&v213 = mlir::detail::OpResultImpl::getNextResultAtOffset(v39, 0);
  v40 = mlir::Value::getDefiningOp(&v213);
  if (v40 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v225, v40))
  {
    v82 = v206;
    *&v236 = v206;
    v198[0] = v205;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v198);
    v171 = mlir::convertElementsAttr(AsAttribute, v84, 1);
    if (*(v82 + 36))
    {
      v85 = v82 - 16;
    }

    else
    {
      v85 = 0;
    }

    v86 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v167 = a4;
    if (v86)
    {
      v87 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
    }

    else
    {
      v87 = 0;
    }

    v189 = v86;
    v190 = v87;
    v115 = mlir::ShapedType::getShape(&v189);
    v116 = mlir::ShapedType::getShape(&v189);
    v118 = (v116 + 8 * v117);
    *&v213 = &v214;
    *(&v213 + 1) = 0x400000000;
    v119 = (v118 - v115) >> 3;
    if (v119 < 5)
    {
      v120 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v213, &v214, v119, 8);
      v120 = DWORD2(v213);
    }

    if (v118 != v115)
    {
      memcpy((v213 + 8 * v120), v115, v118 - v115);
      v120 = DWORD2(v213);
    }

    DWORD2(v213) = v120 + ((v118 - v115) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v231, &v213);
    if (v213 != &v214)
    {
      free(v213);
    }

    v121 = (*(v198[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v121)
    {
      v122 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v121 + 8);
    }

    else
    {
      v122 = 0;
    }

    *&v213 = v121;
    *(&v213 + 1) = v122;
    v175 = mlir::ShapedType::getShape(&v213);
    v97 = v123;
    v124 = *(v195 + 24);
    v125 = v231;
    v126 = v232;
    v219 = mlir::mps::ConstantOp::getAsAttribute(&v236);
    v220 = v127;
    *&v213 = mlir::ElementsAttr::getShapedType(&v219);
    *(&v213 + 1) = v128;
    isSplat = mlir::ElementsAttr::isSplat(&v213);
    *&v197 = mlir::MemRefType::get(v125, v126, isSplat, 0, 0, 0);
    *&v199 = mlir::mps::ConstantOp::getAsAttribute(&v236);
    *(&v199 + 1) = v130;
    a4 = v167;
    v131 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v167 + 1), v124, &v197, &v199);
    if (*(v131 + 9))
    {
      v132 = v131 - 16;
    }

    else
    {
      v132 = 0;
    }

    DictionaryAttr = 0;
    v192 = mlir::detail::OpResultImpl::getNextResultAtOffset(v132, 0);
  }

  else
  {
    v203 = 0;
    v204 = 0;
    v201 = 0;
    v202 = 0;
    *&v199 = &v202;
    *(&v199 + 1) = &v201;
    v200 = 0;
    *&v236 = &v203;
    *(&v236 + 1) = &v199;
    v237 = 0;
    v219 = &v236;
    v220 = &v204;
    v221[0] = 0;
    v221[8] = 0;
    if (*(v195 + 36))
    {
      v41 = v195 - 16;
    }

    else
    {
      v41 = 0;
    }

    *&v197 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
    v42 = mlir::Value::getDefiningOp(&v197);
    if (!v42 || (v198[0] = v42, *(*(v42 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v42 + 46) & 0x80) == 0 || *(v42 + 68) != 2 || (*&v213 = &v196, *(&v213 + 1) = v198, LOBYTE(v196) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(&v213, 1u, &v219), (v196 & 1) == 0))
    {
      DictionaryAttr = 0;
      v171 = 0;
      v174 = 0;
      goto LABEL_71;
    }

    v168 = v203;
    v170 = v202;
    if (*(v203 + 36))
    {
      v43 = v203 - 16;
    }

    else
    {
      v43 = 0;
    }

    v44 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v165 = a4;
    if (v44)
    {
      v45 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v44 + 8);
    }

    else
    {
      v45 = 0;
    }

    v189 = v44;
    v190 = v45;
    v88 = mlir::ShapedType::getShape(&v189);
    v89 = mlir::ShapedType::getShape(&v189);
    v91 = (v89 + 8 * v90);
    *&v213 = &v214;
    *(&v213 + 1) = 0x400000000;
    v92 = (v91 - v88) >> 3;
    if (v92 < 5)
    {
      v93 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v213, &v214, v92, 8);
      v93 = DWORD2(v213);
    }

    if (v91 != v88)
    {
      memcpy((v213 + 8 * v93), v88, v91 - v88);
      v93 = DWORD2(v213);
    }

    DWORD2(v213) = v93 + ((v91 - v88) >> 3);
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v231, &v213);
    if (v213 != &v214)
    {
      free(v213);
    }

    v94 = (*(v200 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v94)
    {
      v95 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v94 + 8);
    }

    else
    {
      v95 = 0;
    }

    v198[0] = v94;
    v198[1] = v95;
    v175 = mlir::ShapedType::getShape(v198);
    v97 = v96;
    v98 = *(v195 + 24);
    v99 = v231;
    v100 = v232;
    v101 = mlir::ElementsAttr::isSplat(&v189);
    *&v213 = mlir::MemRefType::get(v99, v100, v101, 0, 0, 0);
    a4 = v165;
    v102 = (v168 + 16 * ((*(v168 + 44) >> 23) & 1));
    *&v197 = v102[8];
    *&v196 = v102[10];
    F16FloatAttr = v102[9];
    v103 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v165 + 1), v98, &v213, &v197, &v196, &F16FloatAttr);
    if (*(v103 + 9))
    {
      v104 = v103 - 16;
    }

    else
    {
      v104 = 0;
    }

    v192 = mlir::detail::OpResultImpl::getNextResultAtOffset(v104, 0);
    *&v213 = "offset";
    LOWORD(v215) = 259;
    StringAttr = mlir::Builder::getStringAttr(v165 + 1, &v213);
    ZinMirCacheTensors::ZinMirCacheTensors(&v197, StringAttr, *(v170 + 16 * ((*(v170 + 44) >> 23) & 1) + 80));
    *&v213 = "type";
    LOWORD(v215) = 259;
    v106 = mlir::Builder::getStringAttr(v165 + 1, &v213);
    v107 = mlir::TypeAttr::get(v198[0]);
    ZinMirCacheTensors::ZinMirCacheTensors(&v196, v106, v107);
    v213 = v197;
    v214 = v196;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v165 + 1, &v213, 2);
    v171 = 0;
  }

  if (v97 < 2)
  {
    v133 = 1;
  }

  else
  {
    v133 = *v175;
  }

  v134 = v97 - 1;
  if (v97 == 6)
  {
    v134 = 4;
  }

  if (v134 >= 2)
  {
    v135 = v134 - 1;
    v136 = v175 + 1;
    do
    {
      v137 = *v136++;
      if (v137 >= 2)
      {
        operator new();
      }

      --v135;
    }

    while (v135);
  }

  if (v133 >= 2 && *v231 % v133)
  {
    operator new();
  }

  *&v213 = mlir::ElementsAttr::isSplat(&v189);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v213);
  if (IntOrFloatBitWidth > 8 || (v174 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    operator new();
  }

LABEL_71:
  v199 = 0uLL;
  __dst = &v199;
  *&v213 = v192;
  v47 = mlir::Value::getDefiningOp(&v213);
  v169 = DictionaryAttr;
  if (v47)
  {
    v48 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v47);
  }

  else
  {
    v48 = 0;
  }

  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v195);
  v180 = 0;
  v198[0] = 0;
  if ((v48 & 1) == 0)
  {
    v50 = v176;
    if (v198[0])
    {
      v50 = 1;
    }

    if ((v50 & 1) == 0)
    {
      *&v213 = *(*(v195 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(&v213);
      if (AttrData)
      {
        v59 = v58;
        if (v58 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (v58 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v224[0]) = v58;
        if (v58)
        {
          memmove(&__dst, AttrData, v58);
        }

        *(&__dst + v59) = 0;
      }

      else
      {
        __dst = 0;
        v223 = 0;
        v224[0] = 0;
      }

      v78 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
      v79 = v78->__r_.__value_.__r.__words[2];
      v213 = *&v78->__r_.__value_.__l.__data_;
      *&v214 = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      mlir::logMatchFailure(&v213, *(v195 + 24), a4);
      if (SBYTE7(v214) < 0)
      {
        operator delete(v213);
      }

      if ((SHIBYTE(v224[0]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v26 = __dst;
      goto LABEL_24;
    }
  }

  if ((v6 & 1) == 0)
  {
    v199 = v187;
    v51 = v231;
    v52 = v232;
    *&v213 = mlir::ElementsAttr::getShapedType(&v199);
    *(&v213 + 1) = v53;
    v54 = mlir::ElementsAttr::isSplat(&v213);
    __dst = mlir::MemRefType::get(v51, v52, v54, 0, 0, 0);
    v192 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v178, &__dst, &v199) - 16;
  }

  if (PaddingStyle != 3)
  {
    goto LABEL_104;
  }

  if (v180 != 1)
  {
    if ((v174 & 1) == 0)
    {
      mlir::Value::getLoc(&v192);
      __dst = 0;
      v223 = 0;
      v224[0] = 0;
      operator new();
    }

    goto LABEL_94;
  }

  v55 = v198[0];
  if (!v198[0])
  {
    std::string::basic_string[abi:nn200100]<0>(&v213, "Cannot get the filter definition op");
    mlir::logMatchFailure(&v213, *(v195 + 24), a4);
    if ((SBYTE7(v214) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v26 = v213;
LABEL_24:
    operator delete(v26);
LABEL_25:
    v27 = 0;
    ExplicitConv2DPadding = 0;
    goto LABEL_26;
  }

  if (*(*(mlir::Value::getDefiningOp(&v192) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
  {
    v56 = mlir::Value::getDefiningOp(&v192);
    mlir::ConversionPatternRewriter::eraseOp(a4, v56);
  }

  v192 = v55 - 16;
LABEL_94:
  v60 = (*(v192 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v60)
  {
    v61 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60 + 8);
  }

  else
  {
    v61 = 0;
  }

  v189 = v60;
  v190 = v61;
  v62 = mlir::ShapedType::getShape(&v189);
  v63 = mlir::ShapedType::getShape(&v189);
  v65 = (v63 + 8 * v64);
  *&v213 = &v214;
  *(&v213 + 1) = 0x400000000;
  v66 = (v65 - v62) >> 3;
  if (v66 < 5)
  {
    v67 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v213, &v214, v66, 8);
    v67 = DWORD2(v213);
  }

  if (v65 != v62)
  {
    memcpy((v213 + 8 * v67), v62, v65 - v62);
    v67 = DWORD2(v213);
  }

  DWORD2(v213) = v67 + ((v65 - v62) >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v231, &v213);
  if (v213 != &v214)
  {
    free(v213);
  }

LABEL_104:
  *&v213 = 3;
  v68 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v69 = mlir::RankedTensorType::get(&v213, 1, v68, 0);
  *&v213 = 6;
  v70 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v71 = mlir::RankedTensorType::get(&v213, 1, v70, 0);
  v225 = v227;
  p_dst = 0x200000000;
  Strides = mlir::mps::DepthwiseConv2DOp::getStrides(&v195);
  if (Strides)
  {
    v73 = Strides;
    v74 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v73;
  }

  else
  {
    v74 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v74, &v225, 1);
  v75 = v225;
  if (*v225 != 1 || v225[1] != 1)
  {
    operator new();
  }

  v166 = a4;
  v76 = 8 * p_dst - 16;
  if (p_dst != 2)
  {
    memmove(v225, v225 + 2, 8 * p_dst - 16);
  }

  LODWORD(p_dst) = (v75 + v76 - v225) >> 3;
  *&v213 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v225, v225, &v213);
  if (v69)
  {
    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
  }

  else
  {
    v77 = 0;
  }

  *&v197 = mlir::DenseElementsAttr::getFromRawBuffer(v69, v77, v225, 8 * p_dst);
  v80 = v228;
  if (*v228 != 1 || v228[1] != 1)
  {
    operator new();
  }

  v81 = 8 * v229 - 16;
  if (v229 != 2)
  {
    memmove(v228, v228 + 2, 8 * v229 - 16);
  }

  LODWORD(v229) = (&v80[v81] - v228) >> 3;
  *&v213 = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v228, v228, &v213);
  if (v69)
  {
    v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v69 + 8);
  }

  else
  {
    v108 = 0;
  }

  *&v196 = mlir::DenseElementsAttr::getFromRawBuffer(v69, v108, v228, 8 * v229);
  v177 = (*(v231 + 2) - 1) * v228[1] + 1;
  v109 = (*(v231 + 3) - 1) * v228[2] + 1;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v195);
  v111 = Rewriter;
  if (Rewriter)
  {
    v112 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
  }

  else
  {
    v112 = 0;
  }

  v113 = mlir::mps::DepthwiseConv2DOp::getPaddingStyle(&v195);
  if (ExplicitConv2DPadding)
  {
    __dst = v224;
    memset(v224, 0, sizeof(v224));
    v223 = 0x600000006;
    v219 = v221;
    memset(v221, 0, sizeof(v221));
    v220 = 0x600000006;
    if (v71)
    {
      v114 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
    }

    else
    {
      v114 = 0;
    }

    v209 = v71;
    v210 = v114;
    v213 = 0uLL;
    *&v214 = v208;
    *(&v214 + 1) = v207;
    *&v215 = v206;
    *(&v215 + 1) = v205;
    *&v236 = &v213;
    *(&v236 + 1) = 6;
    v139 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v209, &v236);
    v203 = 0;
    v204 = v139;
    v140 = *(v195 + 24);
    *&v213 = v173;
    v209 = v172;
    v142 = v169;
    v141 = v171;
    if (!v174)
    {
      v141 = 0;
      v142 = 0;
    }

    *&v236 = v141;
    v201 = v142;
    v202 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v166 + 1, v140, &v193, &v192, &v197, &v196, &v204, &v203, &v188, &v194, &v213, &v209, &v236, &v201) - 16;
    if (v220)
    {
      v143 = v219;
      v144 = 8 * v220;
      v145 = v219;
      while (*v145 < 1)
      {
        ++v145;
        v144 -= 8;
        if (!v144)
        {
          goto LABEL_215;
        }
      }

      *&v213 = &v214;
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      *(&v213 + 1) = 0xA0000000ALL;
      v209 = v211;
      memset_pattern16(v211, &unk_1A75EA240, 0x28uLL);
      v210 = 0x500000005;
      v212 = vdupq_n_s64(6uLL);
      v217 = v143[1];
      v218 = v143[2];
      v236 = xmmword_1A75EA150;
      v146 = v166;
      v147 = mlir::Builder::getIntegerType(v166 + 1, 64, 0);
      v148 = mlir::RankedTensorType::get(&v236, 2, v147, 0);
      if (v148)
      {
        v149 = v148;
        v150 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v148 + 8);
        v148 = v149;
        v146 = v166;
      }

      else
      {
        v150 = 0;
      }

      v201 = mlir::DenseElementsAttr::getFromRawBuffer(v148, v150, v213, 8 * DWORD2(v213));
      F16FloatAttr = 5;
      v151 = mlir::Builder::getIntegerType(v146 + 1, 64, 0);
      v152 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v151, 0);
      if (v152)
      {
        v153 = v152;
        v154 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v152 + 8);
        v152 = v153;
        v146 = v166;
      }

      else
      {
        v154 = 0;
      }

      *&v236 = mlir::DenseElementsAttr::getFromRawBuffer(v152, v154, v209, 8 * v210);
      F16FloatAttr = mlir::Builder::getF16FloatAttr(v146 + 1, 0.0, v155);
      v202 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(v146 + 1, v178, &v202, &v236, &v201, &F16FloatAttr) - 16;
      if (v209 != v211)
      {
        free(v209);
      }

      if (v213 != &v214)
      {
        free(v213);
      }
    }

LABEL_215:
    v156 = __dst;
    a4 = v166;
    if (__dst[2] || __dst[3])
    {
      v157 = (*(v202 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v157)
      {
        v158 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v157 + 8);
      }

      else
      {
        v158 = 0;
      }

      *&v213 = v157;
      *(&v213 + 1) = v158;
      v159 = *(mlir::ShapedType::getShape(&v213) + 16);
      LODWORD(v236) = 2;
      v160 = __dst[3];
      *&v213 = __dst[2];
      v209 = (v159 - (v160 + v213));
      v202 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(v166 + 1, v178, &v202, &v236, &v213, &v209) - 16;
      v156 = __dst;
    }

    if (v156[4] || v156[5])
    {
      v161 = (*(v202 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v161)
      {
        v162 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v161 + 8);
      }

      else
      {
        v162 = 0;
      }

      *&v213 = v161;
      *(&v213 + 1) = v162;
      v163 = *(mlir::ShapedType::getShape(&v213) + 24);
      LODWORD(v236) = 3;
      v164 = __dst[5];
      *&v213 = __dst[4];
      v209 = (v163 - (v164 + v213));
      v202 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(v166 + 1, v178, &v202, &v236, &v213, &v209) - 16;
    }

    v27 = mlir::Value::getDefiningOp(&v202);
    if (v219 != v221)
    {
      free(v219);
    }

    if (__dst != v224)
    {
      free(__dst);
    }
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v213, "Unsupported padding values for Conv2D");
    a4 = v166;
    mlir::logMatchFailure(&v213, *(v195 + 24), v166);
    if (SBYTE7(v214) < 0)
    {
      operator delete(v213);
    }

    v27 = 0;
  }

  if (v225 != v227)
  {
    free(v225);
  }

LABEL_26:
  if (v228 != v230)
  {
    free(v228);
  }

  if (v231 != v233)
  {
    free(v231);
  }

  if (ExplicitConv2DPadding)
  {
    __dst = (v27 - 16);
    mlir::ValueRange::ValueRange(&v213, &__dst, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v179, v213, *(&v213 + 1));
  }

  return 0;
}

void mlir::anonymous namespace::ConvertSilcAllSlice::~ConvertSilcAllSlice(mlir::_anonymous_namespace_::ConvertSilcAllSlice *this)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllSliceOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::silc::SilcAllSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertSilcAllSlice::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, ZinIrAsyncFunction *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v17, *(a1 + 96));
  v18[0] = *(a3 + 6);
  v18[1] = 0;
  v18[0] = mlir::ValueRange::dereference_iterator(v18, 0);
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

  Entry = ZinIrAsyncFunction::GetEntry(a3);
  RequiresCHWRankPromotion = mlir::getRequiresCHWRankPromotion((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), v11);
  v15 = mlir::silc::ShardingAttr::inflateRank(&Entry, RequiresCHWRankPromotion, 1);
  v13 = mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>((a4 + 8), *(a2 + 24), &v16, &v15, v18);
  (*(*a4 + 8))(a4, a2, v13);
  mlir::TypeConverter::~TypeConverter(v17);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::silc::SilcAllSliceOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::silc::SilcAllSliceOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::silc::SilcAllSliceOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::silc::SilcAllSliceOp,void>::id)
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

void mlir::anonymous namespace::ConvertSilcAllGather::~ConvertSilcAllGather(mlir::_anonymous_namespace_::ConvertSilcAllGather *this)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllGatherOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::silc::SilcAllGatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::silc::SilcAllGatherOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertSilcAllGather::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, ZinIrAsyncFunction *a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v17, *(a1 + 96));
  v18[0] = *(a3 + 6);
  v18[1] = 0;
  v18[0] = mlir::ValueRange::dereference_iterator(v18, 0);
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

  Entry = ZinIrAsyncFunction::GetEntry(a3);
  RequiresCHWRankPromotion = mlir::getRequiresCHWRankPromotion((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8), v11);
  v15 = mlir::silc::ShardingAttr::inflateRank(&Entry, RequiresCHWRankPromotion, 1);
  v13 = mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>((a4 + 8), *(a2 + 24), &v16, &v15, v18);
  (*(*a4 + 8))(a4, a2, v13);
  mlir::TypeConverter::~TypeConverter(v17);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::silc::SilcAllGatherOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::silc::SilcAllGatherOp,mlir::MemRefType &,mlir::silc::ShardingAttr,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::silc::SilcAllGatherOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::silc::SilcAllGatherOp,void>::id)
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

void mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::~ConvertPalettizedConvPatternToFusionOp(mlir::_anonymous_namespace_::ConvertPalettizedConvPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v15[0] = &v16;
  v15[1] = 0x600000000;
  v17[0] = &v18;
  v17[1] = 0x600000000;
  v19 = v21;
  v20 = 0x600000000;
  v21[6] = 0;
  v21[7] = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if ((*(*a1 + 9))(a1, a2, v15))
  {
    v14[0] = "PalettizedConv";
    v14[1] = 14;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v5[0] = v19;
    v5[1] = v20;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v14, v6, v15, v17, v5);
  }

  llvm::deallocate_buffer(v26, (8 * v28));
}

void mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(mlir::MLIRContext **a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v21, a2, v15);
    v18 = *a3;
    v17 = a3[1];
    mlir::ValueRange::ValueRange(v23, *a5, *(a5 + 8));
    mlir::ValueRange::ValueRange(v22, *a6, *(a6 + 8));
    mlir::mpsx::FusionOp::build(a1, v21, v18, v17, a4, v23[0], v23[1], v19, v22[0], v22[1], *a7, *(a7 + 8));
  }

  mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(v21, v23, v22);
}

uint64_t mlir::anonymous namespace::ConvertPalettizedConvPatternToFusionOp::validateConvWeightLayout(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (a2)
  {
    __s1 = v15;
    v14 = 0x400000000;
    __s2 = &v11 + 8;
    v12 = 1;
    v11 = xmmword_1A75EA220;
    DefiningOp = *(*(a2 + 72) + 56);
    v5 = mlir::Value::getDefiningOp(&DefiningOp) && (v7 = *(*(a2 + 72) + 56), DefiningOp = mlir::Value::getDefiningOp(&v7), AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&DefiningOp), mlir::getIntValues<int>(AsAttribute, v4, &__s1, 1), v14 == v11) && !memcmp(__s1, __s2, 4 * v14) && mlir::mps::Conv3DOp::getWeightsLayout(&v9) == 3;
    if (__s2 != &v11 + 8)
    {
      free(__s2);
    }

    if (__s1 != v15)
    {
      free(__s1);
    }

    if (v5)
    {
      return 1;
    }
  }

  else if (mlir::mps::Conv3DOp::getWeightsLayout(&v9) == 2)
  {
    return 1;
  }

  return 0;
}

void mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::~ConvertPalettizedLinearPatternToFusionOp(mlir::_anonymous_namespace_::ConvertPalettizedLinearPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v15[0] = &v16;
  v15[1] = 0x600000000;
  v17[0] = &v18;
  v17[1] = 0x600000000;
  v19 = v21;
  v20 = 0x600000000;
  v21[6] = 0;
  v21[7] = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if ((*(*a1 + 9))(a1, a2, v15))
  {
    v14[0] = "PalettizedLinear";
    v14[1] = 16;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v5[0] = v19;
    v5[1] = v20;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v14, v6, v15, v17, v5);
  }

  llvm::deallocate_buffer(v26, (8 * v28));
}

uint64_t mlir::anonymous namespace::ConvertPalettizedLinearPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  if (matched == v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a2 + 72);
  v9 = matched ? *(v8 + 24) : *(v8 + 56);
  v30[0] = v9;
  DefiningOp = mlir::Value::getDefiningOp(v30);
  v11 = (*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8) : 0;
  v30[0] = v11;
  v30[1] = v12;
  mlir::ShapedType::getShape(v30);
  v14 = v13;
  v30[0] = a2;
  mlir::mps::MatMulOp::getTransposeRhs(v30);
  if (v14 != 2)
  {
    return 0;
  }

  if (matched)
  {
    IsNegated = mlir::pdl::ApplyNativeConstraintOp::getIsNegated(v30);
    if (v7 & IsNegated)
    {
      if (!mlir::mps::MatMulOp::getTransposeRhs(v30))
      {
        return 0;
      }
    }

    else if (IsNegated)
    {
      return 0;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v17 = (v19 + 56);
  }

  else
  {
    if ((v7 & 1) == 0 || !mlir::mps::MatMulOp::getTransposeRhs(v30))
    {
      return 0;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = 0;
    }

    v17 = (v16 + 24);
  }

  v20 = *v17;
  v29 = *(*(DefiningOp + 72) + 24);
  v21 = mlir::Value::getDefiningOp(&v29);
  v29 = *(*(DefiningOp + 72) + 56);
  v22 = mlir::Value::getDefiningOp(&v29);
  v23 = v30[0];
  *(a3 + 136) = 0;
  if (*(a3 + 140) > 3u)
  {
    v24 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), 4uLL, 8);
    v24 = *(a3 + 136);
  }

  v25 = (*(a3 + 128) + 8 * v24);
  *v25 = v21;
  v25[1] = v22;
  v25[2] = DefiningOp;
  v25[3] = v23;
  *(a3 + 136) += 4;
  *(a3 + 8) = 0;
  if (*(a3 + 12))
  {
    v26 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 1uLL, 8);
    v26 = *(a3 + 8);
  }

  *(*a3 + 8 * v26) = v20;
  ++*(a3 + 8);
  v27 = a2 - 16;
  *(a3 + 72) = 0;
  if (*(a3 + 76))
  {
    v28 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 64, (a3 + 80), 1uLL, 8);
    v28 = *(a3 + 72);
  }

  *(*(a3 + 64) + 8 * v28) = v27;
  ++*(a3 + 72);
  return 1;
}

void mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::~ConvertQuantizedConvPatternToFusionOp(mlir::_anonymous_namespace_::ConvertQuantizedConvPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::matchAndRewrite(mlir::anec::OpIDMap **a1, uint64_t *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v16[0] = &v17;
  v16[1] = 0x600000000;
  v18[0] = &v19;
  v18[1] = 0x600000000;
  v20 = v22;
  v21 = 0x600000000;
  v22[6] = 0;
  v22[7] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if ((*(*a1 + 9))(a1, a2, v16))
  {
    v15[0] = "ANECQuantizedConv";
    v15[1] = 17;
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v5 = a2[3];
    v6[0] = v20;
    v6[1] = v21;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), v5, v15, v7, v16, v18, v6);
  }

  llvm::deallocate_buffer(v27, (8 * v29));
}

uint64_t mlir::anonymous namespace::ConvertQuantizedConvPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18[0] = &v23;
  v18[1] = &v22;
  v18[2] = &v21;
  v18[3] = &v20;
  v17[0] = &v24;
  v17[1] = v18;
  v17[2] = 0;
  result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v17, a2);
  if (result)
  {
    v6 = v23;
    v8 = v21;
    v7 = v22;
    v10 = v19;
    v9 = v20;
    *(a3 + 136) = 0;
    if (*(a3 + 140) > 5u)
    {
      v11 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), 6uLL, 8);
      v11 = *(a3 + 136);
    }

    v12 = (*(a3 + 128) + 8 * v11);
    *v12 = v6;
    v12[1] = v7;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    v12[5] = a2;
    *(a3 + 136) += 6;
    v13 = *(*(a2 + 72) + 24);
    *(a3 + 8) = 0;
    if (*(a3 + 12))
    {
      v14 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 1uLL, 8);
      v14 = *(a3 + 8);
    }

    *(*a3 + 8 * v14) = v13;
    ++*(a3 + 8);
    v15 = a2 - 16;
    *(a3 + 72) = 0;
    if (*(a3 + 76))
    {
      v16 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 64, (a3 + 80), 1uLL, 8);
      v16 = *(a3 + 72);
    }

    *(*(a3 + 64) + 8 * v16) = v15;
    ++*(a3 + 72);
    return 1;
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v21 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
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
  v21 = *(*(**(a2 + 8) + 72) + 56);
  v10 = mlir::Value::getDefiningOp(&v21);
  if (v10)
  {
    if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == v10))
    {
      *v9 = v10;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!v10)
  {
    v12 = 0;
  }

  **a2 = v12;
  v13 = a1[2];
  v21 = *(*(**(a2 + 8) + 72) + 88);
  v14 = mlir::Value::getDefiningOp(&v21);
  if (v14)
  {
    if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v13 || *v13 == v14))
    {
      *v13 = v14;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = v15 & **a2;
  if (!v14)
  {
    v16 = 0;
  }

  **a2 = v16;
  v17 = a1[3];
  v21 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == result))
    {
      *v17 = result;
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = v19 & **a2;
  if (!result)
  {
    v20 = 0;
  }

  **a2 = v20;
  return result;
}

void mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::~ConvertRingBufferWriterPatternToFusionOp(mlir::_anonymous_namespace_::ConvertRingBufferWriterPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::matchAndRewrite(uint64_t (***a1)(mlir::anec::OpIDMap **, uint64_t, uint64_t **), uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = &v19;
  v18 = 0x600000000;
  v20 = &v22;
  v21 = 0x600000000;
  v23 = v25;
  v24 = 0x600000000;
  v25[6] = 0;
  v25[7] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if ((*a1)[9](a1, a2, &v17))
  {
    v14[0] = "ANECRingBufferWriter";
    v14[1] = 20;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    mlir::ValueRange::ValueRange(&__p, v17, v18);
    mlir::ValueRange::ValueRange(v16, v20, v21);
    v5[0] = v23;
    v5[1] = v24;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v14, v6, &__p, v16, v5);
  }

  llvm::deallocate_buffer(v30, (8 * v32));
}

uint64_t mlir::anonymous namespace::ConvertRingBufferWriterPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v70[0] = &v71;
  v70[1] = 0;
  v68 = v70;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64[0] = &v68;
  v64[1] = &v66;
  v64[2] = &v73;
  v64[3] = &v72;
  v64[4] = &v67;
  v65 = 0;
  v62[1] = 0;
  v63 = 0;
  v61 = 0;
  v62[0] = &v63;
  v60[0] = v62;
  v60[1] = v64;
  v74 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 2)
  {
    return 0;
  }

  v76 = 1;
  v75[0] = &v76;
  v75[1] = &v74;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::AssignVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder> *,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>> *> & *)#1},0ul,1ul>(v60, v75);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

  v61 = v74;
  v6 = v69;
  v74 = v69;
  v7 = *(a3 + 240);
  v8 = *(a3 + 256);
  if (v8)
  {
    v9 = a3;
    v10 = (v8 - 1) & ((v69 >> 4) ^ (v69 >> 9));
    v11 = *(v7 + 8 * v10);
    if (v11 == v69)
    {
LABEL_8:
      if (v10 != v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v48 = 1;
      while (v11 != -4096)
      {
        v49 = v10 + v48++;
        v10 = v49 & (v8 - 1);
        v11 = *(v7 + 8 * v10);
        if (v11 == v69)
        {
          goto LABEL_8;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
  v9 = a3;
  v12 = v74;
  v13 = *(a3 + 136);
  if (v13 >= *(a3 + 140))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v13 + 1, 8);
    v9 = a3;
    LODWORD(v13) = *(a3 + 136);
  }

  *(*(v9 + 128) + 8 * v13) = v12;
  ++*(v9 + 136);
LABEL_12:
  v14 = *(*(v6 + 72) + 24);
  v15 = v9;
  v75[0] = v73;
  DefiningOp = mlir::Value::getDefiningOp(v75);
  v75[0] = v72;
  v17 = mlir::Value::getDefiningOp(v75);
  v18 = *(*(DefiningOp + 48) + 16);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      v20 = a3;
      v32 = v17;
LABEL_29:
      v21 = a2;
      goto LABEL_30;
    }

    return 0;
  }

  if (v18 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || *(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    return 0;
  }

  v74 = DefiningOp;
  v19 = *(a3 + 256);
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = a3;
  v21 = a2;
  v22 = *(a3 + 240);
  v23 = (v19 - 1) & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
  v24 = *(v22 + 8 * v23);
  if (v24 != DefiningOp)
  {
    v56 = 1;
    while (v24 != -4096)
    {
      v57 = v23 + v56++;
      v23 = v57 & (v19 - 1);
      v24 = *(v22 + 8 * v23);
      if (v24 == DefiningOp)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

LABEL_17:
  if (v23 == v19)
  {
LABEL_18:
    v25 = v17;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
    v20 = a3;
    v26 = v74;
    v27 = *(a3 + 136);
    if (v27 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v27 + 1, 8);
      v20 = a3;
      LODWORD(v27) = *(a3 + 136);
    }

    *(*(v20 + 128) + 8 * v27) = v26;
    ++*(v20 + 136);
    v22 = *(v20 + 240);
    LODWORD(v19) = *(v20 + 256);
    v21 = a2;
    v17 = v25;
  }

  v74 = v17;
  if (!v19)
  {
    goto LABEL_24;
  }

  v28 = (v19 - 1) & ((v17 >> 4) ^ (v17 >> 9));
  v29 = *(v22 + 8 * v28);
  if (v29 != v17)
  {
    v58 = 1;
    while (v29 != -4096)
    {
      v59 = v28 + v58++;
      v28 = v59 & (v19 - 1);
      v29 = *(v22 + 8 * v28);
      if (v29 == v17)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_23:
  if (v28 == v19)
  {
LABEL_24:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
    v20 = a3;
    v30 = v74;
    v31 = *(a3 + 136);
    if (v31 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v31 + 1, 8);
      v20 = a3;
      LODWORD(v31) = *(a3 + 136);
    }

    *(*(v20 + 128) + 8 * v31) = v30;
    ++*(v20 + 136);
    goto LABEL_29;
  }

LABEL_30:
  v74 = v67;
  v33 = *(v20 + 256);
  if (!v33)
  {
    goto LABEL_33;
  }

  v34 = *(v20 + 240);
  v35 = (v33 - 1) & ((v67 >> 4) ^ (v67 >> 9));
  v36 = *(v34 + 8 * v35);
  if (v36 != v67)
  {
    v50 = 1;
    while (v36 != -4096)
    {
      v51 = v35 + v50++;
      v35 = v51 & (v33 - 1);
      v36 = *(v34 + 8 * v35);
      if (v36 == v67)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

LABEL_32:
  if (v35 == v33)
  {
LABEL_33:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
    v37 = a3;
    v38 = v74;
    v33 = *(a3 + 136);
    if (v33 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v33 + 1, 8);
      v37 = a3;
      LODWORD(v33) = *(a3 + 136);
    }

    *(*(v37 + 128) + 8 * v33) = v38;
    ++*(v37 + 136);
    v34 = *(v37 + 240);
    LODWORD(v33) = *(v37 + 256);
    v21 = a2;
  }

  v74 = v65;
  if (!v33)
  {
    goto LABEL_39;
  }

  v39 = (v33 - 1) & ((v65 >> 4) ^ (v65 >> 9));
  v40 = *(v34 + 8 * v39);
  if (v40 != v65)
  {
    v52 = 1;
    while (v40 != -4096)
    {
      v53 = v39 + v52++;
      v39 = v53 & (v33 - 1);
      v40 = *(v34 + 8 * v39);
      if (v40 == v65)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_39;
  }

LABEL_38:
  if (v39 == v33)
  {
LABEL_39:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
    v41 = a3;
    v42 = v74;
    v33 = *(a3 + 136);
    if (v33 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v33 + 1, 8);
      v41 = a3;
      LODWORD(v33) = *(a3 + 136);
    }

    *(*(v41 + 128) + 8 * v33) = v42;
    ++*(v41 + 136);
    v34 = *(v41 + 240);
    LODWORD(v33) = *(v41 + 256);
    v21 = a2;
  }

  v74 = v21;
  if (!v33)
  {
    goto LABEL_45;
  }

  v43 = (v33 - 1) & ((v21 >> 4) ^ (v21 >> 9));
  v44 = *(v34 + 8 * v43);
  if (v44 != v21)
  {
    v54 = 1;
    while (v44 != -4096)
    {
      v55 = v43 + v54++;
      v43 = v55 & (v33 - 1);
      v44 = *(v34 + 8 * v43);
      if (v44 == a2)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

LABEL_44:
  if (v43 == v33)
  {
LABEL_45:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v74, v75);
    v45 = a3;
    v46 = v74;
    v47 = *(a3 + 136);
    if (v47 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v47 + 1, 8);
      v45 = a3;
      LODWORD(v47) = *(a3 + 136);
    }

    *(*(v45 + 128) + 8 * v47) = v46;
    ++*(v45 + 136);
  }

  return 1;
}

void mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>(mlir::MLIRContext **a1, uint64_t a2, void **a3, mlir::IRMapping *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v21, a2, v15);
    mlir::mpsx::FusionOp::build(a1, v21, *a3, a3[1], a4, *a5, a5[1], v17, *a6, *(a6 + 8), *a7, *(a7 + 8));
  }

  mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::ArrayRef<mlir::Operation *>>(v21, v20, v19);
}

void mlir::anonymous namespace::PatternMatchDetails::addInput(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v5 = *(a1 + 192);
  v3 = a1 + 192;
  v4 = v5;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *(v4 + 8 * v9);
    if (v10 == a2)
    {
LABEL_3:
      if (v9 != v6)
      {
        return;
      }
    }

    else
    {
      v13 = 1;
      while (v10 != -4096)
      {
        v14 = v9 + v13++;
        v9 = v14 & (v6 - 1);
        v10 = *(v4 + 8 * v9);
        if (v10 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3, &v15, v16);
  v11 = v15;
  v12 = *(a1 + 8);
  if (v12 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v12 + 1, 8);
    LODWORD(v12) = *(a1 + 8);
  }

  *(*a1 + 8 * v12) = v11;
  ++*(a1 + 8);
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceUpdateOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>> *,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::any_value_binder*,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul,4ul>(uint64_t ****a1, uint64_t a2)
{
  v4 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReadVariableOp,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::VariableFromTensorOp,mlir::detail::any_value_binder>>>(**(a2 + 8), 0, *a1);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = v4 & **a2;
  **a2 = v7;
  v8 = a1[1];
  v9 = *(*v6 + 72);
  v10 = v9[7];
  if (*v8)
  {
    v11 = *v8 == v10;
  }

  else
  {
    *v8 = v10;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v7 = **a2 != 0;
    v11 = 1;
  }

  v12 = v11 & v7;
  *v5 = v12;
  v13 = a1[2];
  v14 = v9[11];
  if (*v13)
  {
    v15 = *v13 == v14;
  }

  else
  {
    *v13 = v14;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v12 = **a2 != 0;
    v15 = 1;
  }

  v16 = v15 & v12;
  *v5 = v16;
  v17 = a1[3];
  v18 = v9[15];
  if (*v17)
  {
    v19 = *v17 == v18;
  }

  else
  {
    *v17 = v18;
    v5 = *a2;
    v9 = *(**(a2 + 8) + 72);
    v16 = **a2 != 0;
    v19 = 1;
  }

  *v5 = v19 & v16;
  v20 = a1[4];
  v24 = v9[19];
  result = mlir::Value::getDefiningOp(&v24);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v20 || *v20 == result))
    {
      *v20 = result;
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  v23 = v22 & **a2;
  if (!result)
  {
    v23 = 0;
  }

  **a2 = v23;
  return result;
}

void mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::~ConvertRingBufferReaderPatternToFusionOp(mlir::_anonymous_namespace_::ConvertRingBufferReaderPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::matchAndRewrite(uint64_t (***a1)(mlir::anec::OpIDMap **, uint64_t, uint64_t **), uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = &v19;
  v18 = 0x600000000;
  v20 = &v22;
  v21 = 0x600000000;
  v23 = v25;
  v24 = 0x600000000;
  v25[6] = 0;
  v25[7] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if ((*a1)[9](a1, a2, &v17))
  {
    v14[0] = "ANECRingBufferReader";
    v14[1] = 20;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    mlir::ValueRange::ValueRange(&__p, v17, v18);
    mlir::ValueRange::ValueRange(v16, v20, v21);
    v5[0] = v23;
    v5[1] = v24;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v14, v6, &__p, v16, v5);
  }

  llvm::deallocate_buffer(v30, (8 * v32));
}

uint64_t mlir::anonymous namespace::ConvertRingBufferReaderPatternToFusionOp::patternMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39[0] = &v44;
  v39[1] = &v43;
  v39[2] = &v42;
  v39[3] = &v41;
  v40 = 0;
  v45 = a2;
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  if (*(a2 + 68) != 4)
  {
    return 0;
  }

  LOBYTE(v38) = 1;
  v46[0] = &v38;
  v46[1] = &v45;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(v39, v46);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v40 = v45;
  v46[0] = v43;
  DefiningOp = mlir::Value::getDefiningOp(v46);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      return 0;
    }
  }

  v6 = DefiningOp;
  v38 = v44;
  v7 = &v38;
  if (!mlir::Value::getDefiningOp(&v38))
  {
    goto LABEL_17;
  }

  v7 = &v38;
  if (*(*(mlir::Value::getDefiningOp(&v38) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id)
  {
    goto LABEL_17;
  }

  v8 = mlir::Value::getDefiningOp(&v38);
  v45 = v8;
  v9 = *(a3 + 240);
  v10 = *(a3 + 256);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = (v10 - 1) & ((v8 >> 4) ^ (v8 >> 9));
  v12 = *(v9 + 8 * v11);
  if (v12 != v8)
  {
    v36 = 1;
    while (v12 != -4096)
    {
      v37 = v11 + v36++;
      v11 = v37 & (v10 - 1);
      v12 = *(v9 + 8 * v11);
      if (v12 == v8)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  if (v11 == v10)
  {
LABEL_13:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v45, v46);
    v13 = a3;
    v14 = v45;
    v15 = *(a3 + 136);
    if (v15 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v15 + 1, 8);
      v13 = a3;
      LODWORD(v15) = *(a3 + 136);
    }

    *(*(v13 + 128) + 8 * v15) = v14;
    ++*(v13 + 136);
  }

  v7 = (*(mlir::Value::getDefiningOp(&v38) + 72) + 24);
LABEL_17:
  v45 = v42;
  v16 = *(a3 + 240);
  v17 = *(a3 + 256);
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = a3;
  v19 = (v17 - 1) & ((v42 >> 4) ^ (v42 >> 9));
  v20 = *(v16 + 8 * v19);
  if (v20 != v42)
  {
    v30 = 1;
    while (v20 != -4096)
    {
      v31 = v19 + v30++;
      v19 = v31 & (v17 - 1);
      v20 = *(v16 + 8 * v19);
      if (v20 == v42)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

LABEL_19:
  if (v19 == v17)
  {
LABEL_20:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v45, v46);
    v18 = a3;
    v21 = v45;
    v17 = *(a3 + 136);
    if (v17 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v17 + 1, 8);
      v18 = a3;
      LODWORD(v17) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v17) = v21;
    ++*(v18 + 136);
    v16 = *(v18 + 240);
    LODWORD(v17) = *(v18 + 256);
  }

  v45 = v41;
  if (!v17)
  {
    goto LABEL_26;
  }

  v22 = (v17 - 1) & ((v41 >> 4) ^ (v41 >> 9));
  v23 = *(v16 + 8 * v22);
  if (v23 != v41)
  {
    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & (v17 - 1);
      v23 = *(v16 + 8 * v22);
      if (v23 == v41)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

LABEL_25:
  if (v22 == v17)
  {
LABEL_26:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v45, v46);
    v18 = a3;
    v24 = v45;
    v17 = *(a3 + 136);
    if (v17 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v17 + 1, 8);
      v18 = a3;
      LODWORD(v17) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v17) = v24;
    ++*(v18 + 136);
    v16 = *(v18 + 240);
    LODWORD(v17) = *(v18 + 256);
  }

  v25 = v40;
  v45 = v40;
  if (!v17)
  {
    goto LABEL_32;
  }

  v26 = (v17 - 1) & ((v40 >> 4) ^ (v40 >> 9));
  v27 = *(v16 + 8 * v26);
  if (v27 != v40)
  {
    v34 = 1;
    while (v27 != -4096)
    {
      v35 = v26 + v34++;
      v26 = v35 & (v17 - 1);
      v27 = *(v16 + 8 * v26);
      if (v27 == v40)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

LABEL_31:
  if (v26 == v17)
  {
LABEL_32:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>((a3 + 240), &v45, v46);
    v18 = a3;
    v28 = v45;
    v29 = *(a3 + 136);
    if (v29 >= *(a3 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 128, (a3 + 144), v29 + 1, 8);
      v18 = a3;
      LODWORD(v29) = *(a3 + 136);
    }

    *(*(v18 + 128) + 8 * v29) = v28;
    ++*(v18 + 136);
  }

  return 1;
}

void mlir::anonymous namespace::PatternMatchDetails::addOutput(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v5 = *(a1 + 216);
  v3 = a1 + 216;
  v4 = v5;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *(v4 + 8 * v9);
    if (v10 == a2)
    {
LABEL_3:
      if (v9 != v6)
      {
        return;
      }
    }

    else
    {
      v13 = 1;
      while (v10 != -4096)
      {
        v14 = v9 + v13++;
        v9 = v14 & (v6 - 1);
        v10 = *(v4 + 8 * v9);
        if (v10 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3, &v15, v16);
  v11 = v15;
  v12 = *(a1 + 72);
  if (v12 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), v12 + 1, 8);
    LODWORD(v12) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v12) = v11;
  ++*(a1 + 72);
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::StridedSliceOp,mlir::detail::any_value_binder,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::any_value_binder *,mlir::detail::any_value_binder *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul,2ul,3ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *(**(a2 + 8) + 72);
  v5 = v4[3];
  v6 = **a1;
  if (v6)
  {
    v7 = v6 == v5;
  }

  else
  {
    **a1 = v5;
    v4 = *(**(a2 + 8) + 72);
    v7 = 1;
  }

  v8 = *a2;
  v9 = v7 & **a2;
  **a2 = v9;
  v10 = a1[1];
  v11 = v4[7];
  if (*v10)
  {
    v12 = *v10 == v11;
  }

  else
  {
    *v10 = v11;
    v8 = *a2;
    v4 = *(**(a2 + 8) + 72);
    v9 = **a2 != 0;
    v12 = 1;
  }

  *v8 = v12 & v9;
  v13 = a1[2];
  v21 = v4[11];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v13 || *v13 == DefiningOp))
    {
      *v13 = DefiningOp;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  v16 = v15 & **a2;
  if (!DefiningOp)
  {
    v16 = 0;
  }

  **a2 = v16;
  v17 = a1[3];
  v21 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == result))
    {
      *v17 = result;
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  v20 = v19 & **a2;
  if (!result)
  {
    v20 = 0;
  }

  **a2 = v20;
  return result;
}

void mlir::anonymous namespace::ConvertTensorBufferPatternToFusionOp::~ConvertTensorBufferPatternToFusionOp(mlir::_anonymous_namespace_::ConvertTensorBufferPatternToFusionOp *this)
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

void mlir::anonymous namespace::ConvertTensorBufferPatternToFusionOp::matchAndRewrite(uint64_t (***a1)(mlir::anec::OpIDMap **, uint64_t, uint64_t **), uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = &v19;
  v18 = 0x600000000;
  v20 = &v22;
  v21 = 0x600000000;
  v23 = v25;
  v24 = 0x600000000;
  v25[6] = 0;
  v25[7] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if ((*a1)[9](a1, a2, &v17))
  {
    v14[0] = "ANECTensorBuffer";
    v14[1] = 16;
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    mlir::ValueRange::ValueRange(&__p, v17, v18);
    mlir::ValueRange::ValueRange(v16, v20, v21);
    v5[0] = v23;
    v5[1] = v24;
    mlir::OpBuilder::create<mlir::mpsx::FusionOp,llvm::StringRef const&,mlir::IRMapping &,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<mlir::Operation *>>((a3 + 8), *(a2 + 24), v14, v6, &__p, v16, v5);
  }

  llvm::deallocate_buffer(v30, (8 * v32));
}

unint64_t *OUTLINED_FUNCTION_5_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = v16;

  return mlir::ValueRange::ValueRange(&a14, &a16, 1uLL);
}

unint64_t OUTLINED_FUNCTION_6_13@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, double d0_0@<D0>, int32x4_t q1_0@<Q1>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v10 - 56) = a2;
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(v10 - 72) = v13;
  *(v10 - 64) = v12;

  return mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(v9, 0, v12, d0_0, q1_0);
}

void OUTLINED_FUNCTION_8_13(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v9, a1 + 1, 8);
}

uint64_t OUTLINED_FUNCTION_9_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = 0;
  a7 = a1;

  return mlir::Value::getDefiningOp(&a7);
}

BOOL OUTLINED_FUNCTION_13_11(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, ...)
{
  va_start(va, a16);

  return mlir::getPositivePromotedAxes(a16, a2, va, 0, 0);
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a17 = a1;
  a18 = 0;

  return mlir::ValueRange::dereference_iterator(&a17, 0);
}

void OUTLINED_FUNCTION_18_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  mlir::ConversionPatternRewriter::replaceOp(v15, v16, a14, a15);
}

uint64_t OUTLINED_FUNCTION_19_10(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, double a26)
{
  a26 = a1;

  return mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&a21, 1u);
}

void OUTLINED_FUNCTION_20_8(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 128, (v1 + 144), a1 + 1, 8);
}

void OUTLINED_FUNCTION_21_6(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a1 = a4;
  *(a1 + 32) = 259;

  mlir::emitError(a3, a2, v4);
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

uint64_t OUTLINED_FUNCTION_33_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return mlir::ShapedType::getShape(va);
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return mlir::ValueRange::dereference_iterator((v0 - 72), 0);
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a14 = v15;
  a15 = a1;

  return mlir::ShapedType::getShape(&a14);
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(va, a1);
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(va, 0);
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = v12;
  a12 = a1;

  return mlir::ShapedType::getShape(&a11);
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (!a12)
  {
    a11 = 0;
  }
}

uint64_t *OUTLINED_FUNCTION_42_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2, va, va1);
}

void mlir::ANECPlacementAnalysis::_visitOperation(mlir::ANECPlacementAnalysis *this, mlir::Operation *a2)
{
  if (a2)
  {
    v4 = *(*(a2 + 6) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id;
    v6 = v4 == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id ? a2 : 0;
    *&v42 = v6;
    if (v5 && mlir::placement::RegionCall::getRegionType(&v42) == 1)
    {
      v7 = *(this + 2);
      if (v7 >= *(this + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this, this + 16, v7 + 1, 8);
        LODWORD(v7) = *(this + 2);
      }

      *(*this + 8 * v7) = a2;
      ++*(this + 2);
    }
  }

  v8 = *(a2 + 6);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v42 = *(v8 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v42);
  }

  else
  {
    Values = *(v8 + 24);
  }

  if (*(Values + 16) != 3)
  {
    return;
  }

  v10 = *(Values + 8);
  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 != 28781 || v12 != 115)
  {
    return;
  }

  v14 = *(a2 + 6);
  v15 = *(v14 + 16);
  v16 = v15 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id;
  if (v16 || v15 == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
  {
    return;
  }

  *&v42 = *(v14 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v42);
  v20 = *(this + 8);
  *&v42 = AttrData;
  *(&v42 + 1) = v19;
  v21 = *(this + 20);
  if (!v21)
  {
    v34 = 0;
    v29 = 0;
    goto LABEL_43;
  }

  v22 = AttrData;
  v23 = v19;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(AttrData, v19);
  v25 = 0;
  v26 = (v21 - 1);
  for (i = 1; ; ++i)
  {
    v28 = HashValue & v26;
    v29 = (v20 + 80 * (HashValue & v26));
    v30 = *v29;
    if (*v29 == -2)
    {
      if (v22 == -2)
      {
        goto LABEL_48;
      }

      goto LABEL_36;
    }

    if (v30 == -1)
    {
      break;
    }

    if (v23 == v29[1])
    {
      if (!v23)
      {
        goto LABEL_48;
      }

      v41 = v20;
      v31 = v26;
      v40 = HashValue & v26;
      v32 = memcmp(v22, *v29, v23);
      v28 = v40;
      v26 = v31;
      v20 = v41;
      if (!v32)
      {
        goto LABEL_48;
      }
    }

LABEL_36:
    if (v25)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30 + 2 == 0;
    }

    if (v33)
    {
      v25 = v29;
    }

    HashValue = i + v28;
  }

  if (v22 != -1)
  {
    if (v25)
    {
      v29 = v25;
    }

    v34 = *(this + 20);
LABEL_43:
    v43 = v29;
    v35 = *(this + 18);
    if (4 * v35 + 4 >= 3 * v34)
    {
      v34 *= 2;
    }

    else if (v34 + ~v35 - *(this + 19) > v34 >> 3)
    {
      goto LABEL_45;
    }

    llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::grow(this + 64, v34);
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(this + 8, &v42, &v43);
    v35 = *(this + 18);
    v29 = v43;
LABEL_45:
    *(this + 18) = v35 + 1;
    if (*v29 != -1)
    {
      --*(this + 19);
    }

    *v29 = v42;
    v29[2] = (v29 + 4);
    v29[3] = 0x600000000;
  }

LABEL_48:
  v36 = *(v29 + 6);
  if (v36 >= *(v29 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v29 + 2), v29 + 4, v36 + 1, 8);
    LODWORD(v36) = *(v29 + 6);
  }

  *&v29[2][8 * v36] = a2;
  ++*(v29 + 6);
  ++*(this + 11);
  v37 = *(*(a2 + 6) + 16);
  if (v37 == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    ++*(this + 12);
  }
}

double mlir::ANECPlacementAnalysis::printReport(mlir::ANECPlacementAnalysis *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = llvm::dbgs(this);
  v5 = *(v4 + 4);
  if (*(v4 + 3) - v5 > 0x1CuLL)
  {
    qmemcpy(v5, "============================\n", 29);
    *(v4 + 4) += 29;
  }

  else
  {
    v4 = llvm::raw_ostream::write(v4, "============================\n", 0x1DuLL);
  }

  v6 = llvm::dbgs(v4);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 <= 0x16uLL)
  {
    v8 = llvm::raw_ostream::write(v6, "ANEC Placement Report:\n", 0x17uLL);
    v9 = llvm::dbgs(v8);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = *(v9 + 4);
    if (*(v9 + 3) - v12 <= 0x26uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "All MPS operations were placed on ANE.\n", 0x27uLL);
      goto LABEL_21;
    }

    qmemcpy(v12, "All MPS operations were placed on ANE.\n", 39);
    v15 = *(v9 + 4) + 39;
    goto LABEL_20;
  }

  qmemcpy(v7, "ANEC Placement Report:\n", 23);
  *(v6 + 4) += 23;
  v9 = llvm::dbgs(v6);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = llvm::raw_ostream::operator<<(v9, v2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 0x2AuLL)
  {
    qmemcpy(v11, " MPS operations couldn't be placed on ANE.\n", 43);
    *(v10 + 4) += 43;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v10, " MPS operations couldn't be placed on ANE.\n", 0x2BuLL);
  }

  v9 = llvm::dbgs(v10);
  if (v2 == v3)
  {
    v13 = *(v9 + 4);
    if (*(v9 + 3) - v13 <= 0x29uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "All unplaced operations are typechangers.\n", 0x2AuLL);
      goto LABEL_21;
    }

    qmemcpy(v13, "All unplaced operations are typechangers.\n", 42);
    v15 = *(v9 + 4) + 42;
  }

  else
  {
    v9 = llvm::raw_ostream::operator<<(v9, v2 - v3);
    v14 = *(v9 + 4);
    if (*(v9 + 3) - v14 <= 0x43uLL)
    {
      v9 = llvm::raw_ostream::write(v9, " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n", 0x44uLL);
      goto LABEL_21;
    }

    qmemcpy(v14, " MPS operations (excluding TypeChangers) couldn't be placed on ANE.\n", 68);
    v15 = *(v9 + 4) + 68;
  }

LABEL_20:
  *(v9 + 4) = v15;
LABEL_21:
  if (!*(this + 18))
  {
    goto LABEL_53;
  }

  v9 = llvm::dbgs(v9);
  v16 = *(v9 + 4);
  if (*(v9 + 3) - v16 > 0x14uLL)
  {
    qmemcpy(v16, "Unplaced operations:\n", 21);
    *(v9 + 4) += 21;
    if (!*(this + 18))
    {
      goto LABEL_53;
    }
  }

  else
  {
    v9 = llvm::raw_ostream::write(v9, "Unplaced operations:\n", 0x15uLL);
    if (!*(this + 18))
    {
      goto LABEL_53;
    }
  }

  v17 = *(this + 20);
  if (v17)
  {
    v18 = 80 * v17;
    v19 = *(this + 8);
    while (*v19 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v19 += 80;
      v18 -= 80;
      if (!v18)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v19 = *(this + 8);
  }

  v20 = *(this + 8) + 80 * v17;
  while (v19 != v20)
  {
    v21 = llvm::dbgs(v9);
    v22 = *v19;
    v23 = *(v19 + 8);
    v24 = *(v21 + 4);
    if (v23 <= *(v21 + 3) - v24)
    {
      if (v23)
      {
        v25 = v21;
        v26 = *(v19 + 8);
        memcpy(*(v21 + 4), v22, v23);
        v21 = v25;
        v24 = (*(v25 + 4) + v26);
        *(v25 + 4) = v24;
      }
    }

    else
    {
      v21 = llvm::raw_ostream::write(v21, v22, v23);
      v24 = *(v21 + 4);
    }

    if (*(v21 + 3) - v24 > 1uLL)
    {
      *v24 = 10272;
      *(v21 + 4) += 2;
    }

    else
    {
      v21 = llvm::raw_ostream::write(v21, " (", 2uLL);
    }

    v27 = llvm::raw_ostream::operator<<(v21, *(v19 + 24));
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 2)
    {
      *(v28 + 2) = 10;
      *v28 = 14889;
      *(v27 + 4) += 3;
      if (*(v19 + 24))
      {
LABEL_46:
        v29 = **(v19 + 16);
        v30 = llvm::dbgs(v27);
        mlir::OpPrintingFlags::OpPrintingFlags(v47);
        v31 = mlir::OpPrintingFlags::useLocalScope(v47);
        mlir::Operation::print(v29, v30, v31);
      }
    }

    else
    {
      v27 = llvm::raw_ostream::write(v27, "):\n", 3uLL);
      if (*(v19 + 24))
      {
        goto LABEL_46;
      }
    }

    v9 = llvm::dbgs(v27);
    v32 = *(v9 + 4);
    if (*(v9 + 3) == v32)
    {
      v9 = llvm::raw_ostream::write(v9, "\n", 1uLL);
    }

    else
    {
      *v32 = 10;
      ++*(v9 + 4);
    }

    do
    {
      v19 += 80;
    }

    while (v19 != v20 && *v19 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_53:
  v33 = *(this + 2);
  v34 = llvm::dbgs(v9);
  if (v33 == 1)
  {
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 <= 0x2AuLL)
    {
      v36 = "Found exactly one ANERegionCall operation.\n";
      goto LABEL_59;
    }

    v38 = "Found exactly one ANERegionCall operation.\n";
    goto LABEL_64;
  }

  if (!v33)
  {
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 <= 0x2AuLL)
    {
      v36 = "Couldn't find any ANERegionCall operation.\n";
LABEL_59:
      v34 = llvm::raw_ostream::write(v34, v36, 0x2BuLL);
      goto LABEL_67;
    }

    v38 = "Couldn't find any ANERegionCall operation.\n";
LABEL_64:
    v39 = *(v38 + 1);
    *v35 = *v38;
    v35[1] = v39;
    *(v35 + 27) = *(v38 + 27);
    v40 = *(v34 + 4) + 43;
    goto LABEL_66;
  }

  v34 = llvm::raw_ostream::operator<<(v34, *(this + 2));
  v37 = *(v34 + 4);
  if (*(v34 + 3) - v37 <= 0x20uLL)
  {
    v34 = llvm::raw_ostream::write(v34, " ANERegionCall operations found.\n", 0x21uLL);
    goto LABEL_67;
  }

  qmemcpy(v37, " ANERegionCall operations found.\n", 33);
  v40 = *(v34 + 4) + 33;
LABEL_66:
  *(v34 + 4) = v40;
LABEL_67:
  if (*(this + 2))
  {
    v41 = **this;
    v42 = llvm::dbgs(v34);
    mlir::OpPrintingFlags::OpPrintingFlags(v47);
    v43 = mlir::OpPrintingFlags::useLocalScope(v47);
    mlir::Operation::print(v41, v42, v43);
  }

  v44 = llvm::dbgs(v34);
  v45 = v44[4];
  if (v44[3] - v45 > 0x1DuLL)
  {
    qmemcpy(v45, "============================\n\n", 30);
    result = *"==============\n\n";
    v44[4] += 30;
  }

  else
  {
    llvm::raw_ostream::write(v44, "============================\n\n", 0x1EuLL);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, llvm::hashing::detail **a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    result = 0;
    goto LABEL_18;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, a2[1]);
  v8 = 0;
  v9 = v4 - 1;
  v10 = *a2;
  v11 = a2[1];
  for (i = 1; ; ++i)
  {
    v13 = HashValue & v9;
    v14 = (v5 + 80 * (HashValue & v9));
    v15 = *v14;
    if (*v14 == -2)
    {
      if (v10 == -2)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    if (v15 == -1)
    {
      break;
    }

    if (v11 == v14[1] && (!v11 || !memcmp(v10, *v14, v11)))
    {
LABEL_16:
      result = 1;
      goto LABEL_18;
    }

LABEL_10:
    if (v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 2 == 0;
    }

    if (v16)
    {
      v8 = v14;
    }

    HashValue = i + v13;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = (v5 + 80 * v13);
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v18;
    result = 0;
  }

LABEL_18:
  *a3 = v14;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(80 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 80 * v3;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::moveFromOldBuckets(a1, v4, v4 + v10);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 80 * v11 - 80;
    if (v12 < 0x50)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = xmmword_1A75AD9C0;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x50 + 1;
    v13 = &result[5 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_1A75AD9C0;
      v15[5] = xmmword_1A75AD9C0;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 80 * v6 - 80;
    if (v8 < 0x50)
    {
      v9 = *a1;
LABEL_7:
      v13 = (v7 + 80 * v6);
      do
      {
        *v9 = xmmword_1A75AD9C0;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x50 + 1;
    v9 = (v7 + 80 * (v10 & 0x7FFFFFFFFFFFFFELL));
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = xmmword_1A75AD9C0;
      v11[5] = xmmword_1A75AD9C0;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::Operation *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        v14[3] = 0x600000000;
        v14[2] = (v14 + 4);
        v15 = (v14 + 2);
        if (*(v4 + 24))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v15, (v4 + 16));
        }

        ++*(a1 + 8);
        v16 = *(v4 + 16);
        if ((v4 + 32) != v16)
        {
          free(v16);
        }
      }

      v4 += 80;
    }

    while (v4 != a3);
  }
}

void mlir::ANECRegionOpCreator::isOpCompatible(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::copyFrom(v2);
}

void mlir::ANECRegionOpCreator::getRegionOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir::IRMapping *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, mlir::Operation **a16, uint64_t a17)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v53[0] = a6;
  v53[1] = a7;
  v52[0] = a9;
  v52[1] = a10;
  v51[0] = a11;
  v51[1] = a12;
  v50[0] = a13;
  v50[1] = a14;
  v49[0] = a15;
  v49[1] = a16;
  v22 = (a1 + 328);
  v23 = *(a1 + 351);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v24 = *(a1 + 336);
    if (!v24)
    {
      std::string::__init_copy_ctor_external(&v48, *v22, 0);
      goto LABEL_15;
    }
  }

  else
  {
    if (!*(a1 + 351))
    {
      *&v48.__r_.__value_.__l.__data_ = *v22;
      v48.__r_.__value_.__r.__words[2] = *(a1 + 344);
      goto LABEL_15;
    }

    v24 = *(a1 + 336);
  }

  *(&v45.__r_.__value_.__s + 23) = 1;
  LOWORD(v45.__r_.__value_.__l.__data_) = 95;
  if ((v23 & 0x80000000) == 0)
  {
    v25 = (a1 + 328);
  }

  else
  {
    v25 = *v22;
  }

  if ((v23 & 0x80000000) == 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v24;
  }

  v27 = std::string::append(&v45, v25, v26);
  v28 = v27->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = *&v27->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

LABEL_15:
  v29 = *(a1 + 312);
  if (v29 <= 3)
  {
    if (v29 <= 1)
    {
      if (!v29)
      {
        v41 = 773;
        v38 = a3;
        v39 = a4;
        v40 = "_ane_region_";
        v42[0] = &v38;
        v43 = &a17;
        v44 = 2818;
        v45.__r_.__value_.__r.__words[0] = v42;
        v45.__r_.__value_.__r.__words[2] = &v48;
        v46 = 1026;
        llvm::Twine::str(&v45, __p);
        v30 = *(a1 + 8);
        *&v45.__r_.__value_.__l.__data_ = 0uLL;
        mlir::OpBuilder::create<mlir::anec::A12,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v30, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
      }

      v41 = 773;
      v38 = a3;
      v39 = a4;
      v40 = "_ane_region_";
      v42[0] = &v38;
      v43 = &a17;
      v44 = 2818;
      v45.__r_.__value_.__r.__words[0] = v42;
      v45.__r_.__value_.__r.__words[2] = &v48;
      v46 = 1026;
      llvm::Twine::str(&v45, __p);
      v34 = *(a1 + 8);
      *&v45.__r_.__value_.__l.__data_ = 0uLL;
      mlir::OpBuilder::create<mlir::anec::A13,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v34, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
    }

    if (v29 == 2)
    {
      v41 = 773;
      v38 = a3;
      v39 = a4;
      v40 = "_ane_region_";
      v42[0] = &v38;
      v43 = &a17;
      v44 = 2818;
      v45.__r_.__value_.__r.__words[0] = v42;
      v45.__r_.__value_.__r.__words[2] = &v48;
      v46 = 1026;
      llvm::Twine::str(&v45, __p);
      v32 = *(a1 + 8);
      *&v45.__r_.__value_.__l.__data_ = 0uLL;
      mlir::OpBuilder::create<mlir::anec::A14,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v32, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
    }

    v41 = 773;
    v38 = a3;
    v39 = a4;
    v40 = "_ane_region_";
    v42[0] = &v38;
    v43 = &a17;
    v44 = 2818;
    v45.__r_.__value_.__r.__words[0] = v42;
    v45.__r_.__value_.__r.__words[2] = &v48;
    v46 = 1026;
    llvm::Twine::str(&v45, __p);
    v36 = *(a1 + 8);
    *&v45.__r_.__value_.__l.__data_ = 0uLL;
    mlir::OpBuilder::create<mlir::anec::A15,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v36, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
  }

  if (v29 <= 5)
  {
    if (v29 == 4)
    {
      v41 = 773;
      v38 = a3;
      v39 = a4;
      v40 = "_ane_region_";
      v42[0] = &v38;
      v43 = &a17;
      v44 = 2818;
      v45.__r_.__value_.__r.__words[0] = v42;
      v45.__r_.__value_.__r.__words[2] = &v48;
      v46 = 1026;
      llvm::Twine::str(&v45, __p);
      v31 = *(a1 + 8);
      *&v45.__r_.__value_.__l.__data_ = 0uLL;
      mlir::OpBuilder::create<mlir::anec::A16,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v31, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
    }

    v41 = 773;
    v38 = a3;
    v39 = a4;
    v40 = "_ane_region_";
    v42[0] = &v38;
    v43 = &a17;
    v44 = 2818;
    v45.__r_.__value_.__r.__words[0] = v42;
    v45.__r_.__value_.__r.__words[2] = &v48;
    v46 = 1026;
    llvm::Twine::str(&v45, __p);
    v35 = *(a1 + 8);
    *&v45.__r_.__value_.__l.__data_ = 0uLL;
    mlir::OpBuilder::create<mlir::anec::A17,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v35, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
  }

  if (v29 == 6)
  {
    v41 = 773;
    v38 = a3;
    v39 = a4;
    v40 = "_ane_region_";
    v42[0] = &v38;
    v43 = &a17;
    v44 = 2818;
    v45.__r_.__value_.__r.__words[0] = v42;
    v45.__r_.__value_.__r.__words[2] = &v48;
    v46 = 1026;
    llvm::Twine::str(&v45, __p);
    v33 = *(a1 + 8);
    *&v45.__r_.__value_.__l.__data_ = 0uLL;
    mlir::OpBuilder::create<mlir::anec::A18,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v33, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
  }

  v41 = 773;
  v38 = a3;
  v39 = a4;
  v40 = "_ane_region_";
  v42[0] = &v38;
  v43 = &a17;
  v44 = 2818;
  v45.__r_.__value_.__r.__words[0] = v42;
  v45.__r_.__value_.__r.__words[2] = &v48;
  v46 = 1026;
  llvm::Twine::str(&v45, __p);
  v37 = *(a1 + 8);
  *&v45.__r_.__value_.__l.__data_ = 0uLL;
  mlir::OpBuilder::create<mlir::anec::A11Legacy,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v37, a2, __p, a5, v51, v50, v53, v52, v49, &v45);
}

void mlir::OpBuilder::create<mlir::anec::A12,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A12,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A13,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A13,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A14,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A14,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A15,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A15,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A16,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A16,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A17,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A17,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A18,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A18,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

void mlir::OpBuilder::create<mlir::anec::A11Legacy,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t **a3, mlir::IRMapping *a4, void **a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, mlir::Operation ***a9, uint64_t a10)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v28, a2, v19);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = a3;
    }

    else
    {
      v23 = *a3;
    }

    if (v22 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = a3[1];
    }

    mlir::anec::A11Legacy::build(a1, v28, v23, v24, a4, *a5, a5[1], v21, *a6, a6[1], *a7, a7[1], *a8, a8[1], *a9, a9[1], *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::anec::A11Legacy,std::string &,mlir::IRMapping &,mlir::ValueRange &,mlir::TypeRange &,mlir::ValueRange &,mlir::TypeRange &,llvm::ArrayRef<mlir::Operation *> &,llvm::ArrayRef<mlir::NamedAttribute>>(v28, v27, v26);
}

float mlir::ANECRegionOpCreator::computeHostRegionCost(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0.0;
  }

  v5 = 8 * a3;
  v6 = 0.0;
  do
  {
    v7 = *a2++;
    v8 = mlir::mps::detail::MPSAbstractCostModel::computeCost(a1 + 224, v7, *(a1 + 320));
    v6 = v6 + *&v8;
    v5 -= 8;
  }

  while (v5);
  return v6;
}