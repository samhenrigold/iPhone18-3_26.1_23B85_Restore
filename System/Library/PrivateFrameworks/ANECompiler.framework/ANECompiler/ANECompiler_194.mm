ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::L2NormPool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::L2NormPool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = ANECStepToZinIrDims3D(a4);
  mlir::anec::L2NormPool::build(a1, v19, a3, 1uLL, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::L2NormPool,void>::id)
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

void *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::~ConvertPool(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::PoolMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PoolMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PoolMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 120);
  v38 = *(a3 + 112);
  v39 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v39 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v38, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v39 + 1;
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
        v38 = v18;
        v39 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v38) || !mlir::ElementsAttr::getShapedType(&v38))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v38);
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
        v38 = 0;
        v39 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v23 = *(a3 + 112);
  v36 = *(a3 + 96);
  v37 = v23;
  v24 = *(a3 + 80);
  v34 = *(a3 + 64);
  v35 = v24;
  v25 = *(a3 + 16);
  *__p = *a3;
  v31 = v25;
  v26 = *(a3 + 48);
  v32 = *(a3 + 32);
  v33 = v26;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

ZinIrHalH13g *mlir::anonymous namespace::ConvertPool<mlir::mps::PoolMaxOp,mlir::anec::MaxPool>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x1E69E9840];
  v121 = a2;
  v153 = *(a3 + 112);
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
  Strides = mlir::mps::PoolMaxOp::getStrides(&v121);
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
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v121);
  v144 = &v146;
  v145 = 0x800000000;
  if (WeightsLayout)
  {
LABEL_22:
    v141 = &v143;
    v142 = 0x400000000;
    WindowSizes = mlir::mps::PoolMaxOp::getWindowSizes(&v121);
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
                if (!WeightsLayout)
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

              if (WeightsLayout > 1)
              {
                if (WeightsLayout != 2 && WeightsLayout != 4)
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
                if (WeightsLayout)
                {
                  if (WeightsLayout == 1)
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
              v96 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), *(v26 + 24), &v131, v158);
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
  return mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(v114, v115, v116, v117);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = ANECStepToZinIrDims3D(a4);
  mlir::anec::MaxPool::build(a1, v19, a3, 1uLL, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id)
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

void mlir::anonymous namespace::ConvertStencil::~ConvertStencil(mlir::_anonymous_namespace_::ConvertStencil *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::StencilOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::StencilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::StencilOpGenericAdaptorBase::StencilOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::StencilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 112);
  v38 = *(a3 + 104);
  v39 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v39 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v38, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v39 + 1;
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
        v38 = v18;
        v39 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v38) || !mlir::ElementsAttr::getShapedType(&v38))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v38);
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
        v38 = 0;
        v39 = 0;
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
  v37 = *(a3 + 112);
  v24 = *(a3 + 64);
  v25 = *(a3 + 16);
  *__p = *a3;
  v31 = v25;
  v26 = *(a3 + 48);
  v32 = *(a3 + 32);
  v33 = v26;
  v34 = v24;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void *mlir::anonymous namespace::ConvertStencil::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v131[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v130 = *(a3 + 104);
  v107 = mlir::ValueRange::dereference_iterator(&v130, 0);
  v6 = mlir::ValueRange::dereference_iterator(&v130, 1);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  if (mlir::mps::Conv3DOp::getWeightsLayout(&v108) != 2)
  {
    operator new();
  }

  v104 = &v106;
  v105 = 0x100000000;
  if ((mlir::matchConstantWithFloatVector<float>(v6, &v104) & 1) == 0)
  {
    operator new();
  }

  if (v105)
  {
    v9 = v104;
    v10 = 4 * v105;
    do
    {
      if (*v9 != 1.0)
      {
        operator new();
      }

      ++v9;
      v10 -= 4;
    }

    while (v10);
  }

  v11 = (*(v107 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v12);
  v103 = v13;
  v14 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v101[0] = v14;
  v101[1] = v15;
  v16 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v100[0] = mlir::getRankPromotionTypeForANE(v16, v17);
  v100[1] = v18;
  mlir::ShapedType::getShape(v101);
  if (v19 != 4)
  {
    operator new();
  }

  Shape = mlir::ShapedType::getShape(v101);
  v21 = mlir::ShapedType::getShape(v101);
  v23 = (v21 + 8 * v22);
  v127 = v129;
  v128 = 0x400000000;
  v24 = (v23 - Shape) >> 3;
  if (v24 < 5)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v24, 8);
    v25 = v128;
    v26 = v128;
  }

  if (v23 != Shape)
  {
    v27 = &v127[v25];
    v28 = v23 - Shape - 8;
    if (v28 < 0x38)
    {
      v29 = Shape;
      goto LABEL_35;
    }

    v30 = &v127[v25];
    if (&v30[-Shape] < 0x20)
    {
      v29 = Shape;
      do
      {
LABEL_35:
        v37 = *v29++;
        *v27 = v37;
        v27 += 8;
      }

      while (v29 != v23);
      goto LABEL_36;
    }

    v31 = (v28 >> 3) + 1;
    v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
    v27 += v32;
    v29 = (Shape + v32);
    v33 = (Shape + 16);
    v34 = v30 + 16;
    v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = *v33;
      *(v34 - 1) = *(v33 - 1);
      *v34 = v36;
      v33 += 2;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  LODWORD(v128) = v26 + ((v23 - Shape) >> 3);
  mlir::ShapedType::getShape(v101);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v38);
  if ((v40 & 1) == 0)
  {
    goto LABEL_104;
  }

  v41 = v127[IndexFromDim];
  mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  if (v42 == 5 && v41 >= 2)
  {
    operator new();
  }

  v124 = v126;
  v125 = 0x400000000;
  Strides = mlir::mps::PoolMaxOp::getStrides(&v108);
  if (Strides)
  {
    v44 = Strides;
    v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v44;
  }

  else
  {
    v45 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v45, &v124, 1);
  v121 = v123;
  v122 = 0x400000000;
  AttributeValueNames = mlir::pdl::OperationOp::getAttributeValueNames(&v108);
  if (AttributeValueNames)
  {
    v47 = AttributeValueNames;
    v48 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*AttributeValueNames + 8);
    AttributeValueNames = v47;
  }

  else
  {
    v48 = 0;
  }

  mlir::getIntValues<unsigned long long>(AttributeValueNames, v48, &v121, 1);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v108);
  v50 = PaddingStyle;
  __p[0] = v120;
  __p[1] = 0x800000000;
  if (PaddingStyle > 1)
  {
    if (PaddingStyle == 2 || PaddingStyle == 4)
    {
      llvm::SmallVectorImpl<unsigned long long>::resize(__p, 8uLL, 0);
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  if (PaddingStyle)
  {
    if (PaddingStyle == 1)
    {
      llvm::SmallVectorImpl<unsigned long long>::resize(__p, 8uLL, 0);
      goto LABEL_53;
    }

LABEL_56:
    v52 = "Unsupported paddingStyle";
    goto LABEL_80;
  }

  mlir::mps::StencilOp::getExplicitPadding(&v108);
  if ((v53 & 1) == 0)
  {
    v52 = "padding is null but paddingStyle is EXPLICT";
    goto LABEL_80;
  }

  ExplicitPadding = mlir::mps::StencilOp::getExplicitPadding(&v108);
  if ((v55 & 1) == 0)
  {
LABEL_104:
    v92 = std::__throw_bad_optional_access[abi:nn200100]();
    return llvm::SmallVector<unsigned long long,3u>::SmallVector(v92, v93, v94);
  }

  if (ExplicitPadding)
  {
    v56 = ExplicitPadding;
    v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*ExplicitPadding + 8);
    ExplicitPadding = v56;
  }

  else
  {
    v57 = 0;
  }

  mlir::getIntValues<unsigned long long>(ExplicitPadding, v57, __p, 1);
LABEL_53:
  v51 = __p[0] + 16 * (v41 < 2);
  if (!*v51 && !v51[1])
  {
    if (v122)
    {
      v58 = v121;
      v59 = 8 * v122;
      while (*v58 == 1)
      {
        ++v58;
        v59 -= 8;
        if (!v59)
        {
          goto LABEL_66;
        }
      }

      v52 = "Dilated Stencil not supported on ANE";
      goto LABEL_80;
    }

LABEL_66:
    if (v125)
    {
      v60 = 8 * v125;
      v61 = v124;
      while (*v61 == 1)
      {
        ++v61;
        v60 -= 8;
        if (!v60)
        {
          goto LABEL_70;
        }
      }

      v52 = "Strided Stencil not supported on ANE";
      goto LABEL_80;
    }

LABEL_70:
    *v113 = *(v124 + 1);
    v114 = v124[v41 > 1];
    llvm::SmallVector<unsigned long long,3u>::SmallVector(&v117, v113, 3);
    *v113 = *(v127 + 1);
    v114 = v127[v41 > 1];
    llvm::SmallVector<unsigned long long,3u>::SmallVector(&v115, v113, 3);
    v62 = *(__p[0] + 3);
    *v109 = *(__p[0] + 2);
    v110 = v62;
    v111 = *(__p[0] + 2 * (v41 > 1));
    v112 = *(__p[0] + ((2 * (v41 > 1)) | 1u));
    llvm::SmallVector<unsigned long long,6u>::SmallVector(v113, v109, 6);
    v109[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v64 = mlir::RankedTensorType::get(v109, 1, IntegerType, 0);
    v109[0] = 6;
    v65 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v66 = mlir::RankedTensorType::get(v109, 1, v65, 0);
    v67 = v66;
    v99 = v107;
    if (v41 >= 2)
    {
      v96 = v66;
      v68 = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
      llvm::SmallVector<long long,5u>::SmallVector<long long,void>(v109, v68, v69);
      v131[0] = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(v109, v109[0] + 16, v131);
      v70 = v109[0];
      v95 = *(v108 + 24);
      v71 = LODWORD(v109[1]);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v107);
      v131[0] = mlir::MemRefType::get(v70, v71, ElementTypeOrSelf, 0, 0, 0);
      v99 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v95, v131, &v107) - 16;
      if (v109[0] != &v110)
      {
        free(v109[0]);
      }

      v67 = v96;
    }

    v73 = *(v108 + 24);
    if (v64)
    {
      v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
    }

    else
    {
      v74 = 0;
    }

    v109[0] = mlir::DenseElementsAttr::getFromRawBuffer(v64, v74, v117, 8 * v118);
    if (v67)
    {
      v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
    }

    else
    {
      v77 = 0;
    }

    v131[0] = mlir::DenseElementsAttr::getFromRawBuffer(v67, v77, v113[0], 8 * LODWORD(v113[1]));
    if (v64)
    {
      v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
    }

    else
    {
      v78 = 0;
    }

    v98 = mlir::DenseElementsAttr::getFromRawBuffer(v64, v78, v115, 8 * v116);
    UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v79);
    v99 = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::UnitAttr>((a4 + 8), v73, &v99, v109, v131, &v98, &UnitAttr) - 16;
    v80 = *(v115 + 1) * *v115 * *(v115 + 2);
    v81 = *(v108 + 24);
    mlir::ShapedType::getShape(&RankPromotionTypeForANE);
    *v109 = v80;
    if (v84)
    {
      v99 = v85;
      if (v41 >= 2)
      {
        v86 = *(v108 + 24);
        v87 = mlir::ShapedType::getShape(v100);
        v89 = v88;
        v90 = mlir::getElementTypeOrSelf(v99);
        v109[0] = mlir::MemRefType::get(v87, v89, v90, 0, 0, 0);
        v85 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v86, v109, &v99) - 16;
        v99 = v85;
      }

      v91 = v108;
      v131[0] = v85;
      mlir::ValueRange::ValueRange(v109, v131, 1uLL);
      mlir::ConversionPatternRewriter::replaceOp(a4, v91, v109[0], v109[1]);
    }

    goto LABEL_104;
  }

  v52 = "Channel padding is not supported on ANE";
LABEL_80:
  std::string::basic_string[abi:nn200100]<0>(v113, v52);
  matched = mlir::logMatchFailure(v113, *(v108 + 24), a4);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113[0]);
  }

  if (__p[0] != v120)
  {
    free(__p[0]);
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

  if (v104 != &v106)
  {
    free(v104);
  }

  return matched;
}

void *llvm::SmallVector<unsigned long long,3u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 4)
  {
    v6 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5, 8);
    a2 = v6;
    v7 = *(a1 + 2);
    v8 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 3);
  return a1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::UnitAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::AveragePool::build(a1, v23, *a3, *a4, *a5, *a6, *a7);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::AveragePool,void>::id)
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

void *llvm::SmallVector<unsigned long long,6u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 7)
  {
    v6 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v5, 8);
    a2 = v6;
    v7 = *(a1 + 2);
    v8 = 8 * a3;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * a3;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v7), a2, v8);
    v7 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v7 + (v8 >> 3);
  return a1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CeilOp,mlir::anec::Ceil>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0F9E8;
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

void *sub_1A6EB39DC()
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

uint64_t mlir::OpConversionPattern<mlir::mps::CeilOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CeilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CeilOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::CeilOp,mlir::anec::Ceil>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Ceil,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ErfOp,mlir::anec::Erf>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0FA58;
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

void *sub_1A6EB4650()
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

uint64_t mlir::OpConversionPattern<mlir::mps::ErfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ErfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ErfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ErfOp,mlir::anec::Erf>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Erf,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ExponentBase2Op,mlir::anec::Exp2>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0FAC8;
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

void *sub_1A6EB52C4()
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentBase2Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ExponentBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ExponentBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ExponentBase2Op,mlir::anec::Exp2>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Exp2,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Exp2,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Exp2,mlir::anec::ElementwiseMult &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::FloorOp,mlir::anec::Floor>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0FB38;
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

void *sub_1A6EB5F38()
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::FloorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::FloorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::FloorOp,mlir::anec::Floor>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Floor,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Floor,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Floor,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SignOp,mlir::anec::Sign>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0FBA8;
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

void *sub_1A6EB6BAC()
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SignOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SignOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SignOp,mlir::anec::Sign>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sign,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TruncateOp,mlir::anec::Trunc>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F1A0FC18;
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

void *sub_1A6EB7820()
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

uint64_t mlir::OpConversionPattern<mlir::mps::TruncateOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::TruncateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::TruncateOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TruncateOp,mlir::anec::Trunc>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
  v54 = mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 1), *(a2 + 24), &__p, v71);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Trunc,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMaxOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v6 = *(a3 + 64);
  v17[0] = *(a3 + 56);
  v17[1] = v6;
  v15 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v17, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v14);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v16))
    {
      if (*(v16 + 36))
      {
        v10 = v16 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = v9 - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v16, &__p, 1);
  }

  operator new();
}

unint64_t mlir::anonymous namespace::convertAxes(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v36[0] = a1;
  v36[1] = a2;
  v5 = (*(*(*(a3 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  __p = v5;
  v34 = v6;
  mlir::ShapedType::getShape(&__p);
  v8 = v7;
  v32 = v7;
  if (a2 <= 1)
  {
    __p = v35;
    v34 = 0x600000000;
    if (!v7)
    {
      goto LABEL_21;
    }

    if (v7 < 7)
    {
      v9 = 0;
      v10 = v35;
      v11 = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v35, v7, 8);
      v9 = v34;
      v10 = __p;
      v11 = v8 - v34;
      if (v8 == v34)
      {
LABEL_14:
        LODWORD(v34) = v8;
        if (!v8)
        {
          goto LABEL_21;
        }

        v16 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v16 >= 3)
        {
          v19 = v16 + 1;
          v17 = (v16 + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v18 = &v10->i64[v17];
          v20 = xmmword_1A7598670;
          v21 = v10 + 1;
          v22 = vdupq_n_s64(2uLL);
          v23 = vdupq_n_s64(4uLL);
          v24 = v17;
          do
          {
            v21[-1] = v20;
            *v21 = vaddq_s64(v20, v22);
            v20 = vaddq_s64(v20, v23);
            v21 += 2;
            v24 -= 4;
          }

          while (v24);
          if (v19 == v17)
          {
LABEL_21:
            Context = mlir::Attribute::getContext((a3 + 24));
            v26 = mlir::IntegerType::get(Context, 0x40u, 2u);
            v27 = mlir::RankedTensorType::get(&v32, 1, v26, 0);
            if (v27)
            {
              v28 = v27;
              v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
              v27 = v28;
            }

            else
            {
              v29 = 0;
            }

            SortedUniquePromotedPositiveAxesAttr = mlir::DenseElementsAttr::getFromRawBuffer(v27, v29, __p, 8 * v34);
            v15 = SortedUniquePromotedPositiveAxesAttr & 0xFFFFFFFFFFFFFF00;
            if (__p != v35)
            {
              v30 = SortedUniquePromotedPositiveAxesAttr;
              free(__p);
              LOBYTE(SortedUniquePromotedPositiveAxesAttr) = v30;
            }

            return v15 | SortedUniquePromotedPositiveAxesAttr;
          }
        }

        else
        {
          v17 = 0;
          v18 = v10;
        }

        do
        {
          *v18++ = v17++;
        }

        while (v18 != (v10 + 8 * v8));
        goto LABEL_21;
      }
    }

    bzero(v10 + 8 * v9, 8 * v11);
    goto LABEL_14;
  }

  v12 = mlir::ValueRange::dereference_iterator(v36, 1);
  SortedUniquePromotedPositiveAxesAttr = mlir::getSortedUniquePromotedPositiveAxesAttr(v12, v8, *(a3 + 24), 1);
  if ((v14 & 1) == 0)
  {
    operator new();
  }

  v15 = SortedUniquePromotedPositiveAxesAttr & 0xFFFFFFFFFFFFFF00;
  return v15 | SortedUniquePromotedPositiveAxesAttr;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceMax,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceMax::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMax,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMeanOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMeanOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v6 = *(a3 + 56);
  v17[0] = *(a3 + 48);
  v17[1] = v6;
  v15 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v17, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v14);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v16))
    {
      if (*(v16 + 36))
      {
        v10 = v16 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = v9 - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v16, &__p, 1);
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceAvg,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceAvg::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceAvg,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMinOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v6 = *(a3 + 64);
  v17[0] = *(a3 + 56);
  v17[1] = v6;
  v15 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v17, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v14);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v16))
    {
      if (*(v16 + 36))
      {
        v10 = v16 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = v9 - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v16, &__p, 1);
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceMin,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceMin::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceMin,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Plus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::~ConvertReductionA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionSumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16 = a2;
  v6 = *(a3 + 56);
  v17[0] = *(a3 + 48);
  v17[1] = v6;
  v15 = v7;
  if (v7)
  {
    v8 = *(a2 + 24);
    __p = mlir::ValueRange::dereference_iterator(v17, 0);
    v9 = mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>((a4 + 8), v8, &__p, &v14);
    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v16))
    {
      if (*(v16 + 36))
      {
        v10 = v16 - 16;
      }

      else
      {
        v10 = 0;
      }

      v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v12 = 0;
      }
    }

    __p = v9 - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v16, &__p, 1);
  }

  operator new();
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ReduceSum,mlir::Value,mlir::DenseIntElementsAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::anec::ReduceSum::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ReduceSum,void>::id)
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

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v73 = a2;
  v6 = *(a3 + 64);
  v86[0] = *(a3 + 56);
  v86[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v73))
  {
    __p[0] = *(v73[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_93;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v85, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v77[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v73[3], a4);
    if (SHIBYTE(v77[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v85.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v73, 0);
  v11 = (*(*(v73[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v85.__r_.__value_.__r.__words[0] = &v85.__r_.__value_.__r.__words[2];
  v85.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v85, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v81 = v83;
  memset_pattern16(v83, &unk_1A75989B0, 0x18uLL);
  v82 = 0x600000003;
  v78 = v80;
  memset_pattern16(v80, &unk_1A75989B0, 0x18uLL);
  v79 = 0x600000003;
  v72[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v72[1] = v17;
  mlir::ShapedType::getShape(v72);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_93;
  }

  if (!LODWORD(v85.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    __p[0] = v77;
    __p[1] = 0x400000000;
    v77[8] = 4;
    v74.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v74, 1, IntegerType, 0);
    v74.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v74, 1, v28, 0);
    v74.__r_.__value_.__r.__words[0] = "ksize";
    v75 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v78, 8 * v79);
    mlir::NamedAttrList::set(__p, StringAttr, v37);
    v74.__r_.__value_.__r.__words[0] = "stride";
    v75 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v81, 8 * v82);
    mlir::NamedAttrList::set(__p, v38, v40);
    v74.__r_.__value_.__r.__words[0] = "padding";
    v75 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(__p, v41, v43);
    v74.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v86, 0);
    v71.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v73[3], &v74, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, &v71, 1);
  }

  v21 = IndexFromDim;
  v22 = v85.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v85.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v69, v21);
      v45 = std::string::insert(&v69, 0, "MaxPool/AveragePool for axes:");
      v46 = v45->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v70, "reduced from Op ");
      v48 = v47->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v73[6] + 8);
      v49 = mlir::OpaqueAttr::getAttrData(__p);
      if (v49)
      {
        v51 = v50;
        if (v50 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_93;
        }

        if (v50 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v68) = v50;
        if (v50)
        {
          memmove(&v66, v49, v50);
        }

        *(&v66 + v51) = 0;
        v57 = HIBYTE(v68);
        v56 = v66;
        v55 = v67;
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
      }

      if ((v57 & 0x80u) == 0)
      {
        v58 = &v66;
      }

      else
      {
        v58 = v56;
      }

      if ((v57 & 0x80u) == 0)
      {
        v59 = v57;
      }

      else
      {
        v59 = v55;
      }

      v60 = std::string::append(&v71, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v74, "is not supported for A13 and below");
      v63 = v62->__r_.__value_.__r.__words[2];
      *__p = *&v62->__r_.__value_.__l.__data_;
      v77[0] = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v73[3], a4);
      if (SHIBYTE(v77[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_74:
          if ((SHIBYTE(v68) & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(v74.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
LABEL_75:
        if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_82;
      }

LABEL_81:
      operator delete(v66);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_76:
        if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_83;
      }

LABEL_82:
      operator delete(v71.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_77:
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_84:
        operator delete(v69.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_83:
      operator delete(v70.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_84;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v72);
    *(v78 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  __p[0] = *(v73[6] + 8);
  v52 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v52)
  {
    memset(&v74, 0, sizeof(v74));
    goto LABEL_88;
  }

  v54 = v53;
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_93:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v53 >= 0x17)
  {
    operator new();
  }

  *(&v74.__r_.__value_.__s + 23) = v53;
  if (v53)
  {
    memmove(&v74, v52, v53);
  }

  v74.__r_.__value_.__s.__data_[v54] = 0;
LABEL_88:
  v64 = std::string::insert(&v74, 0, "Axis value is incorrect for Op ");
  v65 = v64->__r_.__value_.__r.__words[2];
  *__p = *&v64->__r_.__value_.__l.__data_;
  v77[0] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v73[3], a4);
  if (SHIBYTE(v77[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v78 != v80)
  {
    free(v78);
  }

  if (v81 != v83)
  {
    free(v81);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v85.__r_.__value_.__l.__data_ != &v85.__r_.__value_.__r.__words[2])
  {
    free(v85.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v88[2] = *MEMORY[0x1E69E9840];
  v75 = a2;
  v6 = *(a3 + 56);
  v88[0] = *(a3 + 48);
  v88[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v75))
  {
    __p[0] = *(v75[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_93;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v87, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v79[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v75[3], a4);
    if (SHIBYTE(v79[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v87.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v75, 0);
  v11 = (*(*(v75[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v87.__r_.__value_.__r.__words[0] = &v87.__r_.__value_.__r.__words[2];
  v87.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v87, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v83 = v85;
  memset_pattern16(v85, &unk_1A75989B0, 0x18uLL);
  v84 = 0x600000003;
  v80 = v82;
  memset_pattern16(v82, &unk_1A75989B0, 0x18uLL);
  v81 = 0x600000003;
  v74[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v74[1] = v17;
  mlir::ShapedType::getShape(v74);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_93;
  }

  if (!LODWORD(v87.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    __p[0] = v79;
    __p[1] = 0x400000000;
    v79[8] = 4;
    v76.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v76, 1, IntegerType, 0);
    v76.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v76, 1, v28, 0);
    v76.__r_.__value_.__r.__words[0] = "ksize";
    v77 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v80, 8 * v81);
    mlir::NamedAttrList::set(__p, StringAttr, v37);
    v76.__r_.__value_.__r.__words[0] = "stride";
    v77 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v83, 8 * v84);
    mlir::NamedAttrList::set(__p, v38, v40);
    v76.__r_.__value_.__r.__words[0] = "padding";
    v77 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(__p, v41, v43);
    v76.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v88, 0);
    UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v44);
    mlir::NamedAttrList::set(__p, "inc_pad", 7uLL, UnitAttr);
    v73.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v75[3], &v76, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v75, &v73, 1);
  }

  v21 = IndexFromDim;
  v22 = v87.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v87.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v71, v21);
      v47 = std::string::insert(&v71, 0, "MaxPool/AveragePool for axes:");
      v48 = v47->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = std::string::append(&v72, "reduced from Op ");
      v50 = v49->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = *&v49->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v75[6] + 8);
      v51 = mlir::OpaqueAttr::getAttrData(__p);
      if (v51)
      {
        v53 = v52;
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_93;
        }

        if (v52 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v70) = v52;
        if (v52)
        {
          memmove(&v68, v51, v52);
        }

        *(&v68 + v53) = 0;
        v59 = HIBYTE(v70);
        v58 = v68;
        v57 = v69;
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
      }

      if ((v59 & 0x80u) == 0)
      {
        v60 = &v68;
      }

      else
      {
        v60 = v58;
      }

      if ((v59 & 0x80u) == 0)
      {
        v61 = v59;
      }

      else
      {
        v61 = v57;
      }

      v62 = std::string::append(&v73, v60, v61);
      v63 = v62->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = *&v62->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = std::string::append(&v76, "is not supported for A13 and below");
      v65 = v64->__r_.__value_.__r.__words[2];
      *__p = *&v64->__r_.__value_.__l.__data_;
      v79[0] = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v75[3], a4);
      if (SHIBYTE(v79[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_74:
          if ((SHIBYTE(v70) & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(v76.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70) & 0x80000000) == 0)
      {
LABEL_75:
        if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_82;
      }

LABEL_81:
      operator delete(v68);
      if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_76:
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_83;
      }

LABEL_82:
      operator delete(v73.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_77:
        if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_84:
        operator delete(v71.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_83:
      operator delete(v72.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_84;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v74);
    *(v80 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  __p[0] = *(v75[6] + 8);
  v54 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v54)
  {
    memset(&v76, 0, sizeof(v76));
    goto LABEL_88;
  }

  v56 = v55;
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_93:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v55 >= 0x17)
  {
    operator new();
  }

  *(&v76.__r_.__value_.__s + 23) = v55;
  if (v55)
  {
    memmove(&v76, v54, v55);
  }

  v76.__r_.__value_.__s.__data_[v56] = 0;
LABEL_88:
  v66 = std::string::insert(&v76, 0, "Axis value is incorrect for Op ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *__p = *&v66->__r_.__value_.__l.__data_;
  v79[0] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v75[3], a4);
  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v80 != v82)
  {
    free(v80);
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v87.__r_.__value_.__l.__data_ != &v87.__r_.__value_.__r.__words[2])
  {
    free(v87.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v104[2] = *MEMORY[0x1E69E9840];
  v89 = a2;
  v6 = *(a3 + 64);
  v104[0] = *(a3 + 56);
  v104[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v89))
  {
    *&__p = *(v89[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_106;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v103, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    __p = *&v34->__r_.__value_.__l.__data_;
    v93[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(&__p, v89[3], a4);
    if (SHIBYTE(v93[0]) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v103.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v89, 0);
  v11 = (*(*(v89[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v88[0] = v11;
  v88[1] = v12;
  v103.__r_.__value_.__r.__words[0] = &v103.__r_.__value_.__r.__words[2];
  v103.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v103, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v99 = v101;
  memset_pattern16(v101, &unk_1A75989B0, 0x18uLL);
  v100 = 0x600000003;
  v96 = v98;
  memset_pattern16(v98, &unk_1A75989B0, 0x18uLL);
  v97 = 0x600000003;
  v87[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v87[1] = v17;
  mlir::ShapedType::getShape(v87);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_106;
  }

  if (!LODWORD(v103.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    *&__p = v93;
    *(&__p + 1) = 0x400000000;
    v93[8] = 4;
    v90.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v90, 1, IntegerType, 0);
    v90.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v90, 1, v28, 0);
    v90.__r_.__value_.__r.__words[0] = "ksize";
    v91 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v96, 8 * v97);
    mlir::NamedAttrList::set(&__p, StringAttr, v37);
    v90.__r_.__value_.__r.__words[0] = "stride";
    v91 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v99, 8 * v100);
    mlir::NamedAttrList::set(&__p, v38, v40);
    v90.__r_.__value_.__r.__words[0] = "padding";
    v91 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(&__p, v41, v43);
    v44 = mlir::ValueRange::dereference_iterator(v104, 0);
    v90.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v88);
    if (mlir::Type::isF16(&v90) || (v95.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v88), mlir::Type::isF32(&v95)))
    {
      v95.__r_.__value_.__r.__words[0] = 1;
      isSplat = mlir::ElementsAttr::isSplat(v88);
      v46 = mlir::RankedTensorType::get(&v95, 1, isSplat, 0);
      v47 = v46;
      if (v46)
      {
        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
      }

      else
      {
        v48 = 0;
      }

      v59 = mlir::ElementsAttr::isSplat(v88);
      v94.__r_.__value_.__r.__words[0] = mlir::FloatAttr::get(v59, -1.0);
      v90.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::get(v47, v48, &v94, 1uLL);
      v60 = v89[3];
      v94.__r_.__value_.__r.__words[0] = 1;
      v61 = mlir::ElementsAttr::isSplat(v88);
      v95.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(&v94, 1, v61, 0, 0, 0);
      v62 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>((a4 + 8), v60, &v95, &v90) - 16);
      v64 = v89[3];
      if (*(GOC + 36))
      {
        v65 = GOC - 16;
      }

      else
      {
        v65 = 0;
      }

      v95.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 0);
      v66 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v64, &v95, &__p);
      v67 = v89[3];
      if (*(v66 + 9))
      {
        v68 = v66 - 16;
      }

      else
      {
        v68 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, 0);
      mlir::ConversionPatternRewriter::replaceOp(a4, v89, &v90, 1);
    }

    operator new();
  }

  v21 = IndexFromDim;
  v22 = v103.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v103.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v86, v21);
      v49 = std::string::insert(&v86, 0, "MaxPool/AveragePool for axes:");
      v50 = v49->__r_.__value_.__r.__words[2];
      *&v94.__r_.__value_.__l.__data_ = *&v49->__r_.__value_.__l.__data_;
      v94.__r_.__value_.__r.__words[2] = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v94, "reduced from Op ");
      v52 = v51->__r_.__value_.__r.__words[2];
      *&v95.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      *&__p = *(v89[6] + 8);
      v53 = mlir::OpaqueAttr::getAttrData(&__p);
      if (v53)
      {
        v55 = v54;
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_106;
        }

        if (v54 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v85) = v54;
        if (v54)
        {
          memmove(&v83, v53, v54);
        }

        *(&v83 + v55) = 0;
        v72 = HIBYTE(v85);
        v71 = v83;
        v70 = v84;
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
      }

      if ((v72 & 0x80u) == 0)
      {
        v73 = &v83;
      }

      else
      {
        v73 = v71;
      }

      if ((v72 & 0x80u) == 0)
      {
        v74 = v72;
      }

      else
      {
        v74 = v70;
      }

      v75 = std::string::append(&v95, v73, v74);
      v76 = v75->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      v77 = std::string::append(&v90, "is not supported for A13 and below");
      v78 = v77->__r_.__value_.__r.__words[2];
      __p = *&v77->__r_.__value_.__l.__data_;
      v93[0] = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&__p, v89[3], a4);
      if (SHIBYTE(v93[0]) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_77:
          if ((SHIBYTE(v85) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_84;
        }
      }

      else if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v90.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
LABEL_78:
        if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_85;
      }

LABEL_84:
      operator delete(v83);
      if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_79:
        if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_86;
      }

LABEL_85:
      operator delete(v95.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_80:
        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_87;
      }

LABEL_86:
      operator delete(v94.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

LABEL_87:
      v79 = v86.__r_.__value_.__r.__words[0];
      goto LABEL_95;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v87);
    *(v96 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  *&__p = *(v89[6] + 8);
  v56 = mlir::OpaqueAttr::getAttrData(&__p);
  if (!v56)
  {
    memset(&v90, 0, sizeof(v90));
    goto LABEL_91;
  }

  v58 = v57;
  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_106:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v57 >= 0x17)
  {
    operator new();
  }

  *(&v90.__r_.__value_.__s + 23) = v57;
  if (v57)
  {
    memmove(&v90, v56, v57);
  }

  v90.__r_.__value_.__s.__data_[v58] = 0;
LABEL_91:
  v80 = std::string::insert(&v90, 0, "Axis value is incorrect for Op ");
  v81 = v80->__r_.__value_.__r.__words[2];
  __p = *&v80->__r_.__value_.__l.__data_;
  v93[0] = v81;
  v80->__r_.__value_.__l.__size_ = 0;
  v80->__r_.__value_.__r.__words[2] = 0;
  v80->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&__p, v89[3], a4);
  if (SHIBYTE(v93[0]) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    v79 = v90.__r_.__value_.__r.__words[0];
LABEL_95:
    operator delete(v79);
  }

LABEL_96:
  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v103.__r_.__value_.__l.__data_ != &v103.__r_.__value_.__r.__words[2])
  {
    free(v103.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

ZinIrHalH13g *mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v78 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v6 = *(a3 + 56);
  v76 = *(a3 + 48);
  v77 = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v59))
  {
    __p[0] = *(*(v59 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_67;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[0].__r_.__value_.__s.__data_[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v63, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v62 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v59 + 3), a4);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_35;
        }

        return matched;
      }
    }

    else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v63.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_35:
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    return matched;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v59, 0);
  v11 = (*(*(*(v59 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  __dst[0].__r_.__value_.__r.__words[0] = &__dst[0].__r_.__value_.__r.__words[2];
  __dst[0].__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, __dst, 1);
  v72 = v74;
  memset(v74, 0, sizeof(v74));
  v73 = 0x600000006;
  v69 = v71;
  memset_pattern16(v71, &unk_1A75989B0, 0x18uLL);
  v70 = 0x600000003;
  v66 = v68;
  memset_pattern16(v68, &unk_1A75989B0, 0x18uLL);
  v67 = 0x600000003;
  v58[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v58[1] = v17;
  mlir::ShapedType::getShape(v58);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if (v20)
  {
    if (LODWORD(__dst[0].__r_.__value_.__r.__words[1]) == 1 && *__dst[0].__r_.__value_.__l.__data_ == IndexFromDim)
    {
      v56 = *(v59 + 3);
      v21 = *(mlir::ShapedType::getShape(v58) + 8 * IndexFromDim);
      isSplat = mlir::ElementsAttr::isSplat(v58);
      v63.__r_.__value_.__r.__words[0] = &v63.__r_.__value_.__r.__words[2];
      v63.__r_.__value_.__r.__words[2] = 1;
      v64 = v21;
      v65 = vdupq_n_s64(1uLL);
      v63.__r_.__value_.__l.__size_ = 0x1000000004;
      v57 = mlir::MemRefType::get(&v63.__r_.__value_.__r.__words[2], 4, isSplat, 0, 0, 0);
      Value = mlir::ArrayAttr::getValue(&v57);
      NumElements = mlir::ShapedType::getNumElements(Value, v24);
      v26 = llvm::APFloatBase::IEEEhalf(NumElements);
      v28 = llvm::APFloatBase::PPCDoubleDouble(v26);
      if (v28 != v26)
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v60.__r_.__value_.__l.__size_, v26, 1, v27);
        __p[0] = &v62;
        __p[1] = 0x1000000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(__p, NumElements, &v60);
        if (v28 == v60.__r_.__value_.__l.__size_)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v60.__r_.__value_.__r.__words[1]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v60.__r_.__value_.__r.__words[1]);
        }

        v42 = v63.__r_.__value_.__r.__words[0];
        v43 = LODWORD(v63.__r_.__value_.__r.__words[1]);
        F16Type = mlir::Builder::getF16Type((a4 + 8), v41);
        v45 = mlir::RankedTensorType::get(v42, v43, F16Type, 0);
        v60.__r_.__value_.__r.__words[0] = mlir::createElementsAttr(v45, __p[0], LODWORD(__p[1]));
        v60.__r_.__value_.__l.__size_ = v46;
        mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v56, &v57, &v60);
        if (*(v59 + 9))
        {
          v47 = v59 - 16;
        }

        else
        {
          v47 = 0;
        }

        v48 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v48)
        {
          v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        }

        else
        {
          v49 = 0;
        }
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v60.__r_.__value_.__l.__size_, v26, 1);
    }

    __p[0] = *(*(v59 + 6) + 8);
    v29 = mlir::OpaqueAttr::getAttrData(__p);
    if (!v29)
    {
      memset(&v60, 0, sizeof(v60));
      goto LABEL_40;
    }

    v31 = v30;
    if (v30 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v30 >= 0x17)
      {
        operator new();
      }

      *(&v60.__r_.__value_.__s + 23) = v30;
      if (v30)
      {
        memmove(&v60, v29, v30);
      }

      v60.__r_.__value_.__s.__data_[v31] = 0;
LABEL_40:
      v37 = std::string::insert(&v60, 0, "ReduceSum for axes other than channel axis: ");
      v38 = v37->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v63, " is not supported for A13 and below\n");
      v40 = v39->__r_.__value_.__r.__words[2];
      *__p = *&v39->__r_.__value_.__l.__data_;
      v62 = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, *(v59 + 3), a4);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      else if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(v63.__r_.__value_.__l.__data_);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_46:
        operator delete(v60.__r_.__value_.__l.__data_);
      }

LABEL_58:
      if (v66 != v68)
      {
        free(v66);
      }

      if (v69 != v71)
      {
        free(v69);
      }

      if (v72 != v74)
      {
        free(v72);
      }

      if (__dst[0].__r_.__value_.__l.__data_ != &__dst[0].__r_.__value_.__r.__words[2])
      {
        free(__dst[0].__r_.__value_.__l.__data_);
      }

      return matched;
    }

LABEL_67:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v51 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::Convolution,mlir::MemRefType &,mlir::Value,mlir::Value&>(v51, v52, v53, v54, v55);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Convolution,mlir::MemRefType &,mlir::Value,mlir::Value&>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Convolution::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

void llvm::SmallVectorImpl<llvm::APFloat>::assign(const llvm::detail::IEEEFloat *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 3) >= a2)
  {
    v6 = *(result + 2);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(result + 2);
    }

    if (v7)
    {
      v8 = (*result + 8);
      do
      {
        result = llvm::APFloat::Storage::operator=(v8, (a3 + 8));
        v8 = (v8 + 32);
        --v7;
      }

      while (v7);
      v6 = *(v5 + 2);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v16 = *v5;
        v17 = llvm::APFloatBase::PPCDoubleDouble(result);
        v18 = (32 * v6 + v16 - 24);
        v19 = 32 * a2 - 32 * v6;
        do
        {
          if (v17 == *v18)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v18);
          }

          v18 = (v20 - 32);
          v19 += 32;
        }

        while (v19);
      }
    }

    else
    {
      v10 = *v5;
      v11 = llvm::APFloatBase::PPCDoubleDouble(result);
      v12 = (v10 + 32 * v6 + 8);
      do
      {
        v15 = (a3 + 8);
        if (v11 == *(a3 + 8))
        {
          v13 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v15);
        }

        else
        {
          v13 = llvm::detail::IEEEFloat::IEEEFloat(v12, v15);
        }

        v12 = (v13 + 4);
      }

      while (!__CFADD__(v9++, 1));
    }

    *(v5 + 2) = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::growAndAssign(result, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::growAndAssign(llvm::APFloatBase **a1, unint64_t a2, uint64_t a3)
{
  v20 = 0;
  v6 = a1 + 2;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, a2, 32, &v20);
  v8 = v7;
  if (a2)
  {
    v9 = llvm::APFloatBase::PPCDoubleDouble(v7);
    v7 = (v8 + 8);
    v10 = a2;
    do
    {
      v12 = (a3 + 8);
      if (v9 == *(a3 + 8))
      {
        v11 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, v12);
      }

      else
      {
        v11 = llvm::detail::IEEEFloat::IEEEFloat(v7, v12);
      }

      v7 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  v13 = *a1;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = llvm::APFloatBase::PPCDoubleDouble(v7);
    v16 = &v13[4 * v14 - 3];
    v17 = -32 * v14;
    do
    {
      if (v15 == *v16)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v16);
      }

      v16 = (v18 - 32);
      v17 += 32;
    }

    while (v17);
    v13 = *a1;
  }

  v19 = v20;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v8;
  *(a1 + 2) = a2;
  *(a1 + 3) = v19;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMaxOp,mlir::anec::ReduceMax,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v73 = a2;
  v6 = *(a3 + 64);
  v86[0] = *(a3 + 56);
  v86[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v73))
  {
    __p[0] = *(v73[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_93;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v85, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v77[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v73[3], a4);
    if (SHIBYTE(v77[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v85.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v73, 0);
  v11 = (*(*(v73[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v85.__r_.__value_.__r.__words[0] = &v85.__r_.__value_.__r.__words[2];
  v85.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v85, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v81 = v83;
  memset_pattern16(v83, &unk_1A75989B0, 0x18uLL);
  v82 = 0x600000003;
  v78 = v80;
  memset_pattern16(v80, &unk_1A75989B0, 0x18uLL);
  v79 = 0x600000003;
  v72[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v72[1] = v17;
  mlir::ShapedType::getShape(v72);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_93;
  }

  if (!LODWORD(v85.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    __p[0] = v77;
    __p[1] = 0x400000000;
    v77[8] = 4;
    v74.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v74, 1, IntegerType, 0);
    v74.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v74, 1, v28, 0);
    v74.__r_.__value_.__r.__words[0] = "ksize";
    v75 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v78, 8 * v79);
    mlir::NamedAttrList::set(__p, StringAttr, v37);
    v74.__r_.__value_.__r.__words[0] = "stride";
    v75 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v81, 8 * v82);
    mlir::NamedAttrList::set(__p, v38, v40);
    v74.__r_.__value_.__r.__words[0] = "padding";
    v75 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v74);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(__p, v41, v43);
    v74.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v86, 0);
    v71.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v73[3], &v74, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v73, &v71, 1);
  }

  v21 = IndexFromDim;
  v22 = v85.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v85.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v69, v21);
      v45 = std::string::insert(&v69, 0, "MaxPool/AveragePool for axes:");
      v46 = v45->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = *&v45->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      v47 = std::string::append(&v70, "reduced from Op ");
      v48 = v47->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v73[6] + 8);
      v49 = mlir::OpaqueAttr::getAttrData(__p);
      if (v49)
      {
        v51 = v50;
        if (v50 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_93;
        }

        if (v50 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v68) = v50;
        if (v50)
        {
          memmove(&v66, v49, v50);
        }

        *(&v66 + v51) = 0;
        v57 = HIBYTE(v68);
        v56 = v66;
        v55 = v67;
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
      }

      if ((v57 & 0x80u) == 0)
      {
        v58 = &v66;
      }

      else
      {
        v58 = v56;
      }

      if ((v57 & 0x80u) == 0)
      {
        v59 = v57;
      }

      else
      {
        v59 = v55;
      }

      v60 = std::string::append(&v71, v58, v59);
      v61 = v60->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = *&v60->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v74, "is not supported for A13 and below");
      v63 = v62->__r_.__value_.__r.__words[2];
      *__p = *&v62->__r_.__value_.__l.__data_;
      v77[0] = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v73[3], a4);
      if (SHIBYTE(v77[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_74:
          if ((SHIBYTE(v68) & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(v74.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
LABEL_75:
        if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_82;
      }

LABEL_81:
      operator delete(v66);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_76:
        if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_83;
      }

LABEL_82:
      operator delete(v71.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_77:
        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_84:
        operator delete(v69.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_83:
      operator delete(v70.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_84;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v72);
    *(v78 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  __p[0] = *(v73[6] + 8);
  v52 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v52)
  {
    memset(&v74, 0, sizeof(v74));
    goto LABEL_88;
  }

  v54 = v53;
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_93:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v53 >= 0x17)
  {
    operator new();
  }

  *(&v74.__r_.__value_.__s + 23) = v53;
  if (v53)
  {
    memmove(&v74, v52, v53);
  }

  v74.__r_.__value_.__s.__data_[v54] = 0;
LABEL_88:
  v64 = std::string::insert(&v74, 0, "Axis value is incorrect for Op ");
  v65 = v64->__r_.__value_.__r.__words[2];
  *__p = *&v64->__r_.__value_.__l.__data_;
  v77[0] = v65;
  v64->__r_.__value_.__l.__size_ = 0;
  v64->__r_.__value_.__r.__words[2] = 0;
  v64->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v73[3], a4);
  if (SHIBYTE(v77[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v78 != v80)
  {
    free(v78);
  }

  if (v81 != v83)
  {
    free(v81);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v85.__r_.__value_.__l.__data_ != &v85.__r_.__value_.__r.__words[2])
  {
    free(v85.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMeanOp,mlir::anec::ReduceAvg,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v88[2] = *MEMORY[0x1E69E9840];
  v75 = a2;
  v6 = *(a3 + 56);
  v88[0] = *(a3 + 48);
  v88[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v75))
  {
    __p[0] = *(v75[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_93;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v87.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v87.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v87, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v79[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, v75[3], a4);
    if (SHIBYTE(v79[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v87.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v75, 0);
  v11 = (*(*(v75[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v87.__r_.__value_.__r.__words[0] = &v87.__r_.__value_.__r.__words[2];
  v87.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v87, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v83 = v85;
  memset_pattern16(v85, &unk_1A75989B0, 0x18uLL);
  v84 = 0x600000003;
  v80 = v82;
  memset_pattern16(v82, &unk_1A75989B0, 0x18uLL);
  v81 = 0x600000003;
  v74[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v74[1] = v17;
  mlir::ShapedType::getShape(v74);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_93;
  }

  if (!LODWORD(v87.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    __p[0] = v79;
    __p[1] = 0x400000000;
    v79[8] = 4;
    v76.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v76, 1, IntegerType, 0);
    v76.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v76, 1, v28, 0);
    v76.__r_.__value_.__r.__words[0] = "ksize";
    v77 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v80, 8 * v81);
    mlir::NamedAttrList::set(__p, StringAttr, v37);
    v76.__r_.__value_.__r.__words[0] = "stride";
    v77 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v83, 8 * v84);
    mlir::NamedAttrList::set(__p, v38, v40);
    v76.__r_.__value_.__r.__words[0] = "padding";
    v77 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v76);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(__p, v41, v43);
    v76.__r_.__value_.__r.__words[0] = mlir::ValueRange::dereference_iterator(v88, 0);
    UnitAttr = mlir::Builder::getUnitAttr((a4 + 8), v44);
    mlir::NamedAttrList::set(__p, "inc_pad", 7uLL, UnitAttr);
    v73.__r_.__value_.__r.__words[0] = mlir::OpBuilder::create<mlir::anec::AveragePool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v75[3], &v76, __p) - 16;
    mlir::ConversionPatternRewriter::replaceOp(a4, v75, &v73, 1);
  }

  v21 = IndexFromDim;
  v22 = v87.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v87.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v71, v21);
      v47 = std::string::insert(&v71, 0, "MaxPool/AveragePool for axes:");
      v48 = v47->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = *&v47->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = std::string::append(&v72, "reduced from Op ");
      v50 = v49->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = *&v49->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      __p[0] = *(v75[6] + 8);
      v51 = mlir::OpaqueAttr::getAttrData(__p);
      if (v51)
      {
        v53 = v52;
        if (v52 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_93;
        }

        if (v52 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v70) = v52;
        if (v52)
        {
          memmove(&v68, v51, v52);
        }

        *(&v68 + v53) = 0;
        v59 = HIBYTE(v70);
        v58 = v68;
        v57 = v69;
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
      }

      if ((v59 & 0x80u) == 0)
      {
        v60 = &v68;
      }

      else
      {
        v60 = v58;
      }

      if ((v59 & 0x80u) == 0)
      {
        v61 = v59;
      }

      else
      {
        v61 = v57;
      }

      v62 = std::string::append(&v73, v60, v61);
      v63 = v62->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = *&v62->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = std::string::append(&v76, "is not supported for A13 and below");
      v65 = v64->__r_.__value_.__r.__words[2];
      *__p = *&v64->__r_.__value_.__l.__data_;
      v79[0] = v65;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, v75[3], a4);
      if (SHIBYTE(v79[0]) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_74:
          if ((SHIBYTE(v70) & 0x80000000) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      operator delete(v76.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v70) & 0x80000000) == 0)
      {
LABEL_75:
        if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_82;
      }

LABEL_81:
      operator delete(v68);
      if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_76:
        if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_83;
      }

LABEL_82:
      operator delete(v73.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_77:
        if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

LABEL_84:
        operator delete(v71.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_83:
      operator delete(v72.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_84;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v74);
    *(v80 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  __p[0] = *(v75[6] + 8);
  v54 = mlir::OpaqueAttr::getAttrData(__p);
  if (!v54)
  {
    memset(&v76, 0, sizeof(v76));
    goto LABEL_88;
  }

  v56 = v55;
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_93:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v55 >= 0x17)
  {
    operator new();
  }

  *(&v76.__r_.__value_.__s + 23) = v55;
  if (v55)
  {
    memmove(&v76, v54, v55);
  }

  v76.__r_.__value_.__s.__data_[v56] = 0;
LABEL_88:
  v66 = std::string::insert(&v76, 0, "Axis value is incorrect for Op ");
  v67 = v66->__r_.__value_.__r.__words[2];
  *__p = *&v66->__r_.__value_.__l.__data_;
  v79[0] = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(__p, v75[3], a4);
  if (SHIBYTE(v79[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v80 != v82)
  {
    free(v80);
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v87.__r_.__value_.__l.__data_ != &v87.__r_.__value_.__r.__words[2])
  {
    free(v87.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionMinOp,mlir::anec::ReduceMin,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v104[2] = *MEMORY[0x1E69E9840];
  v89 = a2;
  v6 = *(a3 + 64);
  v104[0] = *(a3 + 56);
  v104[1] = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v89))
  {
    *&__p = *(v89[6] + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_106;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v103.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v103.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v103, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    __p = *&v34->__r_.__value_.__l.__data_;
    v93[0] = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(&__p, v89[3], a4);
    if (SHIBYTE(v93[0]) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((__dst[23] & 0x80000000) == 0)
        {
          return matched;
        }

LABEL_33:
        operator delete(*__dst);
        return matched;
      }
    }

    else if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v103.__r_.__value_.__l.__data_);
    if ((__dst[23] & 0x80000000) == 0)
    {
      return matched;
    }

    goto LABEL_33;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v89, 0);
  v11 = (*(*(v89[9] + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v88[0] = v11;
  v88[1] = v12;
  v103.__r_.__value_.__r.__words[0] = &v103.__r_.__value_.__r.__words[2];
  v103.__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, &v103, 1);
  *__dst = &__dst[16];
  memset(&__dst[16], 0, 48);
  *&__dst[8] = 0x600000006;
  v99 = v101;
  memset_pattern16(v101, &unk_1A75989B0, 0x18uLL);
  v100 = 0x600000003;
  v96 = v98;
  memset_pattern16(v98, &unk_1A75989B0, 0x18uLL);
  v97 = 0x600000003;
  v87[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v87[1] = v17;
  mlir::ShapedType::getShape(v87);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if ((v20 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_106;
  }

  if (!LODWORD(v103.__r_.__value_.__r.__words[1]))
  {
LABEL_22:
    *&__p = v93;
    *(&__p + 1) = 0x400000000;
    v93[8] = 4;
    v90.__r_.__value_.__r.__words[0] = 3;
    IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v27 = mlir::RankedTensorType::get(&v90, 1, IntegerType, 0);
    v90.__r_.__value_.__r.__words[0] = 6;
    v28 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
    v29 = mlir::RankedTensorType::get(&v90, 1, v28, 0);
    v90.__r_.__value_.__r.__words[0] = "ksize";
    v91 = 259;
    StringAttr = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v27)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v31 = 0;
    }

    v37 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v31, v96, 8 * v97);
    mlir::NamedAttrList::set(&__p, StringAttr, v37);
    v90.__r_.__value_.__r.__words[0] = "stride";
    v91 = 259;
    v38 = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v27)
    {
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v39, v99, 8 * v100);
    mlir::NamedAttrList::set(&__p, v38, v40);
    v90.__r_.__value_.__r.__words[0] = "padding";
    v91 = 259;
    v41 = mlir::Builder::getStringAttr((a4 + 8), &v90);
    if (v29)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v29 + 8);
    }

    else
    {
      v42 = 0;
    }

    v43 = mlir::DenseElementsAttr::getFromRawBuffer(v29, v42, *__dst, 8 * *&__dst[8]);
    mlir::NamedAttrList::set(&__p, v41, v43);
    v44 = mlir::ValueRange::dereference_iterator(v104, 0);
    v90.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v88);
    if (mlir::Type::isF16(&v90) || (v95.__r_.__value_.__r.__words[0] = mlir::ElementsAttr::isSplat(v88), mlir::Type::isF32(&v95)))
    {
      v95.__r_.__value_.__r.__words[0] = 1;
      isSplat = mlir::ElementsAttr::isSplat(v88);
      v46 = mlir::RankedTensorType::get(&v95, 1, isSplat, 0);
      v47 = v46;
      if (v46)
      {
        v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
      }

      else
      {
        v48 = 0;
      }

      v59 = mlir::ElementsAttr::isSplat(v88);
      v94.__r_.__value_.__r.__words[0] = mlir::FloatAttr::get(v59, -1.0);
      v90.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::get(v47, v48, &v94, 1uLL);
      v60 = v89[3];
      v94.__r_.__value_.__r.__words[0] = 1;
      v61 = mlir::ElementsAttr::isSplat(v88);
      v95.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(&v94, 1, v61, 0, 0, 0);
      v62 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>((a4 + 8), v60, &v95, &v90) - 16);
      v64 = v89[3];
      if (*(GOC + 36))
      {
        v65 = GOC - 16;
      }

      else
      {
        v65 = 0;
      }

      v95.__r_.__value_.__r.__words[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 0);
      v66 = mlir::OpBuilder::create<mlir::anec::MaxPool,mlir::Value &,mlir::NamedAttrList &>((a4 + 8), v64, &v95, &__p);
      v67 = v89[3];
      if (*(v66 + 9))
      {
        v68 = v66 - 16;
      }

      else
      {
        v68 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, 0);
      mlir::ConversionPatternRewriter::replaceOp(a4, v89, &v90, 1);
    }

    operator new();
  }

  v21 = IndexFromDim;
  v22 = v103.__r_.__value_.__r.__words[0];
  v23 = 8 * LODWORD(v103.__r_.__value_.__r.__words[1]);
  while (1)
  {
    v24 = *v22;
    if (*v22 == v21)
    {
      std::to_string(&v86, v21);
      v49 = std::string::insert(&v86, 0, "MaxPool/AveragePool for axes:");
      v50 = v49->__r_.__value_.__r.__words[2];
      *&v94.__r_.__value_.__l.__data_ = *&v49->__r_.__value_.__l.__data_;
      v94.__r_.__value_.__r.__words[2] = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      v51 = std::string::append(&v94, "reduced from Op ");
      v52 = v51->__r_.__value_.__r.__words[2];
      *&v95.__r_.__value_.__l.__data_ = *&v51->__r_.__value_.__l.__data_;
      v95.__r_.__value_.__r.__words[2] = v52;
      v51->__r_.__value_.__l.__size_ = 0;
      v51->__r_.__value_.__r.__words[2] = 0;
      v51->__r_.__value_.__r.__words[0] = 0;
      *&__p = *(v89[6] + 8);
      v53 = mlir::OpaqueAttr::getAttrData(&__p);
      if (v53)
      {
        v55 = v54;
        if (v54 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_106;
        }

        if (v54 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v85) = v54;
        if (v54)
        {
          memmove(&v83, v53, v54);
        }

        *(&v83 + v55) = 0;
        v72 = HIBYTE(v85);
        v71 = v83;
        v70 = v84;
      }

      else
      {
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
      }

      if ((v72 & 0x80u) == 0)
      {
        v73 = &v83;
      }

      else
      {
        v73 = v71;
      }

      if ((v72 & 0x80u) == 0)
      {
        v74 = v72;
      }

      else
      {
        v74 = v70;
      }

      v75 = std::string::append(&v95, v73, v74);
      v76 = v75->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = *&v75->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      v77 = std::string::append(&v90, "is not supported for A13 and below");
      v78 = v77->__r_.__value_.__r.__words[2];
      __p = *&v77->__r_.__value_.__l.__data_;
      v93[0] = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(&__p, v89[3], a4);
      if (SHIBYTE(v93[0]) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_77:
          if ((SHIBYTE(v85) & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_84;
        }
      }

      else if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v90.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v85) & 0x80000000) == 0)
      {
LABEL_78:
        if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_85;
      }

LABEL_84:
      operator delete(v83);
      if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_79:
        if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_86;
      }

LABEL_85:
      operator delete(v95.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_80:
        if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_87;
      }

LABEL_86:
      operator delete(v94.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

LABEL_87:
      v79 = v86.__r_.__value_.__r.__words[0];
      goto LABEL_95;
    }

    if (v24 <= 1)
    {
      break;
    }

    Shape = mlir::ShapedType::getShape(v87);
    *(v96 + v24 - 2) = *(Shape + 8 * v24);
    ++v22;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  *&__p = *(v89[6] + 8);
  v56 = mlir::OpaqueAttr::getAttrData(&__p);
  if (!v56)
  {
    memset(&v90, 0, sizeof(v90));
    goto LABEL_91;
  }

  v58 = v57;
  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_106:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v57 >= 0x17)
  {
    operator new();
  }

  *(&v90.__r_.__value_.__s + 23) = v57;
  if (v57)
  {
    memmove(&v90, v56, v57);
  }

  v90.__r_.__value_.__s.__data_[v58] = 0;
LABEL_91:
  v80 = std::string::insert(&v90, 0, "Axis value is incorrect for Op ");
  v81 = v80->__r_.__value_.__r.__words[2];
  __p = *&v80->__r_.__value_.__l.__data_;
  v93[0] = v81;
  v80->__r_.__value_.__l.__size_ = 0;
  v80->__r_.__value_.__r.__words[2] = 0;
  v80->__r_.__value_.__r.__words[0] = 0;
  matched = mlir::logMatchFailure(&__p, v89[3], a4);
  if (SHIBYTE(v93[0]) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    v79 = v90.__r_.__value_.__r.__words[0];
LABEL_95:
    operator delete(v79);
  }

LABEL_96:
  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (*__dst != &__dst[16])
  {
    free(*__dst);
  }

  if (v103.__r_.__value_.__l.__data_ != &v103.__r_.__value_.__r.__words[2])
  {
    free(v103.__r_.__value_.__l.__data_);
  }

  return matched;
}

void *mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReductionA14Minus<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::~ConvertReductionA14Minus(void *a1)
{
  v2 = a1[10];
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

void *mlir::anonymous namespace::ConvertReduction<mlir::mps::ReductionSumOp,mlir::anec::ReduceSum,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v55 = a2;
  v6 = *(a3 + 56);
  v72 = *(a3 + 48);
  v73 = v6;
  if ((v8 & 1) == 0)
  {
    operator new();
  }

  v9 = v7;
  if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v55))
  {
    __p[0] = *(*(v55 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(__p);
    if (AttrData)
    {
      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_67;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(__dst, AttrData, v14);
      }

      __dst[0].__r_.__value_.__s.__data_[v15] = 0;
    }

    else
    {
      memset(__dst, 0, 24);
    }

    v32 = std::string::insert(__dst, 0, "Collapsing dimension for Op ");
    v33 = v32->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v32->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v59, "to MaxPool, AveragePool or Conv for A13 and below on ane is not supported");
    v35 = v34->__r_.__value_.__r.__words[2];
    *__p = *&v34->__r_.__value_.__l.__data_;
    v58 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v55 + 3), a4);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_35;
        }

        return matched;
      }
    }

    else if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(v59.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_35:
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    return matched;
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v55, 0);
  v11 = (*(*(*(v55 + 9) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  __dst[0].__r_.__value_.__r.__words[0] = &__dst[0].__r_.__value_.__r.__words[2];
  __dst[0].__r_.__value_.__l.__size_ = 0x600000000;
  if (v9)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
  }

  else
  {
    v16 = 0;
  }

  mlir::getIntValues<long long>(v9, v16, __dst, 1);
  v68 = v70;
  memset(v70, 0, sizeof(v70));
  v69 = 0x600000006;
  v65 = v67;
  memset_pattern16(v67, &unk_1A75989B0, 0x18uLL);
  v66 = 0x600000003;
  v62 = v64;
  memset_pattern16(v64, &unk_1A75989B0, 0x18uLL);
  v63 = 0x600000003;
  v54[0] = mlir::getRankPromotionTypeForANE(v11, v12);
  v54[1] = v17;
  mlir::ShapedType::getShape(v54);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v18);
  if (v20)
  {
    if (LODWORD(__dst[0].__r_.__value_.__r.__words[1]) == 1 && *__dst[0].__r_.__value_.__l.__data_ == IndexFromDim)
    {
      v52 = *(v55 + 3);
      v21 = *(mlir::ShapedType::getShape(v54) + 8 * IndexFromDim);
      isSplat = mlir::ElementsAttr::isSplat(v54);
      v59.__r_.__value_.__r.__words[0] = &v59.__r_.__value_.__r.__words[2];
      v59.__r_.__value_.__r.__words[2] = 1;
      v60 = v21;
      v61 = vdupq_n_s64(1uLL);
      v59.__r_.__value_.__l.__size_ = 0x1000000004;
      v53 = mlir::MemRefType::get(&v59.__r_.__value_.__r.__words[2], 4, isSplat, 0, 0, 0);
      Value = mlir::ArrayAttr::getValue(&v53);
      NumElements = mlir::ShapedType::getNumElements(Value, v24);
      v26 = llvm::APFloatBase::IEEEhalf(NumElements);
      v28 = llvm::APFloatBase::PPCDoubleDouble(v26);
      if (v28 != v26)
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v56.__r_.__value_.__l.__size_, v26, 1, v27);
        __p[0] = &v58;
        __p[1] = 0x1000000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(__p, NumElements, &v56);
        if (v28 == v56.__r_.__value_.__l.__size_)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v56.__r_.__value_.__r.__words[1]);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v56.__r_.__value_.__r.__words[1]);
        }

        v42 = v59.__r_.__value_.__r.__words[0];
        v43 = LODWORD(v59.__r_.__value_.__r.__words[1]);
        F16Type = mlir::Builder::getF16Type((a4 + 8), v41);
        v45 = mlir::RankedTensorType::get(v42, v43, F16Type, 0);
        v56.__r_.__value_.__r.__words[0] = mlir::createElementsAttr(v45, __p[0], LODWORD(__p[1]));
        v56.__r_.__value_.__l.__size_ = v46;
        mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), v52, &v53, &v56);
        if (*(v55 + 9))
        {
          v47 = v55 - 16;
        }

        else
        {
          v47 = 0;
        }

        v48 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v48)
        {
          v49 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
        }

        else
        {
          v49 = 0;
        }
      }

      llvm::detail::DoubleAPFloat::DoubleAPFloat(&v56.__r_.__value_.__l.__size_, v26, 1);
    }

    __p[0] = *(*(v55 + 6) + 8);
    v29 = mlir::OpaqueAttr::getAttrData(__p);
    if (!v29)
    {
      memset(&v56, 0, sizeof(v56));
      goto LABEL_40;
    }

    v31 = v30;
    if (v30 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v30 >= 0x17)
      {
        operator new();
      }

      *(&v56.__r_.__value_.__s + 23) = v30;
      if (v30)
      {
        memmove(&v56, v29, v30);
      }

      v56.__r_.__value_.__s.__data_[v31] = 0;
LABEL_40:
      v37 = std::string::insert(&v56, 0, "ReduceSum for axes other than channel axis: ");
      v38 = v37->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = *&v37->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      v39 = std::string::append(&v59, " is not supported for A13 and below\n");
      v40 = v39->__r_.__value_.__r.__words[2];
      *__p = *&v39->__r_.__value_.__l.__data_;
      v58 = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(__p, *(v55 + 3), a4);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_42:
          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      else if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      operator delete(v59.__r_.__value_.__l.__data_);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_46:
        operator delete(v56.__r_.__value_.__l.__data_);
      }

LABEL_58:
      if (v62 != v64)
      {
        free(v62);
      }

      if (v65 != v67)
      {
        free(v65);
      }

      if (v68 != v70)
      {
        free(v68);
      }

      if (__dst[0].__r_.__value_.__l.__data_ != &__dst[0].__r_.__value_.__r.__words[2])
      {
        free(__dst[0].__r_.__value_.__l.__data_);
      }

      return matched;
    }

LABEL_67:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v51 = std::__throw_bad_optional_access[abi:nn200100]();
}

void *mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)0>::~ConvertReshape(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertReshape<(mlir::anec::Family)0>::~ConvertReshape(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReshapeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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