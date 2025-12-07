float mlir::ANECRegionOpCreator::computeDeviceRegionCost(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v4 = 0.0;
  v3[0] = this;
  v3[1] = &v4;
  v5 = v3;
  mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_19ANECRegionOpCreator23computeDeviceRegionCostES3_E3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
  return v4;
}

float mlir::ANECRegionOpCreator::computeModuleCost(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "anec", 4);
  v7 = 0.0;
  v6[0] = &LoadedDialect;
  v6[1] = this;
  v6[2] = &v7;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ANECRegionOpCreator::computeModuleCost(mlir::Operation *)::$_0>, v6, 1);
  return v7;
}

void mlir::ANECRegionOpCreator::canonicalizeTranslatedRegion(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = 0u;
  v4 = 0u;
  Context = mlir::Attribute::getContext((a2 + 24));
  v5 = &v7;
  v6 = 0x600000000;
  v9 = 0;
  v8 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  v13 = 0x2800000000;
  v14 = 0;
  v15 = 0;
  v16 = 0x2800000000;
  mlir::anec::getANECConvCanonicalizationPatterns(&Context);
}

void mlir::ANECRegionOpCreator::~ANECRegionOpCreator(void **this)
{
  *this = &unk_1F1A14450;
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v2 = this[29];
  if (v2 != this + 31)
  {
    free(v2);
  }

  mlir::FrozenRewritePatternSet::~FrozenRewritePatternSet((this + 26));
  mlir::ConversionTarget::~ConversionTarget((this + 5));
}

{
  *this = &unk_1F1A14450;
  if (*(this + 351) < 0)
  {
    operator delete(this[41]);
  }

  v2 = this[29];
  if (v2 != this + 31)
  {
    free(v2);
  }

  mlir::FrozenRewritePatternSet::~FrozenRewritePatternSet((this + 26));
  mlir::ConversionTarget::~ConversionTarget((this + 5));
}

void sub_1A6F234E4()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::ANECRegionOpCreator::getMarkAttrID(mlir::ANECRegionOpCreator *this, uint64_t a2)
{
  v2 = *(this + 78);
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      v3 = *(this + 1);
      if (v2 == 4)
      {
        v4 = "A16_region";
      }

      else
      {
        v4 = "A17_region";
      }

      goto LABEL_18;
    }

    if (v2 == 6)
    {
      v3 = *(this + 1);
      v4 = "A18_region";
      goto LABEL_18;
    }

    if (v2 == 7)
    {
      v3 = *(this + 1);
      v4 = "A11Legacy_region";
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 > 1)
    {
      v3 = *(this + 1);
      if (v2 == 2)
      {
        v4 = "A14_region";
      }

      else
      {
        v4 = "A15_region";
      }

      goto LABEL_18;
    }

    if (!v2)
    {
      v3 = *(this + 1);
      v4 = "A12_region";
      goto LABEL_18;
    }

    if (v2 == 1)
    {
      v3 = *(this + 1);
      v4 = "A13_region";
LABEL_18:
      v6 = v4;
      v7 = 259;
      return mlir::Builder::getStringAttr(v3, &v6);
    }
  }

  return a2;
}

uint64_t mlir::ANECRegionOpCreator::getCanonicalizationPatterns@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 216);
  *a2 = *(this + 208);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

ZinIrHalH13g *mlir::ANECRegionOpCreator::getRegionTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(*(a1 + 8), a2, v5);
}

uint64_t mlir::ANECRegionOpCreator::getBody(mlir::ANECRegionOpCreator *this, mlir::Operation *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    mlir::OpInterface<mlir::FormableRegionOpInterface,mlir::detail::FormableRegionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    return *(a2 + 2);
  }

  return result;
}

void mlir::ANECRegionOpCreator::materializeHostTypeConversion(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((mlir::materializeMPSToANECHostTypeConversion(*(a1 + 8), a2, a3, a4, a5, a6) & 1) == 0)
  {
    mlir::emitError(a2, v23);
    if (v23[0])
    {
      v20 = 3;
      v21 = "unable to materialize host type conversion";
      v22 = 42;
      v7 = &v20;
      v8 = v24;
      if (v25 >= v26)
      {
        if (v24 <= &v20 && v24 + 24 * v25 > &v20)
        {
          v19 = &v20 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v8 = v24;
          v7 = (v24 + v19);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
          v7 = &v20;
          v8 = v24;
        }
      }

      v9 = &v8[24 * v25];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      ++v25;
      if (v23[0])
      {
        mlir::InFlightDiagnostic::report(v23);
      }
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v31;
        v13 = __p;
        if (v31 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v31 = v11;
        operator delete(v13);
      }

      v14 = v28;
      if (v28)
      {
        v15 = v29;
        v16 = v28;
        if (v29 != v28)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x1AC55A040](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v28;
        }

        v29 = v14;
        operator delete(v16);
      }

      if (v24 != v27)
      {
        free(v24);
      }
    }
  }
}

ZinIrHalH13g *mlir::ANECRegionOpCreator::getCallOp(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *a3, uint64_t a4, uint64_t a5)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v9[1] = a5;
  v8 = a3;
  v5 = *(a1 + 8);
  v7 = 1;
  return mlir::OpBuilder::create<mlir::placement::RegionCall,mlir::Operation *&,mlir::placement::RegionType,mlir::ValueRange &>(v5, a2, &v8, &v7, v9);
}

void *mlir::ANECRegionOpCreator::getConvertedType(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v11[0] = a2;
  v11[1] = v3;
  if (mlir::ElementsAttr::getShapedType(v11))
  {
    Shape = mlir::ShapedType::getShape(v11);
    v6 = v5;
    isSplat = mlir::ElementsAttr::isSplat(v11);
    result = mlir::MemRefType::get(Shape, v6, isSplat, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  v10 = mlir::ElementsAttr::isSplat(v11);
  result = mlir::UnrankedMemRefType::get(v10, 0);
  if (result)
  {
LABEL_6:
    v9 = result;
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
    return v9;
  }

  return result;
}

unint64_t mlir::ANECRegionOpCreator::getClonedAttributes(mlir::ANECRegionOpCreator *this, const mlir::DictionaryAttr *a2)
{
  v11[9] = *MEMORY[0x1E69E9840];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[8] = 4;
  Value = mlir::AffineMapAttr::getValue(a2);
  v4 = mlir::DictionaryAttr::end(a2);
  if (Value != v4)
  {
    v5 = v4;
    do
    {
      v9 = *Value;
      if (*(mlir::NamedAttribute::getNameDialect(&v9) + 24) == &mlir::detail::TypeIDResolver<mlir::silc::SilcDialect,void>::id)
      {
        mlir::NamedAttrList::push_back(v10, v9, *(&v9 + 1));
      }

      ++Value;
    }

    while (Value != v5);
  }

  Context = mlir::Attribute::getContext(a2);
  result = mlir::NamedAttrList::getDictionary(v10, Context);
  if (v10[0] != v11)
  {
    v8 = result;
    free(v10[0]);
    return v8;
  }

  return result;
}

unint64_t mlir::ANECRegionOpCreator::getFinalizedAttributes(mlir::ANECRegionOpCreator *this, const mlir::DictionaryAttr *a2)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[8] = 4;
  Value = mlir::AffineMapAttr::getValue(a2);
  v4 = mlir::DictionaryAttr::end(a2);
  if (Value != v4)
  {
    v5 = v4;
    do
    {
      v14 = *Value;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v14);
      AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      if (v7 == 13 && *AttrData == 0x6168732E636C6973 && *(AttrData + 5) == 0x676E696472616873)
      {
        CompressedBytes = *(&v14 + 1);
        v13 = *(&v14 + 1);
        v9 = mlir::Attribute::getContext(&v13) != 0;
        *(&v14 + 1) = mlir::silc::ShardingAttr::inflateRank(&CompressedBytes, v9, 1);
      }

      mlir::NamedAttrList::push_back(v16, v14, *(&v14 + 1));
      ++Value;
    }

    while (Value != v5);
  }

  Context = mlir::Attribute::getContext(a2);
  result = mlir::NamedAttrList::getDictionary(v16, Context);
  if (v16[0] != v17)
  {
    v12 = result;
    free(v16[0]);
    return v12;
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RegionReturn,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RegionReturn,void>::id)
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

void llvm::DenseMap<mlir::OperationName,std::vector<mlir::RewritePattern *>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::vector<mlir::RewritePattern *>>>::copyFrom(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = (v3 + 16);
    v5 = 32 * v2;
    do
    {
      if ((*(v4 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          *v4 = v6;
          operator delete(v6);
        }
      }

      v4 += 4;
      v5 -= 32;
    }

    while (v5);
    v3 = *a1;
    v7 = (32 * *(a1 + 16));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

uint64_t mlir::ANECRegionOpCreator::isOpCompatible(mlir::Operation *)::$_1::operator()(uint64_t a1)
{
  v2 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8))
  {
    v13 = 0;
    v14 = 0;
    return 0;
  }

  v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  v13 = v2;
  v14 = v3;
  if (!v2)
  {
    return 0;
  }

  result = mlir::ElementsAttr::getShapedType(&v13);
  if (result)
  {
    v15 = a1;
    DefiningOp = mlir::Value::getDefiningOp(&v15);
    if (DefiningOp)
    {
      {
        v12 = DefiningOp;
        mlir::tensor::PadOp::getConstantPaddingValue();
        DefiningOp = v12;
      }

      if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return 1;
      }
    }

    Shape = mlir::ShapedType::getShape(&v13);
    if (!v7)
    {
      return 1;
    }

    else
    {
      v8 = Shape;
      v9 = 8 * v7 - 8;
      do
      {
        v10 = *v8++;
        result = v10 != 0;
        if (v10)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        v9 -= 8;
      }

      while (!v11);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_19ANECRegionOpCreator23computeDeviceRegionCostES3_E3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_(float ***a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
      v6 = *a1;
      v8[0] = a2;
      v8[1] = InterfaceFor;
      result = mlir::ExecutionCostOpInterface::getExecutionCost(v8, *(*v6 + 40));
      *v6[1] = v7 + *v6[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ANECRegionOpCreator::computeModuleCost(mlir::Operation *)::$_0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 48);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12[0] = *(v4 + 8);
    v6 = a2;
    Values = mlir::SparseElementsAttr::getValues(v12);
    a2 = v6;
  }

  else
  {
    Values = *(v4 + 24);
  }

  if (Values == **a1)
  {
    v8 = a2;
    InterfaceFor = mlir::OpInterface<mlir::ExecutionCostOpInterface,mlir::detail::ExecutionCostOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v12[0] = v8;
    v12[1] = InterfaceFor;
    mlir::ExecutionCostOpInterface::getExecutionCost(v12, *(v3 + 320));
  }

  else
  {
    v7 = mlir::mps::detail::MPSAbstractCostModel::computeCost(v3 + 224, a2, *(v3 + 320));
  }

  v10 = *(a1 + 16);
  result = *&v7 + *v10;
  *v10 = result;
  return result;
}

void mlir::affine::AffineDialect::AffineDialect(int32x2_t *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "affine", 6, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id);
  *v3 = &unk_1F1A14560;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v6 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v6);
  }

  v5 = this[4];
  if (!mlir::MLIRContext::isDialectLoading(v5, "ub", 2))
  {
    v6 = v5;
    mlir::MLIRContext::getOrLoadDialect(v5, "ub", 2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>, &v6);
  }

  mlir::affine::AffineDialect::initialize(this);
}

void sub_1A6F24340()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

ZinIrHalH13g *mlir::affine::AffineDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t ***a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if ((*a3)[17] == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

mlir::Block *mlir::affine::isTopLevelValue(uint64_t a1)
{
  v5 = a1;
  if (a1 && (*(a1 + 8) & 7) == 7)
  {
    result = mlir::Block::getParentOp(*(a1 + 16));
    if (result)
    {
      {
        v3 = result;
        mlir::affine::isTopLevelValue();
        result = v3;
      }

      v2 = *(**(result + 6) + 32);

      return v2();
    }
  }

  else
  {
    result = *(mlir::Value::getDefiningOp(&v5) + 16);
    if (result)
    {
      result = mlir::Block::getParentOp(result);
      if (result)
      {
        {
          v4 = result;
          mlir::affine::isTopLevelValue();
          result = v4;
        }

        return (*(**(result + 6) + 32))(*(result + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id);
      }
    }
  }

  return result;
}

unint64_t mlir::affine::getAffineScope(mlir::affine *this, mlir::Operation *a2)
{
  do
  {
    v3 = *(this + 2);
    if (!v3)
    {
      return 0;
    }

    v4 = this;
    ParentOp = mlir::Block::getParentOp(v3);
    if (!ParentOp)
    {
      return 0;
    }

    this = ParentOp;
    {
      mlir::affine::isTopLevelValue();
    }
  }

  while (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id));
  v6 = *(v4 + 2);
  if (!v6)
  {
    return 0;
  }

  return mlir::Block::getParent(v6);
}

uint64_t mlir::affine::isValidSymbol(unint64_t *a1, unint64_t *a2)
{
  v25 = a1;
  v31[0] = (a1[1] & 0xFFFFFFFFFFFFFFF8);
  LODWORD(DefiningOp) = mlir::Type::isIndex(v31);
  if (!DefiningOp)
  {
    return DefiningOp & 1;
  }

  if (a2)
  {
    v31[0] = a1;
    if ((~*(a1 + 2) & 7) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1;
    }

    v27 = v5;
    if (v5)
    {
      ParentRegion = mlir::Value::getParentRegion(&v27);
    }

    else
    {
      ParentRegion = *(mlir::Value::getDefiningOp(v31) + 16);
      if (ParentRegion)
      {
        ParentRegion = mlir::Block::getParent(ParentRegion);
      }
    }

    if (ParentRegion == a2)
    {
      return 1;
    }

    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      v16 = a2[2];
      if (!v16)
      {
        return 0;
      }

      {
      }

      if ((*(**(v16 + 48) + 32))(*(v16 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v7 = DefiningOp;
  v24 = 0;
  v31[0] = &v24;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(v31, DefiningOp))
  {
    return 1;
  }

  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    if ((*(v7 + 46) & 0x80) == 0)
    {
      return 1;
    }

    v17 = *(v7 + 68);
    if (!v17)
    {
      return 1;
    }

    v18 = *(v7 + 72);
    v19 = v17 - 1;
    v20 = (v18 + 24);
    do
    {
      v21 = *v20;
      v20 += 4;
      LODWORD(DefiningOp) = mlir::affine::isValidSymbol(v21, a2);
      v23 = v19-- != 0;
    }

    while (DefiningOp && v23);
    return DefiningOp & 1;
  }

  if (!mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7))
  {
    if (!a2)
    {
      return 0;
    }

    DefiningOp = a2[2];
    if (DefiningOp)
    {
      if (mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(DefiningOp))
      {
        return 0;
      }

LABEL_31:
      DefiningOp = *(a2[2] + 16);
      if (DefiningOp)
      {
        DefiningOp = mlir::Block::getParent(DefiningOp);
        if (DefiningOp)
        {
          return mlir::affine::isValidSymbol(v25, DefiningOp) & 1;
        }
      }
    }

    return DefiningOp & 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7);
  v31[0] = v7;
  v31[1] = InterfaceFor;
  v30 = a2;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(v31);
  LOBYTE(DefiningOp) = mlir::affine::isTopLevelValue(FunctionType);
  if (DefiningOp)
  {
    return DefiningOp & 1;
  }

  v11 = DefiningOp;
  v12 = mlir::FunctionOpInterface::getFunctionType(v31);
  LOBYTE(DefiningOp) = v11;
  if ((~*(v12 + 8) & 7) == 0)
  {
    return DefiningOp & 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(v31);
  ConstantIntValue = mlir::getConstantIntValue(isSplat);
  LOBYTE(DefiningOp) = v11;
  if ((v15 & 1) == 0)
  {
    return DefiningOp & 1;
  }

  v27 = mlir::FunctionOpInterface::getFunctionType(v31);
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  while (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    if (*(*(*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      return 0;
    }

    v27 = *(*(DefiningOp + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v27);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v29 = ConstantIntValue;
  v28 = 0;
  v26[0] = &v29;
  v26[1] = &v30;
  v27 = DefiningOp;
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  return HIBYTE(v28) & v28 & 1;
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

uint64_t mlir::affine::parseDimAndSymbolList(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18[32] = *MEMORY[0x1E69E9840];
  v16 = v18;
  v17 = 0x800000000;
  if (((*(*a1 + 720))(a1, &v16, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    v13 = 0;
    v14 = v16;
    if (v16 == v18)
    {
      return v13;
    }

    goto LABEL_12;
  }

  *a3 = v17;
  v6 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  if ((*(*a1 + 720))(a1, &v16, 6, 1, 0xFFFFFFFFLL))
  {
    if (!v17)
    {
      v13 = 1;
      v14 = v16;
      if (v16 == v18)
      {
        return v13;
      }

      goto LABEL_12;
    }

    v9 = v16;
    v10 = 32 * v17 - 32;
    do
    {
      v11 = (*(*a1 + 728))(a1, v9, IndexType, a2);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 += 32;
      v12 = v10;
      v10 -= 32;
    }

    while (v12);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 & 1;
  v14 = v16;
  if (v16 != v18)
  {
LABEL_12:
    free(v14);
  }

  return v13;
}

BOOL mlir::affine::AffineApplyOp::parse(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v31 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v31, 0, "map", 3uLL, a2 + 112))
  {
    return 0;
  }

  v30 = 0;
  if ((mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v30) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v31);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims == v30 && *(a2 + 24) == mlir::AffineMap::getNumSymbols(&Value) + NumDims)
  {
    v8 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
    v9 = *(a2 + 72);
    if (v9 + v8 > *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v9 + v8, 8);
      v9 = *(a2 + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else if (v8)
    {
LABEL_8:
      v10 = *(a2 + 64) + 8 * v9;
      v11 = v10;
      v12 = v8;
      if (v8 < 4)
      {
        goto LABEL_40;
      }

      v11 = (v10 + 8 * (v8 & 0xFFFFFFFC));
      v12 = v8 & 3;
      v13 = vdupq_n_s64(IndexType);
      v14 = (v10 + 16);
      v15 = v8 & 0xFFFFFFFC;
      do
      {
        v14[-1] = v13;
        *v14 = v13;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if ((v8 & 0xFFFFFFFC) != v8)
      {
LABEL_40:
        do
        {
          *v11++ = IndexType;
          --v12;
        }

        while (v12);
      }
    }

    *(a2 + 72) = v9 + v8;
    return 1;
  }

  v17 = (*(*a1 + 16))(a1);
  v27 = "dimension or symbol index mismatch";
  v28 = 259;
  (*(*a1 + 24))(v32, a1, v17, &v27);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
  v18 = result;
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
    result = v18;
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
      result = v18;
    }

    v19 = __p;
    if (__p)
    {
      v20 = v38;
      v21 = __p;
      if (v38 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v38 = v19;
      operator delete(v21);
      result = v18;
    }

    v22 = v35;
    if (v35)
    {
      v23 = v36;
      v24 = v35;
      if (v36 != v35)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v35;
      }

      v36 = v22;
      operator delete(v24);
      result = v18;
    }

    if (v33 != &v34)
    {
      free(v33);
      return v18;
    }
  }

  return result;
}

llvm::raw_ostream *printDimAndSymbolList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a4 - a2;
  v11 = (*(*a6 + 16))(a6);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 40);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 40;
  }

  v35 = a1;
  v13 = a1 + 32 * a2;
  v14 = a5;
  if (v10 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  v16 = (*(*a6 + 16))(a6);
  if (v15)
  {
    v17 = v16;
    (*(*a6 + 160))(a6, *(v13 + 24));
    v18 = v15 - 1;
    if (v15 != 1)
    {
      v24 = (v13 + 56);
      do
      {
        v26 = v17[4];
        if (v17[3] - v26 <= 1uLL)
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }

        else
        {
          *v26 = 8236;
          v17[4] += 2;
        }

        v25 = *v24;
        v24 += 4;
        (*(*a6 + 160))(a6, v25);
        --v18;
      }

      while (v18);
    }
  }

  result = (*(*a6 + 16))(a6);
  v20 = *(result + 4);
  if (v20 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v20 + 1;
    *v20 = 41;
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  v22 = (*(*a6 + 16))(a6);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 91);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 91;
  }

  v27 = (*(*a6 + 16))(a6);
  (*(*a6 + 160))(a6, *(v13 + 32 * v14 + 24));
  if (v21 != 1)
  {
    v29 = a2 + v14 - a4 + 1;
    v30 = (32 * a2 + 32 * v14 + v35 + 56);
    do
    {
      v33 = v27[4];
      if (v27[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v27[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v27, ", ", 2uLL);
      }

      v31 = *v30;
      v30 += 4;
      (*(*a6 + 160))(a6, v31);
    }

    while (!__CFADD__(v29++, 1));
  }

  result = (*(*a6 + 16))(a6);
  v28 = *(result + 4);
  if (v28 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 93);
  }

  else
  {
    *(result + 4) = v28 + 1;
    *v28 = 93;
  }

  return result;
}

unint64_t mlir::affine::AffineApplyOp::fold(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15[0] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v15);
  v4 = mlir::AffineMap::getResult(&Value, 0);
  v15[0] = v4;
  if (mlir::arith::FastMathFlagsAttr::getValue(v15) == 6)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_3:
      v5 = *(*a1 + 72) + 32 * mlir::AffineDimExpr::getPosition(&v13);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_3;
    }
  }

  v15[0] = v4;
  if (mlir::arith::FastMathFlagsAttr::getValue(v15) == 7)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_7:
      NumDims = mlir::AffineMap::getNumDims(&Value);
      v5 = *(*a1 + 72) + 32 * (mlir::AffineDimExpr::getPosition(&v13) + NumDims);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_7;
    }
  }

  v15[0] = v16;
  v15[1] = 0x100000000;
  LOBYTE(v13) = 0;
  v8 = mlir::AffineMap::constantFold(&Value, *(a2 + 48), *(a2 + 56), v15, &v13);
  if (v13 == 1)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) & 0xFFFFFFFFFFFFFFFBLL;
    v11 = v15[0];
  }

  else
  {
    v11 = v15[0];
    if (v8)
    {
      result = *v15[0] & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      result = 0;
    }
  }

  if (v11 != v16)
  {
    v12 = result;
    free(v11);
    return v12;
  }

  return result;
}

void composeAffineMapAndOperands(unsigned int **a1, char **a2)
{
  v106[6] = *MEMORY[0x1E69E9840];
  if (!mlir::arith::FastMathFlagsAttr::getValue(a1))
  {
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
    return;
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  v5 = *a2;
  NumDims = mlir::AffineMap::getNumDims(a1);
  v97 = v99;
  *v98 = 0x400000000;
  if (NumDims >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, NumDims, 8);
    v7 = v98[0];
LABEL_7:
    memcpy(v97 + 8 * v7, v5, 8 * NumDims);
    v8 = v98[0];
    goto LABEL_8;
  }

  if (NumDims)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:
  v98[0] = v8 + NumDims;
  v9 = *a2;
  v10 = &v9[8 * mlir::AffineMap::getNumDims(a1)];
  v11 = a2 + 1;
  v12 = &(*a2)[8 * *(a2 + 2)];
  v94 = v96;
  *v95 = 0x400000000;
  v13 = (v12 - v10) >> 3;
  if (v13 < 5)
  {
    v14 = 0;
    if (v10 == v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v13, 8);
  v14 = v95[0];
  if (v10 != v12)
  {
LABEL_12:
    memcpy(v94 + 8 * v14, v10, v12 - v10);
    v14 = v95[0];
  }

LABEL_13:
  v15 = v14 + ((v12 - v10) >> 3);
  v95[0] = v15;
  v16 = v98[0];
  if (v15 | v98[0])
  {
    v17 = 0;
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = mlir::AffineBinaryOpExpr::getLHS(a1);
        v20 = v98[0];
        v21 = (v18 - v98[0]);
        v22 = (v18 >= v98[0] ? v94 + 8 * v21 : v97 + 8 * v17);
        if (*v22)
        {
          v23 = v19;
          DefiningOp = mlir::Value::getDefiningOp(v22);
          if (DefiningOp)
          {
            if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
            {
              break;
            }
          }
        }

        v17 = (v18 + 1);
        v16 = v98[0];
        v15 = v95[0];
        v18 = v17;
        if ((v95[0] + v98[0]) == v17)
        {
          goto LABEL_70;
        }
      }

      *v22 = 0;
      v104 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
      v25 = DefiningOp;
      Value = mlir::AffineMapAttr::getValue(&v104);
      if ((*(v25 + 46) & 0x80) != 0)
      {
        v26 = v25;
        v27 = *(v25 + 72);
        v28 = *(v26 + 68);
        v104 = v106;
        v105 = 0x600000000;
        if (v28 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v28, 8);
          v29 = &v104[8 * v105];
          if (v29 >= v27 + 32 * v28 || v27 + 24 >= &v104[8 * v105 + 8 * v28])
          {
            v31 = v28 & 3;
            if ((v28 & 3) == 0)
            {
              v31 = 4;
            }

            v32 = v28 - v31;
            v33 = &v29[8 * v32];
            v34 = (v27 + 88);
            v35 = (v29 + 16);
            v36 = v32;
            do
            {
              v37 = v34 - 8;
              v38 = vld4q_f64(v37);
              v39 = vld4q_f64(v34);
              *(v35 - 1) = v38;
              *v35 = v39;
              v34 += 16;
              v35 += 2;
              v36 -= 4;
            }

            while (v36);
            v29 = v33;
          }

          else
          {
LABEL_37:
            v32 = 0;
          }

          v40 = v28 - v32;
          v41 = (v27 + 32 * v32 + 24);
          do
          {
            v42 = *v41;
            v41 += 4;
            *v29 = v42;
            v29 += 8;
            --v40;
          }

          while (v40);
          v43 = v105;
          goto LABEL_41;
        }

        if (v28)
        {
          v29 = v106;
          goto LABEL_37;
        }

        v43 = 0;
      }

      else
      {
        LODWORD(v28) = 0;
        v43 = 0;
        v104 = v106;
        HIDWORD(v105) = 6;
      }

LABEL_41:
      LODWORD(v105) = v43 + v28;
      mlir::affine::canonicalizeMapAndOperands(&Value, &v104);
      v102 = mlir::AffineMap::shiftDims(&Value, v98[0], 0);
      v91 = mlir::AffineMap::shiftSymbols(&v102, v95[0], 0);
      Result = mlir::AffineMap::getResult(&v91, 0);
      v44 = v104;
      v45 = v105;
      v46 = mlir::AffineMap::getNumDims(&Value);
      if (v45 >= v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = v45;
      }

      mlir::ValueRange::ValueRange(&v102, v44, v47);
      v48 = v104;
      v49 = v105;
      NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
      v51 = v49 - NumSymbols;
      if (v49 <= NumSymbols)
      {
        v51 = 0;
      }

      if (v49 >= NumSymbols)
      {
        v52 = NumSymbols;
      }

      else
      {
        v52 = v49;
      }

      mlir::ValueRange::ValueRange(&v100, v48 + 8 * v51, v52);
      if (v18 < v20)
      {
        AffineDimExpr = mlir::getAffineDimExpr(v18, v23, v53);
        v56 = v102;
        v55 = v103;
        v57 = v98[0];
        v58 = v103 + v98[0];
        if (v58 <= v98[1])
        {
          goto LABEL_54;
        }

LABEL_53:
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v99, v58, 8);
        v57 = v98[0];
        goto LABEL_54;
      }

      AffineDimExpr = mlir::getAffineSymbolExpr(v21, v23, v53);
      v56 = v102;
      v55 = v103;
      v57 = v98[0];
      v58 = v103 + v98[0];
      if (v58 > v98[1])
      {
        goto LABEL_53;
      }

LABEL_54:
      v91 = v56;
      v92 = 0;
      if (v55)
      {
        v59 = 0;
        v60 = (v97 + 8 * v57);
        do
        {
          *v60++ = mlir::ValueRange::dereference_iterator(&v91, v59);
          v59 = v92 + 1;
          v92 = v59;
        }

        while (v59 != v55);
        LODWORD(v57) = v98[0];
      }

      v98[0] = v57 + v55;
      v62 = v100;
      v61 = v101;
      v63 = v95[0];
      v64 = v101 + v95[0];
      if (v64 > v95[1])
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v64, 8);
        v63 = v95[0];
      }

      v91 = v62;
      v92 = 0;
      if (v61)
      {
        v65 = 0;
        v66 = (v94 + 8 * v63);
        do
        {
          *v66++ = mlir::ValueRange::dereference_iterator(&v91, v65);
          v65 = v92 + 1;
          v92 = v65;
        }

        while (v65 != v61);
        LODWORD(v63) = v95[0];
      }

      v95[0] = v63 + v61;
      *a1 = mlir::AffineMap::replace(a1, AffineDimExpr, Result, v98[0], (v63 + v61));
      if (v104 != v106)
      {
        free(v104);
      }

      v17 = 0;
      v18 = 0;
      v16 = v98[0];
      v15 = v95[0];
    }

    while (v95[0] | v98[0]);
  }

LABEL_70:
  *v11 = 0;
  v104 = v106;
  v105 = 0x400000000;
  v91 = v93;
  v92 = 0x400000000;
  if (v16 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v16, 8);
    v15 = v95[0];
    if (HIDWORD(v92) >= v95[0])
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v15 > 4)
  {
LABEL_74:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v15, 8);
  }

LABEL_75:
  if (v98[0])
  {
    v67 = 0;
    v68 = v97;
    v69 = 8 * v98[0];
    do
    {
      while (1)
      {
        v70 = *v68;
        if (!*v68)
        {
          break;
        }

        v71 = mlir::getAffineDimExpr(v67, LHS, v13);
        v72 = v105;
        if (v105 >= HIDWORD(v105))
        {
          v76 = v71;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 8);
          v71 = v76;
          v72 = v105;
        }

        *&v104[8 * v72] = v71;
        LODWORD(v105) = v105 + 1;
        v73 = *(a2 + 2);
        if (v73 >= *(a2 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v73 + 1, 8);
          v73 = *(a2 + 2);
        }

        v67 = (v67 + 1);
        *&(*a2)[8 * v73] = v70;
        ++*v11;
        ++v68;
        v69 -= 8;
        if (!v69)
        {
          goto LABEL_88;
        }
      }

      AffineConstantExpr = mlir::getAffineConstantExpr(0, LHS, v13);
      v75 = v105;
      if (v105 >= HIDWORD(v105))
      {
        v77 = AffineConstantExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v105 + 1, 8);
        AffineConstantExpr = v77;
        v75 = v105;
      }

      *&v104[8 * v75] = AffineConstantExpr;
      LODWORD(v105) = v105 + 1;
      ++v68;
      v69 -= 8;
    }

    while (v69);
  }

  else
  {
    v67 = 0;
  }

LABEL_88:
  if (v95[0])
  {
    v78 = 0;
    v79 = v94;
    v80 = 8 * v95[0];
    do
    {
      while (1)
      {
        v81 = *v79;
        if (!*v79)
        {
          break;
        }

        AffineSymbolExpr = mlir::getAffineSymbolExpr(v78, LHS, v13);
        v83 = v92;
        if (v92 >= HIDWORD(v92))
        {
          v88 = AffineSymbolExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 8);
          AffineSymbolExpr = v88;
          v83 = v92;
        }

        *(v91 + v83) = AffineSymbolExpr;
        LODWORD(v92) = v92 + 1;
        v84 = *(a2 + 2);
        if (v84 >= *(a2 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v84 + 1, 8);
          v84 = *(a2 + 2);
        }

        v78 = (v78 + 1);
        *&(*a2)[8 * v84] = v81;
        ++*v11;
        ++v79;
        v80 -= 8;
        if (!v80)
        {
          goto LABEL_102;
        }
      }

      v85 = mlir::getAffineConstantExpr(0, LHS, v13);
      v86 = v92;
      if (v92 >= HIDWORD(v92))
      {
        v87 = v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v93, v92 + 1, 8);
        v85 = v87;
        v86 = v92;
      }

      *(v91 + v86) = v85;
      LODWORD(v92) = v92 + 1;
      ++v79;
      v80 -= 8;
    }

    while (v80);
  }

  else
  {
    v78 = 0;
  }

LABEL_102:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v104, v105, v91, v92, v67, v78);
  mlir::affine::canonicalizeMapAndOperands(a1, a2);
  *a1 = mlir::simplifyAffineMap(*a1);
  if (v91 != v93)
  {
    free(v91);
  }

  if (v104 != v106)
  {
    free(v104);
  }

  if (v94 != v96)
  {
    free(v94);
  }

  if (v97 != v99)
  {
    free(v97);
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v15 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v22, v23, v21, v10, v11, v12, v13, v14, v20, *v21, *&v21[8], *&v21[16], *&v21[24], *&v21[32], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11]);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v16 = *a3;
  mlir::ValueRange::ValueRange(v23, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v22, v16, v23[0], v23[1]);
  v17 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v18;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v22[0] = *a1;
  v22[1] = 0;
  v23 = *(a1 + 16);
  v27 = v29;
  v28 = 0x600000000;
  v24 = mlir::foldAttributesIntoMap(v22, a3, a4, a5, &v27);
  composeAffineMapAndOperands(&v24, &v27);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v22, a2, &v24, &v27);
  if (v27 != v29)
  {
    free(v27);
  }

  if ((*(v7 + 46) & 0x80) == 0)
  {
    v11 = 0;
    v27 = v29;
    v28 = 0x600000000;
    goto LABEL_16;
  }

  v8 = *(v7 + 17);
  v27 = v29;
  v28 = 0x600000000;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_16;
  }

  if (v8 < 7)
  {
    v9 = 0;
    v10 = v8;
    goto LABEL_10;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v8, 8);
  v9 = v28;
  v10 = v8 - v28;
  if (v8 != v28)
  {
LABEL_10:
    bzero(v27 + 8 * v9, 8 * v10);
  }

  v12 = 0;
  LODWORD(v28) = v8;
  v13 = 24;
  do
  {
    v14 = *(*(v7 + 9) + v13);
    v21 = (v27 + v12);
    v24 = v14;
    DefiningOp = mlir::Value::getDefiningOp(&v24);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::Attribute>::match(&v21, DefiningOp);
    }

    v13 += 32;
    v12 += 8;
    --v8;
  }

  while (v8);
  v11 = v28;
LABEL_16:
  v24 = v26;
  v25 = 0x600000000;
  if ((mlir::Operation::fold(v7, v27, v11, &v24) & 1) != 0 && v25)
  {
    mlir::Operation::erase(v7, v16);
    v17 = v24;
    v18 = *v24;
    if (v24 == v26)
    {
      goto LABEL_24;
    }

LABEL_23:
    free(v17);
    goto LABEL_24;
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    (*(*v19 + 16))(v19, v7, 0, 0);
  }

  v18 = (v7 - 16) | 4;
  v17 = v24;
  if (v24 != v26)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v27 != v29)
  {
    free(v27);
  }

  return v18;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t *a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v11[0] = &v12;
  v11[1] = 1;
  v12 = a3;
  mlir::AffineMap::inferFromExprList(v11, 1uLL, *a1, &v13);
  result = mlir::affine::makeComposedFoldedAffineApply(a1, a2, *v13, a4, a5);
  if (v13 != v14)
  {
    v10 = result;
    free(v13);
    return v10;
  }

  return result;
}

void mlir::affine::canonicalizeMapAndOperands(mlir::AffineBinaryOpExpr *a1, uint64_t a2)
{
  v148[8] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(a1);
  v136 = &v138;
  v137 = 0x800000000;
  v4 = *(a2 + 8);
  if (v4 <= 8)
  {
    __src = &v125;
    v124 = 0x800000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v4, 8);
    v5 = *(a2 + 8);
    __src = &v125;
    v124 = 0x800000000;
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v125, v5, 8);
    }
  }

  NumSymbols = mlir::AffineMap::getNumSymbols(a1);
  NumDims = mlir::AffineMap::getNumDims(a1);
  v146 = v148;
  v147 = 0x800000000;
  if (NumDims)
  {
    v7 = NumDims;
    v8 = NumDims;
    if (NumDims < 9)
    {
      v9 = 0;
      v10 = NumDims;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, NumDims, 8);
      v9 = v147;
      v10 = v8 - v147;
      if (v8 == v147)
      {
        goto LABEL_13;
      }
    }

    bzero(&v146[v9], 8 * v10);
LABEL_13:
    LODWORD(v147) = v7;
  }

  NumInputs = mlir::AffineMap::getNumInputs(a1);
  if (NumInputs)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = NumInputs;
    do
    {
      v21 = mlir::AffineMap::getNumDims(a1);
      v18 = *(*a2 + 8 * v12);
      if (v12 >= v21)
      {
        v19 = v137;
        p_src = &v136;
        if (v137 >= HIDWORD(v137))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v137 + 1, 8);
          v19 = v137;
        }

        v16 = v14;
      }

      else
      {
        v133 = *(*a2 + 8 * v12);
        if (v18 && (v120 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v120)) && (mlir::affine::isTopLevelValue(v18) || (DefiningOp = mlir::Value::getDefiningOp(&v133)) != 0 && (v25 = v133, AffineScope = mlir::affine::getAffineScope(DefiningOp, v24), mlir::affine::isValidSymbol(v25, AffineScope))))
        {
          v16 = (v14 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v14 + NumSymbols), LHS, v22);
          v146[v12] = AffineSymbolExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v124;
          p_src = &__src;
          if (v124 >= HIDWORD(v124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v125, v124 + 1, 8);
            v19 = v124;
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v13, LHS, v22);
          v146[v12] = AffineDimExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v137;
          p_src = &v136;
          if (v137 >= HIDWORD(v137))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v137 + 1, 8);
            v19 = v137;
          }

          v16 = v14;
          v13 = (v13 + 1);
        }
      }

      *(*p_src + v19) = v18;
      ++*(p_src + 2);
      ++v12;
      v14 = v16;
    }

    while (v15 != v12);
  }

  else
  {
    LODWORD(v16) = 0;
    v13 = 0;
  }

  v28 = __src;
  v29 = v124;
  v30 = v137;
  v31 = v137 + v124;
  if (v31 > HIDWORD(v137))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v31, 8);
    v30 = v137;
  }

  if (v29)
  {
    memcpy(v136 + 8 * v30, v28, 8 * v29);
    v30 = v137;
  }

  v32 = v30 + v29;
  LODWORD(v137) = v32;
  if (&v136 != a2)
  {
    v33 = *(a2 + 8);
    if (v33 >= v32)
    {
      if (v32)
      {
        memmove(*a2, v136, 8 * v32);
      }

      goto LABEL_46;
    }

    if (*(a2 + 12) >= v32)
    {
      if (v33)
      {
        memmove(*a2, v136, 8 * v33);
        v34 = v137 - v33;
        if (v137 == v33)
        {
LABEL_46:
          *(a2 + 8) = v32;
          goto LABEL_47;
        }
      }

      else
      {
        v33 = 0;
        v34 = v137;
        if (!v137)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v32, 8);
      v33 = 0;
      v34 = v137;
      if (!v137)
      {
        goto LABEL_46;
      }
    }

    memcpy((*a2 + 8 * v33), v136 + 8 * v33, 8 * v34);
    goto LABEL_46;
  }

LABEL_47:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v146, v147, 0, 0, v13, (v16 + NumSymbols));
  if (v146 != v148)
  {
    free(v146);
  }

  if (__src != &v125)
  {
    free(__src);
  }

  if (v136 != &v138)
  {
    free(v136);
  }

  v35 = mlir::AffineMap::getNumDims(a1);
  v119 = 1;
  if (v35 > 0x39)
  {
    operator new();
  }

  v119 = (v35 << 58) | 1;
  v36 = mlir::AffineMap::getNumSymbols(a1);
  v118 = 1;
  if (v36 > 0x39)
  {
    operator new();
  }

  v118 = (v36 << 58) | 1;
  v136 = &v119;
  v137 = &v118;
  mlir::AffineMap::walkExprs(a1, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::AffineMap>(mlir::AffineMap *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v136);
  v112 = mlir::AffineBinaryOpExpr::getLHS(a1);
  v146 = v148;
  v147 = 0x800000000;
  v37 = *(a2 + 8);
  if (v37 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v37, 8);
  }

  v136 = 1;
  v137 = -4096;
  v139 = -4096;
  v140 = -4096;
  v141 = -4096;
  v142 = -4096;
  v143 = -4096;
  v144 = -4096;
  v145 = -4096;
  v38 = mlir::AffineMap::getNumDims(a1);
  v133 = v135;
  v134 = 0x800000000;
  if (v38)
  {
    v39 = v38;
    v40 = v38;
    if (v38 < 9)
    {
      v41 = 0;
      v42 = v38;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v38, 8);
      v41 = v134;
      v42 = v40 - v134;
      if (v40 == v134)
      {
        goto LABEL_67;
      }
    }

    bzero(v133 + 8 * v41, 8 * v42);
LABEL_67:
    LODWORD(v134) = v39;
  }

  v43 = mlir::AffineMap::getNumDims(a1);
  if (v43)
  {
    v45 = 0;
    v46 = 0;
    v47 = v43;
    while (1)
    {
      if (v119)
      {
        if (((1 << v45) & (v119 >> 1) & ~(-1 << (v119 >> 58))) == 0)
        {
          goto LABEL_71;
        }
      }

      else if ((*(*v119 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
      {
        goto LABEL_71;
      }

      if (v136)
      {
        v49 = 8;
        v48 = &v137;
      }

      else
      {
        v48 = v137;
        v49 = v138;
        if (!v138)
        {
          v50 = 0;
          v51 = 0;
          goto LABEL_79;
        }
      }

      v55 = *(*a2 + 8 * v45);
      v56 = 0x9DDFEA08EB382D69 * ((8 * v55 - 0xAE502812AA7333) ^ HIDWORD(v55));
      v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v55) ^ (v56 >> 47) ^ v56);
      LODWORD(v56) = -348639895 * ((v57 >> 47) ^ v57);
      v58 = v49 - 1;
      v59 = v56 & (v49 - 1);
      v60 = v48[2 * v59];
      if (v55 == v60)
      {
LABEL_86:
        v52 = &v48[2 * v59];
        if (v136)
        {
          v61 = &v146;
        }

        else
        {
          v61 = (v137 + 16 * v138);
        }

        if (v52 == v61)
        {
          goto LABEL_90;
        }

        goto LABEL_70;
      }

      v66 = 1;
      while (v60 != -4096)
      {
        v67 = v59 + v66++;
        v59 = v67 & v58;
        v60 = v48[2 * v59];
        if (v55 == v60)
        {
          goto LABEL_86;
        }
      }

      v48 = v137;
      v50 = v138;
      if (v136)
      {
LABEL_90:
        v62 = mlir::getAffineDimExpr(v46, v112, v44);
        *(v133 + v45) = v62;
        v63 = *(*a2 + 8 * v45);
        v64 = v147;
        if (v147 >= HIDWORD(v147))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 8);
          v64 = v147;
        }

        v146[v64] = v63;
        v46 = (v46 + 1);
        LODWORD(v147) = v147 + 1;
        v65 = *(v133 + v45);
        v120 = *(*a2 + 8 * v45);
        v121 = v65;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v136, &v120, &v121, &__src);
        goto LABEL_71;
      }

      v51 = v138;
LABEL_79:
      v52 = &v48[2 * v51];
      v53 = &v48[2 * v50];
      if (v136)
      {
        v54 = &v146;
      }

      else
      {
        v54 = v53;
      }

      if (v52 == v54)
      {
        goto LABEL_90;
      }

LABEL_70:
      *(v133 + v45) = v52[1];
LABEL_71:
      if (++v45 == v47)
      {
        goto LABEL_101;
      }
    }
  }

  v46 = 0;
LABEL_101:
  __src = 1;
  v124 = -4096;
  v126 = -4096;
  v127 = -4096;
  v128 = -4096;
  v129 = -4096;
  v130 = -4096;
  v131 = -4096;
  v132 = -4096;
  v68 = mlir::AffineMap::getNumSymbols(a1);
  v120 = v122;
  v121 = 0x800000000;
  if (v68)
  {
    v69 = v68;
    v70 = v68;
    if (v68 < 9)
    {
      v71 = 0;
      v72 = v68;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v68, 8);
      v71 = v121;
      v72 = v70 - v121;
      if (v70 == v121)
      {
        goto LABEL_107;
      }
    }

    bzero(v120 + 8 * v71, 8 * v72);
LABEL_107:
    LODWORD(v121) = v69;
  }

  v73 = mlir::AffineMap::getNumSymbols(a1);
  if (v73)
  {
    v74 = 0;
    v75 = 0;
    v76 = v73;
    while (1)
    {
      if (v118)
      {
        if (((1 << v74) & (v118 >> 1) & ~(-1 << (v118 >> 58))) == 0)
        {
          goto LABEL_111;
        }
      }

      else if ((*(*v118 + 8 * (v74 >> 6)) & (1 << v74)) == 0)
      {
        goto LABEL_111;
      }

      v117 = 0;
      v77 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v74));
      v115 = &v117;
      v113 = v77;
      v78 = mlir::Value::getDefiningOp(&v113);
      if (v78 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v115, v78))
      {
        mlir::IntegerAttr::getValue(&v117, &v113);
        if (v114 > 0x40)
        {
          v80 = *v113;
        }

        else if (v114)
        {
          v80 = (v113 << -v114) >> -v114;
        }

        else
        {
          v80 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v80, v112, v79);
        *(v120 + v74) = AffineConstantExpr;
        if (v114 >= 0x41 && v113)
        {
          MEMORY[0x1AC55A040](v113, 0x1000C8000313F17);
        }

        goto LABEL_111;
      }

      v82 = mlir::AffineMap::getNumDims(a1) + v74;
      if (__src)
      {
        v84 = 8;
        v83 = &v124;
      }

      else
      {
        v83 = v124;
        v84 = v125;
        if (!v125)
        {
          v85 = 0;
          v86 = 0;
          goto LABEL_125;
        }
      }

      v90 = *(*a2 + 8 * v82);
      v91 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
      v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v91 >> 47) ^ v91);
      LODWORD(v91) = -348639895 * ((v92 >> 47) ^ v92);
      v93 = v84 - 1;
      v94 = v91 & (v84 - 1);
      v95 = v83[2 * v94];
      if (v90 == v95)
      {
LABEL_132:
        v87 = &v83[2 * v94];
        if (__src)
        {
          v96 = &v133;
        }

        else
        {
          v96 = (v124 + 16 * v125);
        }

        if (v87 == v96)
        {
          goto LABEL_136;
        }

        goto LABEL_110;
      }

      v103 = 1;
      while (v95 != -4096)
      {
        v104 = v94 + v103++;
        v94 = v104 & v93;
        v95 = v83[2 * v94];
        if (v90 == v95)
        {
          goto LABEL_132;
        }
      }

      v83 = v124;
      v85 = v125;
      if (__src)
      {
LABEL_136:
        v97 = mlir::getAffineSymbolExpr(v75, v112, v81);
        *(v120 + v74) = v97;
        v98 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v74));
        v99 = v147;
        if (v147 >= HIDWORD(v147))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 8);
          v99 = v147;
        }

        v75 = (v75 + 1);
        v146[v99] = v98;
        LODWORD(v147) = v147 + 1;
        v100 = mlir::AffineMap::getNumDims(a1);
        v101 = *(v120 + v74);
        v115 = *(*a2 + 8 * (v100 + v74));
        v116 = v101;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v115, &v116, &v113);
        goto LABEL_111;
      }

      v86 = v125;
LABEL_125:
      v87 = &v83[2 * v86];
      v88 = &v83[2 * v85];
      if (__src)
      {
        v89 = &v133;
      }

      else
      {
        v89 = v88;
      }

      if (v87 == v89)
      {
        goto LABEL_136;
      }

LABEL_110:
      *(v120 + v74) = v87[1];
LABEL_111:
      if (++v74 == v76)
      {
        goto LABEL_151;
      }
    }
  }

  v75 = 0;
LABEL_151:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v133, v134, v120, v121, v46, v75);
  if (&v146 == a2)
  {
    goto LABEL_162;
  }

  v105 = v147;
  v106 = *(a2 + 8);
  if (v106 >= v147)
  {
    if (v147)
    {
      memmove(*a2, v146, 8 * v147);
    }

    goto LABEL_161;
  }

  if (*(a2 + 12) < v147)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v105, 8);
    v106 = 0;
    v107 = v147;
    if (!v147)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  if (!v106)
  {
    v106 = 0;
    v107 = v147;
    if (!v147)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  memmove(*a2, v146, 8 * v106);
  v107 = v147 - v106;
  if (v107)
  {
LABEL_160:
    memcpy((*a2 + 8 * v106), &v146[v106], 8 * v107);
  }

LABEL_161:
  *(a2 + 8) = v105;
LABEL_162:
  if (v120 != v122)
  {
    free(v120);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v124, (16 * v125));
  }

  if (v133 != v135)
  {
    free(v133);
  }

  if ((v136 & 1) == 0)
  {
    llvm::deallocate_buffer(v137, (16 * v138));
  }

  if (v146 != v148)
  {
    free(v146);
  }

  v108 = v118;
  if ((v118 & 1) == 0 && v118)
  {
    if (*v118 != v118 + 16)
    {
      free(*v118);
    }

    MEMORY[0x1AC55A070](v108, 0x1080C40EF38A13ELL);
  }

  v109 = v119;
  if ((v119 & 1) == 0 && v119)
  {
    if (*v119 != v119 + 16)
    {
      free(*v119);
    }

    MEMORY[0x1AC55A070](v109, 0x1080C40EF38A13ELL);
  }
}

void mlir::affine::canonicalizeSetAndOperands(mlir::IntegerSet *a1, uint64_t a2)
{
  v148[8] = *MEMORY[0x1E69E9840];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  Context = mlir::IntegerSet::getContext(a1);
  v136 = &v138;
  v137 = 0x800000000;
  v4 = *(a2 + 8);
  if (v4 <= 8)
  {
    __src = &v125;
    v124 = 0x800000000;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v4, 8);
    v5 = *(a2 + 8);
    __src = &v125;
    v124 = 0x800000000;
    if (v5 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v125, v5, 8);
    }
  }

  NumSymbols = mlir::AffineMap::getNumSymbols(a1);
  NumDims = mlir::AffineMap::getNumDims(a1);
  v146 = v148;
  v147 = 0x800000000;
  if (NumDims)
  {
    v7 = NumDims;
    v8 = NumDims;
    if (NumDims < 9)
    {
      v9 = 0;
      v10 = NumDims;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, NumDims, 8);
      v9 = v147;
      v10 = v8 - v147;
      if (v8 == v147)
      {
        goto LABEL_13;
      }
    }

    bzero(&v146[v9], 8 * v10);
LABEL_13:
    LODWORD(v147) = v7;
  }

  NumInputs = mlir::AffineMap::getNumInputs(a1);
  if (NumInputs)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = NumInputs;
    do
    {
      v21 = mlir::AffineMap::getNumDims(a1);
      v18 = *(*a2 + 8 * v12);
      if (v12 >= v21)
      {
        v19 = v137;
        p_src = &v136;
        if (v137 >= HIDWORD(v137))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v137 + 1, 8);
          v19 = v137;
        }

        v16 = v14;
      }

      else
      {
        v133 = *(*a2 + 8 * v12);
        if (v18 && (v120 = (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v120)) && (mlir::affine::isTopLevelValue(v18) || (DefiningOp = mlir::Value::getDefiningOp(&v133)) != 0 && (v25 = v133, AffineScope = mlir::affine::getAffineScope(DefiningOp, v24), mlir::affine::isValidSymbol(v25, AffineScope))))
        {
          v16 = (v14 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v14 + NumSymbols), Context, v22);
          v146[v12] = AffineSymbolExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v124;
          p_src = &__src;
          if (v124 >= HIDWORD(v124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v125, v124 + 1, 8);
            v19 = v124;
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v13, Context, v22);
          v146[v12] = AffineDimExpr;
          v18 = *(*a2 + 8 * v12);
          v19 = v137;
          p_src = &v136;
          if (v137 >= HIDWORD(v137))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v137 + 1, 8);
            v19 = v137;
          }

          v16 = v14;
          v13 = (v13 + 1);
        }
      }

      *(*p_src + v19) = v18;
      ++*(p_src + 2);
      ++v12;
      v14 = v16;
    }

    while (v15 != v12);
  }

  else
  {
    LODWORD(v16) = 0;
    LODWORD(v13) = 0;
  }

  v28 = __src;
  v29 = v124;
  v30 = v137;
  v31 = v137 + v124;
  if (v31 > HIDWORD(v137))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, &v138, v31, 8);
    v30 = v137;
  }

  if (v29)
  {
    memcpy(v136 + 8 * v30, v28, 8 * v29);
    v30 = v137;
  }

  v32 = v30 + v29;
  LODWORD(v137) = v32;
  if (&v136 != a2)
  {
    v33 = *(a2 + 8);
    if (v33 >= v32)
    {
      if (v32)
      {
        memmove(*a2, v136, 8 * v32);
      }

      goto LABEL_46;
    }

    if (*(a2 + 12) >= v32)
    {
      if (v33)
      {
        memmove(*a2, v136, 8 * v33);
        v34 = v137 - v33;
        if (v137 == v33)
        {
LABEL_46:
          *(a2 + 8) = v32;
          goto LABEL_47;
        }
      }

      else
      {
        v33 = 0;
        v34 = v137;
        if (!v137)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v32, 8);
      v33 = 0;
      v34 = v137;
      if (!v137)
      {
        goto LABEL_46;
      }
    }

    memcpy((*a2 + 8 * v33), v136 + 8 * v33, 8 * v34);
    goto LABEL_46;
  }

LABEL_47:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v146, v147, 0, 0, v13, v16 + NumSymbols);
  if (v146 != v148)
  {
    free(v146);
  }

  if (__src != &v125)
  {
    free(__src);
  }

  if (v136 != &v138)
  {
    free(v136);
  }

  v35 = mlir::AffineMap::getNumDims(a1);
  v119 = 1;
  if (v35 > 0x39)
  {
    operator new();
  }

  v119 = (v35 << 58) | 1;
  v36 = mlir::AffineMap::getNumSymbols(a1);
  v118 = 1;
  if (v36 > 0x39)
  {
    operator new();
  }

  v118 = (v36 << 58) | 1;
  v136 = &v119;
  v137 = &v118;
  mlir::IntegerSet::walkExprs(a1, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &v136);
  v112 = mlir::IntegerSet::getContext(a1);
  v146 = v148;
  v147 = 0x800000000;
  v37 = *(a2 + 8);
  if (v37 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v37, 8);
  }

  v136 = 1;
  v137 = -4096;
  v139 = -4096;
  v140 = -4096;
  v141 = -4096;
  v142 = -4096;
  v143 = -4096;
  v144 = -4096;
  v145 = -4096;
  v38 = mlir::AffineMap::getNumDims(a1);
  v133 = v135;
  v134 = 0x800000000;
  if (v38)
  {
    v39 = v38;
    v40 = v38;
    if (v38 < 9)
    {
      v41 = 0;
      v42 = v38;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v38, 8);
      v41 = v134;
      v42 = v40 - v134;
      if (v40 == v134)
      {
        goto LABEL_67;
      }
    }

    bzero(v133 + 8 * v41, 8 * v42);
LABEL_67:
    LODWORD(v134) = v39;
  }

  v43 = mlir::AffineMap::getNumDims(a1);
  if (v43)
  {
    v45 = 0;
    v46 = 0;
    v47 = v43;
    while (1)
    {
      if (v119)
      {
        if (((1 << v45) & (v119 >> 1) & ~(-1 << (v119 >> 58))) == 0)
        {
          goto LABEL_71;
        }
      }

      else if ((*(*v119 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
      {
        goto LABEL_71;
      }

      if (v136)
      {
        v49 = 8;
        v48 = &v137;
      }

      else
      {
        v48 = v137;
        v49 = v138;
        if (!v138)
        {
          v50 = 0;
          v51 = 0;
          goto LABEL_79;
        }
      }

      v55 = *(*a2 + 8 * v45);
      v56 = 0x9DDFEA08EB382D69 * ((8 * v55 - 0xAE502812AA7333) ^ HIDWORD(v55));
      v57 = 0x9DDFEA08EB382D69 * (HIDWORD(v55) ^ (v56 >> 47) ^ v56);
      LODWORD(v56) = -348639895 * ((v57 >> 47) ^ v57);
      v58 = v49 - 1;
      v59 = v56 & (v49 - 1);
      v60 = v48[2 * v59];
      if (v55 == v60)
      {
LABEL_86:
        v52 = &v48[2 * v59];
        if (v136)
        {
          v61 = &v146;
        }

        else
        {
          v61 = (v137 + 16 * v138);
        }

        if (v52 == v61)
        {
          goto LABEL_90;
        }

        goto LABEL_70;
      }

      v66 = 1;
      while (v60 != -4096)
      {
        v67 = v59 + v66++;
        v59 = v67 & v58;
        v60 = v48[2 * v59];
        if (v55 == v60)
        {
          goto LABEL_86;
        }
      }

      v48 = v137;
      v50 = v138;
      if (v136)
      {
LABEL_90:
        v62 = mlir::getAffineDimExpr(v46, v112, v44);
        *(v133 + v45) = v62;
        v63 = *(*a2 + 8 * v45);
        v64 = v147;
        if (v147 >= HIDWORD(v147))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 8);
          v64 = v147;
        }

        v146[v64] = v63;
        v46 = (v46 + 1);
        LODWORD(v147) = v147 + 1;
        v65 = *(v133 + v45);
        v120 = *(*a2 + 8 * v45);
        v121 = v65;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v136, &v120, &v121, &__src);
        goto LABEL_71;
      }

      v51 = v138;
LABEL_79:
      v52 = &v48[2 * v51];
      v53 = &v48[2 * v50];
      if (v136)
      {
        v54 = &v146;
      }

      else
      {
        v54 = v53;
      }

      if (v52 == v54)
      {
        goto LABEL_90;
      }

LABEL_70:
      *(v133 + v45) = v52[1];
LABEL_71:
      if (++v45 == v47)
      {
        goto LABEL_101;
      }
    }
  }

  LODWORD(v46) = 0;
LABEL_101:
  __src = 1;
  v124 = -4096;
  v126 = -4096;
  v127 = -4096;
  v128 = -4096;
  v129 = -4096;
  v130 = -4096;
  v131 = -4096;
  v132 = -4096;
  v68 = mlir::AffineMap::getNumSymbols(a1);
  v120 = v122;
  v121 = 0x800000000;
  if (v68)
  {
    v69 = v68;
    v70 = v68;
    if (v68 < 9)
    {
      v71 = 0;
      v72 = v68;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v68, 8);
      v71 = v121;
      v72 = v70 - v121;
      if (v70 == v121)
      {
        goto LABEL_107;
      }
    }

    bzero(v120 + 8 * v71, 8 * v72);
LABEL_107:
    LODWORD(v121) = v69;
  }

  v73 = mlir::AffineMap::getNumSymbols(a1);
  if (v73)
  {
    v74 = 0;
    v75 = 0;
    v76 = v73;
    while (1)
    {
      if (v118)
      {
        if (((1 << v74) & (v118 >> 1) & ~(-1 << (v118 >> 58))) == 0)
        {
          goto LABEL_111;
        }
      }

      else if ((*(*v118 + 8 * (v74 >> 6)) & (1 << v74)) == 0)
      {
        goto LABEL_111;
      }

      v117 = 0;
      v77 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v74));
      v115 = &v117;
      v113 = v77;
      v78 = mlir::Value::getDefiningOp(&v113);
      if (v78 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v115, v78))
      {
        mlir::IntegerAttr::getValue(&v117, &v113);
        if (v114 > 0x40)
        {
          v80 = *v113;
        }

        else if (v114)
        {
          v80 = (v113 << -v114) >> -v114;
        }

        else
        {
          v80 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v80, v112, v79);
        *(v120 + v74) = AffineConstantExpr;
        if (v114 >= 0x41 && v113)
        {
          MEMORY[0x1AC55A040](v113, 0x1000C8000313F17);
        }

        goto LABEL_111;
      }

      v82 = mlir::AffineMap::getNumDims(a1) + v74;
      if (__src)
      {
        v84 = 8;
        v83 = &v124;
      }

      else
      {
        v83 = v124;
        v84 = v125;
        if (!v125)
        {
          v85 = 0;
          v86 = 0;
          goto LABEL_125;
        }
      }

      v90 = *(*a2 + 8 * v82);
      v91 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
      v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v91 >> 47) ^ v91);
      LODWORD(v91) = -348639895 * ((v92 >> 47) ^ v92);
      v93 = v84 - 1;
      v94 = v91 & (v84 - 1);
      v95 = v83[2 * v94];
      if (v90 == v95)
      {
LABEL_132:
        v87 = &v83[2 * v94];
        if (__src)
        {
          v96 = &v133;
        }

        else
        {
          v96 = (v124 + 16 * v125);
        }

        if (v87 == v96)
        {
          goto LABEL_136;
        }

        goto LABEL_110;
      }

      v103 = 1;
      while (v95 != -4096)
      {
        v104 = v94 + v103++;
        v94 = v104 & v93;
        v95 = v83[2 * v94];
        if (v90 == v95)
        {
          goto LABEL_132;
        }
      }

      v83 = v124;
      v85 = v125;
      if (__src)
      {
LABEL_136:
        v97 = mlir::getAffineSymbolExpr(v75, v112, v81);
        *(v120 + v74) = v97;
        v98 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v74));
        v99 = v147;
        if (v147 >= HIDWORD(v147))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v146, v148, v147 + 1, 8);
          v99 = v147;
        }

        v75 = (v75 + 1);
        v146[v99] = v98;
        LODWORD(v147) = v147 + 1;
        v100 = mlir::AffineMap::getNumDims(a1);
        v101 = *(v120 + v74);
        v115 = *(*a2 + 8 * (v100 + v74));
        v116 = v101;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v115, &v116, &v113);
        goto LABEL_111;
      }

      v86 = v125;
LABEL_125:
      v87 = &v83[2 * v86];
      v88 = &v83[2 * v85];
      if (__src)
      {
        v89 = &v133;
      }

      else
      {
        v89 = v88;
      }

      if (v87 == v89)
      {
        goto LABEL_136;
      }

LABEL_110:
      *(v120 + v74) = v87[1];
LABEL_111:
      if (++v74 == v76)
      {
        goto LABEL_151;
      }
    }
  }

  LODWORD(v75) = 0;
LABEL_151:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v133, v134, v120, v121, v46, v75);
  if (&v146 == a2)
  {
    goto LABEL_162;
  }

  v105 = v147;
  v106 = *(a2 + 8);
  if (v106 >= v147)
  {
    if (v147)
    {
      memmove(*a2, v146, 8 * v147);
    }

    goto LABEL_161;
  }

  if (*(a2 + 12) < v147)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v105, 8);
    v106 = 0;
    v107 = v147;
    if (!v147)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  if (!v106)
  {
    v106 = 0;
    v107 = v147;
    if (!v147)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  memmove(*a2, v146, 8 * v106);
  v107 = v147 - v106;
  if (v107)
  {
LABEL_160:
    memcpy((*a2 + 8 * v106), &v146[v106], 8 * v107);
  }

LABEL_161:
  *(a2 + 8) = v105;
LABEL_162:
  if (v120 != v122)
  {
    free(v120);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v124, (16 * v125));
  }

  if (v133 != v135)
  {
    free(v133);
  }

  if ((v136 & 1) == 0)
  {
    llvm::deallocate_buffer(v137, (16 * v138));
  }

  if (v146 != v148)
  {
    free(v146);
  }

  v108 = v118;
  if ((v118 & 1) == 0 && v118)
  {
    if (*v118 != v118 + 16)
    {
      free(*v118);
    }

    MEMORY[0x1AC55A070](v108, 0x1080C40EF38A13ELL);
  }

  v109 = v119;
  if ((v119 & 1) == 0 && v119)
  {
    if (*v119 != v119 + 16)
    {
      free(*v119);
    }

    MEMORY[0x1AC55A070](v109, 0x1080C40EF38A13ELL);
  }
}

uint64_t mlir::affine::AffineDmaStartOp::getNumElements(mlir::affine::AffineDmaStartOp *this)
{
  InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  v3 = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*this, "tag_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  return *(*(*this + 72) + 32 * (NumInputs + v3 + mlir::AffineMap::getNumInputs(&InherentAttr) + 3) + 24);
}

BOOL mlir::affine::AffineDmaStartOp::parse(uint64_t a1, uint64_t a2)
{
  v50[16] = *MEMORY[0x1E69E9840];
  memset(v34, 0, 24);
  v33 = 0;
  v48 = v50;
  v49 = 0x400000000;
  memset(v32, 0, 24);
  v31 = 0;
  v45 = v47;
  v46 = 0x400000000;
  memset(v30, 0, 24);
  v29 = 0;
  v42 = v44;
  v43 = 0x400000000;
  memset(v28, 0, 24);
  v39 = v41;
  v40 = 0x200000000;
  v36 = v38;
  v37 = 0x300000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v48, &v33, "src_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v32, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v45, &v31, "dst_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v30, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v42, &v29, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v28, 1) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(a1, &v39, 0) & 1) == 0)
  {
    goto LABEL_44;
  }

  if ((v40 & 0xFFFFFFFD) != 0)
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected two stride related operands";
    goto LABEL_14;
  }

  v24 = v40;
  if (((*(*a1 + 584))(a1, &v36) & 1) == 0)
  {
LABEL_44:
    v9 = 0;
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v37 != 3)
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = "expected three types";
LABEL_14:
    v26[0] = v8;
    v27 = 259;
    (*(*a1 + 24))(v35, a1, v7, v26);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_46;
    }

LABEL_45:
    free(v10);
    goto LABEL_46;
  }

  if (((*(*a1 + 728))(a1, v34, *v36, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v49)
  {
    v11 = v48;
    v12 = 32 * v49;
    while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

LABEL_56:
    v9 = 0;
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_23:
  if (((*(*a1 + 728))(a1, v32, *(v36 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v46)
  {
    v13 = v45;
    v14 = 32 * v46;
    while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 16) & 1) != 0)
    {
      v13 += 32;
      v14 -= 32;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

LABEL_28:
  if (((*(*a1 + 728))(a1, v30, *(v36 + 2), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v43)
  {
    v15 = v42;
    v16 = 32 * v43;
    while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_56;
  }

LABEL_33:
  if (((*(*a1 + 728))(a1, v28, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v24 == 2 && v40)
  {
    v17 = v39;
    v18 = 32 * v40;
    while (((*(*a1 + 728))(a1, v17, IndexType, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_56;
  }

LABEL_39:
  v19 = v49;
  v35[0] = mlir::AffineMapAttr::getValue(&v33);
  if (v19 == mlir::AffineMap::getNumInputs(v35) && (v20 = v46, v26[0] = mlir::AffineMapAttr::getValue(&v31), v20 == mlir::AffineMap::getNumInputs(v26)) && (v21 = v43, Value = mlir::AffineMapAttr::getValue(&v29), v21 == mlir::AffineMap::getNumInputs(&Value)))
  {
    v9 = 1;
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v23 = (*(*a1 + 16))(a1);
    v26[0] = "memref operand count not equal to map.numInputs";
    v27 = 259;
    (*(*a1 + 24))(v35, a1, v23, v26);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    v10 = v36;
    if (v36 != v38)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v9;
}

uint64_t mlir::affine::AffineDmaStartOp::verifyInvariantsImpl(mlir::affine::AffineDmaStartOp *this)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 72) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA destination to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v93;
          v13 = __p;
          if (v93 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v93 = v11;
          operator delete(v13);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v14 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
    InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 72) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA tag to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v93;
          v20 = __p;
          if (v93 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v93 = v18;
          operator delete(v20);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v21 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    v84[0] = mlir::AffineMapAttr::getValue(&InherentAttr);
    v24 = mlir::AffineMap::getNumInputs(v84);
    InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
    Value = mlir::AffineMapAttr::getValue(&InherentAttr);
    v25 = mlir::AffineMap::getNumInputs(&Value) + v24;
    InherentAttr = mlir::Operation::getInherentAttr(*this, "tag_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    v27 = v25 + mlir::AffineMap::getNumInputs(&InherentAttr);
    if ((*(*this + 46) & 0x80) != 0)
    {
      v28 = *(*this + 68);
      if (v28 == v27 + 4 || v28 == v27 + 6)
      {
LABEL_55:
        AffineScope = mlir::affine::getAffineScope(*this, v26);
        v30 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          v31 = *(v30 + 72);
        }

        else
        {
          v31 = 0;
        }

        InherentAttr = mlir::Operation::getInherentAttr(v30, "src_map", 7);
        InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
        v32 = mlir::AffineMap::getNumInputs(&InherentAttr);
        if (v32)
        {
          v33 = v32;
          v34 = (v31 + 56);
          while (1)
          {
            v35 = *v34;
            InherentAttr = (*v34)[1] & 0xFFFFFFFFFFFFFFF8;
            if (!mlir::Type::isIndex(&InherentAttr))
            {
              break;
            }

            if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v35, AffineScope) & 1) == 0)
            {
              v84[0] = "src index must be a valid dimension or symbol identifier";
              v85 = 259;
              mlir::OpState::emitOpError(this, v84, &InherentAttr);
              v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
              if (InherentAttr)
              {
                mlir::InFlightDiagnostic::report(&InherentAttr);
              }

              if (v95 != 1)
              {
                return v1;
              }

              if (v94 != &v95)
              {
                free(v94);
              }

              v36 = __p;
              if (__p)
              {
                v37 = v93;
                v38 = __p;
                if (v93 != __p)
                {
                  do
                  {
                    v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                  }

                  while (v37 != v36);
                  v38 = __p;
                }

                v93 = v36;
                operator delete(v38);
              }

              v5 = v90;
              if (!v90)
              {
                goto LABEL_181;
              }

              v39 = v91;
              v7 = v90;
              if (v91 == v90)
              {
                goto LABEL_180;
              }

              do
              {
                v47 = *--v39;
                v46 = v47;
                *v39 = 0;
                if (v47)
                {
                  MEMORY[0x1AC55A040](v46, 0x1000C8077774924);
                }
              }

              while (v39 != v5);
              goto LABEL_179;
            }

            v34 += 4;
            if (!--v33)
            {
              goto LABEL_95;
            }
          }

          v84[0] = "src index to dma_start must have 'index' type";
          v85 = 259;
          mlir::OpState::emitOpError(this, v84, &InherentAttr);
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
          if (InherentAttr)
          {
            mlir::InFlightDiagnostic::report(&InherentAttr);
          }

          if (v95 != 1)
          {
            return v1;
          }

          if (v94 != &v95)
          {
            free(v94);
          }

          v40 = __p;
          if (__p)
          {
            v41 = v93;
            v42 = __p;
            if (v93 != __p)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = __p;
            }

            v93 = v40;
            operator delete(v42);
          }

          v5 = v90;
          if (!v90)
          {
            goto LABEL_181;
          }

          v43 = v91;
          v7 = v90;
          if (v91 == v90)
          {
            goto LABEL_180;
          }

          do
          {
            v45 = *--v43;
            v44 = v45;
            *v43 = 0;
            if (v45)
            {
              MEMORY[0x1AC55A040](v44, 0x1000C8077774924);
            }
          }

          while (v43 != v5);
        }

        else
        {
LABEL_95:
          DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(this);
          if (v49)
          {
            v50 = v49;
            v51 = (DstIndices + 24);
            while (1)
            {
              v52 = *v51;
              InherentAttr = (*v51)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v52, AffineScope) & 1) == 0)
              {
                v84[0] = "dst index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v53 = __p;
                if (__p)
                {
                  v54 = v93;
                  v55 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
                    }

                    while (v54 != v53);
                    v55 = __p;
                  }

                  v93 = v53;
                  operator delete(v55);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v56 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v64 = *--v56;
                  v63 = v64;
                  *v56 = 0;
                  if (v64)
                  {
                    MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
                  }
                }

                while (v56 != v5);
                goto LABEL_179;
              }

              v51 += 4;
              if (!--v50)
              {
                goto LABEL_133;
              }
            }

            v84[0] = "dst index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v57 = __p;
            if (__p)
            {
              v58 = v93;
              v59 = __p;
              if (v93 != __p)
              {
                do
                {
                  v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
                }

                while (v58 != v57);
                v59 = __p;
              }

              v93 = v57;
              operator delete(v59);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v60 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v62 = *--v60;
              v61 = v62;
              *v60 = 0;
              if (v62)
              {
                MEMORY[0x1AC55A040](v61, 0x1000C8077774924);
              }
            }

            while (v60 != v5);
          }

          else
          {
LABEL_133:
            TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(this);
            if (!v66)
            {
              return 1;
            }

            v67 = v66;
            for (i = (TagIndices + 24); ; i += 4)
            {
              v69 = *i;
              InherentAttr = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v69, AffineScope) & 1) == 0)
              {
                v84[0] = "tag index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v70 = __p;
                if (__p)
                {
                  v71 = v93;
                  v72 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
                    }

                    while (v71 != v70);
                    v72 = __p;
                  }

                  v93 = v70;
                  operator delete(v72);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v73 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v81 = *--v73;
                  v80 = v81;
                  *v73 = 0;
                  if (v81)
                  {
                    MEMORY[0x1AC55A040](v80, 0x1000C8077774924);
                  }
                }

                while (v73 != v5);
                goto LABEL_179;
              }

              v1 = 1;
              if (!--v67)
              {
                return v1;
              }
            }

            v84[0] = "tag index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v74 = __p;
            if (__p)
            {
              v75 = v93;
              v76 = __p;
              if (v93 != __p)
              {
                do
                {
                  v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                }

                while (v75 != v74);
                v76 = __p;
              }

              v93 = v74;
              operator delete(v76);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v77 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v79 = *--v77;
              v78 = v79;
              *v77 = 0;
              if (v79)
              {
                MEMORY[0x1AC55A040](v78, 0x1000C8077774924);
              }
            }

            while (v77 != v5);
          }
        }

        goto LABEL_179;
      }
    }

    else if (v27 == -4 || v27 == -6)
    {
      goto LABEL_55;
    }

    v84[0] = "incorrect number of operands";
    v85 = 259;
    mlir::OpState::emitOpError(this, v84, &InherentAttr);
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
    if (InherentAttr)
    {
      mlir::InFlightDiagnostic::report(&InherentAttr);
    }

    if (v95 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v87);
    }

    return v1;
  }

  v84[0] = "expected DMA source to be of memref type";
  v85 = 259;
  mlir::OpState::emitOpError(this, v84, &InherentAttr);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
  if (InherentAttr)
  {
    mlir::InFlightDiagnostic::report(&InherentAttr);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v93;
      v4 = __p;
      if (v93 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v93 = v2;
      operator delete(v4);
    }

    v5 = v90;
    if (!v90)
    {
      goto LABEL_181;
    }

    v6 = v91;
    v7 = v90;
    if (v91 == v90)
    {
LABEL_180:
      v91 = v5;
      operator delete(v7);
LABEL_181:
      if (v88 != &v89)
      {
        free(v88);
      }

      return v1;
    }

    do
    {
      v9 = *--v6;
      v8 = v9;
      *v6 = 0;
      if (v9)
      {
        MEMORY[0x1AC55A040](v8, 0x1000C8077774924);
      }
    }

    while (v6 != v5);
LABEL_179:
    v7 = v90;
    goto LABEL_180;
  }

  return v1;
}

void mlir::affine::AffineDmaStartOp::getEffects(uint64_t *Effects, uint64_t a2)
{
  {
    mlir::memref::AtomicRMWOp::getEffects();
  }

  v17 = *(*Effects + 72);
  InherentAttr = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v4 = *(a2 + 8);
    if (v4 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_13:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &InherentAttr, &v17, &v16);
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  mlir::memref::AtomicRMWOp::getEffects();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 12))
  {
    goto LABEL_13;
  }

LABEL_5:
  v5 = *a2 + 40 * v4;
  v6 = v17;
  *v5 = InherentAttr;
  *(v5 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v5 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_14:
  mlir::memref::AtomicRMWOp::getEffects();
LABEL_6:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v7 = *Effects;
  InherentAttr = mlir::Operation::getInherentAttr(*Effects, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v7 + 72) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v8 = *(a2 + 8);
    if (v8 < *(a2 + 12))
    {
      goto LABEL_8;
    }

LABEL_16:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  mlir::memref::AtomicRMWOp::getEffects();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v8 = *(a2 + 8);
  if (v8 >= *(a2 + 12))
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = *a2 + 40 * v8;
  v10 = InherentAttr;
  *v9 = v17;
  *(v9 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v9 + 16) = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_9;
  }

LABEL_17:
  mlir::affine::AffineDmaStartOp::getEffects();
LABEL_9:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v11 = *Effects;
  InherentAttr = mlir::Operation::getInherentAttr(*Effects, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*Effects, "dst_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v11 + 72) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
LABEL_11:
      v14 = *a2 + 40 * v13;
      v15 = InherentAttr;
      *v14 = v17;
      *(v14 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 36) = 0;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    mlir::memref::AtomicRMWOp::getEffects();
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
      goto LABEL_11;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
}

BOOL mlir::affine::AffineDmaWaitOp::parse(uint64_t a1, uint64_t a2)
{
  v23[8] = *MEMORY[0x1E69E9840];
  memset(v19, 0, 24);
  v17 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v16, 0, 24);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v21, &v18, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v16, 1) & 1) == 0 || ((*(*a1 + 576))(a1, &v17) & 1) == 0 || ((*(*a1 + 728))(a1, v19, v17, a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v22)
  {
    v7 = v21;
    v8 = 32 * v22;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  if (((*(*a1 + 728))(a1, v16, IndexType, a2 + 16) & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v13 = v22;
    v20[0] = mlir::AffineMapAttr::getValue(&v18);
    if (v13 == mlir::AffineMap::getNumInputs(v20))
    {
      v11 = 1;
      goto LABEL_15;
    }

    v9 = (*(*a1 + 16))(a1);
    v10 = "tag memref operand count != to map.numInputs";
  }

  else
  {
    v9 = (*(*a1 + 16))(a1);
    v10 = "expected tag to be of memref type";
  }

  v14 = v10;
  v15 = 259;
  (*(*a1 + 24))(v20, a1, v9, &v14);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
LABEL_15:
  if (v21 != v23)
  {
    free(v21);
  }

  return v11;
}

uint64_t mlir::affine::AffineDmaWaitOp::verifyInvariantsImpl(mlir::affine **this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    AffineScope = mlir::affine::getAffineScope(*this, a2);
    v13 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v14 = *(v13 + 9);
    }

    else
    {
      v14 = 0;
    }

    v34[0] = mlir::Operation::getInherentAttr(v13, "tag_map", 7);
    v34[0] = mlir::AffineMapAttr::getValue(v34);
    NumInputs = mlir::AffineMap::getNumInputs(v34);
    if (!NumInputs)
    {
      return 1;
    }

    v16 = NumInputs;
    for (i = (v14 + 56); ; i += 4)
    {
      v18 = *i;
      v34[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::Type::isIndex(v34))
      {
        break;
      }

      if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v18, AffineScope) & 1) == 0)
      {
        v32[0] = "index must be a valid dimension or symbol identifier";
        v33 = 259;
        mlir::OpState::emitOpError(this, v32, v34);
        v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
        if (v34[0])
        {
          mlir::InFlightDiagnostic::report(v34);
        }

        if (v42 != 1)
        {
          return v2;
        }

        if (v41 != &v42)
        {
          free(v41);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v40;
          v21 = __p;
          if (v40 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v40 = v19;
          operator delete(v21);
        }

        v6 = v37;
        if (!v37)
        {
          goto LABEL_61;
        }

        v22 = v38;
        v8 = v37;
        if (v38 == v37)
        {
          goto LABEL_60;
        }

        do
        {
          v30 = *--v22;
          v29 = v30;
          *v22 = 0;
          if (v30)
          {
            MEMORY[0x1AC55A040](v29, 0x1000C8077774924);
          }
        }

        while (v22 != v6);
        goto LABEL_59;
      }

      v2 = 1;
      if (!--v16)
      {
        return v2;
      }
    }

    v32[0] = "index to dma_wait must have 'index' type";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42 != 1)
    {
      return v2;
    }

    if (v41 != &v42)
    {
      free(v41);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v40;
      v25 = __p;
      if (v40 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v40 = v23;
      operator delete(v25);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v26 = v38;
    v8 = v37;
    if (v38 == v37)
    {
      goto LABEL_60;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v6);
    goto LABEL_59;
  }

  v32[0] = "expected DMA tag to be of memref type";
  v33 = 259;
  mlir::OpState::emitOpError(this, v32, v34);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v40;
      v5 = __p;
      if (v40 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v40 = v3;
      operator delete(v5);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v7 = v38;
    v8 = v37;
    if (v38 == v37)
    {
LABEL_60:
      v38 = v6;
      operator delete(v8);
LABEL_61:
      if (v35 != &v36)
      {
        free(v35);
      }

      return v2;
    }

    do
    {
      v10 = *--v7;
      v9 = v10;
      *v7 = 0;
      if (v10)
      {
        MEMORY[0x1AC55A040](v9, 0x1000C8077774924);
      }
    }

    while (v7 != v6);
LABEL_59:
    v8 = v37;
    goto LABEL_60;
  }

  return v2;
}

void mlir::affine::AffineForOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, const char *a10, mlir::MLIRContext *a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, void *, const char *, uint64_t), uint64_t a13)
{
  v39 = *MEMORY[0x1E69E9840];
  v35[0] = a4;
  v35[1] = a7;
  v35[2] = a11;
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v35, 3);
  Context = mlir::Attribute::getContext(a2);
  v38 = 261;
  v36 = "operandSegmentSizes";
  v37 = 19;
  v20 = mlir::StringAttr::get(Context, &v36);
  ZinMirCacheTensors::ZinMirCacheTensors(v34, v20, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v34[0], v34[1]);
  v36 = a10;
  v37 = 0;
  if (a11)
  {
    for (i = 0; i != a11; v37 = i)
    {
      v22 = *(mlir::ValueRange::dereference_iterator(&v36, i) + 8);
      v23 = *(a2 + 72);
      if (v23 >= *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v23 + 1, 8);
        v23 = *(a2 + 72);
      }

      *(*(a2 + 64) + 8 * v23) = v22 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 72);
      i = (v37 + 1);
    }
  }

  v24 = *(*(*(a2 + 8) + 96) + 8);
  IndexType = mlir::Builder::getIndexType(a1, i);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IndexType, a9);
  ZinMirCacheTensors::ZinMirCacheTensors(&v36, v24, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  v27 = **(*(a2 + 8) + 96);
  v28 = mlir::AffineMapAttr::get(a5);
  ZinMirCacheTensors::ZinMirCacheTensors(&v36, v27, v28);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  mlir::OperationState::addOperands(a2, a3, a4);
  v29 = *(*(*(a2 + 8) + 96) + 16);
  v30 = mlir::AffineMapAttr::get(a8);
  ZinMirCacheTensors::ZinMirCacheTensors(&v36, v29, v30);
  mlir::NamedAttrList::push_back(a2 + 112, v36, v37);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a10, a11);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::affine::AffineForOp::verifyRegions(uint64_t **this)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + 48;
  v4 = *(v3 + 48);
  if (((*(v5 + 8) - v4) & 0x7FFFFFFF8) == 0 || (Value = *(*v4 + 8) & 0xFFFFFFFFFFFFFFF8, !mlir::Type::isIndex(&Value)))
  {
    v27[0] = "expected body to have a single index argument for the induction variable";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v37;
      v14 = __p;
      if (v37 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v37 = v12;
      operator delete(v14);
    }

    v15 = v34;
    if (v34)
    {
      v16 = v35;
      v17 = v34;
      if (v35 != v34)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        goto LABEL_49;
      }

LABEL_50:
      v35 = v15;
      operator delete(v17);
    }

LABEL_51:
    if (v32 != &v33)
    {
      free(v32);
    }

    return v11;
  }

  Value = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value) && !mlir::affine::AffineForOp::verifyRegions(this))
  {
    return 0;
  }

  Value = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value))
  {
    if (!mlir::affine::AffineForOp::verifyRegions(this))
    {
      return 0;
    }
  }

  v6 = *(*this + 9);
  if (!v6)
  {
    return 1;
  }

  v27[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  Value = mlir::AffineMapAttr::getValue(v27);
  v29 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v27[0] = mlir::AffineMapAttr::getValue(&v29);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(*this + 17);
  }

  else
  {
    v7 = 0;
  }

  NumInputs = mlir::AffineMap::getNumInputs(&Value);
  if (v7 - (NumInputs + mlir::AffineMap::getNumInputs(v27)) != v6)
  {
    v27[0] = "mismatch between the number of loop-carried values and results";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v37;
      v22 = __p;
      if (v37 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v37 = v20;
      operator delete(v22);
    }

    v15 = v34;
    if (v34)
    {
      v23 = v35;
      v17 = v34;
      if (v35 != v34)
      {
        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
LABEL_49:
        v17 = v34;
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v9 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  if (((*(v10 + 56) - *(v10 + 48)) >> 3) - 1 == v6)
  {
    return 1;
  }

  v27[0] = "mismatch between the number of basic block args and results";
  v28 = 259;
  mlir::OpState::emitOpError(this, v27, &Value);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v39 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v31);
  }

  return v11;
}

BOOL verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  for (i = (a2 + 24); ; i += 4)
  {
    v9 = *i;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 < a4)
    {
      break;
    }

    if ((mlir::affine::isValidSymbol(v9, AffineScope) & 1) == 0)
    {
      v27[0] = "operand cannot be used as a symbol";
      v28 = 259;
      mlir::OpState::emitOpError(a1, v27, v29);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v35;
          v21 = __p;
          if (v35 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v35 = v19;
          operator delete(v21);
        }

        v15 = v32;
        if (v32)
        {
          v22 = v33;
          v17 = v32;
          if (v33 != v32)
          {
            do
            {
              v24 = *--v22;
              v23 = v24;
              *v22 = 0;
              if (v24)
              {
                MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
              }
            }

            while (v22 != v15);
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        goto LABEL_44;
      }

      return v11;
    }

LABEL_5:
    if (a3 == ++v7)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidDim())
  {
    goto LABEL_5;
  }

  v27[0] = "operand cannot be used as a dimension id";
  v28 = 259;
  mlir::OpState::emitOpError(a1, v27, v29);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v35;
      v14 = __p;
      if (v35 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v35 = v12;
      operator delete(v14);
    }

    v15 = v32;
    if (v32)
    {
      v16 = v33;
      v17 = v32;
      if (v33 != v32)
      {
        do
        {
          v26 = *--v16;
          v25 = v26;
          *v16 = 0;
          if (v26)
          {
            MEMORY[0x1AC55A040](v25, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
LABEL_42:
        v17 = v32;
      }

LABEL_43:
      v33 = v15;
      operator delete(v17);
    }

LABEL_44:
    if (v30 != &v31)
    {
      free(v30);
    }
  }

  return v11;
}

BOOL mlir::affine::AffineForOp::parse(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  memset(v37, 0, 24);
  v39 = 0;
  v37[5] = 0;
  v38 = 0;
  v37[4] = mlir::Builder::getIndexType(v4, v5);
  if (((*(*a1 + 752))(a1, v37, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 24);
  if (!parseBound(1, a2, a1))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  v46 = " between bounds";
  v48[8] = 259;
  if (((*(*a1 + 400))(a1, "to", 2, &v46) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 24);
  if (!parseBound(0, a2, a1))
  {
    return 0;
  }

  v9 = *(a2 + 24);
  if ((*(*a1 + 408))(a1, "step", 4))
  {
    v11 = (*(*a1 + 40))(a1);
    v43 = 0;
    IndexType = mlir::Builder::getIndexType(v4, v12);
    v46 = *(*(*(a2 + 8) + 96) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v46);
    v15 = AttrData;
    if (AttrData)
    {
      v16 = strlen(AttrData);
    }

    else
    {
      v16 = 0;
    }

    if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v43, IndexType, v15, v16, a2 + 112))
    {
      mlir::IntegerAttr::getValue(&v43, &v46);
      v30 = v47 - 1;
      if (v47 > 0x40)
      {
        v32 = *(v46 + (v30 >> 6));
        MEMORY[0x1AC55A040]();
        if ((v32 >> v30))
        {
          goto LABEL_28;
        }
      }

      else if ((v46 >> v30))
      {
LABEL_28:
        v40 = "expected step to be representable as a positive signed integer";
        v42 = 259;
        (*(*a1 + 24))(&v46, a1, v11, &v40);
        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
        return v31;
      }

      v35 = v9;
      v36 = v8;
      goto LABEL_10;
    }

    return 0;
  }

  v35 = v9;
  v36 = v8;
  v17 = *(*(*(a2 + 8) + 96) + 8);
  v18 = mlir::Builder::getIndexType(v4, v10);
  IntegerAttr = mlir::Builder::getIntegerAttr(v4, v18, 1);
  mlir::OperationState::addAttribute(a2, v17, IntegerAttr);
LABEL_10:
  v46 = v48;
  v47 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v20 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v46, v37);
  if (((*(*a1 + 408))(a1, "iter_args", 9, v20) & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) == 0 || ((*(*a1 + 560))(a1, a2 + 64) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v47 == 1 || !v44 || (v21 = *(a2 + 72), !v21))
  {
LABEL_22:
    LODWORD(v40) = v7 - v6;
    HIDWORD(v40) = v35 - v36;
    v41 = v44;
    DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(v4, &v40, 3);
    mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13uLL, DenseI32ArrayAttr);
    mlir::OperationState::addRegion(a2);
  }

  v22 = 0;
  v23 = v43;
  v24 = *(a2 + 64);
  v33 = (v47 << 6) - 128;
  v34 = v46 + 96;
  v25 = (v21 << 6) - 64;
  v26 = (v44 << 6) - 64;
  while (1)
  {
    *&v34[v22] = *v24;
    if (((*(*a1 + 728))(a1, v23) & 1) == 0)
    {
      break;
    }

    if (v33 != v22 && v26 != v22)
    {
      v23 += 32;
      ++v24;
      v27 = v25 == v22;
      v22 += 64;
      if (!v27)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  result = 0;
  if (v43 != v45)
  {
    free(v43);
    result = 0;
  }

  if (v46 != v48)
  {
    v31 = 0;
    free(v46);
    return v31;
  }

  return result;
}

BOOL parseBound(int a1, uint64_t a2, uint64_t a3)
{
  v70[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = "max";
  }

  else
  {
    v6 = "min";
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = (*(*a3 + 408))(a3, v6, 3);
  v9 = (*(*a3 + 32))(a3);
  v58 = *(*(*(a2 + 8) + 96) + v7);
  v68 = v70;
  v69 = 0x100000000;
  if (((*(*a3 + 720))(a3, &v68, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v69)
  {
    if (v69 == 1)
    {
      v11 = v68;
      IndexType = mlir::Builder::getIndexType(v9, v10);
      if ((*(*a3 + 728))(a3, v11, IndexType, a2 + 16))
      {
        SymbolIdentityMap = mlir::Builder::getSymbolIdentityMap(v9, v13, v14);
        v16 = v58;
LABEL_12:
        v17 = mlir::AffineMapAttr::get(SymbolIdentityMap);
        ZinMirCacheTensors::ZinMirCacheTensors(v59, v16, v17);
        mlir::NamedAttrList::push_back(a2 + 112, v59[0], v59[1]);
        v18 = 1;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v37 = (*(*a3 + 16))(a3);
    v56[0] = "expected only one loop bound operand";
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v37, v56);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v65;
        v40 = __p;
        if (v65 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v65 = v38;
        operator delete(v40);
      }

      v31 = v62;
      if (!v62)
      {
        goto LABEL_59;
      }

      v41 = v63;
      v33 = v62;
      if (v63 == v62)
      {
LABEL_58:
        v63 = v31;
        operator delete(v33);
LABEL_59:
        if (v60 != &v61)
        {
          free(v60);
        }

        goto LABEL_35;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
        }
      }

      while (v41 != v31);
LABEL_57:
      v33 = v62;
      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v19 = (*(*a3 + 40))(a3);
  v55 = 0;
  v21 = mlir::Builder::getIndexType(v9, v20);
  AttrData = mlir::OpaqueAttr::getAttrData(&v58);
  if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a3, &v55, v21, AttrData, v23, a2 + 112))
  {
LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  v24 = v55;
  v25 = *(*v55 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v26 = v55;
  }

  else
  {
    v26 = 0;
  }

  v54 = v26;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v44 = *(a2 + 24);
    v53 = 0;
    v18 = 0;
    if ((mlir::affine::parseDimAndSymbolList(a3, a2 + 16, &v53) & 1) == 0)
    {
      goto LABEL_35;
    }

    Value = mlir::AffineMapAttr::getValue(&v54);
    NumDims = mlir::AffineMap::getNumDims(&Value);
    if (NumDims == v53)
    {
      v46 = *(a2 + 24) - v44;
      if (mlir::AffineMap::getNumSymbols(&Value) + NumDims == v46)
      {
        v18 = 1;
        if (mlir::arith::FastMathFlagsAttr::getValue(&Value) < 2 || (v8 & 1) != 0)
        {
          goto LABEL_35;
        }

        if (a1)
        {
          v47 = "lower loop bound affine map with multiple results requires 'max' prefix";
        }

        else
        {
          v47 = "upper loop bound affine map with multiple results requires 'min' prefix";
        }

        v56[0] = v47;
        v57 = 259;
        (*(*a3 + 24))(v59, a3, v19, v56);
LABEL_72:
        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
        goto LABEL_35;
      }

      v50 = (*(*a3 + 16))(a3);
      v51 = "symbol operand count and affine map symbol count must match";
    }

    else
    {
      v50 = (*(*a3 + 16))(a3);
      v51 = "dim operand count and affine map dim count must match";
    }

    v56[0] = v51;
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v50, v56);
    goto LABEL_72;
  }

  if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v24 = 0;
  }

  v56[0] = v24;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    --*(a2 + 120);
    v16 = v58;
    Int = mlir::IntegerAttr::getInt(v56);
    SymbolIdentityMap = mlir::Builder::getConstantAffineMap(v9, Int, v49);
    goto LABEL_12;
  }

  v27 = (*(*a3 + 16))(a3);
  v56[0] = "expected valid affine map representation for loop bounds";
  v57 = 259;
  (*(*a3 + 24))(v59, a3, v27, v56);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v65;
      v30 = __p;
      if (v65 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v65 = v28;
      operator delete(v30);
    }

    v31 = v62;
    if (!v62)
    {
      goto LABEL_59;
    }

    v32 = v63;
    v33 = v62;
    if (v63 == v62)
    {
      goto LABEL_58;
    }

    do
    {
      v36 = *--v32;
      v35 = v36;
      *v32 = 0;
      if (v36)
      {
        MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
      }
    }

    while (v32 != v31);
    goto LABEL_57;
  }

LABEL_35:
  if (v68 != v70)
  {
    free(v68);
  }

  return v18;
}

llvm::raw_ostream *printBound(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v23 = a1;
  Value = mlir::AffineMapAttr::getValue(&v23);
  if (mlir::arith::FastMathFlagsAttr::getValue(&Value) != 1)
  {
    v10 = (*(*a5 + 16))(a5);
    if (a4)
    {
      v11 = v10;
      v12 = strlen(a4);
      v13 = v11[4];
      if (v12 <= v11[3] - v13)
      {
        if (v12)
        {
          memcpy(v13, a4, v12);
          v11[4] += v12;
        }
      }

      else
      {
        llvm::raw_ostream::write(v11, a4, v12);
      }
    }

    v14 = (*(*a5 + 16))(a5);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    goto LABEL_17;
  }

  v9 = mlir::AffineMap::getResult(&Value, 0);
  if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) || ((v24 = v9, mlir::arith::FastMathFlagsAttr::getValue(&v24) != 5) ? (v18 = 0) : (v18 = v9), ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v24, v18), (v21 = v24) == 0))
  {
    if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) != 1)
    {
      goto LABEL_17;
    }

    v24 = v9;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v24) == 7)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v24, v9);
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v24, 0);
      if (!v24)
      {
LABEL_17:
        (*(*a5 + 40))(a5, v23);
        NumDims = mlir::AffineMap::getNumDims(&Value);
        return printDimAndSymbolList(a2, 0, a2, a3, NumDims, a5);
      }
    }

    return (*(*a5 + 160))(a5, *(a2 + 24));
  }

  LHS = mlir::AffineBinaryOpExpr::getLHS(&v21);
  v20 = (*(*a5 + 16))(a5);
  return llvm::raw_ostream::operator<<(v20, LHS);
}

void mlir::affine::AffineForOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((v7 & (TrivialConstantTripCount == 1)) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    if (TrivialConstantTripCount)
    {
      v13 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 48);
      v16 = ((*(v14 + 56) - v15) >> 3) - 1;
      v37 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v10 = &v37;
      mlir::ValueRange::ValueRange(v38, v15 + 8, v16);
      v11 = *(a3 + 8);
      v12 = *a3;
      if (v11 < *(a3 + 12))
      {
        goto LABEL_14;
      }

LABEL_26:
      if (v12 <= &v37 && v12 + 24 * v11 > &v37)
      {
        v34 = &v38[-1] - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v34[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 24);
        v12 = *a3;
        v10 = &v37;
      }

LABEL_14:
      v17 = v12 + 24 * *(a3 + 8);
      v18 = *v10;
      v19 = v10[2];
      goto LABEL_25;
    }

LABEL_3:
    v8 = *(*a1 + 36);
    if (v8)
    {
      v9 = *a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    v37 = 0;
    v10 = &v37;
    mlir::ValueRange::ValueRange(v38, v9, v8);
    v11 = *(a3 + 8);
    v12 = *a3;
    if (v11 < *(a3 + 12))
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v20 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = ((*(v21 + 56) - v22) >> 3) - 1;
  v37 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v24 = &v37;
  mlir::ValueRange::ValueRange(v38, v22 + 8, v23);
  v25 = *(a3 + 8);
  v26 = *a3;
  if (v25 >= *(a3 + 12))
  {
    if (v26 <= &v37 && v26 + 24 * v25 > &v37)
    {
      v35 = &v38[-1] - v26;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v25 + 1, 24);
      v26 = *a3;
      v27 = &v35[*a3];
      goto LABEL_20;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v25 + 1, 24);
    v26 = *a3;
  }

  v27 = &v37;
LABEL_20:
  v28 = v26 + 24 * *(a3 + 8);
  v29 = *v27;
  *(v28 + 16) = v27[2];
  *v28 = v29;
  ++*(a3 + 8);
  v30 = *(*a1 + 36);
  if (v30)
  {
    v31 = *a1 - 16;
  }

  else
  {
    v31 = 0;
  }

  v37 = 0;
  mlir::ValueRange::ValueRange(v38, v31, v30);
  v32 = *(a3 + 8);
  v33 = *a3;
  if (v32 >= *(a3 + 12))
  {
    if (v33 <= &v37 && v33 + 24 * v32 > &v37)
    {
      v36 = &v38[-1] - v33;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v32 + 1, 24);
      v33 = *a3;
      v24 = &v36[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v32 + 1, 24);
      v33 = *a3;
      v24 = &v37;
    }
  }

  v17 = v33 + 24 * *(a3 + 8);
  v18 = *v24;
  v19 = v24[2];
LABEL_25:
  *(v17 + 16) = v19;
  *v17 = v18;
  ++*(a3 + 8);
}

unint64_t anonymous namespace::getTrivialConstantTripCount(uint64_t a1)
{
  v2 = a1 + 64;
  v10 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v10, &Value);
  if (v9 > 0x40)
  {
    v3 = *Value;
    MEMORY[0x1AC55A040]();
  }

  else if (v9)
  {
    v3 = Value << -v9 >> -v9;
  }

  else
  {
    v3 = 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value))
  {
    return 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value) || v3 < 1)
  {
    return 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(&Value);
  SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  Value = mlir::AffineMapAttr::getValue(&Value);
  v5 = mlir::AffineMap::getSingleConstantResult(&Value);
  if (v5 - SingleConstantResult < 1)
  {
    return 0;
  }

  else
  {
    return (v3 + v5 - SingleConstantResult - 1) / v3;
  }
}

uint64_t mlir::affine::AffineForOp::setLowerBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88);
  v10 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  v12 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88), 3);
  ZinMirCacheTensors::ZinMirCacheTensors(&v14, v10, v12);
  v15 = 0;
  v16 = v14;
  mlir::MutableOperandRange::MutableOperandRange(v17, v8, 0, v9, &v15, 1);
  mlir::MutableOperandRange::assign(v17, a2, a3);
  if (v18 != v19)
  {
    free(v18);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::setUpperBound(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v10 = *(v9 + 88);
  v11 = *(v9 + 92);
  v12 = *(*(*(*a1 + 48) + 96) + 8 * *(*(*a1 + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88), 3);
  ZinMirCacheTensors::ZinMirCacheTensors(&v16, v12, v14);
  v17 = 1;
  v18 = v16;
  mlir::MutableOperandRange::MutableOperandRange(v19, v8, v10, v11, &v17, 1);
  mlir::MutableOperandRange::assign(v19, a2, a3);
  if (v20 != v21)
  {
    free(v20);
  }

  result = mlir::AffineMapAttr::get(a4);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::affine::AffineForOp::getConstantUpperBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

uint64_t mlir::affine::AffineForOp::getLoopLowerBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

double mlir::affine::AffineForOp::getLoopSteps@<D0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v6[1], 0, 24);
  v9 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v9, &v7);
  if (v8 > 0x40)
  {
    v4 = *v7;
    MEMORY[0x1AC55A040]();
  }

  else if (v8)
  {
    v4 = (v7 << -v8) >> -v8;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 16) = mlir::Builder::getI64IntegerAttr(v6, v4) & 0xFFFFFFFFFFFFFFFBLL;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::affine::AffineForOp::getLoopUpperBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

void mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v25, a2, v17);
    mlir::ValueRange::ValueRange(v27, *a3, *(a3 + 8));
    v19 = *a4;
    mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
    v20 = *a6;
    v21 = *a7;
    mlir::ValueRange::ValueRange(v24, *a8, *(a8 + 8));
    mlir::affine::AffineForOp::build(a1, v25, v27[0], v27[1], v19, v26[0], v26[1], v20, v21, v24[0], v24[1], 0, v22);
  }

  mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(v25, v27, v26);
}

mlir::Block *mlir::affine::getForInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        result = mlir::Block::getParent(result);
        if (result)
        {
          result = mlir::Block::getParent(*(a1 + 16));
          while (1)
          {
            v3 = *(result + 2);
            if (v3)
            {
              if (*(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
              {
                break;
              }
            }

            result = mlir::Region::getParentRegion(result);
            if (!result)
            {
              return result;
            }
          }

          v4 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
          if (v4)
          {
            v5 = v4 - 8;
          }

          else
          {
            v5 = 0;
          }

          if (**(v5 + 48) == a1)
          {
            return *(result + 2);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

__n128 mlir::affine::AffineIfOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    if (*(a3 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), 2uLL, 24);
    }

    v12 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (*v12 == v12)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 48);
      v16 = (*(v14 + 56) - v15) >> 3;
    }

    v33 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v17 = &v33;
    mlir::ValueRange::ValueRange(v34, v15, v16);
    v18 = *(a3 + 8);
    v19 = *a3;
    if (v18 >= *(a3 + 12))
    {
      if (v19 <= &v33 && v19 + 24 * v18 > &v33)
      {
        v32 = &v34[-1] - v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v18 + 1, 24);
        v19 = *a3;
        v17 = &v32[*a3];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v18 + 1, 24);
        v19 = *a3;
        v17 = &v33;
      }
    }

    v20 = v19 + 24 * *(a3 + 8);
    v21 = *v17;
    *(v20 + 16) = v17[2];
    *v20 = v21;
    ++*(a3 + 8);
    v5 = *a1;
    v22 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v24 = *(v22 + 24);
    v23 = v22 + 24;
    if (v24 != v23)
    {
      v25 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 32);
      if (v25)
      {
        v26 = v25 - 8;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v26 + 48);
      v28 = (*(v26 + 56) - v27) >> 3;
      v33 = v23;
      v9 = &v33;
      mlir::ValueRange::ValueRange(v34, v27, v28);
      v10 = *(a3 + 8);
      v11 = *a3;
      if (v10 >= *(a3 + 12))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v6 = *(v5 + 36);
  v7 = v5 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v33 = 0;
  v9 = &v33;
  mlir::ValueRange::ValueRange(v34, v8, v6);
  v10 = *(a3 + 8);
  v11 = *a3;
  if (v10 >= *(a3 + 12))
  {
LABEL_23:
    if (v11 <= &v33 && v11 + 24 * v10 > &v33)
    {
      v31 = &v34[-1] - v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
      v11 = *a3;
      v9 = &v31[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v10 + 1, 24);
      v11 = *a3;
      v9 = &v33;
    }
  }

LABEL_22:
  v29 = (v11 + 24 * *(a3 + 8));
  result = *v9;
  v29[1].n128_u64[0] = v9[1].n128_u64[0];
  *v29 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::affine::AffineIfOp::verify(mlir::affine::AffineIfOp *this)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "condition", 9), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "condition", 9uLL);
  }

  if (!InherentAttr)
  {
    v52 = 0;
    goto LABEL_33;
  }

  if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v5 = InherentAttr;
  }

  else
  {
    v5 = 0;
  }

  v52 = v5;
  if (!v5)
  {
LABEL_33:
    v53[0] = "requires an integer set attribute named 'condition'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v61;
      v27 = __p;
      if (v61 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v61 = v25;
      operator delete(v27);
    }

    v28 = v58;
    if (v58)
    {
      v29 = v59;
      v30 = v58;
      if (v59 != v58)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x1AC55A040](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        goto LABEL_97;
      }

LABEL_98:
      v59 = v28;
      operator delete(v30);
    }

LABEL_99:
    if (v56 != v57)
    {
      free(v56);
    }

    return v24;
  }

  Value = mlir::AffineMapAttr::getValue(&v52);
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (!mlir::AffineMap::getNumInputs(&Value))
    {
      goto LABEL_11;
    }

LABEL_81:
    v53[0] = "operand count and condition integer set dimension and symbol count must match";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v61;
      v46 = __p;
      if (v61 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v61 = v44;
      operator delete(v46);
    }

    v28 = v58;
    if (v58)
    {
      v47 = v59;
      v30 = v58;
      if (v59 != v58)
      {
        do
        {
          v49 = *--v47;
          v48 = v49;
          *v47 = 0;
          if (v49)
          {
            MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
          }
        }

        while (v47 != v28);
LABEL_97:
        v30 = v58;
        goto LABEL_98;
      }

      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v6 = *(*this + 68);
  if (v6 != mlir::AffineMap::getNumInputs(&Value))
  {
    goto LABEL_81;
  }

LABEL_11:
  v7 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    mlir::AffineMap::getNumDims(&Value);
    return 1;
  }

  v8 = *(v7 + 72);
  v9 = *(v7 + 68);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (!v9)
  {
    return 1;
  }

  v12 = 0;
  v13 = NumDims;
  for (i = (v8 + 24); ; i += 4)
  {
    v15 = *i;
    AffineScope = mlir::affine::getAffineScope(*this, v11);
    if (v12 >= v13)
    {
      break;
    }

    if ((mlir::affine::isValidDim() & 1) == 0)
    {
      v53[0] = "operand cannot be used as a dimension id";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v61;
          v20 = __p;
          if (v61 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v61 = v18;
          operator delete(v20);
        }

        v21 = v58;
        if (v58)
        {
          v22 = v59;
          v23 = v58;
          if (v59 != v58)
          {
            do
            {
              v43 = *--v22;
              v42 = v43;
              *v22 = 0;
              if (v43)
              {
                MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
              }
            }

            while (v22 != v21);
            v23 = v58;
          }

          v59 = v21;
          operator delete(v23);
        }

        if (v56 != v57)
        {
          free(v56);
        }
      }

      return v17;
    }

LABEL_16:
    if (v9 == ++v12)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidSymbol(v15, AffineScope))
  {
    goto LABEL_16;
  }

  v53[0] = "operand cannot be used as a symbol";
  v54 = 259;
  mlir::OpState::emitOpError(this, v53, v55);
  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v61;
      v36 = __p;
      if (v61 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v61 = v34;
      operator delete(v36);
    }

    v37 = v58;
    if (v58)
    {
      v38 = v59;
      v39 = v58;
      if (v59 != v58)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v58;
      }

      v59 = v37;
      operator delete(v39);
    }

    if (v56 != v57)
    {
      free(v56);
    }
  }

  return v33;
}

BOOL mlir::affine::AffineIfOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerSetAttr>(a1, &v27, 0, "condition", 9uLL, a2 + 112))
  {
    return 0;
  }

  v26 = 0;
  if ((mlir::affine::parseDimAndSymbolList(a1, a2 + 16, &v26) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v27);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims == v26)
  {
    if (*(a2 + 6) == mlir::AffineMap::getNumSymbols(&Value) + NumDims)
    {
      if ((*(*a1 + 568))(a1, a2 + 64))
      {
        llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(a2 + 224, 2uLL);
        mlir::OperationState::addRegion(a2);
      }

      return 0;
    }

    v16 = (*(*a1 + 16))(a1);
    v23[0] = "symbol operand count and integer set symbol count must match";
    v24 = 259;
    (*(*a1 + 24))(v28, a1, v16, v23);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v7 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v7;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v7;
      }

      v17 = __p;
      if (__p)
      {
        v18 = v34;
        v19 = __p;
        if (v34 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v34 = v17;
        operator delete(v19);
        result = v7;
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_43;
      }

      v20 = v32;
      v13 = v31;
      if (v32 == v31)
      {
LABEL_42:
        v32 = v11;
        operator delete(v13);
        result = v7;
LABEL_43:
        if (v29 != &v30)
        {
          free(v29);
          return v7;
        }

        return result;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
        }
      }

      while (v20 != v11);
LABEL_41:
      v13 = v31;
      goto LABEL_42;
    }
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    v23[0] = "dim operand count and integer set dim count must match";
    v24 = 259;
    (*(*a1 + 24))(v28, a1, v6, v23);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v7 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v7;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_43;
      }

      v12 = v32;
      v13 = v31;
      if (v32 == v31)
      {
        goto LABEL_42;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          MEMORY[0x1AC55A040](v14, 0x1000C8077774924);
        }
      }

      while (v12 != v11);
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineIfOp::fold(uint64_t *a1)
{
  v69[4] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*(*a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*a1, "condition", 9), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "condition", 9uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v5 = InherentAttr;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v67 = v5;
  Value = mlir::AffineMapAttr::getValue(&v67);
  v6 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    LODWORD(v8) = 0;
    v23 = 0;
    v67 = v69;
    HIDWORD(v68) = 4;
    goto LABEL_29;
  }

  v7 = *(v6 + 72);
  v8 = *(v6 + 68);
  v67 = v69;
  v68 = 0x400000000;
  if (v8 < 5)
  {
    if (!v8)
    {
      v23 = 0;
      goto LABEL_29;
    }

    v9 = v69;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v8, 8);
    v9 = v67 + 8 * v68;
    if (v8 >= 0xD && (v9 >= v7 + 32 * v8 || v7 + 24 >= v67 + 8 * v68 + 8 * v8))
    {
      v11 = v8 & 3;
      if ((v8 & 3) == 0)
      {
        v11 = 4;
      }

      v12 = v8 - v11;
      v13 = &v9[v12];
      v14 = (v7 + 88);
      v15 = (v9 + 2);
      v16 = v12;
      do
      {
        v17 = v14 - 8;
        v18 = vld4q_f64(v17);
        v19 = vld4q_f64(v14);
        *(v15 - 1) = v18;
        *v15 = v19;
        v14 += 16;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v9 = v13;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_26:
  v20 = v8 - v12;
  v21 = (v7 + 32 * v12 + 24);
  do
  {
    v22 = *v21;
    v21 += 4;
    *v9++ = v22;
    --v20;
  }

  while (v20);
  v23 = v68;
LABEL_29:
  LODWORD(v68) = v23 + v8;
  NumDims = mlir::AffineMap::getNumDims(&Value);
  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  v26 = mlir::ArrayAttr::getValue(&Value);
  v28 = v27;
  Context = mlir::IntegerSet::getContext(&Value);
  v65 = mlir::AffineMap::get(NumDims, NumSymbols, v26, v28, Context);
  if (v68)
  {
    v30 = v67;
    v31 = 8 * v68;
    while (1)
    {
      v63[0] = *v30;
      DefiningOp = mlir::Value::getDefiningOp(v63);
      if (DefiningOp)
      {
        if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
        {
          break;
        }
      }

      ++v30;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_35;
      }
    }

    composeAffineMapAndOperands(&v65, &v67);
    v33 = mlir::AffineMap::getNumDims(&v65);
    v34 = mlir::AffineMap::getNumSymbols(&v65);
    Results = mlir::AffineMap::getResults(&v65);
    v37 = v36;
    RawData = mlir::DenseArrayAttr::getRawData(&Value);
    Value = mlir::IntegerSet::get(v33, v34, Results, v37, RawData, v39);
  }

LABEL_35:
  mlir::affine::canonicalizeSetAndOperands(&Value, &v67);
  v40 = *a1;
  if (!*(*a1 + 47) || (v41 = mlir::Operation::getInherentAttr(*a1, "condition", 9), (v42 & 1) == 0))
  {
    v41 = mlir::DictionaryAttr::get(v40 + 56, "condition", 9uLL);
  }

  if (v41)
  {
    if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0;
    }

    v63[0] = v43;
    v44 = mlir::AffineMapAttr::getValue(v63);
    v45 = Value;
    if (Value != v44)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v63[0] = 0;
    v48 = mlir::AffineMapAttr::getValue(v63);
    v45 = Value;
    if (Value != v48)
    {
LABEL_43:
      v46 = v67;
      v47 = v68;
      goto LABEL_60;
    }
  }

  v49 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v50 = *(v49 + 72);
    v51 = *(v49 + 68);
    v46 = v67;
    v47 = v68;
    if (v51 != v68)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v46 = v67;
    v47 = v68;
    if (v68)
    {
      goto LABEL_60;
    }
  }

  if (v47)
  {
    v52 = 0;
    v53 = (v50 + 24);
    while (v51 != v52 && v46[v52] == *v53)
    {
      ++v52;
      v53 += 4;
      if (v47 == v52)
      {
        if (((v51 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1 == v51)
        {
          goto LABEL_56;
        }

        break;
      }
    }
  }

  else if (!v51)
  {
LABEL_56:
    v54 = 0;
    if (v46 == v69)
    {
      return v54;
    }

    goto LABEL_61;
  }

LABEL_60:
  mlir::ValueRange::ValueRange(&v65, v46, v47);
  v55 = v65;
  v56 = v66;
  v57 = *a1;
  v58 = mlir::IntegerSetAttr::get(v45);
  v59 = mlir::Attribute::getContext((v57 + 24));
  v64 = 261;
  v63[0] = "condition";
  v63[1] = 9;
  v60 = mlir::StringAttr::get(v59, v63);
  mlir::Operation::setAttr(v57, v60, v58);
  mlir::Operation::setOperands(*a1, v55, v56);
  v54 = 1;
  v46 = v67;
  if (v67 != v69)
  {
LABEL_61:
    free(v46);
  }

  return v54;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v16 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::AffineMapAttr::get(a4);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "map";
  v18[1] = 3;
  v12 = mlir::StringAttr::get(Context, v18);
  ZinMirCacheTensors::ZinMirCacheTensors(v20, v12, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  result = mlir::AffineBinaryOpExpr::getRHS(&v16);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    v15 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v14 + 1, 8);
    result = v15;
    LODWORD(v14) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v14) = result;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v14, 0, 24);
  v13 = 0;
  v15 = 0;
  v16 = v18;
  v17 = 0x100000000;
  if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v16, &v13, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v15) && ((*(*a1 + 728))(a1, v14, v15, a2 + 16))
  {
    if (!v17)
    {
LABEL_10:
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v15);
      v10 = mlir::AsmParser::addTypeToList(a1, RHS, a2 + 64);
      v11 = v16;
      if (v16 == v18)
      {
        return v10 & 1;
      }

      goto LABEL_13;
    }

    v7 = v16;
    v8 = 32 * v17;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = 0;
  v11 = v16;
  if (v16 != v18)
  {
LABEL_13:
    free(v11);
  }

  return v10 & 1;
}

uint64_t mlir::affine::AffineLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      InherentAttr = mlir::DictionaryAttr::get((v8 + 7), "map", 3uLL);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v8, "map", 3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = v11[9];
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v23);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v23 = 3;
  (*(*a2 + 192))(a2, Value, v18, &AttrDictionary, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = v19[4];
  if ((v19[3] - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    v19[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineLoadOp::verify(uint64_t **this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v16 = *(*((*this)[9] + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::AffineBinaryOpExpr::getRHS(&v16))
  {
    mlir::affine::AffineLoadOp::verify();
    return v17[0];
  }

  else
  {
    v14 = "result type must match element type of memref";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (*v17)
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
            }
          }

          while (v9 != v8);
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

BOOL verifyMemoryOpIndexing(mlir::affine *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v48 = a5;
  v49 = a2;
  Value = mlir::AffineMapAttr::getValue(&v49);
  v10 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
  mlir::ArrayAttr::getValue(&v48);
  if (v11 == v10)
  {
    if (mlir::AffineMap::getNumInputs(&Value) == a6)
    {
      AffineScope = mlir::affine::getAffineScope(a1, v12);
      if (!a4)
      {
        return 1;
      }

      v14 = AffineScope;
      for (i = (a3 + 24); ; i += 4)
      {
        v25 = *i;
        v50[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::Type::isIndex(v50))
        {
          break;
        }

        if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v25, v14) & 1) == 0)
        {
          v45[0] = "index must be a valid dimension or symbol identifier";
          v46 = 259;
          mlir::Operation::emitOpError(a1, v45, v50);
          v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
          if (v50[0])
          {
            mlir::InFlightDiagnostic::report(v50);
          }

          if (v58 != 1)
          {
            return v16;
          }

          if (v57 != &v58)
          {
            free(v57);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v56;
            v28 = __p;
            if (v56 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v56 = v26;
            operator delete(v28);
          }

          v20 = v53;
          if (!v53)
          {
            goto LABEL_76;
          }

          v29 = v54;
          v22 = v53;
          if (v54 == v53)
          {
            goto LABEL_75;
          }

          do
          {
            v43 = *--v29;
            v42 = v43;
            *v29 = 0;
            if (v43)
            {
              MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
            }
          }

          while (v29 != v20);
          goto LABEL_74;
        }

        v16 = 1;
        if (!--a4)
        {
          return v16;
        }
      }

      v45[0] = "index to load must have 'index' type";
      v46 = 259;
      mlir::Operation::emitOpError(a1, v45, v50);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
      if (v50[0])
      {
        mlir::InFlightDiagnostic::report(v50);
      }

      if (v58 != 1)
      {
        return v16;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v56;
        v38 = __p;
        if (v56 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v56 = v36;
        operator delete(v38);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v39 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x1AC55A040](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v20);
      goto LABEL_74;
    }

    v45[0] = "expects as many subscripts as affine map inputs";
    v46 = 259;
    mlir::Operation::emitOpError(a1, v45, v50);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v56;
        v32 = __p;
        if (v56 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v56 = v30;
        operator delete(v32);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v33 = v54;
      v22 = v53;
      if (v54 == v53)
      {
LABEL_75:
        v54 = v20;
        operator delete(v22);
LABEL_76:
        if (v51 != &v52)
        {
          free(v51);
        }

        return v16;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          MEMORY[0x1AC55A040](v34, 0x1000C8077774924);
        }
      }

      while (v33 != v20);
LABEL_74:
      v22 = v53;
      goto LABEL_75;
    }
  }

  else
  {
    v45[0] = "affine map num results must equal memref rank";
    v46 = 259;
    mlir::Operation::emitOpError(a1, v45, v50);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v56;
        v19 = __p;
        if (v56 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v56 = v17;
        operator delete(v19);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v21 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
        }
      }

      while (v21 != v20);
      goto LABEL_74;
    }
  }

  return v16;
}

uint64_t mlir::affine::AffineLoadOp::fold(void *a1)
{
  v22[4] = *MEMORY[0x1E69E9840];
  mlir::memref::foldMemRefCast();
  if (v2)
  {
    if (*(*a1 + 36))
    {
      v3 = *a1 - 16;
    }

    else
    {
      v3 = 0;
    }

    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) | 4;
  }

  else
  {
    Value = *(*(*a1 + 72) + 24);
    result = mlir::Value::getDefiningOp(&Value);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id)
    {
      return 0;
    }

    v5 = result;
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(result);
    if (!result)
    {
      return result;
    }

    result = mlir::SymbolTable::lookupSymbolIn(result, *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id ? result : 0;
    v17 = v8;
    if (!v7)
    {
      return 0;
    }

    result = mlir::memref::GlobalOp::getConstantInitValue(&v17);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (!mlir::DenseElementsAttr::classof(result))
    {
      v9 = 0;
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }

    if (mlir::DenseElementsAttr::classof(v9))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    Value = v10;
    if (v10)
    {
      isSplat = mlir::DenseElementsAttr::isSplat(&Value);
      v12 = isSplat ? v9 : 0;
      v21 = v12;
      if (isSplat)
      {
        return mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(&v21) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (!mlir::AffineMap::isConstant(&Value))
    {
      return 0;
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v14 = mlir::AffineMapAttr::getValue(&Value);
    mlir::AffineMap::getConstantResults(&v14, &Value);
    v15[0] = Value;
    v15[1] = 256;
    v15[2] = Value + 8 * v19;
    v15[3] = 256;
    llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(&v21, v15);
    if (Value != &v20)
    {
      free(Value);
    }

    mlir::DenseElementsAttr::getValues<mlir::Attribute>(&v16, &Value);
    result = mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](&Value, v21) & 0xFFFFFFFFFFFFFFFBLL;
    if (v21 != v22)
    {
      v13 = result;
      free(v21);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

llvm::APFloatBase *mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(mlir::ArrayAttr *a1)
{
  mlir::ArrayAttr::getValue(a1);
  ZinMirCacheTensors::ZinMirCacheTensors(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  ZinMirCacheTensors::ZinMirCacheTensors(&v5, v2, NumElements);
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v6);
}

void llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(void *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[2];
  *result = result + 2;
  result[1] = 0x400000000;
  v5 = (v4 - v3) >> 3;
  if (v5 < 5)
  {
    v6 = 0;
    v7 = v4 - v3;
    if (v4 == v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v5, 8);
    v6 = *(result + 2);
    v7 = v4 - v3;
    if (v4 == v3)
    {
      goto LABEL_13;
    }
  }

  v8 = (*result + 8 * v6);
  v9 = v7 - 8;
  if (v9 < 0x38)
  {
    v10 = v3;
    goto LABEL_12;
  }

  v11 = 8 * v6 + *result;
  if ((v11 - v3) < 0x20)
  {
    v10 = v3;
    do
    {
LABEL_12:
      v18 = *v10++;
      *v8++ = v18;
    }

    while (v10 != v4);
    goto LABEL_13;
  }

  v12 = (v9 >> 3) + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = (v8 + v13);
  v10 = (v3 + v13);
  v14 = (v3 + 16);
  v15 = (v11 + 16);
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *v14;
    *(v15 - 1) = *(v14 - 1);
    *v15 = v17;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  *(result + 2) = v6 + ((v4 - v3) >> 3);
}

double mlir::DenseElementsAttr::getValues<mlir::Attribute>@<D0>(mlir::ArrayAttr *a1@<X0>, uint64_t a2@<X8>)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v6 = v5;
  ZinMirCacheTensors::ZinMirCacheTensors(&v12, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  ZinMirCacheTensors::ZinMirCacheTensors(&v11, v7, NumElements);
  v10 = v11;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v10;
  *(a2 + 32) = Value;
  *(a2 + 40) = v6;
  return result;
}

llvm::APFloatBase *mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + mlir::ElementsAttr::getFlattenedIndex(*(a1 + 32), a2);
  v5[0] = *a1;
  v5[1] = v3;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v5);
}

void *mlir::affine::AffineStoreOp::build(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a5);
  v12 = a2[32];
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  return result;
}

uint64_t mlir::affine::AffineStoreOp::parse(uint64_t a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  memset(v16, 0, 24);
  memset(v15, 0, 24);
  v14 = 0;
  v17 = 0;
  v18 = v20;
  v19 = 0x100000000;
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 736))(a1, &v18, &v14, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v17) && (RHS = mlir::AffineBinaryOpExpr::getRHS(&v17), ((*(*a1 + 728))(a1, v16, RHS, a2 + 16)) && ((*(*a1 + 728))(a1, v15, v17, a2 + 16))
  {
    if (!v19)
    {
      v10 = 1;
      v12 = v18;
      if (v18 == v20)
      {
        return v10 & 1;
      }

      goto LABEL_16;
    }

    v8 = v18;
    v9 = 32 * v19 - 32;
    do
    {
      v10 = (*(*a1 + 728))(a1, v8, IndexType, a2 + 16);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v8 += 32;
      v11 = v9;
      v9 -= 32;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v12 = v18;
  if (v18 != v20)
  {
LABEL_16:
    free(v12);
  }

  return v10 & 1;
}

uint64_t mlir::affine::AffineStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8236;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 91);
    v10 = *this;
    if (!*(*this + 47))
    {
LABEL_12:
      InherentAttr = mlir::DictionaryAttr::get((v10 + 7), "map", 3uLL);
      goto LABEL_13;
    }
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 91;
    v10 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_12;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v10, "map", 3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = *this;
    v14 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v15 = v13[9];
      v16 = *(v13 + 17) - 2;
    }

    else
    {
      v15 = 0;
      v16 = -2;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v15 + 64, v16);
    (*(*a2 + 240))(a2, v14, AttrDictionary, v25);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v25 = 3;
  (*(*a2 + 192))(a2, Value, v20, &AttrDictionary, 1);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if ((v21[3] - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    v21[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineStoreOp::verify(uint64_t **this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = (*this)[9];
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::AffineBinaryOpExpr::getRHS(&v16))
  {
    mlir::affine::AffineStoreOp::verify();
    return v17[0];
  }

  else
  {
    v14 = "value to store must have the same type as memref element type";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (*v17)
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
            }
          }

          while (v9 != v8);
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

unint64_t mlir::affine::AffineMinOp::fold(uint64_t *a1, uint64_t a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v25 = v27;
  v26 = 0x200000000;
  v23[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v23[0] = mlir::AffineMapAttr::getValue(v23);
  v22 = mlir::AffineMap::partialConstantFold(v23, v4, v3, &v25, 0);
  if (mlir::AffineMap::getNumSymbols(&v22) == 1 && mlir::AffineMap::isSymbolIdentity(&v22))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v25;
    if (v25 == v27)
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
    v23[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v23);
    if (v22 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v22);
      Context = mlir::Attribute::getContext((v2 + 24));
      v24 = 261;
      v23[0] = "map";
      v23[1] = 3;
      v11 = mlir::StringAttr::get(Context, v23);
      mlir::Operation::setAttr(v2, v11, v9);
      v5 = (v2 - 16) | 4;
      v6 = v25;
      if (v25 == v27)
      {
        return v5;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v26 == 1)
  {
    v7 = v25;
  }

  else
  {
    v13 = (v25 + 8);
    v12 = *v25;
    v14 = 8 * v26 - 8;
    v7 = v25;
    v15 = (v25 + 8);
    do
    {
      v17 = *v15++;
      v16 = v17;
      if (v17 < v12)
      {
        v12 = v16;
        v7 = v13;
      }

      v13 = v15;
      v14 -= 8;
    }

    while (v14);
  }

  if (v7 == (v25 + 8 * v26))
  {
LABEL_19:
    v5 = 0;
    v6 = v25;
    if (v25 == v27)
    {
      return v5;
    }

    goto LABEL_17;
  }

  v18 = mlir::Attribute::getContext((v2 + 24));
  v20 = mlir::IndexType::get(v18, v19);
  v5 = mlir::IntegerAttr::get(v20, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v25;
  if (v25 != v27)
  {
LABEL_17:
    free(v6);
  }

  return v5;
}

uint64_t mlir::affine::AffineMinOp::parse(uint64_t a1, uint64_t a2)
{
  v20[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v18 = v20;
  v19 = 0x800000000;
  v14 = 0;
  v15 = v17;
  v16 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v14, 0, "map", 3uLL, a2 + 112) || ((*(*a1 + 720))(a1, &v18, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 720))(a1, &v15, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (v19)
  {
    v7 = v18;
    v8 = 32 * v19;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  if (v16)
  {
    v9 = v15;
    v10 = 32 * v16;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = IndexType;
  ++*(a2 + 72);
  v12 = 1;
LABEL_17:
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

unint64_t mlir::affine::AffineMaxOp::fold(uint64_t *a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v26 = v28;
  v27 = 0x200000000;
  v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v24[0] = mlir::AffineMapAttr::getValue(v24);
  v23 = mlir::AffineMap::partialConstantFold(v24, v4, v3, &v26, 0);
  if (mlir::AffineMap::getNumSymbols(&v23) == 1 && mlir::AffineMap::isSymbolIdentity(&v23))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_19;
  }

  if (!v27)
  {
    v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v24);
    if (v23 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v23);
      Context = mlir::Attribute::getContext((v2 + 24));
      v25 = 261;
      v24[0] = "map";
      v24[1] = 3;
      v11 = mlir::StringAttr::get(Context, v24);
      mlir::Operation::setAttr(v2, v11, v9);
      v5 = (v2 - 16) | 4;
      v6 = v26;
      if (v26 == v28)
      {
        return v5;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v27 == 1)
  {
    v7 = v26;
  }

  else
  {
    v13 = (v26 + 8);
    v12 = *v26;
    v14 = 8 * v27 - 8;
    v7 = v26;
    v15 = (v26 + 8);
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = v12 < v17;
      if (v12 <= v17)
      {
        v12 = v16;
      }

      if (v18)
      {
        v7 = v13;
      }

      v13 = v15;
      v14 -= 8;
    }

    while (v14);
  }

  if (v7 == (v26 + 8 * v27))
  {
LABEL_21:
    v5 = 0;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_19;
  }

  v19 = mlir::Attribute::getContext((v2 + 24));
  v21 = mlir::IndexType::get(v19, v20);
  v5 = mlir::IntegerAttr::get(v21, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v26;
  if (v26 != v28)
  {
LABEL_19:
    free(v6);
  }

  return v5;
}

uint64_t mlir::affine::AffineMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v20[32] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v18 = v20;
  v19 = 0x800000000;
  v14 = 0;
  v15 = v17;
  v16 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(a1, &v14, 0, "map", 3uLL, a2 + 112) || ((*(*a1 + 720))(a1, &v18, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 720))(a1, &v15, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (v19)
  {
    v7 = v18;
    v8 = 32 * v19;
    while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  if (v16)
  {
    v9 = v15;
    v10 = 32 * v16;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v11 + 1, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v11) = IndexType;
  ++*(a2 + 72);
  v12 = 1;
LABEL_17:
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v12;
}

BOOL mlir::affine::AffinePrefetchOp::parse(mlir::AsmParser *a1, mlir::Attribute *a2)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v54 = 0;
  memset(v53, 0, 24);
  v52 = 0;
  v7 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v7, 32);
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v66 = v68;
  v67 = 0x100000000;
  if (((*(*a1 + 704))(a1, v53, 1) & 1) == 0 || ((*(*a1 + 736))(a1, &v66, &v47, "map", 3, a2 + 112, 2) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v50) || ((*(*a1 + 120))(a1) & 1) == 0 || (v58 = 257, ((*(*a1 + 400))(a1, "locality", 8, &v55) & 1) == 0) || ((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v52, IntegerType, "localityHint", 0xCuLL, a2 + 112) || ((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v48) || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || !mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v54) || ((*(*a1 + 728))(a1, v53, v54, a2 + 16) & 1) == 0)
  {
LABEL_35:
    v12 = 0;
    goto LABEL_36;
  }

  if (v67)
  {
    v9 = v66;
    v10 = 32 * v67;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_35;
  }

LABEL_19:
  if (v51 == 5)
  {
    if (*v50 != 1953067639 || *(v50 + 4) != 101)
    {
LABEL_22:
      v11 = (*(*a1 + 16))(a1);
      v44 = "rw specifier has to be 'read' or 'write'";
      v46 = 259;
      (*(*a1 + 24))(&v55, a1, v11, &v44);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
      if (v55)
      {
        mlir::InFlightDiagnostic::report(&v55);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v63;
          v15 = __p;
          if (v63 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v63 = v13;
          operator delete(v15);
        }

        v16 = v60;
        if (!v60)
        {
          goto LABEL_76;
        }

        v17 = v61;
        v18 = v60;
        if (v61 == v60)
        {
LABEL_75:
          v61 = v16;
          operator delete(v18);
LABEL_76:
          if (v57 != &v59)
          {
            free(v57);
          }

          goto LABEL_36;
        }

        do
        {
          v21 = *--v17;
          v20 = v21;
          *v17 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
LABEL_74:
        v18 = v60;
        goto LABEL_75;
      }

      goto LABEL_36;
    }
  }

  else if (v51 != 4 || *v50 != 1684104562)
  {
    goto LABEL_22;
  }

  v23 = (*(*a1 + 32))(a1);
  v26 = (v51 == 5 && *v50 == 1953067639 && *(v50 + 4) == 101);
  BoolAttr = mlir::Builder::getBoolAttr(v23, v26, v24);
  Context = mlir::Attribute::getContext(a2);
  v58 = 261;
  v55 = "isWrite";
  v56 = 7;
  v29 = mlir::StringAttr::get(Context, &v55);
  ZinMirCacheTensors::ZinMirCacheTensors(&v44, v29, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v44, v45);
  if (v49 != 5)
  {
    if (v49 != 4 || *v48 != 1635017060)
    {
      goto LABEL_58;
    }

LABEL_83:
    v38 = (*(*a1 + 32))(a1);
    if (v49 == 4)
    {
      v40 = (*v48 == 1635017060);
    }

    else
    {
      v40 = 0;
    }

    v41 = mlir::Builder::getBoolAttr(v38, v40, v39);
    v42 = mlir::Attribute::getContext(a2);
    v58 = 261;
    v55 = "isDataCache";
    v56 = 11;
    v43 = mlir::StringAttr::get(v42, &v55);
    ZinMirCacheTensors::ZinMirCacheTensors(&v44, v43, v41);
    mlir::NamedAttrList::push_back(a2 + 112, v44, v45);
    v12 = 1;
    goto LABEL_36;
  }

  if (*v48 == 1953721961 && *(v48 + 4) == 114)
  {
    goto LABEL_83;
  }

LABEL_58:
  v30 = (*(*a1 + 16))(a1);
  v44 = "cache type has to be 'data' or 'instr'";
  v46 = 259;
  (*(*a1 + 24))(&v55, a1, v30, &v44);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
  if (v55)
  {
    mlir::InFlightDiagnostic::report(&v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v63;
      v33 = __p;
      if (v63 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v63 = v31;
      operator delete(v33);
    }

    v16 = v60;
    if (!v60)
    {
      goto LABEL_76;
    }

    v34 = v61;
    v18 = v60;
    if (v61 == v60)
    {
      goto LABEL_75;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        MEMORY[0x1AC55A040](v35, 0x1000C8077774924);
      }
    }

    while (v34 != v16);
    goto LABEL_74;
  }

LABEL_36:
  if (v66 != v68)
  {
    free(v66);
  }

  return v12;
}

uint64_t mlir::affine::AffinePrefetchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      InherentAttr = mlir::DictionaryAttr::get((v8 + 7), "map", 3uLL);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v8, "map", 3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = v11[9];
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v44);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 8236;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::BoolAttr::getValue(&AttrDictionary);
  v20 = (*(*a2 + 16))(a2);
  if (Value)
  {
    v21 = "write";
  }

  else
  {
    v21 = "read";
  }

  if (Value)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= *(v20 + 24) - *(v20 + 32))
  {
    v23 = v20;
    memcpy(*(v20 + 32), v21, v22);
    *(v23 + 32) += v22;
  }

  else
  {
    llvm::raw_ostream::write(v20, v21, v22);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 8236;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if ((v26[3] - v27) > 8)
  {
    *(v27 + 8) = 60;
    *v27 = *"locality<";
    v26[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v26, "locality<", 9uLL);
  }

  v42 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  mlir::IntegerAttr::getValue(&v42, &AttrDictionary);
  if (v44 > 0x40)
  {
    v28 = *AttrDictionary;
    MEMORY[0x1AC55A040]();
  }

  else
  {
    v28 = AttrDictionary;
  }

  v29 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v29, v28);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 2)
  {
    *(v31 + 2) = 32;
    *v31 = 11326;
    v30[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v30, ">, ", 3uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v32 = mlir::BoolAttr::getValue(&AttrDictionary);
  v33 = (*(*a2 + 16))(a2);
  if (v32)
  {
    v34 = "data";
  }

  else
  {
    v34 = "instr";
  }

  if (v32)
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  if (v35 <= *(v33 + 24) - *(v33 + 32))
  {
    v36 = v33;
    memcpy(*(v33 + 32), v34, v35);
    *(v36 + 32) += v35;
  }

  else
  {
    llvm::raw_ostream::write(v33, v34, v35);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v37 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v44 = 3;
  v45 = "localityHint";
  v46 = 12;
  v47 = "isDataCache";
  v48 = 11;
  v49 = "isWrite";
  v50 = 7;
  (*(*a2 + 192))(a2, v37, v38, &AttrDictionary, 4);
  v39 = (*(*a2 + 16))(a2);
  v40 = v39[4];
  if ((v39[3] - v40) > 2)
  {
    *(v40 + 2) = 32;
    *v40 = 14880;
    v39[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v39, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffinePrefetchOp::verify(mlir::affine::AffinePrefetchOp *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "map", 3), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "map", 3uLL);
  }

  if (!InherentAttr)
  {
    v47 = 0;
    goto LABEL_27;
  }

  v5 = *(*InherentAttr + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v7 = InherentAttr;
  }

  else
  {
    v7 = 0;
  }

  v47 = v7;
  if (v6)
  {
    Value = mlir::AffineMapAttr::getValue(&v47);
    v8 = mlir::arith::FastMathFlagsAttr::getValue(&Value);
    *v48 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(v48);
    if (v9 == v8)
    {
      v10 = mlir::AffineMap::getNumInputs(&Value) + 1;
      v11 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        if (v10 == *(v11 + 17))
        {
          goto LABEL_29;
        }
      }

      else if (!v10)
      {
        goto LABEL_29;
      }

      v44[0] = "too few operands";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (*v48)
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
LABEL_60:
        v35 = v49;
        if (v49 == v50)
        {
          return result;
        }

LABEL_61:
        free(v35);
        return v13;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_59:
        v52 = v17;
        operator delete(v19);
        result = v13;
        goto LABEL_60;
      }

      do
      {
        v28 = *--v18;
        v27 = v28;
        *v18 = 0;
        if (v28)
        {
          MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
    }

    else
    {
      v44[0] = "affine.prefetch affine map num results must equal memref rank";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (*v48)
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v54;
        v31 = __p;
        if (v54 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v54 = v29;
        operator delete(v31);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
        goto LABEL_60;
      }

      v32 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_59;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v17);
    }

    v19 = v51;
    goto LABEL_59;
  }

LABEL_27:
  v11 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v11 + 17) != 1)
  {
    mlir::affine::AffinePrefetchOp::verify(this, v48);
    return v48[0];
  }

LABEL_29:
  AffineScope = mlir::affine::getAffineScope(v11, v4);
  v21 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v22 = *(v21 + 68);
    v23 = v22 - 1;
    if (v22 == 1)
    {
      return 1;
    }

    v24 = *(v21 + 72) + 32;
  }

  else
  {
    v23 = -1;
    v24 = 32;
  }

  for (i = (v24 + 24); ; i += 4)
  {
    v26 = *i;
    if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v26, AffineScope) & 1) == 0)
    {
      break;
    }

    if (!--v23)
    {
      return 1;
    }
  }

  v44[0] = "index must be a valid dimension or symbol identifier";
  v45 = 259;
  mlir::OpState::emitOpError(this, v44, v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  v13 = result;
  if (*v48)
  {
    mlir::InFlightDiagnostic::report(v48);
    result = v13;
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v13;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
      result = v13;
    }

    v39 = v51;
    if (v51)
    {
      v40 = v52;
      v41 = v51;
      if (v52 != v51)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            MEMORY[0x1AC55A040](v42, 0x1000C8077774924);
          }
        }

        while (v40 != v39);
        v41 = v51;
      }

      v52 = v39;
      operator delete(v41);
      result = v13;
    }

    v35 = v49;
    if (v49 != v50)
    {
      goto LABEL_61;
    }
  }

  return result;
}