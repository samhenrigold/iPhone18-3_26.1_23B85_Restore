char *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v124[1] = *MEMORY[0x1E69E9840];
  v115 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v113 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v113 = 0;
    if (v19)
    {
      v120.__r_.__value_.__r.__words[0] = &v113;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v120, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v113, v24, &v122, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v123 != 1)
  {
    std::to_string(&v120, v123);
    v46 = std::string::insert(&v120, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v120.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v122;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v111 = 0;
  v112 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v114);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v114);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v37);
      v121.__r_.__value_.__r.__words[0] = &v121.__r_.__value_.__r.__words[2];
      v121.__r_.__value_.__r.__words[2] = v27;
      v121.__r_.__value_.__l.__size_ = 0x100000001;
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      memset_pattern16(&v120.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v120.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v119 = 0u;
      *&__p[8] = 0x400000004;
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
      v58 = *__p;
      v59 = *&__p[8];
      v116.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v112 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v112, &v110, &v111, &v109, &v108, &v116) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      if (v121.__r_.__value_.__l.__data_ != &v121.__r_.__value_.__r.__words[2])
      {
        free(v121.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v114) + 8 * v27);
      if (v64 >= 0x10000)
      {
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
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v121.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v117.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v107.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v108.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v122 != v124)
          {
            free(v122);
          }

          return matched;
        }

LABEL_80:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

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
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v120);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v112);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v112;
      if (v90 == (*(v112 + 1) & 0xFFFFFFFFFFFFFFF8))
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
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v115 + 3), a4);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(v99, v100, v101, v102, v103, v104, v105, v106);
}

char *mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 0;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
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
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v105 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
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
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

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
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (*(v105 + 1) & 0xFFFFFFFFFFFFFFF8))
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
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
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
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v111 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
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
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

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

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (*(v111 + 1) & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
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
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a4, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = v96 - 16;
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
      goto LABEL_100;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 0;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
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
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v111 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
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
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

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

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (*(v111 + 1) & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
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
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a4, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = v96 - 16;
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
      goto LABEL_100;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  return matched;
}

char *mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(uint64_t **a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t *a5)
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMinOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 0;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::~ConvertReductionArg(void *__p)
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
    v26 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v32 = v18;
    v33 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v32) || !mlir::CallOpInterface::getArgOperands(&v32))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v32);
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)0>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
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
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v105 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
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
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

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
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (*(v105 + 1) & 0xFFFFFFFFFFFFFFF8))
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
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)1>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v108 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v106 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v106 = 0;
    if (v19)
    {
      v113.__r_.__value_.__r.__words[0] = &v106;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v113, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v106, v24, &v115, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    goto LABEL_26;
  }

  if (v116 != 1)
  {
    std::to_string(&v113, v116);
    v46 = std::string::insert(&v113, 0, "expected a single axis, but found ");
    v47 = v46->__r_.__value_.__r.__words[2];
    *__p = *&v46->__r_.__value_.__l.__data_;
    *&__p[16] = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    v45 = v113.__r_.__value_.__r.__words[0];
    goto LABEL_82;
  }

  v27 = *v115;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v104 = 1;
  v105 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v107);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v107);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v37);
      v114.__r_.__value_.__r.__words[0] = &v114.__r_.__value_.__r.__words[2];
      v114.__r_.__value_.__r.__words[2] = v27;
      v114.__r_.__value_.__l.__size_ = 0x100000001;
      v113.__r_.__value_.__r.__words[0] = &v113.__r_.__value_.__r.__words[2];
      memset_pattern16(&v113.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v113.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v112 = 0u;
      *&__p[8] = 0x400000004;
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
      v58 = *__p;
      v59 = *&__p[8];
      v109.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v105 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v105, &v103, &v104, &v102, &v101, &v109) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v113.__r_.__value_.__l.__data_ != &v113.__r_.__value_.__r.__words[2])
      {
        free(v113.__r_.__value_.__l.__data_);
      }

      if (v114.__r_.__value_.__l.__data_ != &v114.__r_.__value_.__r.__words[2])
      {
        free(v114.__r_.__value_.__l.__data_);
      }

      v64 = *(mlir::CallableOpInterface::getArgAttrsAttr(v107) + 8 * v27);
      if (v64 >= 0x10000)
      {
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
        *&__p[16] = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_60:
            if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_75;
          }
        }

        else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v113.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v114.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v100.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_80;
        }

LABEL_79:
        operator delete(v103.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_66:
          if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_83;
          }

LABEL_81:
          v45 = v101.__r_.__value_.__r.__words[0];
LABEL_82:
          operator delete(v45);
LABEL_83:
          if (v115 != v117)
          {
            free(v115);
          }

          return matched;
        }

LABEL_80:
        operator delete(v102.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

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
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v113);
      v88 = v87;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      v90 = mlir::MemRefType::get(ArgAttrsAttr, v88, ElementTypeOrSelf, 0, 0, 0);
      v91 = v105;
      if (v90 == (*(v105 + 1) & 0xFFFFFFFFFFFFFFF8))
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
        matched = 1;
        goto LABEL_83;
      }

      *__p = operator new(0x60uLL);
      *&__p[8] = xmmword_1E0982980;
      strcpy(*__p, "failed: output shape requires a reshape, but the op is not available on A12/A13-class ANEs.");
LABEL_26:
      matched = mlir::logMatchFailure(__p, *(v108 + 3), a4);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      v45 = *__p;
      goto LABEL_82;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
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
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v111 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
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
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

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

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (*(v111 + 1) & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
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
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a4, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = v96 - 16;
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
      goto LABEL_100;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::~ConvertReductionArg(void *__p)
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

void *mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)3>::matchAndRewriteWithStaticShapes(int a1, mlir::Operation *a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v8 = *(a2 + 3);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  *__p = v10;
  *&__p[8] = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(__p, ODSOperandIndexAndLength);
  }

  *__p = v10;
  *&__p[8] = 0;
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
  *__p = v17;
  *&__p[8] = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(__p, v16);
    v18 = *&__p[8];
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v112 = 0;
  }

  else
  {
    *__p = v17;
    *&__p[8] = 0;
    v19 = mlir::ValueRange::dereference_iterator(__p, 0);
    v112 = 0;
    if (v19)
    {
      v119.__r_.__value_.__r.__words[0] = &v112;
      *__p = v19;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v119, DefiningOp) & 1) == 0)
      {
        *__p = operator new(0x58uLL);
        *&__p[8] = xmmword_1E0982970;
        strcpy(*__p, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        return matched;
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

  *__p = v22;
  *&__p[8] = v23;
  mlir::CallableOpInterface::getArgAttrsAttr(__p);
  if (!mlir::getPositivePromotedAxes(v112, v24, &v121, 0, 0))
  {
    *__p = operator new(0x38uLL);
    *&__p[8] = xmmword_1E0982900;
    strcpy(*__p, "failed: could not extract positive promoted axes");
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    goto LABEL_101;
  }

  if (v122 != 1)
  {
    std::to_string(&v119, v122);
    v45 = std::string::insert(&v119, 0, "expected a single axis, but found ");
    v46 = v45->__r_.__value_.__r.__words[2];
    *__p = *&v45->__r_.__value_.__l.__data_;
    *&__p[16] = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
      if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_101;
      }
    }

    else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    operator delete(v119.__r_.__value_.__l.__data_);
LABEL_101:
    if (v121 != v123)
    {
      free(v121);
    }

    return matched;
  }

  v27 = *v121;
  v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
  v29 = *(this + 6);
  *__p = v29;
  *&__p[8] = v28;
  if (v28)
  {
    v29 = mlir::ValueRange::offset_base(__p, v28);
  }

  *__p = v29;
  *&__p[8] = 0;
  v110 = 1;
  v111 = mlir::ValueRange::dereference_iterator(__p, 0);
  mlir::CallableOpInterface::getArgAttrsAttr(v113);
  IndexFromDim = mlir::anec::getIndexFromDim(3, v30);
  if (v32)
  {
    v33 = IndexFromDim;
    mlir::CallableOpInterface::getArgAttrsAttr(v113);
    v35 = mlir::anec::getIndexFromDim(3, v34);
    if (v36)
    {
      v37 = v35;
      v38 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v33);
      v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v37);
      v120.__r_.__value_.__r.__words[0] = &v120.__r_.__value_.__r.__words[2];
      v120.__r_.__value_.__r.__words[2] = v27;
      v120.__r_.__value_.__l.__size_ = 0x100000001;
      v119.__r_.__value_.__r.__words[0] = &v119.__r_.__value_.__r.__words[2];
      memset_pattern16(&v119.__r_.__value_.__r.__words[2], &unk_1E096FAE0, 0x10uLL);
      v119.__r_.__value_.__l.__size_ = 0x200000002;
      *__p = &__p[16];
      *&__p[16] = 0u;
      v118 = 0u;
      *&__p[8] = 0x400000004;
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
      v57 = *__p;
      v58 = *&__p[8];
      v115.__r_.__value_.__r.__words[0] = *&__p[8];
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
      v111 = mlir::OpBuilder::create<mlir::anec::ArgMinMax,mlir::Value &,mlir::DenseIntElementsAttr,mlir::anec::ArgMinMaxMode &,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr>(a4 + 1, v8, &v111, &v109, &v110, &v108, &v107, &v115) - 16;
      if (*__p != &__p[16])
      {
        free(*__p);
      }

      if (v119.__r_.__value_.__l.__data_ != &v119.__r_.__value_.__r.__words[2])
      {
        free(v119.__r_.__value_.__l.__data_);
      }

      if (v120.__r_.__value_.__l.__data_ != &v120.__r_.__value_.__r.__words[2])
      {
        free(v120.__r_.__value_.__l.__data_);
      }

      v63 = *(mlir::CallableOpInterface::getArgAttrsAttr(v113) + 8 * v27);
      if (v63 >= 0x10000)
      {
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
        *&__p[16] = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        matched = mlir::logMatchFailure(__p, *(v114 + 3), a4);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_59:
            if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_74;
          }
        }

        else if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        operator delete(v119.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_74:
        operator delete(v120.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

LABEL_75:
        operator delete(v116.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_77;
        }

LABEL_76:
        operator delete(v106.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_63:
          if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_78;
        }

LABEL_77:
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_64:
          if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_79;
        }

LABEL_78:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_65:
          if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

LABEL_80:
          operator delete(v107.__r_.__value_.__l.__data_);
          goto LABEL_101;
        }

LABEL_79:
        operator delete(v108.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_80;
      }

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

      *__p = mlir::getRankPromotionTypeForANE(v81, v82);
      *&__p[8] = v83;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(__p);
      v86 = v85;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v111);
      v119.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v86, ElementTypeOrSelf, 0, 0, 0);
      v88 = v111;
      v89 = v114;
      if (v119.__r_.__value_.__r.__words[0] == (*(v111 + 1) & 0xFFFFFFFFFFFFFFF8))
      {
        v90 = *(v114 - 2);
        if (!v90)
        {
          goto LABEL_100;
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
LABEL_100:
          mlir::ConversionPatternRewriter::eraseOp(a4, v89);
          matched = 1;
          goto LABEL_101;
        }

        v98 = v96 - 16;
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
      goto LABEL_100;
    }
  }

  std::__throw_bad_optional_access[abi:nn200100]();
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)4>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)5>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
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

void mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::~ConvertReductionArg(void *__p)
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

uint64_t mlir::anonymous namespace::ConvertReductionArg<mlir::mps::ReductionArgMaxOp,(mlir::anec::Family)6>::matchAndRewriteWithStaticShapes(int a1, uint64_t a2, mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase *this, uint64_t **a4, double a5, int32x4_t a6)
{
  v91 = *MEMORY[0x1E69E9840];
  v87 = a2;
  v8 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), a5, a6);
  v10 = *(this + 6);
  v89 = v10;
  *&v90 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v10 = mlir::ValueRange::offset_base(&v89, ODSOperandIndexAndLength);
  }

  v89 = v10;
  *&v90 = 0;
  v11 = (*(mlir::ValueRange::dereference_iterator(&v89, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  v89 = v17;
  *&v90 = v16;
  if (v16)
  {
    v17 = mlir::ValueRange::offset_base(&v89, v16);
    v18 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (HIDWORD(v16) + v16 == v18)
  {
    v85 = 0;
LABEL_14:
    v89 = &v90 + 2;
    *&v90 = 0x100000000;
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

    *v88 = v22;
    *&v88[8] = v23;
    mlir::CallableOpInterface::getArgAttrsAttr(v88);
    if (!mlir::getPositivePromotedAxes(v85, v24, &v89, 0, 0))
    {
      *v88 = operator new(0x38uLL);
      *&v88[8] = xmmword_1E0982900;
      strcpy(*v88, "failed: could not extract positive promoted axes");
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
      }

      goto LABEL_81;
    }

    if (v90 != 1)
    {
      std::to_string(&v84, v90);
      v48 = std::string::insert(&v84, 0, "expected a single axis, but found ");
      v49 = v48->__r_.__value_.__r.__words[2];
      *v88 = *&v48->__r_.__value_.__l.__data_;
      *&v88[16] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      operator delete(v84.__r_.__value_.__l.__data_);
LABEL_81:
      if (v89 != (&v90 + 8))
      {
        free(v89);
      }

      return matched;
    }

    v27 = *v89;
    v28 = mlir::mps::detail::ReductionArgMaxOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 14), v25, v26);
    v29 = *(this + 6);
    *v88 = v29;
    *&v88[8] = v28;
    if (v28)
    {
      v29 = mlir::ValueRange::offset_base(v88, v28);
    }

    *v88 = v29;
    v83 = mlir::ValueRange::dereference_iterator(v88, 0);
    v82 = 1;
    v83 = mlir::OpBuilder::create<mlir::anec::GlobalArgMinMax,mlir::Value &,long long &,mlir::anec::ArgMinMaxMode &>(a4 + 1, v8, &v83, v89, &v82) - 16;
    v30 = *(mlir::CallableOpInterface::getArgAttrsAttr(v86) + 8 * v27);
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
      *v88 = *&v45->__r_.__value_.__l.__data_;
      *&v88[16] = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      matched = mlir::logMatchFailure(v88, *(v87 + 24), a4);
      if ((v88[23] & 0x80000000) != 0)
      {
        operator delete(*v88);
        if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
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

        goto LABEL_55;
      }

LABEL_54:
      operator delete(v81.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_56;
      }

LABEL_55:
      operator delete(v80.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

LABEL_56:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_34:
        if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_58;
      }

LABEL_57:
      operator delete(v79.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_58:
      operator delete(v78.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_36:
        if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_60:
        operator delete(v76.__r_.__value_.__l.__data_);
        goto LABEL_81;
      }

LABEL_59:
      operator delete(v77.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_60;
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

    *v88 = mlir::getRankPromotionTypeForANE(v51, v52);
    *&v88[8] = v53;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v88);
    v56 = v55;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v83);
    v84.__r_.__value_.__r.__words[0] = mlir::MemRefType::get(ArgAttrsAttr, v56, ElementTypeOrSelf, 0, 0, 0);
    v58 = v83;
    v59 = v87;
    if (v84.__r_.__value_.__r.__words[0] == (*(v83 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v60 = *(v87 - 16);
      if (!v60)
      {
        goto LABEL_80;
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
LABEL_80:
        mlir::ConversionPatternRewriter::eraseOp(a4, v59);
        matched = 1;
        goto LABEL_81;
      }

      v68 = v66 - 16;
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
    goto LABEL_80;
  }

  v89 = v17;
  *&v90 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v89, 0);
  v85 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

  *v88 = &v85;
  v89 = v19;
  DefiningOp = mlir::Value::getDefiningOp(&v89);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v88, DefiningOp))
    {
      goto LABEL_14;
    }
  }

  v89 = operator new(0x58uLL);
  v90 = xmmword_1E0982970;
  strcpy(v89, "failed: operation is not defined with constant axes and cannot be lowered on ANEs");
  matched = mlir::logMatchFailure(&v89, *(v87 + 24), a4);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
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

  operator delete(this);
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

  operator delete(this);
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

uint64_t mlir::anonymous namespace::ConvertTile::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x500000000;
  __p = *(a3 + 40);
  *&v23 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v23 = 0;
  v7 = mlir::ValueRange::dereference_iterator(&__p, 0);
  if ((mlir::matchConstantWithIntVector<unsigned long long>(v7, &v24) & 1) == 0)
  {
    __p = operator new(0x40uLL);
    v23 = xmmword_1E0982990;
    strcpy(__p, "failed: only constant multipliers are supported on ANEs.");
    goto LABEL_16;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v8 = v24;
        v9 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      LODWORD(v25) = 0;
      if (HIDWORD(v25) > 3)
      {
        v10 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, 4uLL, 8);
        v10 = v25;
      }

      v12 = v24 + 8 * v10;
      *v12 = xmmword_1E0982AE0;
      v12[1] = unk_1E0982AF0;
      LODWORD(v25) = v25 + 4;
      if (v25 <= 3)
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    __p = *(a3 + 40);
    *&v23 = 0;
    v13 = mlir::ValueRange::dereference_iterator(&__p, 0);
    v21 = v25;
    __p = v13;
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
    v15 = mlir::RankedTensorType::get(&v21, 1, IntegerType, 0);
    if (v15)
    {
      v16 = v15;
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      v15 = v16;
    }

    else
    {
      v17 = 0;
    }

    matched = 1;
    v20 = mlir::DenseElementsAttr::getFromRawBuffer(v15, v17, v24, 8 * v25);
    v18 = mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(a4 + 1, *(a2 + 24), &__p, &v20);
    ((*a4)[1])(a4, a2, v18);
    goto LABEL_24;
  }

  if (v25 == 2)
  {
    llvm::SmallVectorImpl<unsigned long long>::insert(&v24, v24 + 8, 1uLL, 1uLL);
    v8 = v24;
  }

  else
  {
    if (v25 != 3)
    {
      goto LABEL_20;
    }

    v8 = v24 + 16;
  }

  v9 = 1;
LABEL_14:
  llvm::SmallVectorImpl<unsigned long long>::insert(&v24, v8, v9, 1uLL);
  if (v25 > 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  __p = operator new(0x38uLL);
  v23 = xmmword_1E0982830;
  strcpy(__p, "failed: multiplier numbers must be greater than 3");
LABEL_16:
  matched = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

LABEL_24:
  if (v24 != v26)
  {
    free(v24);
  }

  return matched;
}

char *mlir::OpBuilder::create<mlir::anec::Tile,mlir::Value,mlir::DenseIntElementsAttr>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  operator delete(this);
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

uint64_t mlir::anonymous namespace::ConvertFusionOp::matchAndRewriteWithStaticShapes(uint64_t a1, mlir::ForwardIterator *a2, uint64_t a3, uint64_t a4)
{
  v247 = *MEMORY[0x1E69E9840];
  v220 = a2;
  mlir::mpsx::FusionOp::getCustomFusionType(__p, &v220);
  if ((__p[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v7 = *__p;
  if (*&__p[8] > 16)
  {
    if (*&__p[8] == 17)
    {
      if (!memcmp(*__p, "ANECQuantizedConv", 0x11uLL))
      {
        v52 = *(a3 + 16);
        *__p = *a3;
        *&__p[16] = v52;
        v226 = *(a3 + 32);
        v227 = *(a3 + 48);
      }

      goto LABEL_40;
    }

    if (*&__p[8] == 20)
    {
      if (!memcmp(*__p, "ANECRingBufferWriter", 0x14uLL))
      {
        v46 = v220;
        v48 = *(a3 + 48);
        *__p = *(a3 + 40);
        v47 = *__p;
        *&__p[8] = v48;
        v49 = mlir::ValueRange::dereference_iterator(__p, 0);
        v224 = v49;
        *__p = v47;
        *&__p[8] = v48;
        v223 = mlir::ValueRange::dereference_iterator(__p, 1);
        v50 = (*(v49 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v50)
        {
          v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
        }

        else
        {
          v51 = 0;
        }

        *__p = v50;
        *&__p[8] = v51;
        mlir::CallableOpInterface::getArgAttrsAttr(__p);
        v62 = v61;
        v63 = (*(v223 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v63)
        {
          v64 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
        }

        else
        {
          v64 = 0;
        }

        *__p = v63;
        *&__p[8] = v64;
        mlir::CallableOpInterface::getArgAttrsAttr(__p);
        v219 = v65;
        v222 = 0;
        v232[0] = &v222;
        *__p = v232;
        mlir::detail::walk<mlir::ForwardIterator>(v46, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferWriterENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps16AssignVariableOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        *__p = *(*(v222 + 72) + 56);
        DefiningOp = mlir::Value::getDefiningOp(__p);
        v67 = *(*(DefiningOp + 72) + 152);
        v242 = v244;
        v243 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v67, &v242))
        {
          if (v243)
          {
            v68 = v242;
            v69 = 8 * v243;
            while (*v68 == 1)
            {
              ++v68;
              v69 -= 8;
              if (!v69)
              {
                goto LABEL_77;
              }
            }

            *__p = operator new(0x38uLL);
            *&__p[8] = xmmword_1E09829A0;
            strcpy(*__p, "failed: the stride should be 1 for slice update on ANE.");
            matched = mlir::logMatchFailure(__p, v46[3], a4);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
LABEL_77:
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v232[0] = &v232[2];
            v232[1] = 0x600000000;
            v228[0].n128_u64[0] = &v228[1].n128_u64[1];
            *(v228 + 8) = xmmword_1E09700D0;
            v70 = *(*(DefiningOp + 72) + 88);
            {
              v245 = v47;
              *&v246[0] = v48;
              v245 = mlir::ValueRange::offset_base(&v245, 2);
              *&v246[0] = 0;
              v71 = v48 - 2;
              if (v48 != 2)
              {
                v72 = 0;
                do
                {
                  v73 = mlir::ValueRange::dereference_iterator(&v245, v72);
                  v74 = *&__p[8];
                  if (*&__p[8] >= *&__p[12])
                  {
                    v75 = v73;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], *&__p[8] + 1, 8);
                    v73 = v75;
                    v74 = *&__p[8];
                  }

                  *(*__p + 8 * v74) = v73;
                  ++*&__p[8];
                  v72 = *&v246[0] + 1;
                  *&v246[0] = v72;
                }

                while (v72 != v71);
              }

              if (v219 < v62)
              {
                if (!*(DefiningOp + 47) || (v248.var0 = "shrink_axis_mask", v248.var1 = 16, InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v248), (v92 & 1) == 0))
                {
                  v249.var0 = "shrink_axis_mask";
                  v249.var1 = 16;
                  InherentAttr = mlir::DictionaryAttr::get((DefiningOp + 56), v249);
                }

                v245 = InherentAttr;
                mlir::IntegerAttr::getValue(&v221, &v245);
                v93 = (*(v70 + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v93)
                {
                  v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v93 + 8);
                }

                else
                {
                  v94 = 0;
                }

                v245 = v93;
                *&v246[0] = v94;
                v116 = *mlir::CallableOpInterface::getArgAttrsAttr(&v245);
                v245 = v246 + 8;
                *&v246[0] = 0xC00000000;
                mlir::anec::getANEDefaultLayout(v116, &v245);
              }

              v245 = SLODWORD(v232[1]);
              IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
              v148 = mlir::RankedTensorType::get(&v245, 1, IntegerType, 0);
              if (v148)
              {
                v149 = v148;
                v150 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v148 + 8);
                v148 = v149;
              }

              else
              {
                v150 = 0;
              }

              v239 = mlir::DenseElementsAttr::getFromRawBuffer(v148, v150, v232[0], 8 * LODWORD(v232[1]));
              v245 = v228[0].n128_i32[2];
              v151 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
              v152 = mlir::RankedTensorType::get(&v245, 1, v151, 0);
              if (v152)
              {
                v153 = v152;
                v154 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v152 + 8);
                v152 = v153;
              }

              else
              {
                v154 = 0;
              }

              matched = 1;
              v236 = mlir::DenseElementsAttr::getFromRawBuffer(v152, v154, v228[0].n128_i64[0], v228[0].n128_i64[1]);
              mlir::ValueRange::ValueRange(&v245, *__p, *&__p[8]);
              v155 = mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v46[3], &v224, &v223, &v239, &v236, &v245);
              (*(*a4 + 8))(a4, v46, v155);
            }

            else
            {
              v245 = operator new(0x30uLL);
              v246[0] = xmmword_1E0982960;
              strcpy(v245, "failed: can not retrive the offset info.");
              matched = mlir::logMatchFailure(&v245, v46[3], a4);
              if (SHIBYTE(v246[0]) < 0)
              {
                operator delete(v245);
              }
            }

            if (v228[0].n128_u64[0] != &v228[1].n128_i8[8])
            {
              free(v228[0].n128_u64[0]);
            }

            if (v232[0] != &v232[2])
            {
              free(v232[0]);
            }

            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          matched = 0;
        }

        v146 = v242;
        if (v242 == v244)
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

        v13 = v220;
        v15 = *(a3 + 40);
        v14 = *(a3 + 48);
        *__p = v15;
        *&__p[8] = v14;
        v16 = mlir::ValueRange::dereference_iterator(__p, 0);
        v238 = v16;
        v242 = 0;
        v232[0] = &v242;
        *__p = v232;
        mlir::detail::walk<mlir::ForwardIterator>(v13, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferReaderENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps14StridedSliceOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, __p, 1);
        v17 = *(*(v242 + 9) + 120);
        v239 = v241;
        v240 = 0x400000000;
        if (mlir::matchConstantWithIntVector<unsigned long>(v17, &v239))
        {
          if (v240)
          {
            v18 = v239;
            v19 = 8 * v240;
            while (*v18 == 1)
            {
              ++v18;
              v19 -= 8;
              if (!v19)
              {
                goto LABEL_25;
              }
            }

            *__p = operator new(0x40uLL);
            *&__p[8] = xmmword_1E0982990;
            strcpy(*__p, "failed: the stride should be 1 for strided slice on ANE.");
            matched = mlir::logMatchFailure(__p, v13[3], a4);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
LABEL_25:
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v232[0] = &v232[2];
            v232[1] = 0x600000000;
            v228[0].n128_u64[0] = &v228[1].n128_u64[1];
            *(v228 + 8) = xmmword_1E09700D0;
            v20 = *(*(v242 + 9) + 56);
            v21 = (v16[1] & 0xFFFFFFFFFFFFFFF8);
            if (v21)
            {
              v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
            }

            else
            {
              v22 = 0;
            }

            v245 = v21;
            *&v246[0] = v22;
            mlir::CallableOpInterface::getArgAttrsAttr(&v245);
            {
              v245 = v246 + 8;
              *&v246[0] = 0x600000000;
              if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(v242 + 9) + 88), &v245))
              {
                v236 = v15;
                v237 = v14;
                v236 = mlir::ValueRange::offset_base(&v236, 1);
                v237 = 0;
                v107 = v14 - 1;
                if (v107)
                {
                  for (i = 0; i != v107; v237 = i)
                  {
                    v109 = mlir::ValueRange::dereference_iterator(&v236, i);
                    v110 = *&__p[8];
                    if (*&__p[8] >= *&__p[12])
                    {
                      v111 = v109;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(__p, &__p[16], *&__p[8] + 1, 8);
                      v109 = v111;
                      v110 = *&__p[8];
                    }

                    *(*__p + 8 * v110) = v109;
                    ++*&__p[8];
                    i = v237 + 1;
                  }
                }

                v236 = SLODWORD(v232[1]);
                v112 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                v113 = mlir::RankedTensorType::get(&v236, 1, v112, 0);
                if (v113)
                {
                  v114 = v113;
                  v115 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v113 + 8);
                  v113 = v114;
                }

                else
                {
                  v115 = 0;
                }

                v221 = mlir::DenseElementsAttr::getFromRawBuffer(v113, v115, v232[0], 8 * LODWORD(v232[1]));
                v236 = v228[0].n128_i32[2];
                v128 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                v129 = mlir::RankedTensorType::get(&v236, 1, v128, 0);
                if (v129)
                {
                  v130 = v129;
                  v131 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v129 + 8);
                  v129 = v130;
                }

                else
                {
                  v131 = 0;
                }

                v233 = mlir::DenseElementsAttr::getFromRawBuffer(v129, v131, v228[0].n128_i64[0], v228[0].n128_i64[1]);
                v236 = SLODWORD(v246[0]);
                v132 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
                v133 = mlir::RankedTensorType::get(&v236, 1, v132, 0);
                if (v133)
                {
                  v134 = v133;
                  v135 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v133 + 8);
                  v133 = v134;
                }

                else
                {
                  v135 = 0;
                }

                v224 = mlir::DenseElementsAttr::getFromRawBuffer(v133, v135, v245, 8 * LODWORD(v246[0]));
                mlir::ValueRange::ValueRange(&v236, *__p, *&__p[8]);
                v136 = (*(v13 - 1) & 0xFFFFFFFFFFFFFFF8);
                if (v136)
                {
                  v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v136 + 8);
                }

                else
                {
                  v137 = 0;
                }

                RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v136, v137);
                v235 = v138;
                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&RankPromotionTypeForANE);
                v141 = v140;
                isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
                v143 = mlir::MemRefType::get(ArgAttrsAttr, v141, isSplat, 0, 0, 0);
                v144 = v143;
                if (v143)
                {
                  v143 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v143 + 8);
                }

                RankPromotionTypeForANE = v144;
                v235 = v143;
                v145 = mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>((a4 + 8), v13[3], &RankPromotionTypeForANE, &v238, &v221, &v233, &v224, &v236);
                (*(*a4 + 8))(a4, v13, v145);
                matched = 1;
              }

              else
              {
                matched = 0;
              }

              if (v245 != (v246 + 8))
              {
                free(v245);
              }
            }

            else
            {
              v245 = operator new(0x30uLL);
              v246[0] = xmmword_1E0982960;
              strcpy(v245, "failed: can not retrive the offset info.");
              matched = mlir::logMatchFailure(&v245, v13[3], a4);
              if (SHIBYTE(v246[0]) < 0)
              {
                operator delete(v245);
              }
            }

            if (v228[0].n128_u64[0] != &v228[1].n128_i8[8])
            {
              free(v228[0].n128_u64[0]);
            }

            if (v232[0] != &v232[2])
            {
              free(v232[0]);
            }

            if (*__p != &__p[16])
            {
              free(*__p);
            }
          }
        }

        else
        {
          matched = 0;
        }

        v146 = v239;
        if (v239 == v241)
        {
          return matched;
        }
      }

      free(v146);
      return matched;
    }
  }

  else
  {
    if (*&__p[8] == 14)
    {
      if (**__p == 0x7A697474656C6150 && *(*__p + 6) == 0x766E6F4364657A69)
      {
        v24 = v220;
        v25 = *(a3 + 40);
        v26 = *(a3 + 48);
        v27 = *(((v220 + 16 * ((*(v220 + 11) >> 23) & 1) + ((*(v220 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v220 + 10) + 8);
        if (v27)
        {
          v28 = v27 - 8;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28 + 32;
        v30 = *(v28 + 40);
        if (v30 != v28 + 32)
        {
          while (1)
          {
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            if (*(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
            {
              break;
            }

            matched = 0;
            v30 = *(v30 + 8);
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

        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        if (*(*(v53 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v228[0].n128_u64[0] = v25;
        v228[0].n128_u64[1] = v26;
        v55 = mlir::ValueRange::dereference_iterator(v228, 0);
        v56 = *(*(v54 + 72) + 56);
        v232[0] = v55;
        v232[1] = v56;
        mlir::ValueRange::ValueRange(__p, v232, 2uLL);
        matched = 0;
        if (v58)
        {
          mlir::ConversionPatternRewriter::replaceOp(a4, v24, v57);
          for (j = *(v28 + 40); j != v29; j = *(j + 8))
          {
            MPSGraphDelegateCompiler.precompilationDescriptor.modify();
            mlir::ConversionPatternRewriter::eraseOp(a4, v60);
          }

          return 1;
        }

        return matched;
      }

      goto LABEL_40;
    }

    if (*&__p[8] == 16)
    {
      if (memcmp(*__p, "PalettizedLinear", 0x10uLL))
      {
        if (!memcmp(v7, "ANECTensorBuffer", 0x10uLL))
        {
          v8 = v220;
          v217 = *(a3 + 40);
          v9 = (*(v220 - 1) & 0xFFFFFFFFFFFFFFF8);
          if (v9)
          {
            v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
          }

          else
          {
            v10 = 0;
          }

          *__p = v9;
          *&__p[8] = v10;
          v79 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
          if (v80 <= 2)
          {
            *__p = "Error: do not support tensor buffer op with rank <= 2";
            LOWORD(v226) = 259;
            v232[0] = __p;
            v81 = *(a4 + 16);
            if (!v81)
            {
              return 0;
            }

            goto LABEL_120;
          }

          v82 = v80;
          Instance = mlir::ANEPropertiesRegistry::getInstance(v79);
          Properties = mlir::ANEPropertiesRegistry::getProperties(Instance, *(a4 + 8));
          if (Properties)
          {
            v85 = *Properties;
          }

          else
          {
            v85 = 0;
          }

          if (v82 == 3 && (v85 & 1) == 0)
          {
            v95 = "Error: unsupported NCW layout for rank3 tensor buffer. Please use CHW instead.";
            goto LABEL_119;
          }

          v236 = 0;
          RankPromotionTypeForANE = 0;
          v96 = *(((v8 + 16 * ((*(v8 + 11) >> 23) & 1) + ((*(v8 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 10) + 8);
          if (v96)
          {
            v97 = v96 - 8;
          }

          else
          {
            v97 = 0;
          }

          *__p = &v236;
          *&__p[8] = &RankPromotionTypeForANE;
          v98 = *(v97 + 40);
          v99 = v97 + 32;
          if (v98 != v97 + 32)
          {
            do
            {
              v100 = *(v98 + 8);
              MPSGraphDelegateCompiler.precompilationDescriptor.modify();
              v98 = v100;
            }

            while (v100 != v99);
          }

          v238 = 0;
          v242 = 0;
          *__p = v217;
          v221 = mlir::ValueRange::dereference_iterator(__p, 0);
          if (mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&v236))
          {
            v102 = *(v8 + 9);
            if (v102)
            {
              v103 = v8 - 16;
            }

            else
            {
              v103 = 0;
            }

            *__p = v103;
            *&__p[8] = v102;
            mlir::ResultRange::use_begin(__p, v232);
            v104 = *(v8 + 9);
            if (v104)
            {
              v105 = v8 - 16;
            }

            else
            {
              v105 = 0;
            }

            v228[0].n128_u64[0] = v105;
            v228[0].n128_u64[1] = v104;
            mlir::ResultRange::use_end(v228, (&v226 + 8));
            *&v226 = v232[4];
            *__p = *v232;
            *&__p[16] = *&v232[2];
            if (*(*(*(v232[4] + 2) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
            {
              v117 = v236;
              if (*(v236 + 9))
              {
                v118 = v236 - 16;
              }

              else
              {
                v118 = 0;
              }

              v119 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v118, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
              v245 = v117;
              v239 = v119;
              *__p = &__p[16];
              *&__p[8] = 0x600000000;
              InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v245);
              mlir::getValues<unsigned long>(InterleaveAttr, __p);
              mlir::ArrayAttr::getValue(&v239);
              v121 = 1;
              IndexFromDim = mlir::anec::getIndexFromDim(1, v122);
              v124 = *__p;
              if (v125)
              {
                v126 = *(*__p + 8 * IndexFromDim);
                if (*&__p[8])
                {
                  v127 = 0;
                  while (IndexFromDim == v127 || *(*__p + 8 * v127) == 1)
                  {
                    if (*&__p[8] == ++v127)
                    {
                      goto LABEL_207;
                    }
                  }

                  v121 = 1;
                }

                else
                {
LABEL_207:
                  v232[0] = &v232[2];
                  v232[1] = 0x600000000;
                  if ((mlir::calculateANEStridesFromAffineMap(v239, v232) & 1) != 0 && (v157 = LODWORD(v232[1]), mlir::ArrayAttr::getValue(&v239), v158 == v157))
                  {
                    v159 = LODWORD(v232[1]) - 1;
                    v160 = (v232[0] + 8);
                    do
                    {
                      if (!v159)
                      {
                        v228[0].n128_u64[0] = 1;
                        v182 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                        v183 = mlir::RankedTensorType::get(v228, 1, v182, 0);
                        v184 = v183;
                        if (v183)
                        {
                          v185 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v183 + 8);
                        }

                        else
                        {
                          v185 = 0;
                        }

                        LOBYTE(v233) = v126;
                        v238 = mlir::DenseElementsAttr::getFromRawBuffer(v184, v185, &v233, 1);
                        v228[0].n128_u64[0] = SLODWORD(v232[1]);
                        v196 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
                        v197 = mlir::RankedTensorType::get(v228, 1, v196, 0);
                        v198 = v197;
                        if (v197)
                        {
                          v199 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v197 + 8);
                        }

                        else
                        {
                          v199 = 0;
                        }

                        v200 = mlir::DenseElementsAttr::getFromRawBuffer(v198, v199, v232[0], 8 * LODWORD(v232[1]));
                        v121 = 0;
                        v242 = v200;
                        goto LABEL_216;
                      }

                      v161 = *(v160 - 1);
                      v162 = *v160++;
                      --v159;
                    }

                    while (v161 >= v162);
                    v228[0].n128_u64[0] = operator new(0x40uLL);
                    *(v228 + 8) = xmmword_1E09827B0;
                    strcpy(v228[0].n128_u64[0], "failed: tensor buffer with custom layout is not supported.");
                    v163 = mlir::logMatchFailure(v228, *(v245 + 24), a4);
                    if (v228[1].n128_i8[7] < 0)
                    {
                      operator delete(v228[0].n128_u64[0]);
                    }

                    v121 = v163 ^ 1;
                  }

                  else
                  {
                    v121 = 1;
                  }

LABEL_216:
                  if (v232[0] != &v232[2])
                  {
                    free(v232[0]);
                  }

                  v124 = *__p;
                }
              }

              if (v124 != &__p[16])
              {
                free(v124);
              }

              if ((v121 & 1) == 0)
              {
                if (*(v236 + 9))
                {
                  v164 = v236 - 16;
                }

                else
                {
                  v164 = 0;
                }

                v165 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v164, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v165)
                {
                  v166 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v165 + 8);
                }

                else
                {
                  v166 = 0;
                }

                *__p = mlir::getRankPromotionTypeForANE(v165, v166);
                *&__p[8] = v167;
                v168 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
                v170 = v169;
                v171 = mlir::ElementsAttr::isSplat(__p);
                v232[0] = mlir::MemRefType::get(v168, v170, v171, 0, 0, 0);
                v172 = mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a4 + 8), *(v8 + 3), v232, &v221, &v242, &v238);
                (*(*a4 + 8))(a4, v8, v172);
                return 1;
              }

              *__p = operator new(0x38uLL);
              *&__p[8] = xmmword_1E0982900;
              strcpy(*__p, "Failed to extract the stride and interleave info");
              v33 = *(v8 + 3);
            }

            else
            {
              *__p = operator new(0x40uLL);
              *&__p[8] = xmmword_1E09829B0;
              strcpy(*__p, "The output of tensor_to_tensor_buffer must be a region return");
              v33 = *(v8 + 3);
            }
          }

          else if (mlir::mpsx::BufferToTensorOp::getIsTensorBufferOp(&RankPromotionTypeForANE))
          {
            if ((mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(*(*(v8 + 9) + 24)) & 1) == 0)
            {
              v95 = "The input of tensor_buffer_to_tensor must be a block argument";
LABEL_119:
              *__p = v95;
              LOWORD(v226) = 259;
              v232[0] = __p;
              v81 = *(a4 + 16);
              if (!v81)
              {
                return 0;
              }

LABEL_120:
              if (mlir::RewriterBase::Listener::classof(v81))
              {
                (*(*v81 + 88))(v81, *(v8 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mpsx::FusionOp &>(mlir::mpsx::FusionOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v232);
              }

              return 0;
            }

            v173 = (*(*(*(RankPromotionTypeForANE + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            v245 = RankPromotionTypeForANE;
            v239 = v173;
            *__p = &__p[16];
            *&__p[8] = 0x600000000;
            v174 = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v245);
            mlir::getValues<unsigned long>(v174, __p);
            mlir::ArrayAttr::getValue(&v239);
            v175 = 1;
            v177 = mlir::anec::getIndexFromDim(1, v176);
            v178 = *__p;
            if (v179)
            {
              v180 = *(*__p + 8 * v177);
              if (*&__p[8])
              {
                v181 = 0;
                while (v177 == v181 || *(*__p + 8 * v181) == 1)
                {
                  if (*&__p[8] == ++v181)
                  {
                    goto LABEL_241;
                  }
                }

                v175 = 1;
              }

              else
              {
LABEL_241:
                v232[0] = &v232[2];
                v232[1] = 0x600000000;
                if ((mlir::calculateANEStridesFromAffineMap(v239, v232) & 1) != 0 && (v186 = LODWORD(v232[1]), mlir::ArrayAttr::getValue(&v239), v187 == v186))
                {
                  v188 = LODWORD(v232[1]) - 1;
                  v189 = (v232[0] + 8);
                  do
                  {
                    if (!v188)
                    {
                      v228[0].n128_u64[0] = 1;
                      v206 = mlir::Builder::getIntegerType((a4 + 8), 8, 0);
                      v207 = mlir::RankedTensorType::get(v228, 1, v206, 0);
                      v208 = v207;
                      if (v207)
                      {
                        v209 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v207 + 8);
                      }

                      else
                      {
                        v209 = 0;
                      }

                      LOBYTE(v233) = v180;
                      v238 = mlir::DenseElementsAttr::getFromRawBuffer(v208, v209, &v233, 1);
                      v228[0].n128_u64[0] = SLODWORD(v232[1]);
                      v210 = mlir::Builder::getIntegerType((a4 + 8), 64, 1);
                      v211 = mlir::RankedTensorType::get(v228, 1, v210, 0);
                      v212 = v211;
                      if (v211)
                      {
                        v213 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v211 + 8);
                      }

                      else
                      {
                        v213 = 0;
                      }

                      v175 = 0;
                      v242 = mlir::DenseElementsAttr::getFromRawBuffer(v212, v213, v232[0], 8 * LODWORD(v232[1]));
                      goto LABEL_250;
                    }

                    v190 = *(v189 - 1);
                    v191 = *v189++;
                    --v188;
                  }

                  while (v190 >= v191);
                  v228[0].n128_u64[0] = operator new(0x40uLL);
                  *(v228 + 8) = xmmword_1E09827B0;
                  strcpy(v228[0].n128_u64[0], "failed: tensor buffer with custom layout is not supported.");
                  v192 = mlir::logMatchFailure(v228, *(v245 + 24), a4);
                  if (v228[1].n128_i8[7] < 0)
                  {
                    operator delete(v228[0].n128_u64[0]);
                  }

                  v175 = v192 ^ 1;
                }

                else
                {
                  v175 = 1;
                }

LABEL_250:
                if (v232[0] != &v232[2])
                {
                  free(v232[0]);
                }

                v178 = *__p;
              }
            }

            if (v178 != &__p[16])
            {
              free(v178);
            }

            if ((v175 & 1) == 0)
            {
              if (*(RankPromotionTypeForANE + 9))
              {
                v193 = RankPromotionTypeForANE - 16;
              }

              else
              {
                v193 = 0;
              }

              v194 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v193, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (v194)
              {
                v195 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v194 + 8);
              }

              else
              {
                v195 = 0;
              }

              *__p = mlir::getRankPromotionTypeForANE(v194, v195);
              *&__p[8] = v201;
              v202 = mlir::CallableOpInterface::getArgAttrsAttr(__p);
              v204 = v203;
              v205 = mlir::ElementsAttr::isSplat(__p);
              v232[0] = mlir::MemRefType::get(v202, v204, v205, 0, 0, 0);
              mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(a4, v8, v232, &v221, &v242, &v238);
              return 1;
            }

            std::string::basic_string[abi:nn200100]<0>(__p, "Error: failed to extract the stride and interleave info");
            v33 = *(v8 + 3);
          }

          else
          {
            *__p = operator new(0x28uLL);
            *&__p[8] = xmmword_1E09826C0;
            strcpy(*__p, "Error: invalid tensor buffer pattern");
            v33 = *(v8 + 3);
          }

          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v35 = v220;
      v36 = *(a3 + 40);
      v37 = *(a3 + 48);
      v239 = 0;
      v232[0] = &v239;
      v38 = v239;
      if (!v239)
      {
        v232[0] = operator new(0x48uLL);
        *&v232[1] = xmmword_1E0982890;
        strcpy(v232[0], "failed: no dequantize lut op is found in palettized linear op pattern.");
        matched = mlir::logMatchFailure(v232, *(v35 + 3), a4);
        if ((SHIBYTE(v232[2]) & 0x80000000) == 0)
        {
          return matched;
        }

        v34 = v232[0];
        goto LABEL_43;
      }

      v39 = *(v239 + 9);
      if (v39)
      {
        v40 = v239 - 16;
      }

      else
      {
        v40 = 0;
      }

      v232[0] = v40;
      v232[1] = v39;
      mlir::ResultRange::use_begin(v232, v228);
      v41 = v38[9];
      if (v41)
      {
        v42 = (v38 - 4);
      }

      else
      {
        v42 = 0;
      }

      v245 = v42;
      *&v246[0] = v41;
      mlir::ResultRange::use_end(&v245, &v232[5]);
      v232[4] = v229;
      *v232 = v228[0];
      *&v232[2] = v228[1];
      v236 = *(v229 + 16);
      v43 = v236;
      v231 = 0u;
      memset(v232, 0, 80);
      v229 = 0u;
      v230 = 0u;
      memset(v228, 0, sizeof(v228));
      if (v45)
      {
        TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v236);
        if (!v44)
        {
          goto LABEL_53;
        }
      }

      else
      {
        TransposeRhs = 0;
        if (!v44)
        {
LABEL_53:
          v245 = v36;
          *&v246[0] = v37;
          v215 = mlir::ValueRange::dereference_iterator(&v245, 0);
          v218 = v44;
          if (!v45)
          {
LABEL_54:
            v245 = v36;
            *&v246[0] = v37;
            v214 = mlir::ValueRange::dereference_iterator(&v245, 1);
            goto LABEL_89;
          }

LABEL_88:
          v214 = v239 - 16;
LABEL_89:
          v76 = *(v236 + 9);
          v77 = (*(*(v76 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v77)
          {
            v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
            v76 = *(v236 + 9);
          }

          else
          {
            v78 = 0;
          }

          v86 = (*(*(v76 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v86)
          {
            v87 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
          }

          else
          {
            v87 = 0;
          }

          v88 = (*(v35 - 1) & 0xFFFFFFFFFFFFFFF8);
          if (v88)
          {
            v89 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
          }

          else
          {
            v89 = 0;
          }

          v90 = v236;
          mlir::TypeConverter::TypeConverter(__p, *(a1 + 96));
          mlir::TypeConverter::~TypeConverter(__p);
        }
      }

      v215 = v239 - 16;
      v218 = v44;
      if (!v45)
      {
        goto LABEL_54;
      }

      goto LABEL_88;
    }
  }

LABEL_40:
  std::string::basic_string[abi:nn200100]<0>(__p, "Error: unknown fused op type");
  v33 = *(v220 + 3);
LABEL_41:
  matched = mlir::logMatchFailure(__p, v33, a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v34 = *__p;
LABEL_43:
    operator delete(v34);
  }

  return matched;
}