uint64_t mlir::materializeMPSToANECHostTypeConversion(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t *a6)
{
  v89[1] = a5;
  v90 = a3;
  v89[0] = a4;
  v7 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (a4 == v7)
  {
    v88[0] = a3;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, v88) = a3;
    return 1;
  }

  if (v7)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v10 = 0;
  }

  v88[0] = v7;
  v88[1] = v10;
  Shape = mlir::ShapedType::getShape(v89);
  v13 = v12;
  isSplat = mlir::ElementsAttr::isSplat(v89);
  v15 = mlir::RankedTensorType::get(Shape, v13, isSplat, 0);
  v87 = 0;
  v16 = v89[0];
  if (*(*v89[0] + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v16 = 0;
  }

  v91 = v16;
  if (v16)
  {
    Value = mlir::ArrayAttr::getValue(&v91);
    v19 = v18;
    v20 = mlir::ElementsAttr::isSplat(v89);
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v91);
    v86 = v21;
    FunctionType = mlir::FunctionOpInterface::getFunctionType(&RawStringData);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v91);
    v87 = mlir::MemRefType::get(Value, v19, v20, FunctionType, MemorySpace);
  }

  v24 = mlir::ElementsAttr::isSplat(v88);
  v25 = mlir::ElementsAttr::isSplat(v89);
  v26 = *(*v89[0] + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v34 = *(*v88[0] + 136);
    if (v34 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v48 = v90;
      v49 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v48;
      v91 = v49;
      if (v24 != v25)
      {
        v48 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
      }

      v84 = v48;
      v50 = mlir::ShapedType::getShape(v88);
      v52 = v51;
      v53 = mlir::ShapedType::getShape(v89);
      if (v52 != v54 || memcmp(v50, v53, 8 * v52))
      {
        v55 = mlir::ElementsAttr::isSplat(v89);
        RawStringData = v48;
        v91 = v55;
        if (v24 != v25)
        {
          v48 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
        }

        v91 = v48;
        RawStringData = mlir::ShapedType::getShape(v89);
        v86 = v56;
        v84 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
      }

      v33 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(a1, a2, &v84) - 16;
      RawStringData = v90;
      goto LABEL_50;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      DefiningOp = mlir::Value::getDefiningOp(&v90);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
      {
        v69 = *(*(DefiningOp + 72) + 24);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v89[0]);
        RawStringData = v69;
        v91 = ElementTypeOrSelf;
        if (v24 != v25)
        {
          v69 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
        }

        RawStringData = v69;
        v71 = mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::MemRefType &,mlir::Value>(a1, a2, &v87, &RawStringData) - 16;
        RawStringData = v90;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v71;
      }

      else
      {
        v36 = *v90;
        if (*v90)
        {
          if (!*v36)
          {
            v37 = v36[2];
            if (v37)
            {
              if (*(*(v37 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
              {
                v38 = mlir::ShapedType::getShape(v88);
                v40 = v39;
                v41 = mlir::ElementsAttr::isSplat(v89);
                v42 = mlir::RankedTensorType::get(v38, v40, v41, 0);
                v43 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(a1, a2, &v90) - 16;
                if (v42 != v15)
                {
                  v44 = mlir::ElementsAttr::isSplat(v89);
                  RawStringData = v43;
                  v91 = v44;
                  if (v24 != v25)
                  {
                    v43 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
                  }

                  v91 = v43;
                  RawStringData = mlir::ShapedType::getShape(v89);
                  v86 = v45;
                  v43 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
                }

                v46 = v90;
                v47 = mlir::ElementsAttr::isSplat(v89);
                RawStringData = v43;
                v91 = v47;
                if (v24 != v25)
                {
                  v43 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
                }

                RawStringData = v46;
                *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v43;
              }
            }
          }
        }
      }

      v72 = v90;
      v73 = *(a6 + 4);
      v74 = v90;
      if (v73)
      {
        v75 = *a6;
        v76 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
        v77 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v76 >> 47) ^ v76);
        v78 = (-348639895 * ((v77 >> 47) ^ v77)) & (v73 - 1);
        v79 = *(*a6 + 16 * v78);
        if (v79 == v90)
        {
LABEL_56:
          v74 = v90;
          if (v78 != v73)
          {
            v74 = *(v75 + 16 * v78 + 8);
          }
        }

        else
        {
          v82 = 1;
          while (v79 != -4096)
          {
            v83 = v78 + v82++;
            v78 = v83 & (v73 - 1);
            v79 = *(v75 + 16 * v78);
            if (v79 == v90)
            {
              goto LABEL_56;
            }
          }

          v74 = v90;
        }
      }

      v80 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v74;
      v91 = v80;
      if (v24 != v25)
      {
        v74 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
      }

      RawStringData = v72;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v74;
    }
  }

  else
  {
    if (v26 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      return 1;
    }

    if (*(*(*(v90 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      if (*(*v88[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        return 1;
      }

      v27 = mlir::ShapedType::getShape(v88);
      v29 = v28;
      v30 = mlir::ElementsAttr::isSplat(v89);
      v31 = mlir::RankedTensorType::get(v27, v29, v30, 0);
      v32 = v90;
      if (v31 == v15)
      {
        v33 = v90;
      }

      else
      {
        v67 = mlir::ElementsAttr::isSplat(v89);
        RawStringData = v32;
        v91 = v67;
        if (v24 != v25)
        {
          v32 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
        }

        v91 = v32;
        RawStringData = mlir::ShapedType::getShape(v89);
        v86 = v68;
        v33 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
        v32 = v90;
      }

      RawStringData = v32;
LABEL_50:
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v33;
      return 1;
    }

    v57 = mlir::ShapedType::getShape(v88);
    v59 = v58;
    v60 = mlir::ElementsAttr::isSplat(v89);
    v61 = mlir::RankedTensorType::get(v57, v59, v60, 0);
    v62 = mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(a1, a2, &v90) - 16;
    if (v61 != v15)
    {
      v63 = mlir::ElementsAttr::isSplat(v89);
      RawStringData = v62;
      v91 = v63;
      if (v24 != v25)
      {
        v62 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
      }

      v91 = v62;
      RawStringData = mlir::ShapedType::getShape(v89);
      v86 = v64;
      v62 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(a1, a2, &v91, &RawStringData) - 16;
    }

    v65 = v90;
    v66 = mlir::ElementsAttr::isSplat(v89);
    RawStringData = v62;
    v91 = v66;
    if (v24 != v25)
    {
      v62 = mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(a1, a2, &RawStringData, &v91) - 16;
    }

    RawStringData = v65;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a6, &RawStringData) = v62;
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::ArrayRef<long long>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::placement::TensorToMemref::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, void *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::MemrefToTensor,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::placement::MemrefToTensor::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::MemRefType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::TensorToMemref,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, a3, 1uLL);
  mlir::arith::ExtSIOp::build(a1, v16, v17[0], v17[1], a4, 1uLL, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Value &,mlir::Type &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
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

void *llvm::SmallVector<mlir::mps::DialectInfo,2u>::SmallVector(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  v5 = 3 * a3;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  if (v6 >= 3)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3), 24);
    a2 = v7;
    v8 = *(a1 + 2);
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a3)
  {
LABEL_5:
    memcpy((*a1 + 24 * v8), a2, 8 * v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + v6;
  return a1;
}

uint64_t llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::logMatchFailure(std::string const&,mlir::Location,mlir::PatternRewriter *)::$_0>(const char **a1, uint64_t a2)
{
  v2 = *a1;
  v5 = 260;
  v4[0] = v2;
  return mlir::Diagnostic::operator<<(a2, v4);
}

uint64_t std::pair<llvm::APFloat,std::string>::pair[abi:nn200100]<llvm::APFloat,char const(&)[7],0>(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), v5);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, v5);
  }

  v7 = strlen(a3);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v9 = (a1 + 32);
  *(a1 + 55) = v7;
  if (v7)
  {
    memmove(v9, a3, v7);
  }

  *(v9 + v8) = 0;
  return a1;
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void mlir::anonymous namespace::ConvertBiasAdd::~ConvertBiasAdd(mlir::_anonymous_namespace_::ConvertBiasAdd *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::BiasAddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertBiasAdd::matchAndRewriteWithStaticShapes(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v34 = *(a3 + 48);
  v5 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v6 = mlir::ValueRange::dereference_iterator(&v34, 1);
  v7 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v32[0] = mlir::getRankPromotionTypeForANE(v7, v8);
  v32[1] = v9;
  mlir::ShapedType::getShape(v32);
  v11 = v10;
  mlir::ShapedType::getShape(v32);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v15 = IndexFromDim;
  PaddingMode = mlir::mps::PadOp::getPaddingMode(&v33);
  if (!PaddingMode)
  {
    v17 = -3;
    goto LABEL_9;
  }

  if (PaddingMode == 1)
  {
    v17 = -1;
LABEL_9:
    if (v11 + v17 == v15)
    {
      __p[0] = v6;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (DefiningOp)
      {
        {
          v28 = DefiningOp;
          mlir::collect_regions::detail::verifyShouldAddToQueue();
          DefiningOp = v28;
        }

        if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
        }
      }
    }

    operator new();
  }

  v19 = mlir::mps::PadOp::getPaddingMode(&v33);
  v20 = mlir::mps::stringifyTensorDataLayout(v19);
  if (v20)
  {
    v22 = v21;
    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v21;
    if (v21)
    {
      memmove(&__dst, v20, v21);
    }

    __dst.__r_.__value_.__s.__data_[v22] = 0;
  }

  else
  {
    memset(&__dst, 0, sizeof(__dst));
  }

  v23 = std::string::insert(&__dst, 0, "BiasAdd unsupported data format ");
  v24 = v23->__r_.__value_.__r.__words[2];
  *__p = *&v23->__r_.__value_.__l.__data_;
  v31 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  result = mlir::logMatchFailure(__p, *(v33 + 24), a4);
  if (SHIBYTE(v31) < 0)
  {
    v26 = result;
    operator delete(__p[0]);
    result = v26;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return result;
  }

  v27 = result;
  operator delete(__dst.__r_.__value_.__l.__data_);
  return v27;
}

void mlir::anonymous namespace::anonymous namespace::makeGOC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (GOC)
  {
    if (*(GOC + 36))
    {
      v10 = GOC - 16;
    }

    else
    {
      v10 = 0;
    }

    __p = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
    mlir::ConversionPatternRewriter::replaceOp(a1, a2, &__p, 1);
  }

  operator new();
}

uint64_t mlir::anonymous namespace::anonymous namespace::makeGOC(uint64_t a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, void *a5, uint64_t isSplat, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v45 = *MEMORY[0x1E69E9840];
  v35 = a4;
  v36 = a3;
  v34 = a5;
  v15 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v33[0] = mlir::getRankPromotionTypeForANE(v15, v16);
  v33[1] = v17;
  mlir::ShapedType::getShape(v33);
  mlir::anec::getIndexFromDim(1, v18);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  mlir::ShapedType::getShape(v33);
  v42 = v44;
  v43 = 0xC00000000;
  v32 = 0;
  if (a4)
  {
    {
      goto LABEL_22;
    }

    v20 = v32;
  }

  else
  {
    v20 = 0;
    v44[0] = 1065353216;
    LODWORD(v43) = 1;
  }

  mlir::ShapedType::getShape(v33);
  if (v23)
  {
    v35 = (GOCConstant - 16);
    v39 = v41;
    v40 = 0xC00000000;
    v31 = 0;
    if (a5)
    {
      {
LABEL_20:
        if (v39 != v41)
        {
          free(v39);
        }

        goto LABEL_22;
      }

      v24 = v31;
    }

    else
    {
      v24 = 0;
      v41[0] = 0;
      LODWORD(v40) = 1;
    }

    mlir::ShapedType::getShape(v33);
    if (v27)
    {
      v34 = (v26 - 16);
      if (!isSplat)
      {
        isSplat = mlir::ElementsAttr::isSplat(v33);
      }

      LOBYTE(v37) = 0;
      v38 = 0;
      v28 = mlir::ShapedType::cloneWith(v33, &v37, isSplat);
    }

    goto LABEL_20;
  }

LABEL_22:
  if (v42 != v44)
  {
    free(v42);
  }

  return 0;
}

uint64_t mlir::anonymous namespace::anonymous namespace::getGOCConstantValue(void *a1, uint64_t *a2, int a3, int a4, uint64_t *a5)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = a1;
  v37 = 0;
  __p = &v37;
  ShapedType = a1;
  result = mlir::Value::getDefiningOp(&ShapedType);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__p, result);
    if (result)
    {
      ShapedType = mlir::ElementsAttr::getShapedType(&v37);
      v41 = v11;
      __p = mlir::ElementsAttr::isSplat(&ShapedType);
      if (mlir::Type::isF32(&__p) || a3)
      {
        ShapedType = (a1[1] & 0xFFFFFFFFFFFFFFF8);
        Context = mlir::Attribute::getContext(&ShapedType);
        v14 = mlir::Float32Type::get(Context, v16);
      }

      else
      {
        ShapedType = (a1[1] & 0xFFFFFFFFFFFFFFF8);
        v12 = mlir::Attribute::getContext(&ShapedType);
        v14 = mlir::Float16Type::get(v12, v13);
      }

      *a5 = v14;
      ShapedType = v42;
      v41 = 0x400000000;
      __p = mlir::ElementsAttr::getShapedType(&v37);
      *&v36 = v17;
      if (*(*mlir::ElementsAttr::isSplat(&__p) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        __p = mlir::ElementsAttr::getShapedType(&v37);
        *&v36 = v18;
        v19 = *(*mlir::ElementsAttr::isSplat(&__p) + 136);
        if (v19 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v19 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          operator new();
        }
      }

      mlir::getIntValues<float>(v37, v38, &ShapedType, 1);
      v20 = v41;
      v21 = *(a2 + 2);
      if (v21 != v41)
      {
        if (v21 <= v41)
        {
          if (*(a2 + 3) < v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v41, 4);
            v21 = *(a2 + 2);
          }

          if (v21 != v20)
          {
            bzero((*a2 + 4 * v21), 4 * (v20 - v21));
          }
        }

        *(a2 + 2) = v20;
        v20 = v41;
      }

      v22 = ShapedType;
      if (v20)
      {
        v23 = 0;
        v24 = *a2;
        if (v20 < 4 || (v24 - ShapedType) < 0x10)
        {
          goto LABEL_55;
        }

        v25 = 0;
        v23 = v20 & 0xFFFFFFFC;
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          if (a3)
          {
            v31 = -1;
          }

          else
          {
            v31 = 0;
          }

          v32 = vbslq_s8(vdupq_n_s32(v31), vdivq_f32(_Q0, *&v22[v25 / 4]), *&v22[v25 / 4]);
          if (a4)
          {
            v33 = -1;
          }

          else
          {
            v33 = 0;
          }

          *(v24 + v25) = vbslq_s8(vdupq_n_s32(v33), vnegq_f32(v32), v32);
          v25 += 16;
        }

        while (((4 * v20) & 0x3FFFFFFF0) != v25);
        if (v20 != v23)
        {
LABEL_55:
          do
          {
            v34 = v22[v23];
            if (a3)
            {
              v34 = 1.0 / v34;
            }

            if (a4)
            {
              v34 = -v34;
            }

            *(v24 + 4 * v23++) = v34;
          }

          while (v20 != v23);
        }
      }

      if (v22 != v42)
      {
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

unint64_t mlir::anonymous namespace::anonymous namespace::makeGOCConstant(uint64_t a1, mlir::MLIRContext *a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v71[5] = *MEMORY[0x1E69E9840];
  F16Type = a8;
  if (!a8)
  {
    F16Type = mlir::Builder::getF16Type((a1 + 8), a2);
  }

  if (!mlir::Type::isF16(&F16Type) && !mlir::Type::isF32(&F16Type))
  {
    operator new();
  }

  if ((a7 & 1) == 0)
  {
    IndexFromDim = mlir::anec::getIndexFromDim(1, a3);
    if ((v16 & 1) == 0)
    {
      operator new();
    }

    a6 = IndexFromDim;
  }

  __b = v71;
  v70 = 5;
  if (a3 < 6)
  {
    if (a3)
    {
      memset_pattern16(v71, &unk_1A75989B0, 8 * a3);
    }

    v17 = v71;
  }

  else
  {
    v69 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v71, a3, 8);
    v17 = __b;
    memset_pattern16(__b, &unk_1A75989B0, 8 * a3);
  }

  v69 = a3;
  *(v17 + a6) = a5;
  v18 = mlir::RankedTensorType::get(v17, a3, F16Type, 0);
  v19 = __b;
  v20 = v69;
  v22 = mlir::Builder::getF16Type((a1 + 8), v21);
  v66 = mlir::MemRefType::get(v19, v20, v22, 0, 0, 0);
  if (v18)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v23 = 0;
  }

  mlir::mps::CPUNDArray::CPUNDArray(&__p, v18, v23, 0);
  isF32 = mlir::Type::isF32(&F16Type);
  v25 = v65;
  if (!isF32)
  {
    if (a5 < 1)
    {
      goto LABEL_42;
    }

    if (a5 < 4)
    {
      v36 = 0;
      goto LABEL_40;
    }

    if (a5 >= 0x10)
    {
      v36 = a5 & 0x7FFFFFFFFFFFFFF0;
      v37 = (a4 + 32);
      v38 = v65 + 1;
      v39 = a5 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v41 = v37[-2];
        v40 = v37[-1];
        v43 = *v37;
        v42 = v37[1];
        v37 += 4;
        v38[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(v41), v40);
        *v38 = vcvt_hight_f16_f32(vcvt_f16_f32(v43), v42);
        v38 += 2;
        v39 -= 16;
      }

      while (v39);
      if (a5 == v36)
      {
        goto LABEL_42;
      }

      if ((a5 & 0xC) == 0)
      {
LABEL_40:
        v49 = a5 - v36;
        v50 = &v25->i16[v36];
        v51 = (a4 + 4 * v36);
        do
        {
          v52 = *v51++;
          _S0 = v52;
          __asm { FCVT            H0, S0 }

          *v50++ = _S0;
          --v49;
        }

        while (v49);
        goto LABEL_42;
      }
    }

    else
    {
      v36 = 0;
    }

    v44 = v36;
    v36 = a5 & 0x7FFFFFFFFFFFFFFCLL;
    v45 = (a4 + 4 * v44);
    v46 = (v25 + 2 * v44);
    v47 = v44 - (a5 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v48 = *v45++;
      *v46++ = vcvt_f16_f32(v48);
      v47 += 4;
    }

    while (v47);
    if (a5 == v36)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a5 >= 1)
  {
    v26 = 0;
    if (a5 < 8)
    {
      goto LABEL_24;
    }

    if (v65 - a4 < 0x20)
    {
      goto LABEL_24;
    }

    v26 = a5 & 0x7FFFFFFFFFFFFFF8;
    v27 = (a4 + 16);
    v28 = v65 + 1;
    v29 = a5 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v30 = *v27;
      v28[-1] = v27[-1];
      *v28 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 8;
    }

    while (v29);
    if (a5 != v26)
    {
LABEL_24:
      v31 = a5 - v26;
      v32 = v26;
      v33 = &v25->i32[v32];
      v34 = (a4 + v32 * 4);
      do
      {
        v35 = *v34++;
        *v33++ = v35;
        --v31;
      }

      while (v31);
    }
  }

LABEL_42:
  v63[0] = mlir::mps::CPUNDArray::getElementsAttr(&__p, 0, 1);
  v63[1] = v58;
  v59 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), a2, &v66, v63);
  v60 = v59;
  v61 = v59 & 0xFFFFFFFFFFFFFF00;
  mlir::mps::CPUNDArray::~CPUNDArray(&__p);
  if (__b != v71)
  {
    free(__b);
  }

  return v61 | v60;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::GOC::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
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

void mlir::anonymous namespace::anonymous namespace::canonicalizeType(void *a1, uint64_t a2)
{
  v23[67] = *MEMORY[0x1E69E9840];
  v18 = a1;
  v19 = a2;
  mlir::MPSToANECTypeConverter::MPSToANECTypeConverter(v23);
  Shape = mlir::ShapedType::getShape(&v18);
  if (mlir::ShapedType::getNumElements(Shape, v3) == 1 && (mlir::ShapedType::getShape(&v18), v4 <= 3))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v18);
    v6 = mlir::TypeConverter::convertType(v23, isSplat);
    if (!v6)
    {
      v6 = mlir::ElementsAttr::isSplat(&v18);
    }

    mlir::getRankPromotionShapeForANE(v18, v19, 0, &v20);
    mlir::MemRefType::get(v20, v21, v6, 0, 0, 0);
    if (v20 != &v22)
    {
      free(v20);
    }
  }

  else
  {
    v7 = mlir::TypeConverter::convertType(v23, v18);
    v17 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
      v7 = v8;
    }

    else
    {
      v9 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v7, v9);
    v11 = RankPromotionTypeForANE;
    if (RankPromotionTypeForANE)
    {
      RankPromotionTypeForANE = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*RankPromotionTypeForANE + 8);
    }

    v20 = v11;
    v21 = RankPromotionTypeForANE;
    v12 = mlir::ShapedType::getShape(&v20);
    v14 = v13;
    v15 = mlir::ElementsAttr::isSplat(&v20);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v17);
    mlir::MemRefType::get(v12, v14, v15, 0, MemorySpace);
  }

  mlir::TypeConverter::~TypeConverter(v23);
}

void mlir::getIntValues<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = a1;
  v9 = a2;
  if (!mlir::ElementsAttr::isSplat(&v8) || v4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v8, v9);
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
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), NumElements, 4);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 4 * v7), 4 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  mlir::copyElementsAttrData<float>(v8, v9, *a3, v4);
}

uint64_t mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(void **a1, uint64_t a2)
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
    v5 = (*v8[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    result = v5 != 0;
    if (v5)
    {
      v7 = *a1;
      if (*a1)
      {
        *v7 = v5;
        v7[1] = v6;
      }
    }

    if (v8[0] != v9)
    {
      free(v8[0]);
      return v5 != 0;
    }
  }

  return result;
}

void mlir::copyElementsAttrData<float>(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  v108[5] = *MEMORY[0x1E69E9840];
  v105 = a1;
  v106 = a2;
  Type = mlir::ElementsAttr::getType(&v105);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v104[0] = v7;
  v104[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v104);
  v8 = mlir::ElementsAttr::isSplat(&v105);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v105);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v105, v106);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements >= 2)
      {
        v22 = 0;
        v21 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v23 = a3 + 1;
        do
        {
          if (v8)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v8)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          LOWORD(v19) = *&ElementsAttrRawData[2 * v24];
          v19 = LODWORD(v19);
          LOWORD(v20) = *&ElementsAttrRawData[2 * v25];
          v20 = LODWORD(v20);
          *(v23 - 1) = v19;
          *v23 = v20;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_192;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_101;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_117;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_133;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_153;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_159;
    }

LABEL_161:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v74 = 1;
      }

      else
      {
        v74 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v107, v74);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v107[0], v107[1]);
      v76 = v107[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v78 = 0;
          }

          else
          {
            v78 = i;
          }

          v75.i8[0] = v76[v78];
          v75 = vmovl_s16(*&vmovl_s8(v75)).u64[0];
          *v75.i32 = v75.i32[0];
          a3[i] = *v75.i32;
        }
      }

      if (v76 != v108)
      {
        free(v76);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<float>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      LOBYTE(v12) = ElementsAttrRawData[v15];
      v12 = LODWORD(v12);
      a3[j] = v12;
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = k;
      }

      v16.i8[0] = ElementsAttrRawData[v18];
      v16 = vmovl_s16(*&vmovl_s8(v16)).u64[0];
      *v16.i32 = v16.i32[0];
      a3[k] = *v16.i32;
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v21 = 0;
    do
    {
      if (v8)
      {
        v91 = 0;
      }

      else
      {
        v91 = v21;
      }

      LOWORD(v19) = *&ElementsAttrRawData[2 * v91];
      v19 = LODWORD(v19);
      a3[v21++] = v19;
LABEL_192:
      ;
    }

    while (NumElements != v21);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v30 = 0;
      v28 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v31 = a3 + 1;
      do
      {
        if (v8)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v26.i16[0] = *&ElementsAttrRawData[2 * v32];
        if (v8)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30 + 1;
        }

        v26 = vmovl_s16(v26).u64[0];
        *v26.i32 = v26.i32[0];
        v27.i16[0] = *&ElementsAttrRawData[2 * v33];
        v27 = vmovl_s16(v27).u64[0];
        *v27.i32 = v27.i32[0];
        *(v31 - 1) = v26.i32[0];
        *v31 = v27.i32[0];
        v31 += 2;
        v30 += 2;
      }

      while (v30 != v28);
      goto LABEL_197;
    }

    v28 = 0;
    do
    {
      if (v8)
      {
        v92 = 0;
      }

      else
      {
        v92 = v28;
      }

      v26.i16[0] = *&ElementsAttrRawData[2 * v92];
      v26 = vmovl_s16(v26).u64[0];
      *v26.i32 = v26.i32[0];
      a3[v28++] = *v26.i32;
LABEL_197:
      ;
    }

    while (NumElements != v28);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v35 = 0;
      v29 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v36 = a3 + 1;
      do
      {
        if (v8)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (v8)
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

      while (v35 != v29);
      goto LABEL_202;
    }

    v29 = 0;
    do
    {
      if (v8)
      {
        v93 = 0;
      }

      else
      {
        v93 = v29;
      }

      a3[v29++] = *&ElementsAttrRawData[4 * v93];
LABEL_202:
      ;
    }

    while (NumElements != v29);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v41 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v42 = a3 + 1;
      do
      {
        if (v8)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        if (v8)
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
      goto LABEL_207;
    }

    v34 = 0;
    do
    {
      if (v8)
      {
        v94 = 0;
      }

      else
      {
        v94 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[4 * v94];
LABEL_207:
      ;
    }

    while (NumElements != v34);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    if (NumElements >= 2)
    {
      v47 = 0;
      v40 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v48 = a3 + 1;
      do
      {
        if (v8)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        if (v8)
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
      goto LABEL_212;
    }

    v40 = 0;
    do
    {
      if (v8)
      {
        v95 = 0;
      }

      else
      {
        v95 = v40;
      }

      a3[v40++] = *&ElementsAttrRawData[8 * v95];
LABEL_212:
      ;
    }

    while (NumElements != v40);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_101:
    if (NumElements >= 2)
    {
      v53 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v54 = a3 + 1;
      do
      {
        if (v8)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if (v8)
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
      goto LABEL_217;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v96 = 0;
      }

      else
      {
        v96 = v46;
      }

      a3[v46++] = *&ElementsAttrRawData[8 * v96];
LABEL_217:
      ;
    }

    while (NumElements != v46);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_117:
    if (NumElements >= 2)
    {
      v60 = 0;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v61 = a3 + 1;
      do
      {
        if (v8)
        {
          v62 = 0;
        }

        else
        {
          v62 = v60;
        }

        if (v8)
        {
          v63 = 0;
        }

        else
        {
          v63 = v60 + 1;
        }

        _H0 = *&ElementsAttrRawData[2 * v62];
        _H1 = *&ElementsAttrRawData[2 * v63];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        *(v61 - 1) = _S0;
        *v61 = _S1;
        v61 += 2;
        v60 += 2;
      }

      while (v60 != v52);
      goto LABEL_222;
    }

    v52 = 0;
    do
    {
      if (v8)
      {
        v97 = 0;
      }

      else
      {
        v97 = v52;
      }

      _H0 = *&ElementsAttrRawData[2 * v97];
      __asm { FCVT            S0, H0 }

      a3[v52++] = _S0;
LABEL_222:
      ;
    }

    while (NumElements != v52);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_133:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v59 = 0;
      }

      else
      {
        v59 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v59];
    }

    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_153:
    if (NumElements >= 2)
    {
      v79 = 0;
      v72 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v80 = a3 + 1;
      do
      {
        if (v8)
        {
          v81 = 0;
        }

        else
        {
          v81 = v79;
        }

        if (v8)
        {
          v82 = 0;
        }

        else
        {
          v82 = v79 + 1;
        }

        v83 = *&ElementsAttrRawData[8 * v81];
        v84 = *&ElementsAttrRawData[8 * v82];
        *(v80 - 1) = v83;
        *v80 = v84;
        v80 += 2;
        v79 += 2;
      }

      while (v79 != v72);
      goto LABEL_227;
    }

    v72 = 0;
    do
    {
      if (v8)
      {
        v100 = 0;
      }

      else
      {
        v100 = v72;
      }

      v101 = *&ElementsAttrRawData[8 * v100];
      a3[v72++] = v101;
LABEL_227:
      ;
    }

    while (NumElements != v72);
    return;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_161;
  }

LABEL_159:
  if (NumElements >= 2)
  {
    v86 = 0;
    v73 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v87 = (a3 + 1);
    do
    {
      if (v8)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86;
      }

      if (v8)
      {
        v89 = 0;
      }

      else
      {
        v89 = v86 + 1;
      }

      v90 = *&ElementsAttrRawData[2 * v89] << 16;
      *(v87 - 1) = *&ElementsAttrRawData[2 * v88] << 16;
      *v87 = v90;
      v87 += 2;
      v86 += 2;
    }

    while (v86 != v73);
    goto LABEL_232;
  }

  v73 = 0;
  do
  {
    if (v8)
    {
      v102 = 0;
    }

    else
    {
      v102 = v73;
    }

    LODWORD(a3[v73++]) = *&ElementsAttrRawData[2 * v102] << 16;
LABEL_232:
    ;
  }

  while (NumElements != v73);
}

uint64_t llvm::SmallVector<char,40u>::SmallVector(uint64_t result, size_t a2)
{
  v2 = a2;
  *result = result + 24;
  *(result + 8) = xmmword_1A75D9A70;
  if (a2)
  {
    if (a2 < 0x29)
    {
      v4 = 0;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), a2, 1);
      result = v3;
      v4 = *(v3 + 8);
      a2 = v2 - v4;
      if (v2 == v4)
      {
        goto LABEL_7;
      }
    }

    v5 = result;
    bzero((*result + v4), a2);
    result = v5;
LABEL_7:
    *(result + 8) = v2;
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackBooleanData(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = (a3 + 3);
    do
    {
      if (a4)
      {
        if (a4 >= 8)
        {
          v5 = 8;
        }

        else
        {
          v5 = a4;
        }

        if (v5 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = *result;
        v8 = vdupq_n_s64(v6 - 1);
        v9 = vmovn_s64(vcgeq_u64(v8, xmmword_1A7598670));
        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).u8[0])
        {
          *(v4 - 3) = v7 & 1;
        }

        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).i8[1])
        {
          *(v4 - 2) = (v7 & 2) != 0;
        }

        if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_1A7598660))), 0).i8[2])
        {
          *(v4 - 1) = (v7 & 4) != 0;
          *v4 = (v7 & 8) != 0;
        }

        v10 = vmovn_s64(vcgeq_u64(v8, xmmword_1A759D330));
        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i32[1])
        {
          v4[1] = (v7 & 0x10) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i8[5])
        {
          v4[2] = (v7 & 0x20) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_1A759D320)))).i8[6])
        {
          v4[3] = (v7 & 0x40) != 0;
          v4[4] = v7 >> 7;
        }
      }

      a4 -= 8;
      ++result;
      v4 += 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<float>(unsigned __int8 *result, unint64_t a2, float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = (v7 & ~(-1 << a5));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1A7598670));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = (v10 & v13);
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = ((v13 >> a5) & v10);
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_1A7598660))).i32[1])
        {
          v15[2] = ((v13 >> (2 * a5)) & v10);
          v15[3] = ((v13 >> (3 * a5)) & v10);
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA400));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = ((v13 >> (4 * a5)) & v10);
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = ((v13 >> (5 * a5)) & v10);
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_1A75DA6A0))).i32[1])
          {
            v15[6] = ((v13 >> (6 * a5)) & v10);
            v15[7] = ((v13 >> (7 * a5)) & v10);
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

void mlir::anonymous namespace::ConvertConstant::~ConvertConstant(mlir::_anonymous_namespace_::ConvertConstant *this)
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

__n128 **mlir::OpConversionPattern<mlir::mps::ConstantOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v13[5] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v12, a2);
  v13[3] = v8;
  v13[4] = v9;
  (*(*a1 + 72))(a1, a2, v12, a5);
  return mlir::mps::AttributeHandler::decrementRefCount(v13);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v12, a3, a4);
  v8 = v12[0];
  v9 = v12[1];
  mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v13, a2);
  v14[3] = v8;
  v14[4] = v9;
  v10 = (*(*a1 + 80))(a1, a2, v13, a5);
  mlir::mps::AttributeHandler::decrementRefCount(v14);
  return v10;
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ConstantOp>::matchAndRewrite(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 7);
  v9 = a3 + 3;
  v41 = *(a3 + 6);
  v42 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v42 = i)
    {
      v11 = (*(mlir::ValueRange::dereference_iterator(&v41, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
        v33 = v11;
        v34 = v12;
        if (v11)
        {
          if (!mlir::ElementsAttr::getShapedType(&v33) || !mlir::ElementsAttr::getShapedType(&v33))
          {
            goto LABEL_15;
          }

          Shape = mlir::ShapedType::getShape(&v33);
          if (v14)
          {
            v15 = 8 * v14;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v15 -= 8;
              if (!v15)
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
        v33 = 0;
        v34 = 0;
      }

LABEL_3:
      i = v42 + 1;
    }
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = a2 - 16;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, j) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19->n128_u64[0] + 8))
      {
        v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19->n128_u64[0] + 8);
        v41 = v19;
        v42 = v20;
        if (v19)
        {
          if (!mlir::ElementsAttr::getShapedType(&v41) || !mlir::ElementsAttr::getShapedType(&v41))
          {
            goto LABEL_33;
          }

          v21 = mlir::ShapedType::getShape(&v41);
          if (v22)
          {
            v23 = 8 * v22;
            while (*v21 != 0x8000000000000000)
            {
              ++v21;
              v23 -= 8;
              if (!v23)
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
        v41 = 0;
        v42 = 0;
      }

LABEL_21:
      ;
    }
  }

  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v36 = *a3;
  v37 = *(a3 + 16);
  v24 = *(a3 + 3);
  v38 = v24;
  if (v24)
  {
    v25 = *(v24->n128_u64[0] + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v24 = 0;
    }

    v41 = v24;
    if (v25 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(&__p, &v41);
      Context = mlir::Attribute::getContext(&v41);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v27);
      v29 = __p.n128_u64[0];
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v29 + 88);
      llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  v30 = *v9;
  v39 = a3[2];
  v40 = v30;
  v31 = (*(*a1 + 88))(a1, a2, &v36, a4);
  mlir::mps::AttributeHandler::decrementRefCount(&v38);
  return v31;
}

void mlir::anonymous namespace::ConvertConstant::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[67] = *MEMORY[0x1E69E9840];
  v24 = a2;
  mlir::TypeConverter::TypeConverter(v28, *(a1 + 96));
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v24);
  v22 = v9;
  ShapedType = mlir::ElementsAttr::getShapedType(&AsAttribute);
  v26 = v10;
  isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
  v12 = mlir::TypeConverter::convertType(v28, isSplat);
  v13 = AsAttribute;
  v14 = v22;
  LOBYTE(ShapedType) = 0;
  v27 = 0;
  v15 = mlir::BaseMemRefType::cloneWith(&v23, &ShapedType, v12);
  v16 = v15;
  if (v15)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
  }

  else
  {
    v17 = 0;
  }

  ShapedType = mlir::rewriteElementsAttr(v13, v14, v16, v17, 0);
  v26 = v18;
  v19 = v24;
  v20 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 8), *(v24 + 24), &v23, &ShapedType);
  (*(*a4 + 8))(a4, v19, v20);
  mlir::TypeConverter::~TypeConverter(v28);
}

__n128 **mlir::mps::AttributeHandler::decrementRefCount(__n128 **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1->n128_u64[0] + 136);
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v1 = 0;
    }

    v12 = v1;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      mlir::mps::MPSBufferTensorAttr::getHandle(v11, &v12);
      Context = mlir::Attribute::getContext(&v12);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v4);
      v6 = v11[0];
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      if (*(v6 + 88) == 1)
      {
        *(v6 + 88) = 0;
        if (*(v6 + 80) == 1)
        {
          v7 = *(v6 + 64);
          if (v7 >= 8)
          {
            v8 = (v6 + 40);
            v9 = (v6 + 40);
            if ((v7 & 2) == 0)
            {
              v9 = *v8;
            }

            (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, *(v6 + 16), *(v6 + 24), *(v6 + 32));
            v10 = *(v6 + 64);
            if (v10 >= 8)
            {
              if ((v10 & 4) != 0)
              {
                if ((v10 & 2) == 0)
                {
                  v8 = *v8;
                }

                (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
              }

              if ((v10 & 2) == 0)
              {
                llvm::deallocate_buffer(*(v6 + 40), *(v6 + 48));
              }
            }
          }

          *(v6 + 80) = 0;
        }
      }

      else
      {
        --*(v6 + 88);
      }

      return llvm::sys::RWMutexImpl::unlock_shared((Manager + 48));
    }
  }

  return this;
}

uint64_t mlir::anonymous namespace::anonymous namespace::canonicalizeType(uint64_t a1, void *a2, uint64_t a3)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v23 = a3;
  Shape = mlir::ShapedType::getShape(&v22);
  if (mlir::ShapedType::getNumElements(Shape, v5) == 1 && (mlir::ShapedType::getShape(&v22), v6 <= 3))
  {
    isSplat = mlir::ElementsAttr::isSplat(&v22);
    v8 = mlir::TypeConverter::convertType(a1, isSplat);
    if (!v8)
    {
      v8 = mlir::ElementsAttr::isSplat(&v22);
    }

    mlir::getRankPromotionShapeForANE(v22, v23, 0, &v24);
    result = mlir::MemRefType::get(v24, v25, v8, 0, 0, 0);
    if (v24 != v26)
    {
      v10 = result;
      free(v24);
      return v10;
    }
  }

  else
  {
    v11 = mlir::TypeConverter::convertType(a1, v22);
    v21 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      v11 = v12;
    }

    else
    {
      v13 = 0;
    }

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v11, v13);
    v15 = RankPromotionTypeForANE;
    if (RankPromotionTypeForANE)
    {
      RankPromotionTypeForANE = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*RankPromotionTypeForANE + 8);
    }

    v24 = v15;
    v25 = RankPromotionTypeForANE;
    v16 = mlir::ShapedType::getShape(&v24);
    v18 = v17;
    v19 = mlir::ElementsAttr::isSplat(&v24);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v21);
    return mlir::MemRefType::get(v16, v18, v19, 0, MemorySpace);
  }

  return result;
}

mlir::TypeConverter *mlir::TypeConverter::TypeConverter(mlir::TypeConverter *this, const mlir::TypeConverter *a2)
{
  *this = &unk_1F1A0C130;
  *(this + 1) = this + 24;
  v4 = (this + 8);
  *(this + 2) = 0x400000000;
  if (*(a2 + 4))
  {
    llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::operator=(v4, a2 + 1);
  }

  *(this + 19) = this + 168;
  *(this + 20) = 0x200000000;
  if (*(a2 + 40))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 19, a2 + 19);
  }

  *(this + 29) = this + 248;
  *(this + 30) = 0x200000000;
  if (*(a2 + 60))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 29, a2 + 29);
  }

  *(this + 39) = this + 328;
  *(this + 40) = 0x200000000;
  if (*(a2 + 80))
  {
    llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(this + 39, a2 + 39);
  }

  *(this + 49) = this + 408;
  *(this + 50) = 0x200000000;
  if (*(a2 + 100))
  {
    llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::operator=(this + 49, a2 + 49);
  }

  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 122) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 128) = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl((this + 520));
  *(this + 66) = 0;
  return this;
}

uint64_t *llvm::SmallVectorImpl<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t *llvm::SmallVectorImpl<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v4 = *(a2 + 2);
    v5 = *(a1 + 2);
    if (v5 >= v4)
    {
      if (v4)
      {
        v10 = *a2;
        v11 = *a1;
        v12 = 32 * v4;
        v13 = *a2;
        do
        {
          v14 = *(v13 + 24);
          if (v14)
          {
            if (v13 == v14)
            {
              v32 = v31;
              (*(*v14 + 24))(v14, v31);
            }

            else
            {
              v32 = (*(*v14 + 16))(v14);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](v31, v11);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v13 += 32;
          v11 += 32;
          v10 += 32;
          v12 -= 32;
        }

        while (v12);
        v15 = *a1;
        v5 = *(a1 + 2);
      }

      else
      {
        v15 = *a1;
        v11 = *a1;
      }

      v27 = v15 + 32 * v5;
      if (v27 != v11)
      {
        v28 = v27 - 32;
        do
        {
          v29 = *(v27 - 8);
          v27 -= 32;
          if (v27 == v29)
          {
            (*(*v29 + 32))(v29);
          }

          else if (v29)
          {
            (*(*v29 + 40))(v29);
          }

          v28 -= 32;
        }

        while (v27 != v11);
      }

      goto LABEL_54;
    }

    if (*(a1 + 3) >= v4)
    {
      if (v5)
      {
        v16 = *a2;
        v17 = *a1;
        v18 = 32 * v5;
        v19 = *a2;
        do
        {
          v20 = *(v19 + 24);
          if (v20)
          {
            if (v19 == v20)
            {
              v32 = v31;
              (*(*v20 + 24))(v20, v31);
            }

            else
            {
              v32 = (*(*v20 + 16))(v20);
            }
          }

          else
          {
            v32 = 0;
          }

          std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](v31, v17);
          if (v32 == v31)
          {
            (*(*v32 + 32))(v32);
          }

          else if (v32)
          {
            (*(*v32 + 40))();
          }

          v19 += 32;
          v17 += 32;
          v16 += 32;
          v18 -= 32;
        }

        while (v18);
        goto LABEL_38;
      }
    }

    else
    {
      if (v5)
      {
        v6 = 32 * v5 + *a1 - 32;
        v7 = -32 * v5;
        v8 = v6;
        do
        {
          v9 = *(v8 + 24);
          if (v8 == v9)
          {
            (*(*v9 + 32))(v9);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9);
          }

          v8 -= 32;
          v6 -= 32;
          v7 += 32;
        }

        while (v7);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::grow(a1, v4);
    }

    v5 = 0;
LABEL_38:
    v21 = *(a2 + 2);
    if (v5 != v21)
    {
      v22 = *a2;
      v23 = *a1 + 32 * v5;
      v24 = v22 + 32 * v5;
      v25 = 32 * v21 - 32 * v5;
      do
      {
        v26 = *(v24 + 24);
        if (v26)
        {
          if (v24 == v26)
          {
            *(v23 + 24) = v23;
            (*(**(v24 + 24) + 24))(*(v24 + 24), v23);
          }

          else
          {
            *(v23 + 24) = (*(*v26 + 16))(v26);
          }
        }

        else
        {
          *(v23 + 24) = 0;
        }

        v24 += 32;
        v23 += 32;
        v25 -= 32;
      }

      while (v25);
    }

LABEL_54:
    *(a1 + 2) = v4;
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<std::function<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>,false>::grow(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v18);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 32 * v7;
    v9 = v4;
    do
    {
      v10 = v6[3];
      if (v10)
      {
        if (v6 == v10)
        {
          v9[3] = v9;
          (*(*v6[3] + 24))(v6[3], v9);
        }

        else
        {
          v9[3] = v10;
          v6[3] = 0;
        }
      }

      else
      {
        v9[3] = 0;
      }

      v9 += 4;
      v6 += 4;
      v8 -= 32;
    }

    while (v8);
    v6 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 4 * v11;
      v13 = &v6[v12 - 4];
      v14 = -(v12 * 8);
      v15 = v13;
      do
      {
        v16 = *(v15 + 24);
        if (v15 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
        v13 -= 32;
        v14 += 32;
      }

      while (v14);
      v6 = *a1;
    }
  }

  v17 = v18;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v17;
}

uint64_t std::__function::__value_func<mlir::TypeConverter::AttributeConversionResult ()(mlir::Type,mlir::Attribute)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void mlir::anonymous namespace::ConvertReadDataFromFile::~ConvertReadDataFromFile(mlir::_anonymous_namespace_::ConvertReadDataFromFile *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReadDataFromFileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReadDataFromFileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReadDataFromFileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 72);
  v33 = *(a3 + 64);
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

void mlir::anonymous namespace::ConvertReadDataFromFile::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[67] = *MEMORY[0x1E69E9840];
  mlir::TypeConverter::TypeConverter(v15, *(a1 + 96));
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v13 = v9[8];
  v12 = v9[10];
  v11 = v9[9];
  v10 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((a4 + 8), *(a2 + 24), &v14, &v13, &v12, &v11);
  (*(*a4 + 8))(a4, a2, v10);
  mlir::TypeConverter::~TypeConverter(v15);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReadDataFromFileOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
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

void mlir::anonymous namespace::ConvertCropResize::~ConvertCropResize(mlir::_anonymous_namespace_::ConvertCropResize *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CropResizeOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::CropResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::CropResizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertCropResize::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v167[24] = *MEMORY[0x1E69E9840];
  v135 = a2;
  v163 = *(a3 + 96);
  v6 = *(a2 + 24);
  v7 = (*(mlir::ValueRange::dereference_iterator(&v163, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v5 = v135;
  }

  else
  {
    v8 = 0;
  }

  v134[0] = v7;
  v134[1] = v8;
  v9 = (*(*(*(v5 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  __p = v9;
  v166 = v10;
  Shape = mlir::ShapedType::getShape(&__p);
  v13 = v12;
  v160 = v162;
  v161 = 0x500000000;
  v14 = (8 * v12) >> 3;
  if (v14 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v14, 8);
    v15 = v161;
    v16 = v160;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  v16 = v162;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_11:
    memcpy(&v16[8 * v15], Shape, v17);
    v15 = v161;
    v16 = v160;
  }

LABEL_12:
  LODWORD(v161) = v15 + (v17 >> 3);
  llvm::SmallVectorImpl<long long>::insert(&v160, v16, 3uLL, 1uLL);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v161);
  if ((v19 & 1) == 0)
  {
    goto LABEL_128;
  }

  v20 = IndexFromDim;
  v21 = mlir::anec::getIndexFromDim(3, v161);
  if ((v22 & 1) == 0)
  {
    goto LABEL_128;
  }

  v23 = v160;
  v24 = *(v160 + v20);
  *(v160 + v20) = *(v160 + v21);
  *(v23 + v21) = v24;
  v25 = v161;
  isSplat = mlir::ElementsAttr::isSplat(v134);
  v133 = mlir::MemRefType::get(v23, v25, isSplat, 0, 0, 0);
  __p = mlir::ValueRange::dereference_iterator(&v163, 1);
  v132 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v6, &v133, &__p) - 16;
  v27 = (*(*(*(v135 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  v131[0] = v27;
  v131[1] = v28;
  mlir::mps::CropResizeOp::getSpatialScale(&__p, &v135);
  v32 = llvm::detail::IEEEFloat::IEEEFloat(&__src, 1.0, v29, v30, v31);
  v33 = llvm::APFloatBase::IEEEsingle(v32);
  llvm::APFloat::Storage::Storage(&v155, &__src, v33);
  llvm::detail::IEEEFloat::~IEEEFloat(&__src);
  v34 = v166;
  v35 = v155;
  v37 = llvm::APFloatBase::PPCDoubleDouble(v36);
  if (v34 == v35)
  {
    if (v37 == v34)
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(&v166, &v155);
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(&v166, &v155);
    }

    v38 = IsEqual;
  }

  else
  {
    v38 = 0;
  }

  if (v37 == v155)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v155);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v155);
  }

  if (v37 == v166)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v166);
    if (v38)
    {
      goto LABEL_45;
    }

LABEL_30:
    mlir::mps::CropResizeOp::getSpatialScale(&__p, &v135);
    v43 = llvm::APFloat::convertToFloat(&__p, v40, v41, v42);
    if (v37 == v166)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v166);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v166);
    }

    mlir::ArrayAttr::getValue(&v133);
    *&__p = v43;
    LOBYTE(v155) = v45;
    mlir::ArrayAttr::getValue(&v133);
    LODWORD(__p) = 0;
    LOBYTE(v158) = v47;
    if (v155 != 1 || (v47 & 1) == 0)
    {
      operator new();
    }

    mlir::ArrayAttr::getValue(&v133);
    v49 = mlir::anec::getIndexFromDim(4, v48);
    if (v50)
    {
      v144 = v49;
      if (*(mlir::ArrayAttr::getValue(&v133) + 8 * v49) == 5)
      {
        LODWORD(__p) = 4;
        LODWORD(v147) = 1;
        v51 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>((a4 + 8), v6, &v132, &v144, &__p, &v147);
        LODWORD(__p) = 0;
        LODWORD(v147) = 4;
        v132 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>((a4 + 8), v6, &v132, &v144, &__p, &v147) - 16;
        if (v155 & 1) != 0 && (v158)
        {
          v132 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a4 + 8), v6, &v132, &GOCConstant, &__src) - 16;
          v147 = v132;
          v148 = v51 - 16;
          mlir::ValueRange::ValueRange(&__p, &v147, 2uLL);
          LOBYTE(v141) = 0;
          v52 = mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>((a4 + 8), v6, &__p, &v144, &v141);
LABEL_44:
          v132 = v52 - 16;
          goto LABEL_45;
        }
      }

      else if (v155 & 1) != 0 && (v158)
      {
        v52 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a4 + 8), v6, &v132, &GOCConstant, &__src);
        goto LABEL_44;
      }
    }

LABEL_128:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  llvm::detail::IEEEFloat::~IEEEFloat(&v166);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_45:
  v53 = (*(mlir::ValueRange::dereference_iterator(&v163, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v53)
  {
    v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v53 + 8);
  }

  else
  {
    v54 = 0;
  }

  v130[0] = v53;
  v130[1] = v54;
  v56 = mlir::ShapedType::getShape(v130);
  v57 = v55;
  __src = v159;
  v158 = 0x500000000;
  v58 = (8 * v55) >> 3;
  if (v58 < 6)
  {
    v59 = 0;
    v60 = 8 * v55;
    if (!v55)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v159, v58, 8);
  v59 = v158;
  v60 = 8 * v57;
  if (v57)
  {
LABEL_52:
    memcpy(__src + 8 * v59, v56, v60);
    v59 = v158;
  }

LABEL_53:
  LODWORD(v158) = v59 + (v60 >> 3);
  v61 = mlir::anec::getIndexFromDim(4, v161);
  if ((v62 & 1) == 0)
  {
    goto LABEL_128;
  }

  v63 = *(v160 + v61);
  __p = 1;
  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&__src, __src + 8 * (v63 == 5), &__p);
  v64 = __src;
  v65 = v158;
  v66 = mlir::ElementsAttr::isSplat(v130);
  v129 = mlir::MemRefType::get(v64, v65, v66, 0, 0, 0);
  v67 = *(v135 + 24);
  __p = mlir::ValueRange::dereference_iterator(&v163, 0);
  v128 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v67, &v129, &__p) - 16;
  if (v63 == 5)
  {
    goto LABEL_64;
  }

  __p = v167;
  v166 = 0x500000000;
  v68 = v158;
  if (v158)
  {
    if (v158 < 6)
    {
      v70 = v167;
      v69 = v158;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__p, v167, v158, 8);
      v69 = v158;
      if (!v158)
      {
LABEL_61:
        LODWORD(v166) = v68;
        goto LABEL_62;
      }

      v70 = __p;
    }

    memcpy(v70, __src, 8 * v69);
    goto LABEL_61;
  }

LABEL_62:
  v71 = mlir::ShapedType::getShape(v131);
  v72 = __p;
  *__p = *v71;
  v73 = v166;
  v74 = mlir::ElementsAttr::isSplat(v130);
  GOCConstant = mlir::MemRefType::get(v72, v73, v74, 0, 0, 0);
  v128 = mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a4 + 8), v6, &GOCConstant, &v128) - 16;
  if (__p != v167)
  {
    free(__p);
  }

LABEL_64:
  GOCConstant = v156;
  v155 = 0x400000000;
  v156[8] = 4;
  ResizeHeight = mlir::mps::CropResizeOp::getResizeHeight(&v135);
  ResizeWidth = mlir::mps::CropResizeOp::getResizeWidth(&v135);
  v151 = v153;
  v153[0] = ResizeHeight;
  v153[1] = ResizeWidth;
  v152 = 0x200000002;
  __p = 2;
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v78 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
  if (v78)
  {
    v79 = v78;
    v80 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v78 + 8);
    v78 = v79;
  }

  else
  {
    v80 = 0;
  }

  v81 = mlir::DenseElementsAttr::getFromRawBuffer(v78, v80, v151, 8 * v152);
  mlir::NamedAttrList::set(&GOCConstant, "output_dims", 0xBuLL, v81);
  v147 = v149;
  memset(v149, 0, sizeof(v149));
  v150 = 0;
  v148 = 0x500000005;
  v82 = 0;
  if (mlir::mps::CropResizeOp::getNormalizeCoordinates(&v135))
  {
    v82 = 2 * (mlir::mps::PadOp::getPaddingMode(&v135) == 1);
  }

  if (mlir::mps::CropResizeOp::getNormalizeCoordinates(&v135) && mlir::mps::PadOp::getPaddingMode(&v135) == 2)
  {
    v82 = 1;
  }

  v144 = v146;
  v146[0] = v82;
  v146[1] = v82;
  v146[2] = v82;
  v146[3] = v82;
  v146[4] = v82;
  v145 = 0x500000005;
  __p = 5;
  v83 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v84 = mlir::RankedTensorType::get(&__p, 1, v83, 0);
  if (v84)
  {
    v85 = v84;
    v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v84 + 8);
    v84 = v85;
  }

  else
  {
    v86 = 0;
  }

  v87 = mlir::DenseElementsAttr::getFromRawBuffer(v84, v86, v147, 8 * v148);
  __p = 5;
  v88 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v89 = mlir::RankedTensorType::get(&__p, 1, v88, 0);
  if (v89)
  {
    v90 = v89;
    v91 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
    v89 = v90;
  }

  else
  {
    v91 = 0;
  }

  v92 = mlir::DenseElementsAttr::getFromRawBuffer(v89, v91, v144, 8 * v145);
  mlir::NamedAttrList::set(&GOCConstant, "normalized_range", 0x10uLL, v87);
  mlir::NamedAttrList::set(&GOCConstant, "coordinate_mode", 0xFuLL, v92);
  InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v135);
  if (InterpolationMode == 1)
  {
    v94 = 0;
  }

  else
  {
    if (InterpolationMode)
    {
    }

    v94 = 1;
  }

  v141 = v143;
  v143[0] = v94;
  v143[1] = v94;
  v143[2] = v94;
  v143[3] = v94;
  v143[4] = v94;
  v142 = 0x500000005;
  __p = 5;
  v95 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v96 = mlir::RankedTensorType::get(&__p, 1, v95, 0);
  if (v96)
  {
    v97 = v96;
    v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
    v96 = v97;
  }

  else
  {
    v98 = 0;
  }

  v99 = mlir::DenseElementsAttr::getFromRawBuffer(v96, v98, v141, 8 * v142);
  mlir::NamedAttrList::set(&GOCConstant, "sampling_method", 0xFuLL, v99);
  PaddingMode = mlir::mps::PadOp::getPaddingMode(&v135);
  if (PaddingMode >= 3)
  {
  }

  v101 = qword_1A75EA380[PaddingMode];
  v139[0] = v140;
  v140[0] = v101;
  v140[1] = v101;
  v140[2] = v101;
  v140[3] = v101;
  v140[4] = v101;
  v139[1] = 0x500000005;
  __p = 5;
  v102 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v103 = mlir::RankedTensorType::get(&__p, 1, v102, 0);
  if (v103)
  {
    v104 = v103;
    v105 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v103 + 8);
    v103 = v104;
  }

  else
  {
    v105 = 0;
  }

  v106 = mlir::DenseElementsAttr::getFromRawBuffer(v103, v105, v141, 8 * v142);
  mlir::NamedAttrList::set(&GOCConstant, "sampling_mode", 0xDuLL, v106);
  v136 = v138;
  memset_pattern16(v138, &xmmword_1A75AC700, 0x28uLL);
  v137 = 0x500000005;
  __p = 5;
  v107 = mlir::Builder::getIntegerType((a4 + 8), 64, 0);
  v108 = mlir::RankedTensorType::get(&__p, 1, v107, 0);
  if (v108)
  {
    v109 = v108;
    v110 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
    v108 = v109;
  }

  else
  {
    v110 = 0;
  }

  v111 = mlir::DenseElementsAttr::getFromRawBuffer(v108, v110, v136, 8 * v137);
  mlir::NamedAttrList::set(&GOCConstant, "padding_modes", 0xDuLL, v111);
  F16FloatAttr = mlir::Builder::getF16FloatAttr((a4 + 8), 0.0, v112);
  mlir::NamedAttrList::set(&GOCConstant, "background_value", 0x10uLL, F16FloatAttr);
  v114 = (*(*(*(v135 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v114)
  {
    v115 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v114 + 8);
  }

  else
  {
    v115 = 0;
  }

  v127[0] = v114;
  v127[1] = v115;
  v116 = *(mlir::ShapedType::getShape(v127) + 8);
  Context = mlir::Attribute::getContext((v135 + 24));
  CoordinateMode = mlir::mps::CropResizeOp::getCoordinateMode(&v135);
  if (CoordinateMode <= 1)
  {
    if (!CoordinateMode)
    {
      v119 = 8 * (v116 != 5);
      goto LABEL_109;
    }

    if (CoordinateMode == 1)
    {
      if (v116 == 5)
      {
        v119 = 1;
      }

      else
      {
        v119 = 9;
      }

      goto LABEL_109;
    }

LABEL_131:
  }

  if (CoordinateMode == 2)
  {
    v120 = v116 == 5;
    v121 = 10;
    v122 = 2;
  }

  else
  {
    if (CoordinateMode != 3)
    {
      goto LABEL_131;
    }

    v120 = v116 == 5;
    v121 = 11;
    v122 = 3;
  }

  if (v120)
  {
    v119 = v122;
  }

  else
  {
    v119 = v121;
  }

LABEL_109:
  v123 = mlir::arith::AtomicRMWKindAttr::get(Context, v119);
  mlir::NamedAttrList::set(&GOCConstant, "box_coordinate_mode", 0x13uLL, v123);
  v124 = v135;
  v164[0] = v128;
  v164[1] = v132;
  mlir::ValueRange::ValueRange(&__p, v164, 2uLL);
  v125 = mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>((a4 + 8), *(v124 + 24), &__p, &GOCConstant);
  (*(*a4 + 8))(a4, v124, v125);
  if (v136 != v138)
  {
    free(v136);
  }

  if (v139[0] != v140)
  {
    free(v139[0]);
  }

  if (v141 != v143)
  {
    free(v141);
  }

  if (v144 != v146)
  {
    free(v144);
  }

  if (v147 != v149)
  {
    free(v147);
  }

  if (v151 != v153)
  {
    free(v151);
  }

  if (GOCConstant != v156)
  {
    free(GOCConstant);
  }

  if (__src != v159)
  {
    free(__src);
  }

  if (v160 != v162)
  {
    free(v160);
  }

  return 1;
}

char *llvm::SmallVectorImpl<long long>::insert(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *a1;
  v7 = a2 - *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = v8 + a3;
  if (*a1 + 8 * v8 == a2)
  {
    if (v10 > v9)
    {
      v54 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10, 8);
      a1 = v54;
      v8 = *(v54 + 2);
      v6 = *v54;
      if (a3)
      {
        goto LABEL_16;
      }
    }

    else if (a3)
    {
LABEL_16:
      v24 = v6 + 8 * v8;
      v25 = v24;
      v26 = a3;
      if (a3 < 4)
      {
        goto LABEL_51;
      }

      v25 = (v24 + 8 * (a3 & 0xFFFFFFFFFFFFFFFCLL));
      v26 = a3 & 3;
      v27 = vdupq_n_s64(a4);
      v28 = (v24 + 16);
      v29 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v28[-1] = v27;
        *v28 = v27;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != a3)
      {
LABEL_51:
        do
        {
          *v25++ = a4;
          --v26;
        }

        while (v26);
      }
    }

    *(a1 + 2) = v8 + a3;
    return (v6 + v7);
  }

  if (v10 > v9)
  {
    v53 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v10, 8);
    a1 = v53;
    v6 = *v53;
    v8 = *(v53 + 2);
  }

  v11 = (v6 + v7);
  v12 = 8 * v8;
  v13 = (v6 + 8 * v8);
  v14 = 8 * v8 - v7;
  v15 = v14 >> 3;
  if (a3 > v14 >> 3)
  {
    v16 = v8 + a3;
    *(a1 + 2) = v16;
    if (v12 != v7)
    {
      memcpy((v6 + 8 * v16 - 8 * v15), (v6 + v7), v14);
      v17 = (v6 + v7);
      v18 = v14 >> 3;
      if (v15 < 4)
      {
        goto LABEL_52;
      }

      v17 = &v11[8 * (v15 & 0xFFFFFFFFFFFFFFFCLL)];
      v18 = (v14 >> 3) & 3;
      v19 = vdupq_n_s64(a4);
      v20 = (v7 + v6 + 16);
      v21 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_52:
        do
        {
          *v17 = a4;
          v17 += 8;
          --v18;
        }

        while (v18);
      }
    }

    v22 = a3 - v15;
    if (a3 != v15)
    {
      if (v22 < 4)
      {
        v23 = a3 - v15;
        do
        {
LABEL_30:
          *v13++ = a4;
          --v23;
        }

        while (v23);
        return v11;
      }

      v13 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = v22 & 3;
      v36 = vdupq_n_s64(a4);
      v37 = (v12 + v6 + 16);
      v38 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v37[-1] = v36;
        *v37 = v36;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_30;
      }
    }

    return v11;
  }

  v30 = 8 * a3;
  v31 = v8 + ((8 * a3) >> 3);
  if (v31 > *(a1 + 3))
  {
    v32 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v31, 8);
    a1 = v32;
    LODWORD(v8) = *(v32 + 2);
  }

  v33 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
  if (a3)
  {
    v34 = (*a1 + 8 * v8);
    if (v30 - 8 < 0x38)
    {
      v35 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
      do
      {
LABEL_36:
        v46 = *v35++;
        *v34++ = v46;
      }

      while (v35 != v13);
      goto LABEL_37;
    }

    v39 = 8 * v8 + *a1;
    v35 = &v13[v30 / 0xFFFFFFFFFFFFFFF8];
    if ((v39 - v33) < 0x20)
    {
      goto LABEL_36;
    }

    v40 = ((v30 - 8) >> 3) + 1;
    v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
    v34 = (v34 + v41);
    v35 = &v33[v41];
    v42 = (v12 - v30 + v6 + 16);
    v43 = (v39 + 16);
    v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v45 = *v42;
      *(v43 - 1) = *(v42 - 1);
      *v43 = v45;
      v42 += 2;
      v43 += 2;
      v44 -= 4;
    }

    while (v44);
    if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  *(a1 + 2) = v8 + a3;
  if (v33 != v11)
  {
    memmove(&v11[v30], (v6 + v7), &v13[v30 / 0xFFFFFFFFFFFFFFF8] - v11);
  }

  if (a3)
  {
    if (a3 >= 4)
    {
      v47 = &v11[8 * (a3 & 0xFFFFFFFFFFFFFFFCLL)];
      v48 = a3 & 3;
      v49 = vdupq_n_s64(a4);
      v50 = (v7 + v6 + 16);
      v51 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v50[-1] = v49;
        *v50 = v49;
        v50 += 2;
        v51 -= 4;
      }

      while (v51);
      if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == a3)
      {
        return v11;
      }
    }

    else
    {
      v47 = (v6 + v7);
      v48 = a3;
    }

    do
    {
      *v47 = a4;
      v47 += 8;
      --v48;
    }

    while (v48);
  }

  return v11;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Reshape,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5, int *a6)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::GOC,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::GOC,mlir::MemRefType,mlir::Value &,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::GOC::build(a1, v19, *a3, *a4 - 16, *a5 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Concat,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Concat,mlir::ValueRange,unsigned long long &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::anec::Concat::build(a1, v19, *a3, a3[1], *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Concat,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Broadcast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Broadcast,void>::id)
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

void *llvm::SmallVector<long long,5u>::SmallVector<long long,void>(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x500000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 6)
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

void *llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  if (*a1 + 8 * v6 == a2)
  {
    v10 = *a3;
    if (v6 >= *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6 + 1, 8);
      v6 = *(a1 + 2);
      v5 = *a1;
    }

    *(v5 + 8 * v6) = v10;
    v11 = *(a1 + 2) + 1;
    *(a1 + 2) = v11;
    return (*a1 + 8 * v11 - 8);
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 2);
    }

    v8 = (v5 + v7);
    v9 = (v5 + 8 * v6);
    *v9 = *(v9 - 1);
    if (v9 - 1 != v8)
    {
      memmove(v8 + 1, v8, (v9 - 1) - v8);
      LODWORD(v6) = *(a1 + 2);
    }

    *(a1 + 2) = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::CropResize,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::CropResize,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  v13 = ANECStepToZinIrDims3D(a4);
  mlir::anec::CropResize::build(a1, v21, v12, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::CropResize,void>::id)
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

void mlir::anonymous namespace::ConvertDepthwiseConv3D::~ConvertDepthwiseConv3D(mlir::_anonymous_namespace_::ConvertDepthwiseConv3D *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv3DOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::DepthwiseConv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DepthwiseConv3DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 88);
  v35 = *(a3 + 80);
  v36 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v36 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v35, i) + 8) & 0xFFFFFFFFFFFFFFF8);
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
      i = v36 + 1;
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
        v35 = v18;
        v36 = v19;
        if (v18)
        {
          if (!mlir::ElementsAttr::getShapedType(&v35) || !mlir::ElementsAttr::getShapedType(&v35))
          {
            goto LABEL_33;
          }

          v20 = mlir::ShapedType::getShape(&v35);
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
        v35 = 0;
        v36 = 0;
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
  v31 = *(a3 + 32);
  v32 = v23;
  v24 = *(a3 + 80);
  v33 = *(a3 + 64);
  v34 = v24;
  v25 = *(a3 + 16);
  *__p = *a3;
  v30 = v25;
  return (*(*a1 + 88))(a1, a2, __p, a4);
}

void mlir::anonymous namespace::ConvertDepthwiseConv3D::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v91 = *MEMORY[0x1E69E9840];
  v76 = a2;
  v90 = *(a3 + 80);
  v7 = *(a2 + 24);
  v8 = mlir::ValueRange::dereference_iterator(&v90, 0);
  v75 = v8;
  v9 = mlir::ValueRange::dereference_iterator(&v90, 1);
  v74 = v9;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v12 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v73[0] = v12;
  v73[1] = v13;
  v14 = (v9[1] & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v72[0] = v14;
  v72[1] = v15;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  mlir::TypeConverter::TypeConverter(v89, *(a1 + 96));
  mlir::ShapedType::getShape(v73);
  if (v16 == 4)
  {
    mlir::ShapedType::getShape(v72);
    if (v17 == 4)
    {
      ChannelAxis = mlir::mps::DepthwiseConv3DOp::getChannelAxis(&v76);
      v19 = (*(*(*(v76 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v19)
      {
        v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
      }

      else
      {
        v20 = 0;
      }

      __p = v19;
      v78 = v20;
      mlir::ShapedType::getShape(&__p);
      if (mlir::getPositiveAxis(ChannelAxis, v21) == 1)
      {
        if (*mlir::ShapedType::getShape(v72) == 1)
        {
          v22 = *(mlir::ShapedType::getShape(v72) + 8);
          v23 = *(mlir::ShapedType::getShape(v73) + 8);
          v70 = 0;
          v71 = 0;
          v86 = &v70;
          __p = v9;
          DefiningOp = mlir::Value::getDefiningOp(&__p);
          if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v86, DefiningOp) & 1) != 0)
          {
            __p = 3;
            IntegerType = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v26 = mlir::RankedTensorType::get(&__p, 1, IntegerType, 0);
            __p = 6;
            v27 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
            v28 = mlir::RankedTensorType::get(&__p, 1, v27, 0);
            v86 = v88;
            v87 = 0x300000000;
            Strides = mlir::mps::DepthwiseConv2DOp::getStrides(&v76);
            if (Strides)
            {
              v30 = Strides;
              v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
              Strides = v30;
            }

            else
            {
              v31 = 0;
            }

            mlir::getIntValues<unsigned long long>(Strides, v31, &v86, 1);
            v32 = v86;
            if (*v86 == 1)
            {
              if (v26)
              {
                v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
                v32 = v86;
              }

              else
              {
                v33 = 0;
              }

              v69 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v33, v32, 8 * v87);
              v83 = v85;
              v84 = 0x300000000;
              InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v76);
              if (InputAttributeNames)
              {
                v35 = InputAttributeNames;
                v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                InputAttributeNames = v35;
              }

              else
              {
                v36 = 0;
              }

              mlir::getIntValues<unsigned long long>(InputAttributeNames, v36, &v83, 1);
              if (v26)
              {
                v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v26 + 8);
              }

              else
              {
                v37 = 0;
              }

              v68 = mlir::DenseElementsAttr::getFromRawBuffer(v26, v37, v83, 8 * v84);
              Shape = mlir::ShapedType::getShape(v72);
              v39 = *(v83 + 1) * (*(Shape + 16) - 1) + 1;
              v40 = mlir::ShapedType::getShape(v72);
              v41 = *(v83 + 2) * (*(v40 + 24) - 1) + 1;
              v66 = 0;
              v67 = 0;
              v64 = 0;
              v65 = 0;
              Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v76);
              v43 = Rewriter;
              if (Rewriter)
              {
                v44 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
              }

              else
              {
                v44 = 0;
              }

              PaddingStyle = mlir::mps::DepthwiseConv2DOp::getPaddingStyle(&v76);
              v46 = mlir::ShapedType::getShape(v73);
              {
                if (v28)
                {
                  v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
                }

                else
                {
                  v48 = 0;
                }

                ShapedType = v28;
                v62 = v48;
                __p = 0;
                v78 = 0;
                v79 = v67;
                v80 = v66;
                v81 = v65;
                v82 = v64;
                v60[0] = &__p;
                v60[1] = 6;
                v63 = mlir::DenseIntElementsAttr::get<unsigned long long>(&ShapedType, v60);
                v60[0] = 0;
                if (v22 / v23 == 1)
                {
                  LODWORD(v56) = 1;
                  v59 = 1;
                  __p = 0;
                  ShapedType = 0;
                  v57 = 0;
                  v58 = 0;
                  v49 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(a4 + 1, v7, &v75, &v74, &v69, &v68, &v63, v60, &v56, &v59);
                }

                else
                {
                  v58 = *(mlir::ShapedType::getShape(v73) + 8);
                  ShapedType = mlir::ElementsAttr::getShapedType(&v70);
                  v62 = v50;
                  __p = *(mlir::ShapedType::getShape(v72) + 8);
                  v78 = 1;
                  v79 = *(mlir::ShapedType::getShape(v72) + 16);
                  v80 = *(mlir::ShapedType::getShape(v72) + 24);
                  v51 = mlir::ShapedType::clone(&ShapedType, &__p, 4);
                  ShapedType = mlir::TypeConverter::convertType(v89, v51);
                  v52 = v70;
                  v53 = v71;
                  if (v51)
                  {
                    v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v51 + 8);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  __p = mlir::reshapeElementsAttr(v52, v53, v51, v54);
                  v78 = v55;
                  v74 = (mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v7, &ShapedType, &__p) - 16);
                  v59 = 0;
                  __p = 0;
                  ShapedType = 0;
                  v56 = 0;
                  v57 = 0;
                  v49 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(a4 + 1, v7, &v75, &v74, &v69, &v68, &v63, v60, &v58, &v59);
                }

                mlir::ConversionPatternRewriter::replaceOp(a4, v76, v49);
              }

              std::string::basic_string[abi:nn200100]<0>(&__p, "Unsupported padding values for Conv2D");
              mlir::logMatchFailure(&__p, *(v76 + 3), a4);
              if (SHIBYTE(v79) < 0)
              {
                operator delete(__p);
              }

              if (v83 != v85)
              {
                free(v83);
              }
            }

            else
            {
              std::string::basic_string[abi:nn200100]<0>(&__p, "Conv stride must be 1 for batch axis");
              mlir::logMatchFailure(&__p, *(v76 + 3), a4);
              if (SHIBYTE(v79) < 0)
              {
                operator delete(__p);
              }
            }

            if (v86 != v88)
            {
              free(v86);
            }
          }

          else
          {
            std::string::basic_string[abi:nn200100]<0>(&__p, "CWConv3DOp must have constant weights");
            mlir::logMatchFailure(&__p, *(v76 + 3), a4);
            if (SHIBYTE(v79) < 0)
            {
              operator delete(__p);
            }
          }

          mlir::TypeConverter::~TypeConverter(v89);
        }

        operator new();
      }

      operator new();
    }
  }

  operator new();
}

float mlir::getIntValues<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a1;
  v10 = a2;
  if (!mlir::ElementsAttr::isSplat(&v9) || v4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v9, v10);
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

  return mlir::copyElementsAttrData<unsigned long long>(v9, v10, *a3, v4);
}

uint64_t mlir::anonymous namespace::getExplicitConv2DPadding(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, unint64_t *a11, unint64_t *a12, unint64_t *a13)
{
  v28[8] = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      v15 = *(a4 + 16) % *(a6 + 8);
      if (!v15)
      {
        v15 = *(a6 + 8);
      }

      v16 = (a8 - v15) & ~((a8 - v15) >> 63);
      v17 = *(a4 + 24) % *(a6 + 16);
      if (!v17)
      {
        v17 = *(a6 + 16);
      }

      v18 = (a9 - v17) & ~((a9 - v17) >> 63);
      *a10 = v16 >> 1;
      *a11 = v16 - (v16 >> 1);
      *a12 = v18 >> 1;
      *a13 = v18 - (v18 >> 1);
      if (a3 == 4)
      {
        v19 = *a10;
        *a10 = *a11;
        *a11 = v19;
        v20 = *a12;
        *a12 = *a13;
        *a13 = v20;
      }
    }

    return result;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      *a10 = 0;
      *a11 = 0;
      *a12 = 0;
      *a13 = 0;
    }

    return result;
  }

  v26 = v28;
  v27 = 0x800000000;
  mlir::getIntValues<unsigned long long>(a1, a2, &v26, 1);
  v21 = v26;
  v22 = v26 + 8 * v27;
  if (v26 == v22 - 32)
  {
LABEL_17:
    *a10 = *(v22 - 4);
    *a11 = *(v22 - 3);
    *a12 = *(v22 - 2);
    *a13 = *(v22 - 1);
    result = 1;
    if (v21 == v28)
    {
      return result;
    }

    goto LABEL_18;
  }

  v23 = 8 * v27 - 32;
  v24 = v26;
  while (!*v24)
  {
    ++v24;
    v23 -= 8;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  result = 0;
  if (v26 != v28)
  {
LABEL_18:
    v25 = result;
    free(v21);
    return v25;
  }

  return result;
}

uint64_t mlir::DenseIntElementsAttr::get<unsigned long long>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  return mlir::DenseElementsAttr::getFromRawBuffer(*a1, a1[1], v3, 8 * v2);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, int *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Convolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

uint64_t mlir::ShapedType::clone(mlir::ElementsAttr *a1, uint64_t a2, uint64_t a3)
{
  *&v6 = a2;
  *(&v6 + 1) = a3;
  v7 = 1;
  isSplat = mlir::ElementsAttr::isSplat(a1);
  return mlir::ShapedType::cloneWith(a1, &v6, isSplat);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,long long &,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::anec::Convolution::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, 0, 0, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
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

float mlir::copyElementsAttrData<unsigned long long>(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v89[5] = *MEMORY[0x1E69E9840];
  v86 = a1;
  v87 = a2;
  Type = mlir::ElementsAttr::getType(&v86);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v85[0] = v7;
  v85[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v85);
  v8 = mlir::ElementsAttr::isSplat(&v86);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v86);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      if (NumElements >= 2)
      {
        v19 = 0;
        v18 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v20 = a3 + 1;
        do
        {
          if (v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          if (v8)
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 + 1;
          }

          v23 = *&ElementsAttrRawData[2 * v22];
          *(v20 - 1) = *&ElementsAttrRawData[2 * v21];
          *v20 = v23;
          v20 += 2;
          v19 += 2;
        }

        while (v19 != v18);
        goto LABEL_187;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_105;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_123;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_139;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return *&v12;
      }

      goto LABEL_154;
    }

LABEL_156:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v60 = 1;
      }

      else
      {
        v60 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v88, v60);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v88[0], v88[1]);
      v61 = v88[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v63 = 0;
          }

          else
          {
            v63 = i;
          }

          a3[i] = v61[v63];
        }
      }

      if (v61 != v89)
      {
        free(v61);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      a3[j] = ElementsAttrRawData[v15];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = k;
      }

      a3[k] = ElementsAttrRawData[v17];
    }

    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v18 = 0;
    do
    {
      if (v8)
      {
        v75 = 0;
      }

      else
      {
        v75 = v18;
      }

      a3[v18++] = *&ElementsAttrRawData[2 * v75];
LABEL_187:
      ;
    }

    while (NumElements != v18);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v26 = 0;
      v24 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v27 = a3 + 1;
      do
      {
        if (v8)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        if (v8)
        {
          v29 = 0;
        }

        else
        {
          v29 = v26 + 1;
        }

        v30 = *&ElementsAttrRawData[2 * v29];
        *(v27 - 1) = *&ElementsAttrRawData[2 * v28];
        *v27 = v30;
        v27 += 2;
        v26 += 2;
      }

      while (v26 != v24);
      goto LABEL_192;
    }

    v24 = 0;
    do
    {
      if (v8)
      {
        v76 = 0;
      }

      else
      {
        v76 = v24;
      }

      a3[v24++] = *&ElementsAttrRawData[2 * v76];
LABEL_192:
      ;
    }

    while (NumElements != v24);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v32 = 0;
      v25 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v33 = a3 + 1;
      do
      {
        if (v8)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32;
        }

        if (v8)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        v36 = *&ElementsAttrRawData[4 * v35];
        *(v33 - 1) = *&ElementsAttrRawData[4 * v34];
        *v33 = v36;
        v33 += 2;
        v32 += 2;
      }

      while (v32 != v25);
      goto LABEL_197;
    }

    v25 = 0;
    do
    {
      if (v8)
      {
        v77 = 0;
      }

      else
      {
        v77 = v25;
      }

      a3[v25++] = *&ElementsAttrRawData[4 * v77];
LABEL_197:
      ;
    }

    while (NumElements != v25);
    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v39 = 0;
      v31 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v40 = a3 + 1;
      do
      {
        if (v8)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        if (v8)
        {
          v42 = 0;
        }

        else
        {
          v42 = v39 + 1;
        }

        v43 = *&ElementsAttrRawData[4 * v42];
        *(v40 - 1) = *&ElementsAttrRawData[4 * v41];
        *v40 = v43;
        v40 += 2;
        v39 += 2;
      }

      while (v39 != v31);
      goto LABEL_202;
    }

    v31 = 0;
    do
    {
      if (v8)
      {
        v78 = 0;
      }

      else
      {
        v78 = v31;
      }

      a3[v31++] = *&ElementsAttrRawData[4 * v78];
LABEL_202:
      ;
    }

    while (NumElements != v31);
    return *&v12;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v38 = 0;
      }

      else
      {
        v38 = m;
      }

      a3[m] = *&ElementsAttrRawData[8 * v38];
    }

    return *&v12;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_105:
    for (n = 0; n != NumElements; ++n)
    {
      if (v8)
      {
        v45 = 0;
      }

      else
      {
        v45 = n;
      }

      a3[n] = *&ElementsAttrRawData[8 * v45];
    }

    return *&v12;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_116:
    if (NumElements >= 2)
    {
      v48 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v49 = a3 + 1;
      do
      {
        if (v8)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v8)
        {
          v51 = 0;
        }

        else
        {
          v51 = v48 + 1;
        }

        LOWORD(v12) = *&ElementsAttrRawData[2 * v50];
        v52 = *&ElementsAttrRawData[2 * v51];
        *(v49 - 1) = *&v12;
        *v49 = v52;
        v49 += 2;
        v48 += 2;
      }

      while (v48 != v46);
      goto LABEL_207;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v79 = 0;
      }

      else
      {
        v79 = v46;
      }

      LOWORD(v12) = *&ElementsAttrRawData[2 * v79];
      a3[v46++] = *&v12;
LABEL_207:
      ;
    }

    while (NumElements != v46);
    return *&v12;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_123:
    if (NumElements >= 2)
    {
      v54 = 0;
      v47 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v55 = a3 + 1;
      do
      {
        if (v8)
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        if (v8)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 + 1;
        }

        LODWORD(v12) = *&ElementsAttrRawData[4 * v56];
        v58 = *&ElementsAttrRawData[4 * v57];
        *(v55 - 1) = *&v12;
        *v55 = v58;
        v55 += 2;
        v54 += 2;
      }

      while (v54 != v47);
      goto LABEL_212;
    }

    v47 = 0;
    do
    {
      if (v8)
      {
        v80 = 0;
      }

      else
      {
        v80 = v47;
      }

      LODWORD(v12) = *&ElementsAttrRawData[4 * v80];
      a3[v47++] = *&v12;
LABEL_212:
      ;
    }

    while (NumElements != v47);
    return *&v12;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_139:
    if (NumElements >= 2)
    {
      v64 = 0;
      v53 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v65 = a3 + 1;
      do
      {
        if (v8)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64;
        }

        if (v8)
        {
          v67 = 0;
        }

        else
        {
          v67 = v64 + 1;
        }

        v12 = *&ElementsAttrRawData[8 * v66];
        v68 = *&ElementsAttrRawData[8 * v67];
        *(v65 - 1) = v12;
        *v65 = v68;
        v65 += 2;
        v64 += 2;
      }

      while (v64 != v53);
      goto LABEL_217;
    }

    v53 = 0;
    do
    {
      if (v8)
      {
        v81 = 0;
      }

      else
      {
        v81 = v53;
      }

      v12 = *&ElementsAttrRawData[8 * v81];
      a3[v53++] = v12;
LABEL_217:
      ;
    }

    while (NumElements != v53);
    return *&v12;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_156;
  }

LABEL_154:
  if (NumElements >= 2)
  {
    v70 = 0;
    v59 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v71 = a3 + 1;
    do
    {
      if (v8)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      if (v8)
      {
        v73 = 0;
      }

      else
      {
        v73 = v70 + 1;
      }

      LODWORD(v12) = *&ElementsAttrRawData[2 * v72] << 16;
      v74 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v73] << 16);
      *(v71 - 1) = *&v12;
      *v71 = v74;
      v71 += 2;
      v70 += 2;
    }

    while (v70 != v59);
    goto LABEL_222;
  }

  v59 = 0;
  do
  {
    if (v8)
    {
      v82 = 0;
    }

    else
    {
      v82 = v59;
    }

    LODWORD(v12) = *&ElementsAttrRawData[2 * v82] << 16;
    a3[v59++] = *&v12;
LABEL_222:
    ;
  }

  while (NumElements != v59);
  return *&v12;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned long long>(unsigned __int8 *result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_1A7598670));
      if (v16.i8[0])
      {
        *v14 = v10 & v13;
      }

      if (v16.i8[4])
      {
        v14[1] = (v13 >> a5) & v10;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75989F0));
      if (v18.i8[0])
      {
        v14[2] = (v13 >> (2 * a5)) & v10;
        if (v18.i8[4])
        {
LABEL_28:
          v14[3] = (v13 >> (3 * a5)) & v10;
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_29;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_28;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_29:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75DA400));
      if (v19.i8[0])
      {
        v14[4] = (v13 >> (4 * a5)) & v10;
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_31:
          if (v17 != 6)
          {
            goto LABEL_35;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_31;
      }

      v14[5] = (v13 >> (5 * a5)) & v10;
      if (v17 != 6)
      {
LABEL_35:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1A75DA6A0));
        if (v20.i8[0])
        {
          v14[6] = (v13 >> (6 * a5)) & v10;
        }

        if (v20.i8[4])
        {
          v14[7] = (v13 >> (7 * a5)) & v10;
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

void mlir::anonymous namespace::ConvertState::~ConvertState(mlir::_anonymous_namespace_::ConvertState *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::VariableFromTensorOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::VariableFromTensorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::VariableFromTensorOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertState::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  *v26 = *(a3 + 40);
  v7 = mlir::ValueRange::dereference_iterator(v26, 0);
  v25 = 0;
  if (mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(v7) & 1) != 0 || (v26[0] = v7, (DefiningOp = mlir::Value::getDefiningOp(v26)) != 0) && (mlir::matchThrough<mlir::anec::TensorBufferToTensor,mlir::UnrealizedConversionCastOp>(DefiningOp, &v25))
  {
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

    RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v10);
    v24 = v15;
    Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
    v18 = v17;
    isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
    v20 = mlir::MemRefType::get(Shape, v18, isSplat, 0, 0, 0);
    v21 = v20;
    if (v20)
    {
      v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    RankPromotionTypeForANE = v21;
    v24 = v20;
    *v26 = *(a3 + 40);
    v26[0] = mlir::ValueRange::dereference_iterator(v26, 0);
    v22 = mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>((a4 + 1), *(a2 + 24), &RankPromotionTypeForANE, v26);
    (*(*a4 + 8))(a4, a2, v22);
    return 1;
  }

  else
  {
    v12 = *(a2 + 24);
    v26[0] = "failed: state must come from function block arguments.";
    v27 = 259;
    RankPromotionTypeForANE = v26;
    v13 = a4[2];
    if (v13 && instruction::util::IsTasklet(v13))
    {
      (*(*v13 + 88))(v13, v12, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &RankPromotionTypeForANE);
    }

    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::State,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id)
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

void mlir::anonymous namespace::ConvertReadVariable::~ConvertReadVariable(mlir::_anonymous_namespace_::ConvertReadVariable *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReadVariableOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::ReadVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReadVariableOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertReadVariable::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *v19 = *(a3 + 40);
  v18 = mlir::ValueRange::dereference_iterator(v19, 0);
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v19[0] = mlir::getRankPromotionTypeForANE(v7, v8);
  v19[1] = v9;
  Shape = mlir::ShapedType::getShape(v19);
  v12 = v11;
  isSplat = mlir::ElementsAttr::isSplat(v19);
  v14 = mlir::MemRefType::get(Shape, v12, isSplat, 0, 0, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v19[0] = v15;
  v19[1] = v14;
  v16 = mlir::OpBuilder::create<mlir::anec::State,mlir::ShapedType &,mlir::Value>((a4 + 8), *(a2 + 24), v19, &v18);
  (*(*a4 + 8))(a4, a2, v16);
  return 1;
}

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::AddOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::AddOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::AddOp,mlir::anec::ElementwiseAdd,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v39;
  v37 = v39;
  v38 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v6, 8);
    v9 = v38;
    v8 = v37;
    RankPromotionTypeForANE = v7;
    v41 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  RankPromotionTypeForANE = v7;
  v41 = 0;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v41 = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, i);
      i = v41 + 1;
    }

    v12 = v38;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v38) = v12 + v6;
  mlir::ValueRange::ValueRange(v36, v37, v38);
  v43 = *v36;
  v42 = 261;
  RankPromotionTypeForANE = "add";
  v41 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v13);
  v33 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v32 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v15);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0, v16);
  v30 = mlir::Builder::getBoolAttr(a4 + 1, 0, v17);
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v19, v20);
  v41 = v21;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v28 = mlir::MemRefType::get(Shape, v23, isSplat, 0, 0, 0);
  v27 = mlir::ValueRange::dereference_iterator(&v43, 0);
  v26 = mlir::ValueRange::dereference_iterator(&v43, 1);
  v24 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v28, &v27, &v26, &StringAttr, &F32FloatAttr, &v33, &v32, &BoolAttr, &v30);
  (*(*a4 + 1))(a4, a2, v24);
  if (v37 != v39)
  {
    free(v37);
  }

  return 1;
}

void mlir::anonymous namespace::anonymous namespace::assembleBroadcastOperands(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 72);
  v7 = *(v6 + 24);
  v8 = *(v6 + 56);
  v9 = **a3;
  v10 = *(*a3 + 8);
  {
    {
      return;
    }

    v11 = v15;
    a3[2] = 0;
    if (a3[3] <= 1u)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  BroadcastOperands = v12;
  a3[2] = 0;
  if (a3[3] >= 2u)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 4, 2uLL, 8);
  v14 = a3[2];
LABEL_7:
  v16 = (*a3 + 8 * v14);
  *v16 = v11;
  v16[1] = BroadcastOperands;
  a3[2] += 2;
}

BOOL mlir::anonymous namespace::anonymous namespace::isBroadcastWithFullRank(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v15[0] = v3;
  v15[1] = v4;
  v5 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v14[0] = v5;
  v14[1] = v6;
  mlir::ShapedType::getShape(v15);
  v8 = v7;
  mlir::ShapedType::getShape(v14);
  if (v8 >= v9)
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(v15);
  if (mlir::ShapedType::getNumElements(Shape, v11) < 2)
  {
    return 0;
  }

  mlir::ShapedType::getShape(v14);
  return v12 > 3;
}

uint64_t mlir::anonymous namespace::anonymous namespace::getBroadcastOperands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a5;
  v10 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v29[0] = v10;
  v29[1] = v11;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v28[0] = v12;
  v28[1] = v13;
  Shape = mlir::ShapedType::getShape(v28);
  v16 = v14;
  v32 = v34;
  v33 = 0x400000000;
  v17 = (8 * v14) >> 3;
  if (v17 < 5)
  {
    v18 = 0;
    v19 = 8 * v14;
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v17, 8);
  v18 = v33;
  v19 = 8 * v16;
  if (v16)
  {
LABEL_11:
    memcpy(v32 + 8 * v18, Shape, v19);
    v18 = v33;
  }

LABEL_12:
  LODWORD(v33) = v18 + (v19 >> 3);
  mlir::ShapedType::getShape(v29);
  v20 = v33;
  if (v21 != v33)
  {
    v22 = v32;
    mlir::ShapedType::getShape(v29);
    llvm::SmallVectorImpl<long long>::insert(&v32, v22, v23 - v33, 1uLL);
    v20 = v33;
  }

  v24 = v32;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a5);
  v28[0] = mlir::MemRefType::get(v24, v20, ElementTypeOrSelf, 0, 0, 0);
  mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), a1, v28, &v31);
  v26 = v30;
  if (v32 != v34)
  {
    free(v32);
  }

  return v26;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::anec::ScaledElementWise::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::anonymous namespace::anonymous namespace::isCompatibleWithGOC(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  __s2 = a2;
  result = mlir::Value::getDefiningOp(&__s2);
  if (result)
  {
    {
      v22 = result;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      result = v22;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
    if (result)
    {
      v5 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
      v6 = v5 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8) : 0;
      v23[0] = v5;
      v23[1] = v6;
      Shape = mlir::ShapedType::getShape(v23);
      result = mlir::ShapedType::getNumElements(Shape, v8);
      if (result != 1)
      {
        v9 = mlir::ShapedType::getShape(v23);
        if (v10 >= 3 && (v11 = v9, v12 = v10, v13 = mlir::ShapedType::getShape(v23), mlir::ShapedType::getNumElements(v13, v14) == *(v11 + (((v12 << 32) - 0x300000000) >> 29))))
        {
          v15 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v15)
          {
            v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
          }

          else
          {
            v16 = 0;
          }

          __s2 = v15;
          v25 = v16;
          v17 = mlir::ShapedType::getShape(&__s2);
          v19 = v18;
          __s2 = v26;
          v25 = 0x400000000;
          if (mlir::OpTrait::util::getBroadcastedShape(v17, v18, v11, v12, &__s2))
          {
            v20 = __s2;
            result = v19 == v25 && memcmp(v17, __s2, 8 * v25) == 0;
          }

          else
          {
            result = 0;
            v20 = __s2;
          }

          if (v20 != v26)
          {
            v21 = result;
            free(v20);
            return v21;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseAdd,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::MultiplyOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MultiplyOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MultiplyOp,mlir::anec::ElementwiseMult,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::StringAttr **a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 40);
  v6 = *(a3 + 48);
  v8 = v39;
  v37 = v39;
  v38 = 0x200000000;
  if (v6 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v6, 8);
    v9 = v38;
    v8 = v37;
    RankPromotionTypeForANE = v7;
    v41 = 0;
    goto LABEL_4;
  }

  v9 = 0;
  RankPromotionTypeForANE = v7;
  v41 = 0;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v41 = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&RankPromotionTypeForANE, i);
      i = v41 + 1;
    }

    v12 = v38;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v38) = v12 + v6;
  mlir::ValueRange::ValueRange(v36, v37, v38);
  v43 = *v36;
  v42 = 261;
  RankPromotionTypeForANE = "mul";
  v41 = 3;
  StringAttr = mlir::Builder::getStringAttr(a4 + 1, &RankPromotionTypeForANE);
  F32FloatAttr = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v13);
  v33 = mlir::Builder::getF32FloatAttr(a4 + 1, 1.0, v14);
  v32 = mlir::Builder::getF32FloatAttr(a4 + 1, 0.0, v15);
  BoolAttr = mlir::Builder::getBoolAttr(a4 + 1, 0, v16);
  v30 = mlir::Builder::getBoolAttr(a4 + 1, 0, v17);
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v19, v20);
  v41 = v21;
  isSplat = mlir::ElementsAttr::isSplat(&RankPromotionTypeForANE);
  if (mlir::Type::isSignlessInteger(&isSplat, 1))
  {
    isSplat = mlir::Builder::getIntegerType(a4 + 1, 8, 1);
  }

  Shape = mlir::ShapedType::getShape(&RankPromotionTypeForANE);
  v28 = mlir::MemRefType::get(Shape, v23, isSplat, 0, 0, 0);
  v27 = mlir::ValueRange::dereference_iterator(&v43, 0);
  v26 = mlir::ValueRange::dereference_iterator(&v43, 1);
  v24 = mlir::OpBuilder::create<mlir::anec::ScaledElementWise,mlir::MemRefType &,mlir::Value,mlir::Value,mlir::StringAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::FloatAttr &,mlir::BoolAttr &,mlir::BoolAttr &>((a4 + 1), *(a2 + 24), &v28, &v27, &v26, &StringAttr, &F32FloatAttr, &v33, &v32, &BoolAttr, &v30);
  (*(*a4 + 1))(a4, a2, v24);
  if (v37 != v39)
  {
    free(v37);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMult,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::SubtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::SubtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SubtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::SubtractOp,mlir::anec::ElementwiseSub,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
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
    v38[0] = v7;
    v38[1] = 0;
    goto LABEL_4;
  }

  v9 = 0;
  v38[0] = v7;
  v38[1] = 0;
  if (v6)
  {
LABEL_4:
    v10 = &v8[8 * v9];
    for (i = 0; i != v6; v38[1] = i)
    {
      *v10++ = mlir::ValueRange::dereference_iterator(v38, i);
      i = v38[1] + 1;
    }

    v12 = v34;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  LODWORD(v34) = v12 + v6;
  mlir::ValueRange::ValueRange(v38, v33, v34);
  mlir::ValueRange::ValueRange(&v32, v33, v34);
  *v38 = v32;
  v13 = mlir::ValueRange::dereference_iterator(v38, 0);
  v14 = mlir::ValueRange::dereference_iterator(v38, 1);
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseSub,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::MaximumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MaximumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MaximumOp,mlir::anec::ElementwiseMax,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMax,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMax,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

uint64_t mlir::OpConversionPattern<mlir::mps::MinimumOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::OpConversionPattern<mlir::mps::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::MinimumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::anonymous namespace::ConvertElementwiseBinary<mlir::mps::MinimumOp,mlir::anec::ElementwiseMin,(mlir::anec::Family)2>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>((a4 + 8), *(a2 + 24), &v15);
  (*(*a4 + 8))(a4, a2, v13);
  if (v15 != v17)
  {
    free(v15);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ElementwiseMin,llvm::SmallVector<mlir::Value,2u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::anec::Ceil::build(a1, v14, v15[0], v15[1], 0, 0);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMin,void>::id)
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

void *mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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

void mlir::anonymous namespace::ConvertElementwiseBinaryA14Plus<mlir::mps::PowerOp,mlir::anec::ElementwisePower,(mlir::anec::Family)2>::~ConvertElementwiseBinaryA14Plus(void *a1)
{
  v2 = a1[10];
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