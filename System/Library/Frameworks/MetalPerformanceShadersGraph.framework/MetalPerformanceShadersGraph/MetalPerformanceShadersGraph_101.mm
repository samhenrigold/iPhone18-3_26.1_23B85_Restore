void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
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
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
}

uint64_t mlir::anonymous namespace::matchAsConst(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v46 = a1;
  v48 = a2;
  ArgOperands = a1;
  DefiningOp = mlir::Value::getDefiningOp(&ArgOperands);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp) & 1) != 0)
  {
    return 1;
  }

  ArgOperands = a2;
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
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&ArgOperands, &v48);
  if (v50 != 1 || mlir::ElementsAttr::getNumElements(*(a2 + 8), *(a2 + 9)) != 1 || (mlir::getSingleFloatValue<float>(*(a2 + 8), *(a2 + 9)) & 0x7FFFFFFF) != 0)
  {
    return 0;
  }

  v47 = mlir::Value::getDefiningOp(&v46);
  ArgOperands = mlir::CallOpInterface::getArgOperands((a2 + 16));
  v43 = v20;
  v48 = mlir::CallOpInterface::getArgOperands((a2 + 32));
  v49 = v21;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v23) == 1)
  {
    v24 = mlir::CallableOpInterface::getArgAttrsAttr(&v48);
    if (mlir::ShapedType::getNumElements(v24, v25) == 1 && (mlir::mps::DequantizeLUTOp::getAxis(&v47) & 0x100000000) == 0)
    {
      return 1;
    }
  }

  if ((mlir::mps::DequantizeLUTOp::getAxis(&v47) & 0x100000000) == 0)
  {
    return 0;
  }

  v41[0] = mlir::CallOpInterface::getArgOperands(a2);
  v41[1] = v26;
  mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v28 = v27;
  mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  v30 = v29;
  mlir::CallableOpInterface::getArgAttrsAttr(&v48);
  result = 0;
  if (v30 <= 1 && v31 <= 1)
  {
    if (v30 == 1 || v31 == 1)
    {
      Axis = mlir::mps::DequantizeLUTOp::getAxis(&v47);
      if ((Axis & 0x100000000) != 0)
      {
        return (mlir::anec::getKernelDimFromIndex(Axis, v28) & 0x1FFFFFFFFLL) == 0x100000000;
      }

      std::__throw_bad_optional_access[abi:nn200100]();
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
    mlir::CallableOpInterface::getArgAttrsAttr(&v99);
    v23 = a5;
    if (v24 >= 4)
    {
      v108[0] = a5;
      *&v102 = mlir::getRankPromotionTypeForANE(v99, v100);
      *(&v102 + 1) = v25;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
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
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
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
    mlir::CallableOpInterface::getArgAttrsAttr(&v97);
    v23 = a6;
    if (v36 >= 4)
    {
      v108[0] = a6;
      *&v102 = mlir::getRankPromotionTypeForANE(v97, v98);
      *(&v102 + 1) = v37;
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
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
      mlir::CallableOpInterface::getArgAttrsAttr(&v102);
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
    IndexFromDim = mlir::CallOpInterface::getArgOperands((v35 + 4));
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
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
      v72 = v71;
      v73 = mlir::ElementsAttr::isSplat(&v102);
      v74 = mlir::MemRefType::get(ArgAttrsAttr, v72, v73, 0, 0, 0);
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
    mlir::CallableOpInterface::getArgAttrsAttr(&v102);
    v83 = v82;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v82);
    LOBYTE(v107) = v84;
    v104 = mlir::anec::getIndexFromDim(4, v83);
    LOBYTE(v105) = v85;
    v80 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v95);
  if (v86 >= 4)
  {
    v108[0] = v80;
    *&v102 = mlir::getRankPromotionTypeForANE(v95, v96);
    *(&v102 + 1) = v87;
    mlir::CallableOpInterface::getArgAttrsAttr(&v102);
    v89 = v88;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v88);
    LOBYTE(v107) = v90;
    v104 = mlir::anec::getIndexFromDim(3, v89);
    LOBYTE(v105) = v91;
    return mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>((a2 + 8), a4, v108, &IndexFromDim, &v104) - 16;
  }

  return v80;
}

char *mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

char *mlir::OpBuilder::create<mlir::anec::Linear,mlir::Value &,mlir::Value &,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
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

char *mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
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

void mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::~ConvertMatMul(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertMatMul<(mlir::anec::Family)7>::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v104 = a2;
  v109 = *(a3 + 56);
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

  v92 = v8;
  v93 = a4;
  v102 = v7;
  v103 = v8;
  v9 = (*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v100 = v9;
  v101 = v10;
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

  v98 = v12;
  v99 = v13;
  v14 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v97 = v14;
  v15 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v96 = v15;
  v16 = *(a2 + 24);
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, sizeof(v94));
  if (!ArgAttrsAttr)
  {
    if (!matched)
    {
      goto LABEL_24;
    }

    v31 = 0;
LABEL_19:
    ArgOperands = mlir::CallOpInterface::getArgOperands(v95);
    v113 = v32;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    if (v33 == 2 || (v31 & 1) == 0)
    {
      if (v33 != 2)
      {
        goto LABEL_24;
      }

LABEL_28:
      v90 = v15;
      v40 = v104;
      mlir::TypeConverter::TypeConverter(v108, *(a1 + 96));
      mlir::TypeConverter::~TypeConverter(v108);
    }

LABEL_21:
    IndexFromDim = mlir::CallOpInterface::getArgOperands(v94);
    v111 = v34;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&IndexFromDim);
    if (v35 != 2)
    {
      goto LABEL_24;
    }

    v31 = 1;
    goto LABEL_28;
  }

  ArgAttrsAttr = mlir::mps::MatMulOp::getTransposeRhs(&v104);
  v31 = ArgAttrsAttr;
  if (matched)
  {
    goto LABEL_19;
  }

  if (ArgAttrsAttr)
  {
    goto LABEL_21;
  }

LABEL_24:
  Instance = mlir::ANEPropertiesRegistry::getInstance(ArgAttrsAttr);
  v37 = (v93 + 8);
  Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(v93 + 8));
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

  mlir::CallableOpInterface::getArgAttrsAttr(&v102);
  if (v41 >= v39)
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v42;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v43 = v15;
    v45 = v44;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v44);
    LOBYTE(v111) = v46;
    v47 = v45;
    v15 = v43;
    v105 = mlir::anec::getIndexFromDim(3, v47);
    v106 = v48;
    v14 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v97 = v14;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  if (v49 >= v39)
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v50;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v52 = v51;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v51);
    LOBYTE(v111) = v53;
    v105 = mlir::anec::getIndexFromDim(3, v52);
    v106 = v54;
    v15 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
    v96 = v15;
  }

  if (mlir::pdl::ApplyNativeConstraintOp::getIsNegated(&v104))
  {
    v107 = v14;
    ArgOperands = mlir::getRankPromotionTypeForANE(v102, v103);
    v113 = v55;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v56 = v15;
    v58 = v57;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v57);
    LOBYTE(v111) = v59;
    v60 = v58;
    v15 = v56;
    v105 = mlir::anec::getIndexFromDim(4, v60);
    v106 = v61;
    v97 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  if (mlir::mps::MatMulOp::getTransposeRhs(&v104))
  {
    v107 = v15;
    ArgOperands = mlir::getRankPromotionTypeForANE(v100, v101);
    v113 = v62;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v64 = v63;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v63);
    LOBYTE(v111) = v65;
    v105 = mlir::anec::getIndexFromDim(4, v64);
    v106 = v66;
    v96 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  ArgOperands = 0;
  v67 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::Value &,mlir::Value &,decltype(nullptr)>(v37, v16, &v97, &v96) - 16;
  mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v68 >= v39)
  {
    v107 = v67;
    ArgOperands = mlir::getRankPromotionTypeForANE(v98, v99);
    v113 = v69;
    mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
    v71 = v70;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v70);
    LOBYTE(v111) = v72;
    v105 = mlir::anec::getIndexFromDim(3, v71);
    v106 = v73;
    v67 = mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v37, v16, &v107, &IndexFromDim, &v105) - 16;
  }

  v74 = v104;
  IndexFromDim = v67;
  mlir::ValueRange::ValueRange(&ArgOperands, &IndexFromDim, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(v93, v74, ArgOperands, v113);
  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DegammaOp,mlir::anec::Degamma>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E7B0;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF25614()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Degamma,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::DiracOp,mlir::anec::Dirac>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E820;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF26248()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Dirac,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::GeluOp,mlir::anec::Gelu>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E890;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF26E7C()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Gelu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReluOp,mlir::anec::Relu>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E900;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF27AB0()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Relu,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::RoundOp,mlir::anec::RoundNearest>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E970;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF286E4()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::RoundNearest,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareOp,mlir::anec::ElementwiseSquare>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0E9E0;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF29318()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::ElementwiseSquare,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertSquareA13Minus::~ConvertSquareA13Minus(mlir::_anonymous_namespace_::ConvertSquareA13Minus *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_1F5B0E9E0;
  v5 = *(this + 16);
  v6 = *(this + 34);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(this + 16);
  }

  if (v5 != (this + 144))
  {
    free(v5);
  }

  v10 = *(this + 30);
  v11 = *(this + 13);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(this + 13);
    v13 = (32 * *(this + 30));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF29F4C()
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

  operator delete(this);
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

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
  v29 = mlir::MemRefType::get(ArgAttrsAttr, v24, isSplat, 0, 0, 0);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SquareRootOp,mlir::anec::Sqrt>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0EB30;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF2A434()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Sqrt,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SwishOp,mlir::anec::Swish>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0EBA0;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF2B068()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Swish,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::TanhOp,mlir::anec::Tanh>::~ConvertElementwiseUnary(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *a1 = &unk_1F5B0EC10;
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = -56 * v6;
    v8 = v5 + 56 * v6 - 48;
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v9 = *v8;
      if (llvm::APFloatBase::PPCDoubleDouble(v5) == v9)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v8);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v8);
      }

      v8 -= 56;
      v7 += 56;
    }

    while (v7);
    v5 = *(a1 + 128);
  }

  if (v5 != (a1 + 144))
  {
    free(v5);
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10)
  {
    v12 = 32 * v10;
    do
    {
      if (*v11 <= 0xFFFFFFFD && *(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 32;
      v12 -= 32;
    }

    while (v12);
    v11 = *(a1 + 104);
    v13 = (32 * *(a1 + 120));
  }

  else
  {
    v13 = 0;
  }

  llvm::deallocate_buffer(v11, v13);
}

{
}

void *sub_1DFF2BC9C()
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
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
      if (v19)
      {
        v20 = llvm::detail::IEEEFloat::IEEEFloat(v62, *v59, v16, v17, v18);
        v21 = llvm::APFloatBase::IEEEsingle(v20);
        llvm::APFloat::Storage::Storage(&v64, v62, v21);
        llvm::detail::IEEEFloat::~IEEEFloat(v62);
        v23 = llvm::APFloatBase::IEEEhalf(v22);
        LOBYTE(v62[0]) = 0;
        llvm::APFloat::convert(&__p, v23, 1, v62);
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
      }

      else
      {
        __p = operator new(0x30uLL);
        v64 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v57 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v59;
      if (v59 != &v61)
      {
        free(v59);
      }

      if ((v19 & 1) == 0)
      {
        v55 = v57;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v65 + 1;
      v9 = v67 + 1;
      ++v65;
      v67 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
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

LABEL_29:
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
      llvm::APFloat::convert(&__p, v47, 1, v62);
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
LABEL_45:
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

char *mlir::OpBuilder::create<mlir::anec::Tanh,mlir::ValueRange,mlir::NamedAttrList &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
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
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::~ConvertBinaryCompare(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
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
        mlir::IntegerAttr::getValue(&v22, v21);
        if (*(v7 + 8) >= 0x41u && *v7)
        {
          operator delete[](*v7);
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
          mlir::NamedAttribute::NamedAttribute(&v22, v19, 0);
          this = v19;
          NumElements = mlir::DenseElementsAttr::getNumElements(&v19);
          mlir::NamedAttribute::NamedAttribute(v21, this, NumElements);
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
            mlir::IntegerAttr::getValue(&v22, v21);
            if (*(v13 + 8) >= 0x41u)
            {
              if (*v13)
              {
                operator delete[](*v13);
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

char *mlir::OpBuilder::create<mlir::anec::ElementwiseEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::~ConvertBinaryCompareToZero(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::EqualToOp,mlir::anec::ElementwiseEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseEqualZero,mlir::Value>((a4 + 8), *(a2 + 24), v26);
    (*(*a4 + 8))(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::~ConvertBinaryCompare(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqual>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

char *mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqual,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::~ConvertBinaryCompareToZero(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::NotEqualToOp,mlir::anec::ElementwiseNotEqualZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseNotEqualZero,mlir::Value>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::~ConvertBinaryCompare(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
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
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
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

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

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
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThan>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_26;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (!v15)
  {
    v18 = 0;
    if (v25 >= 0x41)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (v18)
    {
      goto LABEL_22;
    }

LABEL_26:
    v20 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(a4 + 1, *(a2 + 24), &v26);
    ((*a4)[1])(a4, a2, v20);
    matched = 1;
    goto LABEL_27;
  }

  if (v25 >= 0x41)
  {
    if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
    {
      if (__p)
      {
        operator delete[](__p);
      }

      goto LABEL_26;
    }

    v17 = __p;
  }

  else
  {
    v17 = &__p;
  }

  v18 = *v17 == 0;
  if (v16 < 0x41)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (!__p)
  {
    goto LABEL_21;
  }

  operator delete[](__p);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_22:
  __p = operator new(0x48uLL);
  v25 = xmmword_1E0982730;
  strcpy(__p, "failed: ConvertBinaryCompare expects the second operand to be non-zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_27:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

char *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThan,llvm::SmallVector<mlir::Value,6u> &>(uint64_t **a1, uint64_t a2, uint64_t a3)
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

void mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::~ConvertBinaryCompareToZero(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::ConvertBinaryCompareToZero<mlir::mps::GreaterThanOp,mlir::anec::ElementwiseGreaterThanZero>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v26 = v28;
  v27 = 0x600000000;
  if (v6 < 7)
  {
    __p = v7;
    *&v25 = 0;
    if (!v6)
    {
      v12 = 0;
      v13 = v28;
      goto LABEL_8;
    }

    v8 = 0;
    v9 = v28;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v6, 8);
    v8 = v27;
    v9 = v26;
    __p = v7;
    *&v25 = 0;
  }

  v10 = 0;
  v11 = &v9[v8];
  do
  {
    *v11++ = mlir::ValueRange::dereference_iterator(&__p, v10);
    v10 = v25 + 1;
    *&v25 = v10;
  }

  while (v10 != v6);
  v12 = v27;
  v13 = v26;
LABEL_8:
  LODWORD(v27) = v12 + v6;
  v22 = v13[1];
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  LODWORD(v25) = 1;
  p_p = &__p;
  __p = 0;
  v15 = mlir::detail::constant_int_op_binder_any_splat::match(&p_p, DefiningOp);
  v16 = v25;
  if (v15)
  {
    if (v25 >= 0x41)
    {
      if (v16 - llvm::APInt::countLeadingZerosSlowCase(&__p) > 0x40)
      {
        if (__p)
        {
          operator delete[](__p);
        }

        goto LABEL_24;
      }

      v17 = __p;
    }

    else
    {
      v17 = &__p;
    }

    v18 = *v17 == 0;
    if (v16 < 0x41)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
    if (v25 < 0x41)
    {
      goto LABEL_20;
    }
  }

  if (__p)
  {
    operator delete[](__p);
  }

LABEL_20:
  if (v18)
  {
    v19 = mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(a4 + 1, *(a2 + 24), v26);
    ((*a4)[1])(a4, a2, v19);
    matched = 1;
    goto LABEL_26;
  }

LABEL_24:
  __p = operator new(0x50uLL);
  v25 = xmmword_1E0982740;
  strcpy(__p, "failed: ConvertBinaryCompareToZero expects the second operand to be zero.");
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  if (v26 != v28)
  {
    free(v26);
  }

  return matched;
}

char *mlir::OpBuilder::create<mlir::anec::ElementwiseGreaterThanZero,mlir::Value &>(uint64_t **a1, uint64_t a2, uint64_t *a3)
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

void mlir::anonymous namespace::ConvertBinaryCompare<mlir::mps::GreaterThanOrEqualToOp,mlir::anec::ElementwiseGreaterThanEqual>::~ConvertBinaryCompare(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
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