BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::arith::SelectOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[17] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[16] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 16);
  return v5 == a2;
}

__guard mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[390];
}

uint64_t llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>();
    *algn_27FC19C48 = v1;
  }

  return llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SelectLikeOpInterface::Trait<Empty>]";
  v6 = 103;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::arith::SelectOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && (v8 = a1, (mlir::arith::SelectOp::verifyInvariantsImpl(&v8)) && mlir::OpTrait::impl::verifyElementwise(a1, v5))
  {
    v8 = a1;
    v6 = mlir::arith::SelectOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void mlir::Dialect::addAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::arith::FastMathFlagsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, 0, v2);
}

void mlir::Dialect::addAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, 0, v2);
}

void mlir::AbstractAttribute::get<mlir::arith::FastMathFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::arith::FastMathFlagsAttr,mlir::Attribute,mlir::arith::detail::FastMathFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSD_6detail24FastMathFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSC_6detail24FastMathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, "arith.fastmath", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

void mlir::AbstractAttribute::get<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v6[1] = 0x300000000;
  *&v4 = mlir::detail::StorageUserBase<mlir::arith::IntegerOverflowFlagsAttr,mlir::Attribute,mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v5 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v6[0] = v7;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v6, &v4, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSD_6detail31IntegerOverflowFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v3, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v2, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, "arith.overflow", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v4);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ub::PoisonOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "ub.poison";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ub::PoisonAttrInterface>();
      mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[400];
}

uint64_t llvm::getTypeName<mlir::ub::PoisonAttrInterface>()
{
  {
    llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface>();
    *algn_27FC19C98 = v1;
  }

  return llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
  v6 = 91;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::arith::ConstantOp::inferResultRanges(mlir::arith::ConstantOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(a1);
  if (ValueAttr && *(*ValueAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v38 = *(ValueAttr + 6);
    if (v38 > 0x40)
    {
      operator new[]();
    }

    __src = ValueAttr[2];
    if (*(*a1 + 36))
    {
      v13 = *a1 - 16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    result = mlir::arith::ConstantOp::getValueAttr(a1);
    if (!result)
    {
      return result;
    }

    v10 = result;
    result = mlir::DenseIntElementsAttr::classof(result);
    v11 = result ? v10 : 0;
    v36 = v11;
    if (!result)
    {
      return result;
    }

    v12 = *(v10 + 24);
    if (v12 != 1)
    {
      LOBYTE(v44) = 0;
      v51 = 0;
      v33[0] = *(v10 + 32);
      v33[1] = v12;
      v34 = 0;
      v14 = (*(*(v10 + 16) + 8))();
      DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v14);
      v15 = (*(*(v10 + 16) + 24))();
      if (v16)
      {
        v17 = 8 * v16;
        v18 = 1;
        do
        {
          v19 = *v15++;
          v18 *= v19;
          v17 -= 8;
        }

        while (v17);
      }

      else
      {
        v18 = 1;
      }

      v20 = (*(*(v10 + 16) + 8))();
      mlir::detail::getDenseElementBitWidth(v20);
      if (v18)
      {
        v21 = 1;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(v33, &v31);
          mlir::ConstantIntRanges::ConstantIntRanges(&__src, &v31, &v31, &v31, &v31);
          if (v51 == 1)
          {
            mlir::ConstantIntRanges::rangeUnion(&v44, &__src, &v23);
          }

          else
          {
            v24 = v38;
            if (v38 > 0x40)
            {
              operator new[]();
            }

            v23 = __src;
            v26 = DWORD2(v39);
            if (DWORD2(v39) > 0x40)
            {
              operator new[]();
            }

            v25 = v39;
            v28 = v41;
            if (v41 > 0x40)
            {
              operator new[]();
            }

            v27 = v40;
            v30 = v43;
            if (v43 > 0x40)
            {
              operator new[]();
            }

            v29 = v42;
          }

          std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(&v44, &v23);
          if (v30 >= 0x41 && v29)
          {
            MEMORY[0x25F891010](v29, 0x1000C8000313F17);
          }

          if (v28 >= 0x41 && v27)
          {
            MEMORY[0x25F891010](v27, 0x1000C8000313F17);
          }

          if (v26 >= 0x41 && v25)
          {
            MEMORY[0x25F891010](v25, 0x1000C8000313F17);
          }

          if (v24 >= 0x41 && v23)
          {
            MEMORY[0x25F891010](v23, 0x1000C8000313F17);
          }

          if (v43 >= 0x41 && v42)
          {
            MEMORY[0x25F891010](v42, 0x1000C8000313F17);
          }

          if (v41 >= 0x41 && v40)
          {
            MEMORY[0x25F891010](v40, 0x1000C8000313F17);
          }

          if (DWORD2(v39) >= 0x41 && v39)
          {
            MEMORY[0x25F891010](v39, 0x1000C8000313F17);
          }

          if (v38 >= 0x41 && __src)
          {
            MEMORY[0x25F891010](__src, 0x1000C8000313F17);
          }

          if (v32 >= 0x41 && v31)
          {
            MEMORY[0x25F891010](v31, 0x1000C8000313F17);
          }

          v34 = v21++;
          --v18;
        }

        while (v18);
      }

      if (*(*a1 + 36))
      {
        v22 = *a1 - 16;
      }

      else
      {
        v22 = 0;
      }

      result = a4(a5, v22, &v44);
      if (v51 == 1)
      {
        if (v50 >= 0x41)
        {
          result = v49;
          if (v49)
          {
            result = MEMORY[0x25F891010](v49, 0x1000C8000313F17);
          }
        }

        if (v48 >= 0x41)
        {
          result = v47;
          if (v47)
          {
            result = MEMORY[0x25F891010](v47, 0x1000C8000313F17);
          }
        }

        if (DWORD2(v46) >= 0x41)
        {
          result = v46;
          if (v46)
          {
            result = MEMORY[0x25F891010](v46, 0x1000C8000313F17);
          }
        }

        if (v45 >= 0x41)
        {
          result = v44;
          if (v44)
          {
            return MEMORY[0x25F891010](result, 0x1000C8000313F17);
          }
        }
      }

      return result;
    }

    if (*(*a1 + 36))
    {
      v13 = *a1 - 16;
    }

    else
    {
      v13 = 0;
    }

    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v36, &v44);
    v39 = v46;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v44, &__src);
  }

  mlir::ConstantIntRanges::ConstantIntRanges(&v44, &__src, &__src, &__src, &__src);
  result = a4(a5, v13, &v44);
  if (v50 >= 0x41)
  {
    result = v49;
    if (v49)
    {
      result = MEMORY[0x25F891010](v49, 0x1000C8000313F17);
    }
  }

  if (v48 >= 0x41)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x25F891010](v47, 0x1000C8000313F17);
    }
  }

  if (DWORD2(v46) >= 0x41)
  {
    result = v46;
    if (v46)
    {
      result = MEMORY[0x25F891010](v46, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
      result = MEMORY[0x25F891010](v44, 0x1000C8000313F17);
    }
  }

  if (v38 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](result, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    llvm::APInt::operator=(a1, a2);
    llvm::APInt::operator=(a1 + 16, a2 + 16);
    llvm::APInt::operator=(a1 + 32, a2 + 32);
    llvm::APInt::operator=(a1 + 48, a2 + 48);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
    *(a2 + 8) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 24) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 56) = 0;
    *(a1 + 64) = 1;
  }

  return a1;
}

uint64_t mlir::arith::AddIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferAdd(a2, *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) + 8) & 3, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::SubIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferSub(a2, *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) + 8) & 3, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MulIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferMul(a2, *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) + 8) & 3, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::DivUIOp::inferResultRanges(uint64_t a1, const void **this, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferDivU(&v9, this);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::DivSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferDivS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::CeilDivUIOp::inferResultRanges(uint64_t a1, const void **this, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferCeilDivU(&v9, this);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::CeilDivSIOp::inferResultRanges(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferCeilDivS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::FloorDivSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferFloorDivS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::RemUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferRemU(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::RemSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferRemS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::AndIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferAnd(&v9, a2, a3);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::OrIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferOr(a2, a3, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::XOrIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferXor(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MaxSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferMaxS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MaxUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferMaxU(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MinSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferMinS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MinUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferMinU(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ExtUIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1 - 16;
  mlir::intrange::extUIRange(&v12, a2, StorageBitwidth);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ExtSIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1 - 16;
  mlir::intrange::extSIRange(&v12, a2, StorageBitwidth);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::TruncIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1 - 16;
  mlir::intrange::truncRange(&v12, a2, StorageBitwidth);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::IndexCastOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = mlir::ConstantIntRanges::getStorageBitwidth((v8 & 0xFFFFFFFFFFFFFFF8));
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extSIRange(&v14, a2, v10);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(&v14, a2, v10);
LABEL_5:
    result = a4(a5, v11, &v14);
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        return MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }
    }

    return result;
  }

  return a4(a5, v11, a2);
}

uint64_t mlir::arith::IndexCastUIOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v10 = mlir::ConstantIntRanges::getStorageBitwidth((v8 & 0xFFFFFFFFFFFFFFF8));
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extUIRange(&v14, a2, v10);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(&v14, a2, v10);
LABEL_5:
    result = a4(a5, v11, &v14);
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        return MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }
    }

    return result;
  }

  return a4(a5, v11, a2);
}

uint64_t mlir::arith::CmpIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v15 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Int = mlir::IntegerAttr::getInt(&v15);
  v26 = 1;
  v25 = 0;
  v24 = 1;
  v23 = 1;
  v10 = mlir::intrange::evaluatePred(Int, a2, (a2 + 64));
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      v11 = &v25;
      v12 = &v23;
    }

    else
    {
      v11 = &v23;
      v12 = &v25;
    }

    llvm::APInt::operator=(v11, v12);
  }

  if (*(*a1 + 36))
  {
    v13 = *a1 - 16;
  }

  else
  {
    v13 = 0;
  }

  mlir::ConstantIntRanges::fromUnsigned(&v25, &v23, &v15);
  result = a4(a5, v13, &v15);
  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x25F891010](v21, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x25F891010](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      result = MEMORY[0x25F891010](v23, 0x1000C8000313F17);
    }
  }

  if (v26 >= 0x41)
  {
    result = v25;
    if (v25)
    {
      return MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::SelectOp::inferResultRangesFromOptional(uint64_t a1, mlir::ConstantIntRanges *this, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, const void **), uint64_t a5)
{
  if (*(this + 64))
  {
    mlir::ConstantIntRanges::getConstantValue(this, &v27);
    v9 = (this + 72);
    v10 = (this + 144);
    if (v29)
    {
      v11 = v28;
      if (v28 > 0x40)
      {
        if (llvm::APInt::countLeadingZerosSlowCase(&v27) != v11)
        {
          goto LABEL_5;
        }
      }

      else if (v27)
      {
LABEL_5:
        if (*(*a1 + 36))
        {
          v12 = *a1 - 16;
        }

        else
        {
          v12 = 0;
        }

        v13 = a5;
        v14 = v9;
LABEL_26:
        result = a4(v13, v12, v14);
        goto LABEL_61;
      }

      if (*(*a1 + 36))
      {
        v12 = *a1 - 16;
      }

      else
      {
        v12 = 0;
      }

      v13 = a5;
      v14 = v10;
      goto LABEL_26;
    }
  }

  else
  {
    LOBYTE(v27) = 0;
    v29 = 0;
    v9 = (this + 72);
    v10 = (this + 144);
  }

  if (*(*a1 + 36))
  {
    v15 = *a1 - 16;
  }

  else
  {
    v15 = 0;
  }

  if (*(this + 136))
  {
    if (*(this + 208))
    {
      mlir::ConstantIntRanges::rangeUnion(v9, v10, &v30);
      v19 = v31;
      v18 = v30;
      v21 = v33;
      v20 = v32;
      v23 = v35;
      v22 = v34;
      v25 = v37;
      v16 = v36;
    }

    else
    {
      v26 = 0;
      v19 = *(this + 20);
      if (v19 > 0x40)
      {
        operator new[]();
      }

      v18 = *v9;
      v21 = *(this + 24);
      if (v21 > 0x40)
      {
        operator new[]();
      }

      v20 = *(this + 11);
      v23 = *(this + 28);
      if (v23 > 0x40)
      {
        operator new[]();
      }

      v22 = *(this + 13);
      v25 = *(this + 32);
      if (v25 > 0x40)
      {
        operator new[]();
      }

      v16 = *(this + 15);
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    v26 = 0;
    if (*(this + 208) != 1)
    {
      goto LABEL_48;
    }

    v19 = *(this + 38);
    if (v19 > 0x40)
    {
      operator new[]();
    }

    v18 = *v10;
    v21 = *(this + 42);
    if (v21 > 0x40)
    {
      operator new[]();
    }

    v20 = *(this + 20);
    v23 = *(this + 46);
    if (v23 > 0x40)
    {
      operator new[]();
    }

    v22 = *(this + 22);
    v25 = *(this + 50);
    if (v25 > 0x40)
    {
      operator new[]();
    }

    v16 = *(this + 24);
  }

  v24 = v16;
  v26 = 1;
LABEL_48:
  result = a4(a5, v15, &v18);
  if (v26 == 1)
  {
    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
      }
    }

    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      }
    }
  }

LABEL_61:
  if (v29 == 1 && v28 >= 0x41)
  {
    result = v27;
    if (v27)
    {
      return MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferShl(a2, *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) + 8) & 3, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ShRUIOp::inferResultRanges(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferShrU(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ShRSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::intrange::inferShrS(a2, &v9);
  result = a4(a5, v7, &v9);
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

BOOL mlir::impl::foldCastInterfaceOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 68);
  if (!v4)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 36);
  v8 = a1 - 16;
  if (!v7)
  {
    v8 = 0;
  }

  v11[0] = *(a1 + 72);
  v11[1] = 0;
  v11[2] = v6;
  v11[3] = v4;
  v10[0] = v8;
  v10[1] = 0;
  v10[2] = v8;
  v10[3] = v7;
  result = mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(v11, v10);
  if (result)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a4, v6, 0, v6, v4);
    return 1;
  }

  return result;
}

uint64_t mlir::impl::verifyCastInterfaceOp(mlir::impl *this, mlir::Operation *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = this - 16;
  if (v3)
  {
    v5 = this - 16;
  }

  else
  {
    v5 = 0;
  }

  if (!v3)
  {
    v55 = 257;
    mlir::Operation::emitOpError(&v48, this, &v53);
    if (v48)
    {
      mlir::Diagnostic::operator<<<48ul>(v49, "expected at least one result for cast operation");
    }

    goto LABEL_12;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v6 = *(this + 9);
    v7 = *(this + 17);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(this + 6);
  if (*(v8 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v10 = *(*(v8 + 8) + 32);
    if (!v10)
    {
      goto LABEL_16;
    }

    v16 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID();
    v14 = (*(*v10 + 104))(v10, v16, v8);
  }

  else
  {
    v9 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 32, v9);
    if (v10)
    {
      goto LABEL_16;
    }

    v11 = *(v8 + 24);
    v12 = *(this + 6);
    v13 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID();
    v14 = (*(*v11 + 104))(v11, v13, v12);
  }

  v10 = v14;
LABEL_16:
  v17 = (v6 & 0xFFFFFFFFFFFFFFF8) == 0 || v7 == 0;
  v48 = v4;
  v49[0] = 0;
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v6 & 0xFFFFFFFFFFFFFFF8 | 4;
  }

  v49[1] = v4;
  v50 = v3;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v53, &v48);
  if ((*v10)(v18, v7, v53, v54))
  {
    v15 = 1;
    return v15 & 1;
  }

  v53 = "operand type";
  v55 = 259;
  mlir::Operation::emitOpError(&v48, this, &v53);
  if (v7)
  {
    v20 = v7 - 1;
    if (v7 == 1)
    {
      if (!v48)
      {
        goto LABEL_12;
      }

      mlir::Diagnostic::operator<<<2ul>(v49, " ");
      if (!v48)
      {
        goto LABEL_12;
      }

      v21 = *(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v53) = 4;
      v54 = v21;
      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v53, 1);
      v23 = v50 + 24 * v51;
      v24 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *v23 = v24;
      ++v51;
    }

    else
    {
      if (!v48)
      {
        goto LABEL_12;
      }

      mlir::Diagnostic::operator<<<3ul>(v49, "s ");
      if (!v48)
      {
        goto LABEL_12;
      }

      v53 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::Diagnostic::operator<<<mlir::Type const&>(v49, &v53);
      v25 = (v6 + 56);
      do
      {
        v53 = ", ";
        v55 = 259;
        mlir::Diagnostic::operator<<(v49, &v53);
        v26 = *v25;
        v25 += 4;
        v27 = *(v26 + 8) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v53) = 4;
        v54 = v27;
        v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v53, 1);
        v29 = v50 + 24 * v51;
        v30 = *v28;
        *(v29 + 16) = *(v28 + 16);
        *v29 = v30;
        ++v51;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    if (!v48)
    {
      goto LABEL_12;
    }

    mlir::Diagnostic::operator<<<5ul>(v49, "s []");
  }

  if (v48)
  {
    mlir::Diagnostic::operator<<<17ul>(v49, " and result type");
    v31 = "s ";
    if (v3 == 1)
    {
      v31 = " ";
    }

    if (v48)
    {
      v32 = 1;
      HIBYTE(v55) = 1;
      if (*v31)
      {
        v53 = v31;
        v32 = 3;
      }

      LOBYTE(v55) = v32;
      mlir::Diagnostic::operator<<(v49, &v53);
      if (v48)
      {
        v33 = *(v5 + 1) & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v53) = 4;
        v54 = v33;
        v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v53, 1);
        v35 = v50 + 24 * v51;
        v36 = *v34;
        *(v35 + 16) = *(v34 + 16);
        *v35 = v36;
        ++v51;
        if (v3 != 1)
        {
          v37 = v5 - 16;
          v38 = 1;
          while (1)
          {
            v53 = ", ";
            v55 = 259;
            mlir::Diagnostic::operator<<(v49, &v53);
            v39 = *(v5 + 1) & 7;
            v40 = v5;
            v41 = v38;
            if (v39 == 6)
            {
              goto LABEL_48;
            }

            v42 = (5 - v39);
            v43 = v37;
            v41 = v38 - v42;
            if (v38 > v42)
            {
              break;
            }

LABEL_49:
            v44 = *(v43 + 1) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v53) = 4;
            v54 = v44;
            v45 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v53, 1);
            v46 = v50 + 24 * v51;
            v47 = *v45;
            *(v46 + 16) = *(v45 + 16);
            *v46 = v47;
            ++v51;
            ++v38;
            v37 -= 16;
            if (v3 == v38)
            {
              goto LABEL_50;
            }
          }

          v40 = &v5[-16 * v42];
LABEL_48:
          v43 = &v40[-24 * v41];
          goto LABEL_49;
        }

LABEL_50:
        if (v48)
        {
          mlir::Diagnostic::operator<<<23ul>(v49, " are cast incompatible");
        }
      }
    }
  }

LABEL_12:
  v15 = v52 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  return v15 & 1;
}

void *mlir::DialectRegistry::addExtension<mlir::BuiltinDialect>(void (*)(mlir::MLIRContext *,mlir::BuiltinDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::BuiltinDialect>(void (*)(mlir::MLIRContext *,mlir::BuiltinDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpTrait::util::getBroadcastedShape(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  if (a2 <= a4)
  {
    if (!a4)
    {
      return 1;
    }

    v13 = 8 * a4;
    v14 = a3;
    do
    {
      v15 = *v14++;
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a5, v15);
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v10 = 8 * a2;
    v11 = a1;
    do
    {
      v12 = *v11++;
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a5, v12);
      v10 -= 8;
    }

    while (v10);
  }

  result = 1;
  if (a2 && a4)
  {
    v17 = 8 * a2 - 8;
    v18 = (*a5 + 8 * *(a5 + 8) - 8);
    v19 = 8 * a4 - 8;
    while (1)
    {
      v20 = *(a1 + v17);
      v21 = *(a3 + v19);
      if (v20 == 0x8000000000000000)
      {
        if (v21 <= 1)
        {
          v20 = 0x8000000000000000;
        }

        else
        {
          v20 = *(a3 + v19);
        }
      }

      else if (v21 == 0x8000000000000000)
      {
        if (v20 <= 1)
        {
          v20 = 0x8000000000000000;
        }
      }

      else
      {
        v22 = v20 == v21 || v21 == 1;
        if (!v22)
        {
          v22 = v20 == 1;
          v20 = *(a3 + v19);
          if (!v22)
          {
            result = 0;
            *(a5 + 8) = 0;
            return result;
          }
        }
      }

      *v18-- = v20;
      if (v17)
      {
        v17 -= 8;
        v23 = v19;
        v19 -= 8;
        if (v23)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t *mlir::OpTrait::util::getBroadcastedType(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  v35[4] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
    v3 = a1;
    if (v6)
    {
      v3 = (*(v7 + 8))(v7, v6);
    }

    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
    v10 = a2;
    if (v9)
    {
      v10 = (*(v8 + 8))(v8, v9);
    }

    if (v3 != v10)
    {
      return 0;
    }
  }

  v11 = *(*a1 + 136);
  v12 = *(*a2 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }

LABEL_28:
    v33 = v3;
    return mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v3 + 32), &v33);
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }

    goto LABEL_28;
  }

  v13 = v12 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v14 = v13;
  if (v13)
  {
    v15 = *(*a2 + 136);
  }

  else
  {
    v15 = 0;
  }

  v16 = (v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) | v14;
  if (v11 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = *(*a1 + 136);
  }

  if ((v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) && v14)
  {
    if (v11 == v12)
    {
      v16 = 1;
      v17 = *(*a1 + 136);
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  v33 = v35;
  v34 = 0x400000000;
  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v18)
  {
    v20 = (*(v19 + 24))(v19, v18);
    v22 = v21;
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  if (v23)
  {
    v25 = (*(v24 + 24))(v24, v23);
    v27 = v26;
  }

  else
  {
    v27 = 0;
    v25 = 0;
  }

  if (!mlir::OpTrait::util::getBroadcastedShape(v20, v22, v25, v27, &v33))
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v17 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || (v16 & 1) == 0)
  {
    if (v17 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v16 & 1) == 0)
    {
      goto LABEL_42;
    }

    *&v32 = v33;
    *(&v32 + 1) = v34;
    v30 = 0;
    v31 = v3;
    v28 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v3 + 32), &v32, &v31, &v30);
  }

  else
  {
    v28 = mlir::VectorType::get(v33, v34, v3, 0, 0);
  }

  v3 = v28;
LABEL_42:
  if (v33 != v35)
  {
    free(v33);
  }

  return v3;
}

uint64_t mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  if ((v3 & 0x800000) != 0)
  {
    v4 = *(this + 17);
    if (v4)
    {
      v5 = *(this + 9);
      v6 = v4 - 1;
      v7 = (v5 + 24);
      v8 = v4 - 1;
      do
      {
        v9 = *v7;
        v7 += 4;
        v10 = *(*(*(v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
        LODWORD(v4) = v11;
        if (v11)
        {
          break;
        }
      }

      while (v8--);
      v13 = (v5 + 24);
      do
      {
        v14 = *v13;
        v13 += 4;
        v15 = *(*(*(v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
      }

      while (*(*(*(v14 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v6-- != 0);
      goto LABEL_21;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v15 = 0;
LABEL_21:
  v17 = *(this + 9);
  if (v17)
  {
    v18 = this - 16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = 0;
    v20 = v17 - 1;
    v21 = v18;
    while (1)
    {
      v22 = v18;
      if (v19)
      {
        v23 = *(this - 1) & 7;
        v24 = v18;
        v25 = v19;
        if (v23 == 6)
        {
          goto LABEL_30;
        }

        v26 = (5 - v23);
        v22 = v21;
        v25 = v19 - v26;
        if (v19 > v26)
        {
          break;
        }
      }

LABEL_31:
      v27 = *(*(*(v22 + 1) & 0xFFFFFFFFFFFFFFF8) + 136);
      v28 = v27 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v29 = v28;
      if (!v28)
      {
        v21 -= 16;
        v11 = v20 == v19++;
        if (!v11)
        {
          continue;
        }
      }

      v30 = 0;
      v31 = v18;
      while (1)
      {
        v32 = v18;
        if (v30)
        {
          v33 = *(this - 1) & 7;
          v34 = v18;
          v35 = v30;
          if (v33 == 6)
          {
            goto LABEL_45;
          }

          v36 = (5 - v33);
          v32 = v31;
          v35 = v30 - v36;
          if (v30 > v36)
          {
            break;
          }
        }

LABEL_46:
        v31 -= 16;
        v37 = *(*(*(v32 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        if (*(*(*(v32 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v20 == v30++)
        {
          goto LABEL_53;
        }
      }

      v34 = &v18[-16 * v36];
LABEL_45:
      v32 = &v34[-24 * v35];
      goto LABEL_46;
    }

    v24 = &v18[-16 * v26];
LABEL_30:
    v22 = &v24[-24 * v25];
    goto LABEL_31;
  }

  v29 = 0;
  v37 = 0;
LABEL_53:
  if ((v4 | v29) == 1 && (v15 || v37))
  {
    v101 = "cannot broadcast vector with tensor";
    v103[8] = 259;
    mlir::Operation::emitError(&v104, this, &v101);
    v39 = (v108 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
    return v39;
  }

  if ((v3 & 0x800000) == 0)
  {
    return 1;
  }

  v40 = *(this + 17);
  if (!v40)
  {
    return 1;
  }

  v41 = 0;
  v42 = *(this + 9);
  for (i = v42 + 24; *(*(*(*i + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id; i += 32)
  {
    if (v40 == ++v41)
    {
      return 1;
    }
  }

  if (v40 == v41)
  {
    return 1;
  }

  v39 = v103;
  v101 = v103;
  v102 = 0x400000000;
  v45 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*i + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v45)
  {
    v47 = (*(v46 + 24))(v46, v45);
    LODWORD(v102) = 0;
    if (v48)
    {
      v39 = v47;
      v49 = 8 * v48;
      do
      {
        v50 = *v39;
        v39 += 8;
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v101, v50);
        v49 -= 8;
      }

      while (v49);
    }
  }

  else
  {
    LODWORD(v102) = 0;
  }

  while (v41 != v40)
  {
    v51 = v40;
    if (v41 + 1 != v40)
    {
      v52 = v42 + 56 + 32 * v41;
      v51 = v41 + 1;
      while (*(*(*(*v52 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        ++v51;
        v52 += 32;
        if (v40 == v51)
        {
          v51 = v40;
          break;
        }
      }
    }

    v53 = *(*(v42 + 32 * v41 + 24) + 8);
    v97 = v99;
    v98 = 0x400000000;
    if (v102)
    {
      llvm::SmallVectorImpl<long long>::operator=(&v97, &v101);
      v54 = v97;
      v55 = v98;
    }

    else
    {
      v55 = 0;
      v54 = v99;
    }

    v56 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v53 & 0xFFFFFFFFFFFFFFF8));
    if (v56)
    {
      v58 = (*(v57 + 24))(v57, v56);
      v60 = v59;
    }

    else
    {
      v60 = 0;
      v58 = 0;
    }

    BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v54, v55, v58, v60, &v101);
    if ((BroadcastedShape & 1) == 0)
    {
      v91 = "operands don't have broadcast-compatible shapes";
      LOWORD(v94) = 259;
      mlir::Operation::emitOpError(&v104, this, &v91);
      v39 = (v108 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
    }

    if (v97 != v99)
    {
      free(v97);
    }

    v41 = v51;
    if ((BroadcastedShape & 1) == 0)
    {
      goto LABEL_135;
    }
  }

  v62 = *(this + 9);
  if (v62)
  {
    v63 = this - 16;
  }

  else
  {
    v63 = 0;
  }

  v104 = v63;
  v105 = 0;
  *&v106 = v63;
  *(&v106 + 1) = v62;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::RankedTensorType>,std::bidirectional_iterator_tag>::findNextValid(&v104);
  v97 = v63;
  v98 = v62;
  v99[0] = v63;
  v99[1] = v62;
  llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::RankedTensorType>,std::bidirectional_iterator_tag>::findNextValid(&v97);
  v64 = v105;
  v95 = v106;
  v96 = v107;
  v65 = v98;
  if (v105 == v98)
  {
LABEL_93:
    v39 = 1;
    goto LABEL_135;
  }

  v91 = v104;
  v93 = v95;
  v94 = v96;
  while (1)
  {
    v66 = v91;
    if (!v64)
    {
      goto LABEL_104;
    }

    v67 = *(v91 + 1) & 7;
    if (v91)
    {
      v68 = v67 == 6;
    }

    else
    {
      v68 = 1;
    }

    v69 = v64;
    if (v68)
    {
      goto LABEL_102;
    }

    v70 = (5 - v67);
    v69 = v64 - v70;
    if (v64 > v70)
    {
      v66 = &v91[-16 * v70];
LABEL_102:
      v66 -= 24 * v69;
      goto LABEL_104;
    }

    v66 = &v91[-16 * v64];
LABEL_104:
    v71 = *(v66 + 1);
    v72 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v71 & 0xFFFFFFFFFFFFFFF8));
    if (v72)
    {
      v72 = (*(v73 + 24))(v73, v72);
      v75 = v102;
      if (v74 > v102)
      {
        v72 += v74 - v102;
        goto LABEL_109;
      }
    }

    else
    {
      v74 = 0;
      v75 = v102;
    }

    if (v74 != v75)
    {
      goto LABEL_120;
    }

LABEL_109:
    if (v75)
    {
      break;
    }

LABEL_118:
    v92 = v64 + 1;
    llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::RankedTensorType>,std::bidirectional_iterator_tag>::findNextValid(&v91);
    v64 = v92;
    if (v92 == v65)
    {
      goto LABEL_93;
    }
  }

  v76 = v101;
  v77 = 8 * v75;
  while (*v72 == 0x8000000000000000 || *v76 == 0x8000000000000000 || *v76 == *v72)
  {
    ++v76;
    ++v72;
    v77 -= 8;
    if (!v77)
    {
      goto LABEL_118;
    }
  }

LABEL_120:
  v90 = 257;
  mlir::Operation::emitOpError(&v104, this, v89);
  if (v104)
  {
    mlir::Diagnostic::operator<<<13ul>(&v105, "result type ");
  }

  v79 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v71 & 0xFFFFFFFFFFFFFFF8));
  if (v79)
  {
    v81 = (*(v80 + 24))(v80, v79);
    v83 = v82;
  }

  else
  {
    v83 = 0;
    v81 = 0;
  }

  getShapeString(v87, v81, v83);
  if (v104)
  {
    v100 = 260;
    v97 = v87;
    mlir::Diagnostic::operator<<(&v105, &v97);
    if (v104)
    {
      mlir::Diagnostic::operator<<<62ul>(&v105, " not broadcast compatible with broadcasted operands's shapes ");
    }
  }

  getShapeString(__p, v101, v102);
  if (v104)
  {
    v100 = 260;
    v97 = __p;
    mlir::Diagnostic::operator<<(&v105, &v97);
  }

  v84 = v108;
  if (v86 < 0)
  {
    operator delete(__p[0]);
  }

  v39 = (v84 & 1) == 0;
  if (v88 < 0)
  {
    operator delete(v87[0]);
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
LABEL_135:
  if (v101 != v103)
  {
    free(v101);
  }

  return v39;
}

void getShapeString(void *a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = 0;
  v17 = 0;
  v18 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = &unk_286E79D28;
  v19 = a1;
  llvm::raw_ostream::SetUnbuffered(&v12);
  v5 = v16;
  if (v16 >= v15)
  {
    llvm::raw_ostream::write(&v12, 39);
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    ++v16;
    *v5 = 39;
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  if (*a2 == 0x8000000000000000)
  {
    v6 = v16;
    if (v16 >= v15)
    {
      llvm::raw_ostream::write(&v12, 63);
    }

    else
    {
      ++v16;
      *v6 = 63;
    }
  }

  else
  {
    llvm::write_integer(&v12, *a2, 0, 0);
  }

  if (a3 != 1)
  {
    v7 = 8 * a3;
    v8 = (a2 + 1);
    v9 = v7 - 8;
    do
    {
      if (v15 == v16)
      {
        llvm::raw_ostream::write(&v12, "x", 1uLL);
      }

      else
      {
        *v16++ = 120;
      }

      if (*v8 == 0x8000000000000000)
      {
        v10 = v16;
        if (v16 >= v15)
        {
          llvm::raw_ostream::write(&v12, 63);
        }

        else
        {
          ++v16;
          *v10 = 63;
        }
      }

      else
      {
        llvm::write_integer(&v12, *v8, 0, 0);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

LABEL_21:
  v11 = v16;
  if (v16 >= v15)
  {
    llvm::raw_ostream::write(&v12, 39);
  }

  else
  {
    ++v16;
    *v11 = 39;
  }

  llvm::raw_ostream::~raw_ostream(&v12);
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
    }
  }
}

uint64_t *llvm::filter_iterator_base<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,llvm::detail::IsaCheckPredicate<mlir::RankedTensorType>,std::bidirectional_iterator_tag>::findNextValid(uint64_t *result)
{
  v1 = result[1];
  v2 = result[3];
  if (v1 != v2)
  {
    v3 = *result;
    v4 = *result - 16 * v1;
    while (1)
    {
      v5 = v3;
      if (!v1)
      {
        goto LABEL_9;
      }

      v6 = v3;
      v7 = v1;
      if (v3)
      {
        v8 = *(v3 + 8) & 7;
        v6 = v3;
        v7 = v1;
        if (v8 != 6)
        {
          v9 = (5 - v8);
          v5 = v4;
          v7 = v1 - v9;
          if (v1 <= v9)
          {
            goto LABEL_9;
          }

          v6 = v3 - 16 * v9;
        }
      }

      v5 = v6 - 24 * v7;
LABEL_9:
      if (*(*(*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result[1] = ++v1;
        v4 -= 16;
        if (v2 != v1)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t *mlir::intrange::truncRange@<X0>(mlir::ConstantIntRanges *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  llvm::APInt::lshr(&__s1, this, a3);
  llvm::APInt::lshr(&__s2, this + 16, a3);
  v6 = v29;
  v7 = __s1;
  v8 = __s2;
  if (v29 > 0x40)
  {
    v9 = memcmp(__s1, __s2, ((v29 + 63) >> 3) & 0x3FFFFFF8) == 0;
  }

  else
  {
    v9 = __s1 == __s2;
  }

  v10 = v9;
  if (v27 >= 0x41 && v8 != 0)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v6 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  if (v10)
  {
    llvm::APInt::trunc(&__s1, this, a3);
    llvm::APInt::trunc(&__s2, (this + 16), a3);
  }

  else
  {
    v29 = a3;
    if (a3 >= 0x41)
    {
      operator new[]();
    }

    __s1 = 0;
    llvm::APInt::getAllOnes(&__s2, a3);
  }

  v12 = a3 - 1;
  llvm::APInt::ashr(&v24, this + 32, a3 - 1);
  llvm::APInt::ashr(&v22, this + 48, a3 - 1);
  if (v25 > 0x40)
  {
    if (!memcmp(v24, v22, ((v25 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_41;
    }
  }

  else if (v24 == v22)
  {
    goto LABEL_41;
  }

  if (llvm::APInt::isAllOnes(&v24))
  {
    if (llvm::APInt::isAllOnes(&v22))
    {
      goto LABEL_41;
    }

    v13 = v23;
    if (v23 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&v22) == v13)
      {
        goto LABEL_41;
      }
    }

    else if (!v22)
    {
      goto LABEL_41;
    }
  }

  v14 = v25;
  if (v25 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v24) == v14)
    {
      goto LABEL_34;
    }
  }

  else if (!v24)
  {
LABEL_34:
    v15 = v23;
    if (v23 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&v22) != v15)
      {
        goto LABEL_36;
      }
    }

    else if (v22)
    {
      goto LABEL_36;
    }

LABEL_41:
    llvm::APInt::trunc(&v20, (this + 32), a3);
    llvm::APInt::trunc(&v18, (this + 48), a3);
    goto LABEL_42;
  }

LABEL_36:
  llvm::APInt::getSignedMinValue(a3, &v20);
  llvm::APInt::getAllOnes(&v18, a3);
  if (v19 >= 0x41)
  {
    v16 = &v18[v12 >> 6];
  }

  else
  {
    v16 = &v18;
  }

  *v16 = (*v16 & ~(1 << v12));
LABEL_42:
  result = mlir::ConstantIntRanges::ConstantIntRanges(a1, &__s1, &__s2, &v20, &v18);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
    }
  }

  if (v23 >= 0x41)
  {
    result = v22;
    if (v22)
    {
      result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
    }
  }

  if (v25 >= 0x41)
  {
    result = v24;
    if (v24)
    {
      result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
    }
  }

  if (v27 >= 0x41)
  {
    result = __s2;
    if (__s2)
    {
      result = MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
    }
  }

  if (v29 >= 0x41)
  {
    result = __s1;
    if (__s1)
    {
      return MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::extUIRange@<X0>(mlir::ConstantIntRanges *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = a3;
  llvm::APInt::zext(&v9, this, a3);
  llvm::APInt::zext(&v7, (this + 16), v3);
  result = mlir::ConstantIntRanges::fromUnsigned(&v9, &v7, a1);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x25F891010](v7, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::extSIRange@<X0>(mlir::ConstantIntRanges *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = a3;
  llvm::APInt::sext((this + 32), a3, &v9);
  llvm::APInt::sext((this + 48), v3, &v7);
  result = mlir::ConstantIntRanges::fromSigned(&v9, &v7, a1);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      result = MEMORY[0x25F891010](v7, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::APInt::lshr(llvm::APInt *this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  *(this + 2) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  if (v3 == a3)
  {
    *this = 0;
  }

  else
  {
    *this = *a2 >> a3;
  }
}

uint64_t llvm::APInt::ashr(llvm::APInt *this, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 8);
  *(this + 2) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *this = *a2;

  return llvm::APInt::ashrInPlace(this, a3);
}

uint64_t mlir::intrange::inferAdd@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = &unk_286E8AFA8;
  v26 = a2;
  v27 = &v25;
  v22 = &unk_286E8AFF0;
  v23 = a2;
  v24 = &v22;
  computeBoundsBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v25, a1, a1 + 64, a1 + 16, a1 + 80, 0);
  computeBoundsBy(&v6, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v22, a1 + 32, a1 + 96, a1 + 48, a1 + 112, 1);
  mlir::ConstantIntRanges::intersection(&v14, &v6, a3);
  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x25F891010](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x25F891010](v14, 0x1000C8000313F17);
  }

  std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v22);
  return std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v25);
}

mlir::ConstantIntRanges *computeBoundsBy(mlir::ConstantIntRanges *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  a2(&v19, a3, a4, a5);
  a2(&v16, a3, a6, a7);
  if (v21 == 1 && v18 == 1)
  {
    if (a8)
    {
      result = mlir::ConstantIntRanges::fromSigned(&v19, &v16, a1);
    }

    else
    {
      result = mlir::ConstantIntRanges::fromUnsigned(&v19, &v16, a1);
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::maxRange(*(a4 + 8), a1);
  }

  if (v18 == 1 && v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v21 == 1 && v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferSub@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = &unk_286E8B038;
  v26 = a2;
  v27 = &v25;
  v22 = &unk_286E8B080;
  v23 = a2;
  v24 = &v22;
  computeBoundsBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v25, a1, a1 + 80, a1 + 16, a1 + 64, 0);
  computeBoundsBy(&v6, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v22, a1 + 32, a1 + 112, a1 + 48, a1 + 96, 1);
  mlir::ConstantIntRanges::intersection(&v14, &v6, a3);
  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x25F891010](v12, 0x1000C8000313F17);
  }

  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  if (v9 >= 0x41 && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x25F891010](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x25F891010](v14, 0x1000C8000313F17);
  }

  std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v22);
  return std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v25);
}

uint64_t mlir::intrange::inferMul@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = &unk_286E8B0C8;
  v42 = a2;
  v43 = &v41;
  v38 = &unk_286E8B110;
  v39 = a2;
  v40 = &v38;
  v27 = *(a1 + 2);
  if (v27 > 0x40)
  {
    operator new[]();
  }

  v26 = *a1;
  v29[0] = *(a1 + 6);
  if (v29[0] > 0x40u)
  {
    operator new[]();
  }

  v28 = a1[2];
  v35 = *(a1 + 18);
  if (v35 > 0x40)
  {
    operator new[]();
  }

  v34 = a1[8];
  v37[0] = *(a1 + 22);
  if (v37[0] > 0x40u)
  {
    operator new[]();
  }

  v36 = a1[10];
  minMaxBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v41, &v26, 2, &v34, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v37[i] >= 0x41u)
    {
      v6 = *&v37[i - 2];
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v29[j] >= 0x41u)
    {
      v8 = *&v29[j - 2];
      if (v8)
      {
        MEMORY[0x25F891010](v8, 0x1000C8000313F17);
      }
    }
  }

  v35 = *(a1 + 10);
  if (v35 > 0x40)
  {
    operator new[]();
  }

  v34 = a1[4];
  v37[0] = *(a1 + 14);
  if (v37[0] > 0x40u)
  {
    operator new[]();
  }

  v36 = a1[6];
  v23 = *(a1 + 26);
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v22 = a1[12];
  v25[0] = *(a1 + 30);
  if (v25[0] > 0x40u)
  {
    operator new[]();
  }

  v24 = a1[14];
  minMaxBy(&v26, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v38, &v34, 2, &v22, 2, 1);
  for (k = 0; k != -8; k -= 4)
  {
    if (v25[k] >= 0x41u)
    {
      v10 = *&v25[k - 2];
      if (v10)
      {
        MEMORY[0x25F891010](v10, 0x1000C8000313F17);
      }
    }
  }

  for (m = 0; m != -8; m -= 4)
  {
    if (v37[m] >= 0x41u)
    {
      v12 = *&v37[m - 2];
      if (v12)
      {
        MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      }
    }
  }

  mlir::ConstantIntRanges::intersection(&v14, &v26, a3);
  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x25F891010](v32, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x25F891010](v30, 0x1000C8000313F17);
  }

  if (v29[0] >= 0x41u && v28)
  {
    MEMORY[0x25F891010](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x25F891010](v26, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x25F891010](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x25F891010](v14, 0x1000C8000313F17);
  }

  std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v38);
  return std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v41);
}

mlir::ConstantIntRanges *minMaxBy(mlir::ConstantIntRanges *a1, void (*a2)(unint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a4;
  v14 = *(a4 + 8);
  llvm::APInt::getAllOnes(&v39, v14);
  if (!a8)
  {
    v38 = v14;
    if (v14 > 0x40)
    {
      operator new[]();
    }

    v37 = 0;
    if (!a5)
    {
      goto LABEL_50;
    }

    goto LABEL_11;
  }

  if (v40 >= 0x41)
  {
    v15 = (v39 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v15 = &v39;
  }

  *v15 = (*v15 & ~(1 << (v14 - 1)));
  llvm::APInt::getSignedMinValue(v14, &v37);
  if (a5)
  {
LABEL_11:
    v29 = v10 + 16 * a5;
    while (!a7)
    {
LABEL_49:
      v10 += 16;
      if (v10 == v29)
      {
        goto LABEL_50;
      }
    }

    v16 = a6;
    while (1)
    {
      a2(&v34, a3, v10, v16);
      v17 = v36;
      if ((v36 & 1) == 0)
      {
        result = mlir::ConstantIntRanges::maxRange(v14, a1);
        goto LABEL_43;
      }

      v18 = v35;
      v33 = v35;
      v32 = v34;
      v35 = 0;
      if (a8)
      {
        v19 = &v32;
        if (llvm::APInt::compareSigned(&v32, &v39) >= 0)
        {
          v20 = &v39;
        }

        else
        {
          v20 = &v32;
        }

        llvm::APInt::operator=(&v39, v20);
        if (llvm::APInt::compareSigned(&v32, &v37) <= 0)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (v18 > 0x40)
      {
        v22 = ((v18 + 63) >> 3) & 0x3FFFFFF8;
        while (v22)
        {
          v23 = *(v34 + v22 - 8);
          v24 = *(v39 + v22 - 8);
          v22 -= 8;
          if (v23 != v24)
          {
            if (v23 <= v24)
            {
              goto LABEL_30;
            }

            break;
          }
        }
      }

      else if (v34 < v39)
      {
LABEL_30:
        v25 = &v32;
        goto LABEL_31;
      }

      v25 = &v39;
LABEL_31:
      llvm::APInt::operator=(&v39, v25);
      if (v33 > 0x40)
      {
        v26 = ((v33 + 63) >> 3) & 0x3FFFFFF8;
        while (v26)
        {
          v27 = *(v32 + v26 - 8);
          v28 = *(v37 + v26 - 8);
          v26 -= 8;
          if (v27 != v28)
          {
            if (v27 <= v28)
            {
              break;
            }

            goto LABEL_38;
          }
        }

LABEL_39:
        v19 = &v37;
        goto LABEL_40;
      }

      if (v32 <= v37)
      {
        goto LABEL_39;
      }

LABEL_38:
      v19 = &v32;
LABEL_40:
      result = llvm::APInt::operator=(&v37, v19);
      if (v33 >= 0x41)
      {
        result = v32;
        if (v32)
        {
          result = MEMORY[0x25F891010](v32, 0x1000C8000313F17);
        }
      }

LABEL_43:
      if (v36 == 1 && v35 >= 0x41)
      {
        result = v34;
        if (v34)
        {
          result = MEMORY[0x25F891010](v34, 0x1000C8000313F17);
        }
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_53;
      }

      v16 += 16;
      if (v16 == a6 + 16 * a7)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  if (a8)
  {
    result = mlir::ConstantIntRanges::fromSigned(&v39, &v37, a1);
  }

  else
  {
    result = mlir::ConstantIntRanges::fromUnsigned(&v39, &v37, a1);
  }

LABEL_53:
  if (v38 >= 0x41)
  {
    result = v37;
    if (v37)
    {
      result = MEMORY[0x25F891010](v37, 0x1000C8000313F17);
    }
  }

  if (v40 >= 0x41)
  {
    result = v39;
    if (v39)
    {
      return MEMORY[0x25F891010](v39, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *inferDivURange(mlir::ConstantIntRanges *a1, const void **this, llvm::APInt *a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  v8 = *(a3 + 2);
  if (v8 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a3) == v8)
    {
      v21 = v8;
      operator new[]();
    }
  }

  else if (!*a3)
  {
    v21 = *(a3 + 2);
    v20 = 0;
    v9 = llvm::APInt::compare(this, (a3 + 16));
    if (v9 < 0)
    {
      goto LABEL_34;
    }

    v10 = *(a3 + 6);
    if (v10 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 16)) == v10)
      {
LABEL_34:
        v17 = *(this + 6);
        if (v17 > 0x40)
        {
          operator new[]();
        }

        v16 = this[2];
        result = mlir::ConstantIntRanges::fromUnsigned(&v20, &v16, a1);
        if (v17 >= 0x41)
        {
          result = v16;
          if (v16)
          {
            result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
          }
        }

        if (v21 >= 0x41)
        {
          result = v20;
          if (v20)
          {
            return MEMORY[0x25F891010](v20, 0x1000C8000313F17);
          }
        }

        return result;
      }
    }

    else if (!*(a3 + 2))
    {
      goto LABEL_34;
    }

    llvm::APInt::udiv(&v16, this, (a3 + 16));
    v20 = v16;
    v21 = v17;
    goto LABEL_34;
  }

  v14 = v15;
  v21 = *(this + 2);
  if (v21 > 0x40)
  {
    operator new[]();
  }

  v20 = *this;
  v23[0] = *(this + 6);
  if (v23[0] > 0x40u)
  {
    operator new[]();
  }

  v22 = this[2];
  v17 = *(a3 + 2);
  if (v17 > 0x40)
  {
    operator new[]();
  }

  v16 = *a3;
  v19[0] = *(a3 + 6);
  if (v19[0] > 0x40u)
  {
    operator new[]();
  }

  v18 = *(a3 + 2);
  result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v14, &v20, 2, &v16, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v19[i] >= 0x41u)
    {
      result = *&v19[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v23[j] >= 0x41u)
    {
      result = *&v23[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

mlir::ConstantIntRanges *inferDivSRange(mlir::ConstantIntRanges *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v17[0] = a4;
  v17[1] = a5;
  v8 = (a3 + 48);
  if (llvm::APInt::isStrictlyPositive((a3 + 32)) & 1) != 0 || ((v9 = *(a3 + 56), v10 = v9 - 1, v9 >= 0x41) ? (v11 = (*(a3 + 48) + 8 * ((v9 - 1) >> 6))) : (v11 = v8), ((*v11 >> v10)))
  {
    v16 = v17;
    v23 = *(a2 + 40);
    if (v23 > 0x40)
    {
      operator new[]();
    }

    v22 = *(a2 + 32);
    v25[0] = *(a2 + 56);
    if (v25[0] > 0x40u)
    {
      operator new[]();
    }

    v24 = *(a2 + 48);
    v19 = *(a3 + 40);
    if (v19 > 0x40)
    {
      operator new[]();
    }

    v18 = *(a3 + 32);
    v21[0] = *(a3 + 56);
    if (v21[0] > 0x40u)
    {
      operator new[]();
    }

    v20 = *v8;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v16, &v22, 2, &v18, 2, 1);
    for (i = 0; i != -8; i -= 4)
    {
      if (v21[i] >= 0x41u)
      {
        result = *&v21[i - 2];
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    for (j = 0; j != -8; j -= 4)
    {
      if (v25[j] >= 0x41u)
      {
        result = *&v25[j - 2];
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }
  }

  else
  {
    v15 = *(a3 + 40);

    return mlir::ConstantIntRanges::maxRange(v15, a1);
  }

  return result;
}

uint64_t mlir::intrange::inferCeilDivS@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  inferDivSRange(a2, a1, (a1 + 16), llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v32);
  result = llvm::APInt::isMinSignedValue((a1 + 8));
  if (result)
  {
    result = llvm::APInt::compareSigned((a1 + 12), (a1 + 8));
    if (result >= 1)
    {
      v23 = a1[10];
      if (v23 > 0x40)
      {
        operator new[]();
      }

      v22 = *(a1 + 4);
      llvm::APInt::operator+=(&v22, 1uLL);
      v15 = v23;
      v14 = v22;
      v23 = 0;
      mlir::ConstantIntRanges::fromSigned(&v14, (a1 + 12), &v24);
      if (v15 >= 0x41 && v14)
      {
        MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }

      if (v23 >= 0x41 && v22)
      {
        MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }

      inferDivSRange(&v6, &v24, (a1 + 16), llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v32);
      result = mlir::ConstantIntRanges::rangeUnion(a2, &v6, &v14);
      if (*(a2 + 8) >= 0x41u)
      {
        result = *a2;
        if (*a2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *a2 = v14;
      *(a2 + 8) = v15;
      v15 = 0;
      if (*(a2 + 24) >= 0x41u)
      {
        result = *(a2 + 16);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      v17 = 0;
      if (*(a2 + 40) >= 0x41u)
      {
        result = *(a2 + 32);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *(a2 + 32) = v18;
      *(a2 + 40) = v19;
      v19 = 0;
      if (*(a2 + 56) >= 0x41u && (result = *(a2 + 48)) != 0)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        v5 = v19;
        *(a2 + 48) = v20;
        *(a2 + 56) = v21;
        v21 = 0;
        if (v5 >= 0x41)
        {
          result = v18;
          if (v18)
          {
            result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
          }
        }
      }

      else
      {
        *(a2 + 48) = v20;
        *(a2 + 56) = v21;
        v21 = 0;
      }

      if (v17 >= 0x41)
      {
        result = v16;
        if (v16)
        {
          result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
        }
      }

      if (v15 >= 0x41)
      {
        result = v14;
        if (v14)
        {
          result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
        }
      }

      if (v13 >= 0x41)
      {
        result = v12;
        if (v12)
        {
          result = MEMORY[0x25F891010](v12, 0x1000C8000313F17);
        }
      }

      if (v11 >= 0x41)
      {
        result = v10;
        if (v10)
        {
          result = MEMORY[0x25F891010](v10, 0x1000C8000313F17);
        }
      }

      if (v9 >= 0x41)
      {
        result = v8;
        if (v8)
        {
          result = MEMORY[0x25F891010](v8, 0x1000C8000313F17);
        }
      }

      if (v7 >= 0x41)
      {
        result = v6;
        if (v6)
        {
          result = MEMORY[0x25F891010](v6, 0x1000C8000313F17);
        }
      }

      if (v31 >= 0x41)
      {
        result = v30;
        if (v30)
        {
          result = MEMORY[0x25F891010](v30, 0x1000C8000313F17);
        }
      }

      if (v29 >= 0x41)
      {
        result = v28;
        if (v28)
        {
          result = MEMORY[0x25F891010](v28, 0x1000C8000313F17);
        }
      }

      if (v27 >= 0x41)
      {
        result = v26;
        if (v26)
        {
          result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
        }
      }

      if (v25 >= 0x41)
      {
        result = v24;
        if (v24)
        {
          return MEMORY[0x25F891010](v24, 0x1000C8000313F17);
        }
      }
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::inferRemS@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v4 = (a1 + 112);
  v5 = *(a1 + 120);
  llvm::APInt::getSignedMinValue(v5, &v45);
  llvm::APInt::getAllOnes(&v43, v5);
  if (v44 >= 0x41)
  {
    v6 = (v43 + 8 * ((v5 - 1) >> 6));
  }

  else
  {
    v6 = &v43;
  }

  *v6 = (*v6 & ~(1 << (v5 - 1)));
  if ((llvm::APInt::isStrictlyPositive((a1 + 96)) & 1) == 0)
  {
    v7 = *(a1 + 120);
    v8 = v7 - 1;
    v9 = v7 >= 0x41 ? (*(a1 + 112) + 8 * ((v7 - 1) >> 6)) : v4;
    if (((*v9 >> v8) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  if (llvm::APInt::isStrictlyPositive((a1 + 96)))
  {
    v42 = *(a1 + 120);
    if (v42 > 0x40)
    {
      operator new[]();
    }

    __src = *v4;
  }

  else
  {
    llvm::APInt::abs((a1 + 96), &__src);
  }

  v10 = *(a1 + 40);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*(a1 + 32) + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = (a1 + 32);
  }

  v13 = 1 << v11;
  v14 = *v12;
  isStrictlyPositive = llvm::APInt::isStrictlyPositive((a1 + 48));
  v40 = v42;
  if (v42 > 0x40)
  {
    operator new[]();
  }

  v39 = 0;
  v36 = v42;
  v35 = __src;
  llvm::APInt::operator-=(&v35, 1uLL);
  v38 = v36;
  v37 = v35;
  v36 = 0;
  v32 = v38;
  if (v38 > 0x40)
  {
    operator new[]();
  }

  v31 = v35;
  llvm::APInt::flipAllBits(&v31);
  llvm::APInt::operator++(&v31);
  v34 = v32;
  v33 = v31;
  v32 = 0;
  if ((v13 & v14) != 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = &v39;
  }

  llvm::APInt::operator=(&v45, v16);
  if (isStrictlyPositive)
  {
    v17 = &v37;
  }

  else
  {
    v17 = &v39;
  }

  llvm::APInt::operator=(&v43, v17);
  v18 = *(a1 + 104);
  if (v18 > 0x40)
  {
    if (memcmp(*(a1 + 96), *v4, ((v18 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_58;
    }
  }

  else if (*(a1 + 96) != *v4)
  {
    goto LABEL_58;
  }

  v30 = *(a1 + 56);
  if (v30 > 0x40)
  {
    operator new[]();
  }

  v29 = *(a1 + 48);
  llvm::APInt::operator-=(&v29, (a1 + 32));
  v19 = v30;
  v30 = 0;
  if (v19 > 0x40)
  {
    v20 = ((v19 + 63) >> 3) & 0x3FFFFFF8;
    while (v20)
    {
      v21 = *(v29 + v20 - 8);
      v22 = *(__src + v20 - 8);
      v20 -= 8;
      if (v21 != v22)
      {
        v23 = v21 <= v22;
        if (!v29)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }
    }

    v23 = 0;
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_45:
    MEMORY[0x25F891010](v29, 0x1000C8000313F17);
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x25F891010](v29, 0x1000C8000313F17);
      if (v23)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }

LABEL_49:
    if (!v23)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

  if (v29 < __src)
  {
LABEL_50:
    llvm::APInt::srem((a1 + 32), &__src, &v27);
    llvm::APInt::srem((a1 + 48), &__src, &v25);
    if (llvm::APInt::compareSigned(&v27, &v25) <= 0)
    {
      llvm::APInt::operator=(&v45, &v27);
      llvm::APInt::operator=(&v43, &v25);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }

    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

LABEL_58:
  if (v34 >= 0x41 && v33)
  {
    MEMORY[0x25F891010](v33, 0x1000C8000313F17);
  }

  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x25F891010](v37, 0x1000C8000313F17);
  }

  if (v40 >= 0x41 && v39)
  {
    MEMORY[0x25F891010](v39, 0x1000C8000313F17);
  }

  if (v42 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

LABEL_70:
  result = mlir::ConstantIntRanges::fromSigned(&v45, &v43, a2);
  if (v44 >= 0x41)
  {
    result = v43;
    if (v43)
    {
      result = MEMORY[0x25F891010](v43, 0x1000C8000313F17);
    }
  }

  if (v46 >= 0x41)
  {
    result = v45;
    if (v45)
    {
      return MEMORY[0x25F891010](v45, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::inferRemU@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v30 = *(a1 + 72);
  if (v30 >= 0x41)
  {
    operator new[]();
  }

  v29 = 0;
  v24 = *(a1 + 88);
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v23 = *(a1 + 80);
  llvm::APInt::operator-=(&v23, 1uLL);
  v4 = v24;
  v26 = v24;
  v5 = v23;
  v25 = v23;
  v24 = 0;
  v6 = &v25;
  v7 = llvm::APInt::compare(&v25, (a1 + 16));
  if (v7 >= 0)
  {
    v6 = (a1 + 16);
  }

  v8 = *(a1 + 24);
  if (v7 < 0)
  {
    v8 = v4;
  }

  v28 = v8;
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v27 = *v6;
  if (v4 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x25F891010](v23, 0x1000C8000313F17);
  }

  v9 = *(a1 + 72);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a1 + 64)) == v9 || memcmp(*(a1 + 64), *(a1 + 80), ((v9 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_47;
    }
  }

  else
  {
    v10 = *(a1 + 64);
    if (!v10 || v10 != *(a1 + 80))
    {
      goto LABEL_47;
    }
  }

  v22 = *(a1 + 24);
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v21 = *(a1 + 16);
  llvm::APInt::operator-=(&v21, a1);
  v11 = v22;
  v26 = v22;
  v12 = v21;
  v25 = v21;
  v22 = 0;
  v13 = llvm::APInt::compare(&v25, (a1 + 80));
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      if (v22 >= 0x41)
      {
        if (v21)
        {
          MEMORY[0x25F891010](v21, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v13 < 0)
  {
    llvm::APInt::urem(a1, (a1 + 80), &v25);
    llvm::APInt::urem((a1 + 16), (a1 + 80), &v19);
    if (v26 > 0x40)
    {
      v15 = ((v26 + 63) >> 3) & 0x3FFFFFF8;
      while (v15)
      {
        v16 = *(v25 - 8 + v15);
        v17 = *(v19 - 8 + v15);
        v15 -= 8;
        v14 = v16 > v17;
        if (v16 != v17)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = v25 > v19;
LABEL_39:
      if (v14)
      {
        goto LABEL_41;
      }
    }

    llvm::APInt::operator=(&v29, &v25);
    llvm::APInt::operator=(&v27, &v19);
LABEL_41:
    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }
  }

LABEL_47:
  result = mlir::ConstantIntRanges::fromUnsigned(&v29, &v27, a2);
  if (v28 >= 0x41)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

  if (v30 >= 0x41)
  {
    result = v29;
    if (v29)
    {
      return MEMORY[0x25F891010](v29, 0x1000C8000313F17);
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::inferMaxS@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v4 = a1 + 64;
  if (llvm::APInt::compareSigned((a1 + 32), (a1 + 96)) <= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compareSigned((a1 + 48), (a1 + 112)) <= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromSigned((v5 + 32), (v6 + 48), a2);
}

mlir::ConstantIntRanges *mlir::intrange::inferMaxU@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v4 = (a1 + 64);
  if (llvm::APInt::compare(a1, (a1 + 64)) <= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compare((a1 + 16), (a1 + 80)) <= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromUnsigned(v5, (v6 + 16), a2);
}

mlir::ConstantIntRanges *mlir::intrange::inferMinS@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v4 = a1 + 64;
  if (llvm::APInt::compareSigned((a1 + 32), (a1 + 96)) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compareSigned((a1 + 48), (a1 + 112)) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromSigned((v5 + 32), (v6 + 48), a2);
}

mlir::ConstantIntRanges *mlir::intrange::inferMinU@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v4 = (a1 + 64);
  if (llvm::APInt::compare(a1, (a1 + 64)) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compare((a1 + 16), (a1 + 80)) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromUnsigned(v5, (v6 + 16), a2);
}

void *mlir::intrange::inferAnd@<X0>(mlir::ConstantIntRanges *a1@<X8>, uint64_t *a2@<X0>, unsigned int a3@<W2>)
{
  v36 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&__src, a2, a3);
  widenBitwiseBounds(&v20, a2 + 8, v4);
  v5 = v25;
  v33 = v25;
  if (v25 > 0x40)
  {
    operator new[]();
  }

  v18 = __src;
  v32 = __src;
  v6 = v27;
  v35[0] = v27;
  if (v27 > 0x40)
  {
    operator new[]();
  }

  v7 = v26;
  v34 = v26;
  v8 = v21;
  v29 = v21;
  if (v21 > 0x40)
  {
    operator new[]();
  }

  v9 = v20;
  v28 = v20;
  v10 = v23;
  v31[0] = v23;
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v11 = v22;
  v30 = v22;
  minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v19, &v32, 2, &v28, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v31[i] >= 0x41u)
    {
      v13 = *&v31[i - 2];
      if (v13)
      {
        MEMORY[0x25F891010](v13, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v35[j] >= 0x41u)
    {
      v15 = *&v35[j - 2];
      if (v15)
      {
        MEMORY[0x25F891010](v15, 0x1000C8000313F17);
      }
    }
  }

  if (v10 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  if (v8 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  if (v6 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  result = v18;
  if (v5 >= 0x41)
  {
    if (v18)
    {
      return MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  return result;
}

void *widenBitwiseBounds(const mlir::ConstantIntRanges *a1, uint64_t *a2, unsigned int a3)
{
  v4 = *(a2 + 2);
  v11 = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2;
  v10 = *a2;
  v9 = *(a2 + 6);
  if (v9 > 0x40)
  {
    operator new[]();
  }

  v8 = a2[2];
  v6 = v4 + __clz(v8 ^ v5) - 64;
  llvm::APInt::clearLowBits(&v10, v4 - v6, a3);
  result = llvm::APInt::setBits(&v8, 0, v4 - v6);
  *(a1 + 2) = v11;
  *a1 = v10;
  *(a1 + 6) = v9;
  *(a1 + 2) = v8;
  return result;
}

void *mlir::intrange::inferOr@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W2>, mlir::ConstantIntRanges *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&__src, a1, a2);
  widenBitwiseBounds(&v20, a1 + 8, v4);
  v5 = v25;
  v33 = v25;
  if (v25 > 0x40)
  {
    operator new[]();
  }

  v18 = __src;
  v32 = __src;
  v6 = v27;
  v35[0] = v27;
  if (v27 > 0x40)
  {
    operator new[]();
  }

  v7 = v26;
  v34 = v26;
  v8 = v21;
  v29 = v21;
  if (v21 > 0x40)
  {
    operator new[]();
  }

  v9 = v20;
  v28 = v20;
  v10 = v23;
  v31[0] = v23;
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v11 = v22;
  v30 = v22;
  minMaxBy(a3, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v19, &v32, 2, &v28, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v31[i] >= 0x41u)
    {
      v13 = *&v31[i - 2];
      if (v13)
      {
        MEMORY[0x25F891010](v13, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v35[j] >= 0x41u)
    {
      v15 = *&v35[j - 2];
      if (v15)
      {
        MEMORY[0x25F891010](v15, 0x1000C8000313F17);
      }
    }
  }

  if (v10 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  if (v8 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  if (v6 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  result = v18;
  if (v5 >= 0x41)
  {
    if (v18)
    {
      return MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferXor@<X0>(uint64_t *a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v2 = *(a1 + 2);
  v51 = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  v3 = *a1;
  v50 = *a1;
  v53 = *(a1 + 6);
  v35 = v53;
  if (v53 > 0x40)
  {
    operator new[]();
  }

  v4 = a1[2];
  v52 = a1[2];
  v55 = *(a1 + 10);
  v33 = v55;
  if (v55 > 0x40)
  {
    operator new[]();
  }

  v5 = a1[4];
  v54 = a1[4];
  v57 = *(a1 + 14);
  v31 = v57;
  if (v57 > 0x40)
  {
    operator new[]();
  }

  v6 = a1[6];
  v56 = a1[6];
  v43 = *(a1 + 18);
  v29 = v43;
  if (v43 > 0x40)
  {
    operator new[]();
  }

  v7 = a1[8];
  v42 = a1[8];
  v45 = *(a1 + 22);
  v34 = v4;
  v28 = v45;
  if (v45 > 0x40)
  {
    operator new[]();
  }

  v8 = a1[10];
  v44 = a1[10];
  v47 = *(a1 + 26);
  v27 = v47;
  if (v47 > 0x40)
  {
    operator new[]();
  }

  v9 = a1[12];
  v46 = a1[12];
  v49 = *(a1 + 30);
  v32 = v5;
  v25 = v49;
  v26 = v9;
  if (v49 > 0x40)
  {
    operator new[]();
  }

  v24 = a1[14];
  v48 = v24;
  getVaryingBitsMask(&v40, &v50);
  getVaryingBitsMask(&v38, &v42);
  v10 = v39;
  if (v39 > 0x40)
  {
    v12 = v38;
    v13 = v40;
    v14 = (v39 + 63) >> 6;
    do
    {
      v15 = *v13++;
      *v12++ |= v15;
      --v14;
    }

    while (v14);
    v11 = v38;
  }

  else
  {
    v11 = v38 | v40;
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  v16 = v7 ^ v3;
  v37 = v10;
  if (v10 > 0x40)
  {
    operator new[]();
  }

  v36 = v11;
  llvm::APInt::flipAllBits(&v36);
  v17 = v37;
  v18 = v36;
  v37 = 0;
  if (v17 > 0x40)
  {
    v19 = (v17 + 63) >> 6;
    v20 = (v7 ^ v3);
    v21 = v36;
    do
    {
      v22 = *v20++;
      *v21++ &= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v18 = (v36 & v16);
  }

  v41 = v17;
  v40 = v18;
  v39 = v2;
  v38 = v16 | v11;
  mlir::ConstantIntRanges::fromUnsigned(&v40, &v38, a2);
  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x25F891010](v38, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  result = v24;
  if (v25 >= 0x41 && v24)
  {
    result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v8)
  {
    result = MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v7)
  {
    result = MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v6)
  {
    result = MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  if (v33 >= 0x41 && v32)
  {
    result = MEMORY[0x25F891010](v32, 0x1000C8000313F17);
  }

  if (v35 >= 0x41)
  {
    if (v34)
    {
      return MEMORY[0x25F891010](v34, 0x1000C8000313F17);
    }
  }

  return result;
}

void *getVaryingBitsMask(const mlir::ConstantIntRanges *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 0x40)
  {
    operator new[]();
  }

  if (*(a2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return llvm::APInt::getLowBitsSet(v2, 64 - __clz(*(a2 + 16) ^ *a2), a1);
}

uint64_t mlir::intrange::inferShl@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = &unk_286E8B158;
  v42 = a2;
  v43 = &v41;
  v38 = &unk_286E8B1A0;
  v39 = a2;
  v40 = &v38;
  v27 = *(a1 + 2);
  if (v27 > 0x40)
  {
    operator new[]();
  }

  v26 = *a1;
  v29[0] = *(a1 + 6);
  if (v29[0] > 0x40u)
  {
    operator new[]();
  }

  v28 = a1[2];
  v35 = *(a1 + 18);
  if (v35 > 0x40)
  {
    operator new[]();
  }

  v34 = a1[8];
  v37[0] = *(a1 + 22);
  if (v37[0] > 0x40u)
  {
    operator new[]();
  }

  v36 = a1[10];
  minMaxBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v41, &v26, 2, &v34, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v37[i] >= 0x41u)
    {
      v6 = *&v37[i - 2];
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v29[j] >= 0x41u)
    {
      v8 = *&v29[j - 2];
      if (v8)
      {
        MEMORY[0x25F891010](v8, 0x1000C8000313F17);
      }
    }
  }

  v35 = *(a1 + 10);
  if (v35 > 0x40)
  {
    operator new[]();
  }

  v34 = a1[4];
  v37[0] = *(a1 + 14);
  if (v37[0] > 0x40u)
  {
    operator new[]();
  }

  v36 = a1[6];
  v23 = *(a1 + 18);
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v22 = a1[8];
  v25[0] = *(a1 + 22);
  if (v25[0] > 0x40u)
  {
    operator new[]();
  }

  v24 = a1[10];
  minMaxBy(&v26, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v38, &v34, 2, &v22, 2, 1);
  for (k = 0; k != -8; k -= 4)
  {
    if (v25[k] >= 0x41u)
    {
      v10 = *&v25[k - 2];
      if (v10)
      {
        MEMORY[0x25F891010](v10, 0x1000C8000313F17);
      }
    }
  }

  for (m = 0; m != -8; m -= 4)
  {
    if (v37[m] >= 0x41u)
    {
      v12 = *&v37[m - 2];
      if (v12)
      {
        MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      }
    }
  }

  mlir::ConstantIntRanges::intersection(&v14, &v26, a3);
  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x25F891010](v32, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x25F891010](v30, 0x1000C8000313F17);
  }

  if (v29[0] >= 0x41u && v28)
  {
    MEMORY[0x25F891010](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x25F891010](v26, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x25F891010](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x25F891010](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x25F891010](v14, 0x1000C8000313F17);
  }

  std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v38);
  return std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v41);
}

mlir::ConstantIntRanges *mlir::intrange::inferShrS@<X0>(uint64_t a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 40);
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v10 = *(a1 + 32);
  v13[0] = *(a1 + 56);
  if (v13[0] > 0x40u)
  {
    operator new[]();
  }

  v12 = *(a1 + 48);
  v7 = *(a1 + 72);
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v6 = *(a1 + 64);
  v9[0] = *(a1 + 88);
  if (v9[0] > 0x40u)
  {
    operator new[]();
  }

  v8 = *(a1 + 80);
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v10, 2, &v6, 2, 1);
  for (i = 0; i != -8; i -= 4)
  {
    if (v9[i] >= 0x41u)
    {
      result = *&v9[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v13[j] >= 0x41u)
    {
      result = *&v13[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

mlir::ConstantIntRanges *mlir::intrange::inferShrU@<X0>(uint64_t *a1@<X0>, mlir::ConstantIntRanges *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 2);
  if (v11 > 0x40)
  {
    operator new[]();
  }

  v10 = *a1;
  v13[0] = *(a1 + 6);
  if (v13[0] > 0x40u)
  {
    operator new[]();
  }

  v12 = a1[2];
  v7 = *(a1 + 18);
  if (v7 > 0x40)
  {
    operator new[]();
  }

  v6 = a1[8];
  v9[0] = *(a1 + 22);
  if (v9[0] > 0x40u)
  {
    operator new[]();
  }

  v8 = a1[10];
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v10, 2, &v6, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v9[i] >= 0x41u)
    {
      result = *&v9[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v13[j] >= 0x41u)
    {
      result = *&v13[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t mlir::intrange::evaluatePred(uint64_t a1, mlir::ConstantIntRanges *a2, llvm::APInt *a3)
{
  if (isStaticallyTrue(a1, a2, a3))
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v7 = isStaticallyTrue(qword_25D09FB68[a1], a2, a3);
    v6 = 0;
  }

  return v6 | (v7 << 8);
}

uint64_t isStaticallyTrue(uint64_t a1, mlir::ConstantIntRanges *this, llvm::APInt *a3)
{
  v5 = 0;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v9 = llvm::APInt::compare((this + 16), a3);
        return v9 >> 31;
      }

      v7 = llvm::APInt::compareSigned((this + 32), (a3 + 48));
    }

    else
    {
      if (a1 == 7)
      {
        v13 = llvm::APInt::compare((this + 16), a3);
        return v13 < 1;
      }

      if (a1 == 8)
      {
        v6 = llvm::APInt::compare(this, (a3 + 16));
        return v6 > 0;
      }

      if (a1 != 9)
      {
        return v5;
      }

      v7 = llvm::APInt::compare(this, (a3 + 16));
    }

    return v7 >= 0;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        v6 = llvm::APInt::compareSigned((this + 32), (a3 + 48));
        return v6 > 0;
      }

      v13 = llvm::APInt::compareSigned((this + 48), (a3 + 32));
      return v13 < 1;
    }

    v9 = llvm::APInt::compareSigned((this + 48), (a3 + 32));
    return v9 >> 31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v8 = (llvm::APInt::compareSigned((this + 48), (a3 + 32)) & 0x80000000) != 0 || llvm::APInt::compareSigned((this + 32), (a3 + 48)) > 0;
      v14 = (llvm::APInt::compare((this + 16), a3) & 0x80000000) != 0 || llvm::APInt::compare(this, (a3 + 16)) > 0;
      return v8 & v14;
    }
  }

  else
  {
    mlir::ConstantIntRanges::getConstantValue(this, &__s1);
    mlir::ConstantIntRanges::getConstantValue(a3, &__s2);
    v5 = 0;
    v10 = v21;
    v11 = v18;
    if (v21 == 1 && v18 == 1)
    {
      if (v20 > 0x40)
      {
        v12 = memcmp(__s1, __s2, ((v20 + 63) >> 3) & 0x3FFFFFF8) == 0;
      }

      else
      {
        v12 = __s1 == __s2;
      }

      v5 = v12;
      v11 = 1;
    }

    if ((v11 & 1) != 0 && v17 >= 0x41 && __s2)
    {
      MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
      v10 = v21;
    }

    if ((v10 & 1) != 0 && v20 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }
  }

  return v5;
}

void *mlir::intrange::inferShapedDimOpInterface@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(void, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v51 = StorageBitwidth;
  if (StorageBitwidth >= 0x41)
  {
    operator new[]();
  }

  v50 = 0;
  llvm::APInt::getAllOnes(&v48, StorageBitwidth);
  if (v49 >= 0x41)
  {
    v9 = &v48[8 * ((StorageBitwidth - 1) >> 6)];
  }

  else
  {
    v9 = &v48;
  }

  *v9 = (*v9 & ~(1 << (StorageBitwidth - 1)));
  v10 = (*((*a2)(a2, a1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  if ((*(v13 + 16))(v13, v10))
  {
    (*(v13 + 24))(v13, v10);
    v15 = v14 - 1;
    if (*(a3 + 64) == 1)
    {
      v16 = *(a3 + 40);
      if (v16 > 0x40)
      {
        v17 = **(a3 + 32);
      }

      else if (v16)
      {
        v17 = (*(a3 + 32) << -v16) >> -v16;
      }

      else
      {
        v17 = 0;
      }

      v19 = v17 & ~(v17 >> 63);
      v20 = *(a3 + 56);
      if (v20 > 0x40)
      {
        v21 = **(a3 + 48);
      }

      else if (v20)
      {
        v21 = (*(a3 + 48) << -v20) >> -v20;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v15)
      {
        v15 = v21;
      }
    }

    else
    {
      v19 = 0;
    }

    LOBYTE(__src) = 0;
    v47 = 0;
    if (v19 <= v15)
    {
      v22 = v15 + 1;
      do
      {
        v23 = *((*(v13 + 24))(v13, v10) + 8 * v19);
        if (v23 == 0x8000000000000000)
        {
          mlir::ConstantIntRanges::fromSigned(&v50, &v48, &v31);
          if (v47)
          {
            mlir::ConstantIntRanges::rangeUnion(&__src, &v31, &v52);
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(&__src, &v52);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x25F891010](v58, 0x1000C8000313F17);
            }

            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x25F891010](v56, 0x1000C8000313F17);
            }

            if (v55 >= 0x41 && v54)
            {
              MEMORY[0x25F891010](v54, 0x1000C8000313F17);
            }

            if (v53 >= 0x41 && v52)
            {
              MEMORY[0x25F891010](v52, 0x1000C8000313F17);
            }
          }

          else
          {
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(&__src, &v31);
          }

          if (v38 >= 0x41 && v37)
          {
            MEMORY[0x25F891010](v37, 0x1000C8000313F17);
          }

          if (v36 >= 0x41 && v35)
          {
            MEMORY[0x25F891010](v35, 0x1000C8000313F17);
          }

          if (v34 >= 0x41 && v33)
          {
            MEMORY[0x25F891010](v33, 0x1000C8000313F17);
          }

          if (v32 < 0x41)
          {
            goto LABEL_84;
          }

          v24 = v31;
          if (!v31)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v30 = StorageBitwidth;
          v29 = v23;
          mlir::ConstantIntRanges::ConstantIntRanges(&v31, &v29, &v29, &v29, &v29);
          if (v47)
          {
            mlir::ConstantIntRanges::rangeUnion(&__src, &v31, &v52);
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(&__src, &v52);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x25F891010](v58, 0x1000C8000313F17);
            }

            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x25F891010](v56, 0x1000C8000313F17);
            }

            if (v55 >= 0x41 && v54)
            {
              MEMORY[0x25F891010](v54, 0x1000C8000313F17);
            }

            if (v53 >= 0x41 && v52)
            {
              MEMORY[0x25F891010](v52, 0x1000C8000313F17);
            }
          }

          else
          {
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(&__src, &v31);
          }

          if (v38 >= 0x41 && v37)
          {
            MEMORY[0x25F891010](v37, 0x1000C8000313F17);
          }

          if (v36 >= 0x41 && v35)
          {
            MEMORY[0x25F891010](v35, 0x1000C8000313F17);
          }

          if (v34 >= 0x41 && v33)
          {
            MEMORY[0x25F891010](v33, 0x1000C8000313F17);
          }

          if (v32 >= 0x41 && v31)
          {
            MEMORY[0x25F891010](v31, 0x1000C8000313F17);
          }

          if (v30 < 0x41)
          {
            goto LABEL_84;
          }

          v24 = v29;
          if (!v29)
          {
            goto LABEL_84;
          }
        }

        MEMORY[0x25F891010](v24, 0x1000C8000313F17);
LABEL_84:
        ++v19;
      }

      while (v22 != v19);
    }

    result = mlir::ConstantIntRanges::fromSigned(&v50, &v48, &v52);
    if (v47 == 1)
    {
      v25 = v40;
      *(a4 + 8) = v40;
      if (v25 > 0x40)
      {
        operator new[]();
      }

      *a4 = __src;
      v26 = v42;
      *(a4 + 24) = v42;
      if (v26 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 16) = v41;
      v27 = v44;
      *(a4 + 40) = v44;
      if (v27 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 32) = v43;
      v28 = v46;
      *(a4 + 56) = v46;
      if (v28 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 48) = v45;
    }

    else
    {
      *(a4 + 8) = v53;
      *a4 = v52;
      *(a4 + 24) = v55;
      *(a4 + 16) = v54;
      v53 = 0;
      v55 = 0;
      *(a4 + 40) = v57;
      *(a4 + 32) = v56;
      *(a4 + 56) = v59;
      *(a4 + 48) = v58;
      v57 = 0;
      v59 = 0;
    }

    if (v59 >= 0x41)
    {
      result = v58;
      if (v58)
      {
        result = MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }
    }

    if (v57 >= 0x41)
    {
      result = v56;
      if (v56)
      {
        result = MEMORY[0x25F891010](v56, 0x1000C8000313F17);
      }
    }

    if (v55 >= 0x41)
    {
      result = v54;
      if (v54)
      {
        result = MEMORY[0x25F891010](v54, 0x1000C8000313F17);
      }
    }

    if (v53 >= 0x41)
    {
      result = v52;
      if (v52)
      {
        result = MEMORY[0x25F891010](v52, 0x1000C8000313F17);
      }
    }

    if (v47 == 1)
    {
      if (v46 >= 0x41)
      {
        result = v45;
        if (v45)
        {
          result = MEMORY[0x25F891010](v45, 0x1000C8000313F17);
        }
      }

      if (v44 >= 0x41)
      {
        result = v43;
        if (v43)
        {
          result = MEMORY[0x25F891010](v43, 0x1000C8000313F17);
        }
      }

      if (v42 >= 0x41)
      {
        result = v41;
        if (v41)
        {
          result = MEMORY[0x25F891010](v41, 0x1000C8000313F17);
        }
      }

      if (v40 >= 0x41)
      {
        result = __src;
        if (__src)
        {
          result = MEMORY[0x25F891010](__src, 0x1000C8000313F17);
        }
      }
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::fromSigned(&v50, &v48, a4);
  }

  if (v49 >= 0x41)
  {
    result = v48;
    if (v48)
    {
      result = MEMORY[0x25F891010](v48, 0x1000C8000313F17);
    }
  }

  if (v51 >= 0x41)
  {
    result = v50;
    if (v50)
    {
      return MEMORY[0x25F891010](v50, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(uint64_t *a1, llvm::APInt *this, llvm::APInt *a3)
{
  v5 = *a1;
  llvm::APInt::udiv(&v7, this, a3);
  result = (*v5)(*(v5 + 8), this, a3, &v7);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x25F891010](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, _BYTE *a4@<X8>)
{
  v10 = 0;
  llvm::APInt::sdiv_ov(this, a2, &v10, &v8);
  if (v10)
  {
    *a4 = 0;
    a4[16] = 0;
  }

  else
  {
    (**a3)(*(*a3 + 8), this, a2, &v8);
  }

  if (v9 >= 0x41)
  {
    if (v8)
    {
      MEMORY[0x25F891010](v8, 0x1000C8000313F17);
    }
  }
}

llvm::APInt *std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(llvm::APInt *this, unsigned int *a2)
{
  if (*(this + 64) == 1)
  {
    llvm::APInt::operator=(this, a2);
    llvm::APInt::operator=((this + 16), (a2 + 4));
    llvm::APInt::operator=((this + 32), (a2 + 8));
    llvm::APInt::operator=((this + 48), (a2 + 12));
  }

  else
  {
    v4 = a2[2];
    *(this + 2) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *this = *a2;
    v5 = a2[6];
    *(this + 6) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *(this + 2) = *(a2 + 2);
    v6 = a2[10];
    *(this + 10) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    *(this + 4) = *(a2 + 4);
    v7 = a2[14];
    *(this + 14) = v7;
    if (v7 > 0x40)
    {
      operator new[]();
    }

    *(this + 6) = *(a2 + 6);
    *(this + 64) = 1;
  }

  return this;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8AFA8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    result = llvm::APInt::uadd_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::uadd_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8AFF0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v9 = 0;
  if (*(a3 + 8))
  {
    llvm::APInt::sadd_sat(this, a2, &__src);
  }

  else
  {
    llvm::APInt::sadd_ov(this, a2, &v9, &__src);
    if (v9)
    {
      v5 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v5 = 1;
LABEL_8:
  *(a4 + 16) = v5;
  if (v8 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CC8770CLL);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B038;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v9 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    llvm::APInt::usub_sat(this, a2, &__src);
  }

  else
  {
    llvm::APInt::usub_ov(this, a2, &v9, &__src);
    if (v9)
    {
      *a4 = 0;
      v5 = v8;
      *(a4 + 16) = 0;
      if (v5 >= 0x41 && __src)
      {

        JUMPOUT(0x25F891010);
      }

      return;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  *(a4 + 16) = 1;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B080;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v9 = 0;
  if (*(a3 + 8))
  {
    llvm::APInt::ssub_sat(this, a2, &__src);
  }

  else
  {
    llvm::APInt::ssub_ov(this, a2, &v9, &__src);
    if (v9)
    {
      v5 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v5 = 1;
LABEL_8:
  *(a4 + 16) = v5;
  if (v8 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B0C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    result = llvm::APInt::umul_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::umul_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B110;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, const unint64_t **a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v9 = 0;
  if (*(a3 + 8))
  {
    llvm::APInt::smul_sat(this, a2, &__src);
  }

  else
  {
    llvm::APInt::smul_ov(this, a2, &v9, &__src);
    if (v9)
    {
      v5 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v5 = 1;
LABEL_8:
  *(a4 + 16) = v5;
  if (v8 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2 >= 0x41)
  {
    operator new[]();
  }

  v3 = *a1;
  *(a2 + 8) = v2;
  *a2 = v3;
  *(a2 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::urem(this, a2, &__src);
  v6 = v15;
  if (v15 <= 0x40)
  {
    if (__src)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = *(a3 + 8);
    *(a4 + 8) = v8;
    if (v8 > 0x40)
    {
      operator new[]();
    }

    *a4 = *a3;
    goto LABEL_18;
  }

  v7 = llvm::APInt::countLeadingZerosSlowCase(&__src);
  if (__src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  if (v7 == v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  v12 = *(a3 + 8);
  if (v12 > 0x40)
  {
    operator new[]();
  }

  v11 = 1;
  llvm::APInt::uadd_ov(a3, &v11, &v13, &__src);
  if (!v13)
  {
    v10 = v15;
    *(a4 + 8) = v15;
    if (v10 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
LABEL_18:
    *(a4 + 16) = 1;
    return;
  }

  *a4 = 0;
  v9 = v15;
  *(a4 + 16) = 0;
  if (v9 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2 >= 0x41)
  {
    operator new[]();
  }

  v3 = *a1;
  *(a2 + 8) = v2;
  *a2 = v3;
  *(a2 + 16) = 1;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &__src);
  v8 = v26;
  if (v26 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__src) == v8)
    {
      if (__src)
      {
        MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      goto LABEL_17;
    }
  }

  else if (!__src)
  {
LABEL_17:
    result = llvm::APInt::isMinSignedValue(this);
    if (result && (result = llvm::APInt::sgt(a2, 1), result))
    {
      v26 = *(a3 + 8);
      if (v26 > 0x40)
      {
        operator new[]();
      }

      __src = *a3;
      llvm::APInt::flipAllBits(&__src);
      result = llvm::APInt::operator++(&__src);
      v21 = __src;
      *(a4 + 8) = v26;
      *a4 = v21;
    }

    else
    {
      v18 = *(a3 + 8);
      *(a4 + 8) = v18;
      if (v18 > 0x40)
      {
        operator new[]();
      }

      *a4 = *a3;
    }

LABEL_34:
    *(a4 + 16) = 1;
    return result;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  if (v16)
  {
    goto LABEL_17;
  }

  v24 = 0;
  v23 = *(a3 + 8);
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v22 = 1;
  result = llvm::APInt::sadd_ov(a3, &v22, &v24, &__src);
  if (!v24)
  {
    v20 = v26;
    *(a4 + 8) = v26;
    if (v20 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
    goto LABEL_34;
  }

  *a4 = 0;
  v19 = v26;
  *(a4 + 16) = 0;
  if (v19 >= 0x41 && __src)
  {
    return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferFloorDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &__src);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__src) == v8)
    {
      if (__src)
      {
        MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      goto LABEL_19;
    }
  }

  else if (!__src)
  {
LABEL_19:
    v17 = *(a3 + 8);
    *(a4 + 8) = v17;
    if (v17 > 0x40)
    {
      operator new[]();
    }

    *a4 = *a3;
LABEL_22:
    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v21 = *(a3 + 8);
  if (v21 > 0x40)
  {
    operator new[]();
  }

  v20 = 1;
  llvm::APInt::ssub_ov(a3, &v20, &v22, &__src);
  if (!v22)
  {
    v19 = v24;
    *(a4 + 8) = v24;
    if (v19 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
    goto LABEL_22;
  }

  *a4 = 0;
  v18 = v24;
  *(a4 + 16) = 0;
  if (v18 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a2 & *a1;
  *(a3 + 8) = v3;
  *a3 = v4;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t a1@<X1>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a2 | *a1;
  *(a3 + 8) = v3;
  *a3 = v4;
  *(a3 + 16) = 1;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B158;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(uint64_t ***this@<X2>, uint64_t a2@<X0>, llvm::APInt *a3@<X1>, uint64_t a4@<X8>)
{
  v12 = 0;
  v6 = *(a2 + 8);
  LimitedValue = llvm::APInt::getLimitedValue(this, *(a3 + 2));
  if ((v6 & 2) != 0)
  {
    llvm::APInt::ushl_sat(a3, LimitedValue, &__src);
  }

  else
  {
    llvm::APInt::ushl_ov(a3, &v12, LimitedValue, &__src);
    if (v12)
    {
      v8 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v9 = v11;
  *(a4 + 8) = v11;
  if (v9 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v8 = 1;
LABEL_8:
  *(a4 + 16) = v8;
  if (v11 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B1A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(uint64_t ***this@<X2>, uint64_t a2@<X0>, llvm::APInt *a3@<X1>, uint64_t a4@<X8>)
{
  v12 = 0;
  v6 = *(a2 + 8);
  LimitedValue = llvm::APInt::getLimitedValue(this, *(a3 + 2));
  if (v6)
  {
    llvm::APInt::sshl_sat(a3, LimitedValue, &__src);
  }

  else
  {
    llvm::APInt::sshl_ov(a3, &v12, LimitedValue, &__src);
    if (v12)
    {
      v8 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v9 = v11;
  *(a4 + 8) = v11;
  if (v9 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v8 = 1;
LABEL_8:
  *(a4 + 16) = v8;
  if (v11 >= 0x41)
  {
    if (__src)
    {
      MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
      goto LABEL_6;
    }

    v7 = *a2;
  }

  if (*v7 < v6)
  {
    llvm::APInt::ashr(&v8, this, a2);
    *(a3 + 8) = v9;
    *a3 = v8;
    *(a3 + 16) = 1;
    return;
  }

LABEL_6:
  *a3 = 0;
  *(a3 + 16) = 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
      goto LABEL_6;
    }

    v7 = *a2;
  }

  if (*v7 < v6)
  {
    llvm::APInt::lshr(&v8, this, a2);
    *(a3 + 8) = v9;
    *a3 = v8;
    *(a3 + 16) = 1;
    return;
  }

LABEL_6:
  *a3 = 0;
  *(a3 + 16) = 0;
}

uint64_t mlir::detail::verifyShapedDimOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 9) == 1)
  {
    if (*(*(*(this - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v3 = 1;
      return v3 & 1;
    }

    v2 = "expect index result type";
  }

  else
  {
    v2 = "expected single op result";
  }

  v5 = v2;
  v6 = 259;
  mlir::Operation::emitError(v7, this, &v5);
  v3 = v8 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
  return v3 & 1;
}

void mlir::ub::UBDialect::~UBDialect(mlir::ub::UBDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

mlir::Operation *mlir::ub::UBDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
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
    return 0;
  }
}

uint64_t mlir::ub::UBDialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v18, a2, 0);
  v15 = "poison";
  v16 = 6;
  if (v22[2])
  {
    goto LABEL_2;
  }

  v5 = v21;
  if (v21 != 6)
  {
    if (!v21)
    {
      (*(*v18 + 648))(v18, &v15, 1);
      if (v22[2])
      {
LABEL_2:
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v5 = v21;
    }

    goto LABEL_11;
  }

  if (*v20 != 1936289648 || *(v20 + 4) != 28271)
  {
LABEL_11:
    v7 = 0;
    v6 = v20;
    *v22 = 0;
    v22[2] = 1;
    goto LABEL_12;
  }

  v12 = *(**(*(*a2 + 32))(a2) + 560);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  v5 = 0;
  v6 = 0;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), v13);
  v22[0] = v7 != 0;
  *&v22[1] = 257;
LABEL_12:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v18) & 0x100) == 0)
  {
    v14 = 257;
    (*(*a2 + 24))(&v18, a2, v4, v13);
    if (v18)
    {
      if (v18)
      {
        v17 = 261;
        v15 = v6;
        v16 = v5;
        mlir::Diagnostic::operator<<(&v19, &v15);
        if (v18)
        {
          if (v18)
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v17 = 261;
            v15 = v9;
            v16 = v10;
            mlir::Diagnostic::operator<<(&v19, &v15);
            if (v18)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  return v7;
}

void mlir::ub::UBDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = *(v3 + 4);
    if ((*(v3 + 3) - v4) > 5)
    {
      *(v4 + 4) = 28271;
      *v4 = 1936289648;
      *(v3 + 4) += 6;
    }

    else
    {

      llvm::raw_ostream::write(v3, "poison", 6uLL);
    }
  }
}

BOOL mlir::ub::PoisonOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v5 = *a1;
  v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v5 + 8, v6))
  {
    return 1;
  }

  a2(&v11, a3);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = "value";
      v9[1] = 5;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<61ul>(v12, "' failed to satisfy constraint: PoisonAttrInterface instance");
      }
    }
  }

  v7 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t *mlir::ub::PoisonOp::getValueAttr(mlir::ub::PoisonOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __src = a3;
  if (a4)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
    *v8 = a4;
    v8[1] = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__src, &v10);
}

uint64_t mlir::ub::PoisonOp::populateDefaultProperties(uint64_t result, uint64_t **a2)
{
  if (!*a2)
  {
    v9[5] = v2;
    v9[6] = v3;
    v5 = *(**(***(result + 8) + 32) + 560);
    v9[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v9);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
      result = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      result = 0;
    }

    *a2 = v6;
    a2[1] = result;
  }

  return result;
}

uint64_t mlir::ub::PoisonOp::parse(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v17[0] = a1;
  v17[1] = v14;
  v17[2] = a2;
  if (!mlir::ub::PoisonOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    return 0;
  }

  if ((*(*a1 + 160))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    v16 = 0;
    if (((*(*a1 + 440))(a1, &v16, 0) & 1) == 0)
    {
      return 0;
    }

    v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v16);
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v10 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
      *v10 = v8;
      v10[1] = v9;
    }

    else
    {
      v14[0] = "invalid kind of attribute specified";
      v15 = 259;
      (*(*a1 + 24))(v17, a1, v5, v14);
      v11 = v18;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
      if (v11)
      {
        return 0;
      }
    }

    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*a1 + 104))(a1))
  {
    v17[0] = 0;
    if ((*(*a1 + 536))(a1, v17))
    {
      v13 = v17[0];
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &v13, v14);
      return 1;
    }
  }

  return 0;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::Model(void *a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(v5);
  mlir::OperationName::Impl::Impl(a1, "ub.poison", 9, a2, &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E8B268;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::foldHook(uint64_t a1, mlir::ub::PoisonOp *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v4, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v4);
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      v8 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
      if (a4)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v8 + 64) = v9;
      *(v8 + 72) = v10;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return mlir::ub::PoisonOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t **), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v20, a6, a2, a3);
    if (v20)
    {
      mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(*(v10 + 8));
      if (!v13)
      {
        (a5)(&v20, a6);
        if (v20)
        {
          if (v20)
          {
            v18 = 0;
            v19 = v12;
            v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
            v16 = v22 + 24 * v23;
            v17 = *v15;
            *(v16 + 16) = *(v15 + 16);
            *v16 = v17;
            ++v23;
          }
        }

        goto LABEL_4;
      }

      *a3 = v13;
      a3[1] = v14;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "value";
  v10[1] = 5;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  if (!v13)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v13);
  *v3 = v4;
  v3[1] = v5;
  if (v4)
  {
    return 1;
  }

  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface>();
    *algn_27FC19C98 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name;
    v15 = *algn_27FC19C98;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v9 = v19 + 24 * v20;
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++v20;
      }
    }
  }

  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  return v6;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(int a1, mlir::ub::PoisonOp *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ValueAttr = mlir::ub::PoisonOp::getValueAttr(this);
  if (ValueAttr < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, ValueAttr & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v26 = v28;
  v27 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v26, "value", 5);
  v7 = *(***(a2 + 24) + 32);
  ValueAttr = mlir::ub::PoisonOp::getValueAttr(a2);
  if (ValueAttr)
  {
    v9 = *(*v7 + 560);
    v25 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    if (*llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &v25) == ValueAttr)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v26, "value", 5);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, v27);
  v11 = mlir::ub::PoisonOp::getValueAttr(a2);
  v12 = *(**(***(a2 + 24) + 32) + 560);
  v25 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  if (*llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v25) != v11)
  {
    v13 = (*(*a3 + 16))(a3);
    v14 = *(v13 + 4);
    if (*(v13 + 3) == v14)
    {
      llvm::raw_ostream::write(v13, "<", 1uLL);
    }

    else
    {
      *v14 = 60;
      ++*(v13 + 4);
    }

    v15 = mlir::ub::PoisonOp::getValueAttr(a2);
    (*(*a3 + 40))(a3, v15);
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ">", 1uLL);
    }

    else
    {
      *v17 = 62;
      ++*(v16 + 4);
    }
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  if (*(a2 + 36))
  {
    v24 = a2 - 16;
  }

  else
  {
    v24 = 0;
  }

  (*(*a3 + 32))(a3, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26 != v28)
  {
    free(v26);
  }
}

BOOL mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
    v9 = a1;
    return mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(uint64_t a1)
{
  v5[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(a1, &v3);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, &v3);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  mlir::detail::InterfaceMap::~InterfaceMap(&v4);
  return mlir::detail::AttributeUniquer::registerAttribute<mlir::ub::PoisonAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
}

void mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x300000000;
  v4 = malloc_type_malloc(1uLL, 0x400A2AC0F1uLL);
  v5 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v10, v5, v4);
  *&v8 = mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJNSD_19PoisonAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJNSC_19PoisonAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, "ub.poison", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
}

BOOL mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27FC1FDF8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v4 = __cxa_guard_acquire(&qword_27FC1FDF8);
    a1 = v7;
    if (v4)
    {
      v5 = llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>();
      _MergedGlobals_37 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v5, v6);
      __cxa_guard_release(&qword_27FC1FDF8);
      a1 = v7;
    }
  }

  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && _MergedGlobals_37 != a1);
  return (v2 & 1) == 0;
}

uint64_t llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE10))
  {
    qword_27FC1FE00 = llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>();
    *algn_27FC1FE08 = v1;
    __cxa_guard_release(&qword_27FC1FE10);
  }

  return qword_27FC1FE00;
}

const char *llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ub::PoisonAttrInterface::Trait<Empty>]";
  v6 = 105;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::ub::PoisonAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*(a1 + 8), *a1);
  *a2 = result;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE38))
  {
    qword_27FC1FE28 = llvm::detail::getTypeNameImpl<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>();
    unk_27FC1FE30 = v1;
    __cxa_guard_release(&qword_27FC1FE38);
  }

  return qword_27FC1FE28;
}

const char *llvm::detail::getTypeNameImpl<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties]";
  v6 = 118;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<<2ul>(v9, "'");
    if (v8)
    {
      v4 = *(*(*(a1[2] + 8) + 8) + 16);
      v5 = *(*(*(a1[2] + 8) + 8) + 24);
      v7 = 261;
      v6[0] = v4;
      v6[1] = v5;
      mlir::Diagnostic::operator<<(v9, v6);
      if (v8)
      {
        mlir::Diagnostic::operator<<<6ul>(v9, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
}

BOOL mlir::LLVM::symbolizeAsmDialect(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 5)
  {
    return *a1 == 1702129257 && *(a1 + 4) == 108;
  }

  if (a2 != 3)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v5 == 29793 && v6 == 116)
  {
    return v3;
  }

  return result;
}

BOOL mlir::LLVM::AsmDialectAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v5 = a1;
  if (!mlir::IntegerAttr::getInt(&v5))
  {
    return 1;
  }

  v4 = a1;
  return mlir::IntegerAttr::getInt(&v4) == 1;
}

char *mlir::LLVM::stringifyAtomicBinOp(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE328[a1];
  }
}

uint64_t mlir::LLVM::symbolizeAtomicBinOp(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      if (*a1 == 0x7461735F62757375)
      {
        return 18;
      }
    }

    else
    {
      if (a2 != 9)
      {
        return v2;
      }

      if (*a1 == 0x6172775F636E6975 && *(a1 + 8) == 112)
      {
        return 15;
      }

      if (*a1 == 0x6172775F63656475 && *(a1 + 8) == 112)
      {
        return 16;
      }

      if (*a1 == 0x6E6F635F62757375 && *(a1 + 8) == 100)
      {
        return 17;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    if (*a1 == 25697 && *(a1 + 2) == 100)
    {
      return 1;
    }

    if (*a1 == 30067 && *(a1 + 2) == 98)
    {
      return 2;
    }

    if (*a1 == 28511 && *(a1 + 2) == 114)
    {
      return 5;
    }

    if (*a1 == 24941 && *(a1 + 2) == 120)
    {
      return 7;
    }

    if (*a1 == 26989 && *(a1 + 2) == 110)
    {
      return 8;
    }

    return 0;
  }

  if (a2 == 4)
  {
    switch(*a1)
    {
      case 0x67686378:
        return 0;
      case 0x646E615F:
        return 3;
      case 0x646E616E:
        return 4;
      case 0x726F785F:
        return 6;
      case 0x78616D75:
        return 9;
      case 0x6E696D75:
        return 10;
      case 0x64646166:
        return 11;
      case 0x62757366:
        return 12;
      case 0x78616D66:
        return 13;
      case 0x6E696D66:
        return 14;
    }

    return 0;
  }

  return v2;
}

uint64_t mlir::LLVM::AtomicBinOpAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v22 = a1;
  if (!mlir::IntegerAttr::getInt(&v22))
  {
    return 1;
  }

  v21 = a1;
  result = mlir::IntegerAttr::getInt(&v21);
  if (result != 1)
  {
    v20 = a1;
    if (mlir::IntegerAttr::getInt(&v20) == 2)
    {
      return 1;
    }

    v19 = a1;
    if (mlir::IntegerAttr::getInt(&v19) == 3)
    {
      return 1;
    }

    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18) == 4)
    {
      return 1;
    }

    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 5)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 6)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 7)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 8)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 9)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 10)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 11)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 12)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 13)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 14)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 15)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 16)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 17)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 18;
  }

  return result;
}

char *mlir::LLVM::stringifyAtomicOrdering(unint64_t a1)
{
  if (a1 > 7)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE3C0[a1];
  }
}

uint64_t mlir::LLVM::symbolizeAtomicOrdering(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 7:
      if (*a1 == 1970365281 && *(a1 + 3) == 1701996917)
      {
        return 4;
      }

      else if (*a1 == 1701602674 && *(a1 + 3) == 1702060389)
      {
        return 5;
      }

      else if (*a1 == 1601266529 && *(a1 + 3) == 1818587743)
      {
        return 6;
      }

      else
      {
        if (*a1 != 1601267059 || *(a1 + 3) != 1953719135)
        {
          return 0;
        }

        return 7;
      }

    case 9:
      if (*a1 != 0x65726564726F6E75 || *(a1 + 8) != 100)
      {
        if (*a1 == 0x696E6F746F6E6F6DLL && *(a1 + 8) == 99)
        {
          return 2;
        }

        return 0;
      }

      return 1;
    case 10:
      return 0;
    default:
      return 0;
  }
}

uint64_t mlir::LLVM::AtomicOrderingAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v10 = a1;
  if (!mlir::IntegerAttr::getInt(&v10))
  {
    return 1;
  }

  v9 = a1;
  result = mlir::IntegerAttr::getInt(&v9);
  if (result != 1)
  {
    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 2)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 4)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 5)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 6)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 7;
  }

  return result;
}

uint64_t mlir::LLVM::AtomicOrderingAttr::get(void *a1, uint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

char *mlir::LLVM::cconv::stringifyCConv(unint64_t a1)
{
  if (a1 > 0x65)
  {
    return &str_2_25;
  }

  else
  {
    return (&off_2799BE400)[a1];
  }
}

uint64_t mlir::LLVM::comdat::symbolizeComdat(int *a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 7)
  {
    if (a2 == 3)
    {
      return 0;
    }

    else if (a2 == 7)
    {
      v7 = *a1;
      v8 = *(a1 + 3);
      if (v7 == 1735549292 && v8 == 1953719655)
      {
        return 2;
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        if (*a1 == 0x657A6973656D6173)
        {
          return 4;
        }

        return 0;
      case 10:
        v10 = *a1;
        v11 = *(a1 + 4);
        return v10 == 0x74616D7463617865 && v11 == 26723;
      case 13:
        v4 = *a1;
        v5 = *(a1 + 5);
        if (v4 == 0x6C70756465646F6ELL && v5 == 0x65746163696C7075)
        {
          return 3;
        }

        return 0;
    }
  }

  return result;
}

uint64_t mlir::LLVM::comdat::ComdatAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::IntegerAttr::getInt(&v8))
  {
    return 1;
  }

  v7 = a1;
  result = mlir::IntegerAttr::getInt(&v7);
  if (result != 1)
  {
    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 2)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 3)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 4;
  }

  return result;
}

char *mlir::LLVM::stringifyFCmpPredicate(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE730[a1];
  }
}

uint64_t mlir::LLVM::symbolizeFCmpPredicate(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 25967 && *(a1 + 2) == 113)
    {
      return 1;
    }

    if (*a1 == 26479 && *(a1 + 2) == 116)
    {
      return 2;
    }

    if (*a1 == 26479 && *(a1 + 2) == 101)
    {
      return 3;
    }

    if (*a1 == 27759 && *(a1 + 2) == 116)
    {
      return 4;
    }

    if (*a1 == 27759 && *(a1 + 2) == 101)
    {
      return 5;
    }

    if (*a1 == 28271 && *(a1 + 2) == 101)
    {
      return 6;
    }

    if (*a1 == 29295 && *(a1 + 2) == 100)
    {
      return 7;
    }

    if (*a1 == 25973 && *(a1 + 2) == 113)
    {
      return 8;
    }

    if (*a1 == 26485 && *(a1 + 2) == 116)
    {
      return 9;
    }

    if (*a1 == 26485 && *(a1 + 2) == 101)
    {
      return 10;
    }

    if (*a1 == 27765 && *(a1 + 2) == 116)
    {
      return 11;
    }

    if (*a1 == 27765 && *(a1 + 2) == 101)
    {
      return 12;
    }

    if (*a1 == 28277 && *(a1 + 2) == 101)
    {
      return 13;
    }

    if (*a1 == 28277 && *(a1 + 2) == 111)
    {
      return 14;
    }

    return 0;
  }

  if (a2 == 5)
  {
    if (*a1 == 1970435167 && *(a1 + 4) == 101)
    {
      return 15;
    }

    return 0;
  }

  if (a2 != 6)
  {
    return 0;
  }

  return 0;
}

uint64_t mlir::LLVM::FCmpPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v19 = a1;
  if (!mlir::IntegerAttr::getInt(&v19))
  {
    return 1;
  }

  v18 = a1;
  result = mlir::IntegerAttr::getInt(&v18);
  if (result != 1)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 2)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 3)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 4)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 5)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 6)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 7)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 8)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 9)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 10)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 11)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 12)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 13)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 14)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 15;
  }

  return result;
}

uint64_t mlir::LLVM::symbolizeFPExceptionBehavior(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    return *a1 == 1954111853 && *(a1 + 3) == 1885434484;
  }

  if (a2 != 6)
  {
    return 0;
  }

  if (*a1 != 1869506409 || *(a1 + 4) != 25970)
  {
    if (*a1 == 1769108595 && *(a1 + 4) == 29795)
    {
      return 2;
    }

    return 0;
  }

  return 0;
}

uint64_t mlir::LLVM::FPExceptionBehaviorAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

char *mlir::LLVM::stringifyICmpPredicate(unint64_t a1)
{
  if (a1 > 9)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE7B0[a1];
  }
}

uint64_t mlir::LLVM::symbolizeICmpPredicate(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 27763 && *(a1 + 2) == 116)
    {
      return 2;
    }

    else if (*a1 == 27763 && *(a1 + 2) == 101)
    {
      return 3;
    }

    else if (*a1 == 26483 && *(a1 + 2) == 116)
    {
      return 4;
    }

    else if (*a1 == 26483 && *(a1 + 2) == 101)
    {
      return 5;
    }

    else if (*a1 == 27765 && *(a1 + 2) == 116)
    {
      return 6;
    }

    else if (*a1 == 27765 && *(a1 + 2) == 101)
    {
      return 7;
    }

    else if (*a1 == 26485 && *(a1 + 2) == 116)
    {
      return 8;
    }

    else
    {
      if (*a1 != 26485 || *(a1 + 2) != 101)
      {
        return 0;
      }

      return 9;
    }
  }

  else
  {
    if (a2 != 2)
    {
      return 0;
    }

    return *a1 != 29029 && *a1 == 25966;
  }
}

uint64_t mlir::LLVM::ICmpPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v13 = a1;
  if (!mlir::IntegerAttr::getInt(&v13))
  {
    return 1;
  }

  v12 = a1;
  result = mlir::IntegerAttr::getInt(&v12);
  if (result != 1)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 2)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 3)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 4)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 5)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 6)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 7)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 8)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 9;
  }

  return result;
}

uint64_t mlir::LLVM::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  *&v14 = a1;
  *(&v14 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    return 0x100000000;
  }

  v15 = v17;
  v16 = 0x200000000;
  llvm::StringRef::split(&v14, &v15, ",", 1uLL, -1, 1);
  if (v16)
  {
    v2 = 0;
    v3 = v15;
    v4 = 16 * v16;
    while (1)
    {
      v13 = *v3;
      v5 = llvm::StringRef::trim(&v13, " \t\n\v\f\r", 6);
      if (v6 != 3)
      {
        break;
      }

      if (*v5 == 29550 && *(v5 + 2) == 119)
      {
        v9 = 1;
      }

      else
      {
        if (*v5 != 30062 || *(v5 + 2) != 119)
        {
          break;
        }

        v9 = 2;
      }

      v2 |= v9;
      ++v3;
      v4 -= 16;
      if (!v4)
      {
        v10 = v2;
        goto LABEL_21;
      }
    }

    v11 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
LABEL_21:
    v11 = 0x100000000;
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v10 | v11;
}

char *mlir::LLVM::linkage::stringifyLinkage(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE800[a1];
  }
}

char *mlir::LLVM::stringifyRoundingMode(unint64_t a1)
{
  if (a1 > 8)
  {
    return &str_2_25;
  }

  else
  {
    return off_2799BE858[a1];
  }
}

uint64_t mlir::LLVM::symbolizeRoundingMode(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        v7 = *a1;
        v8 = *(a1 + 8);
        return v7 == 0x73657261656E6F74 && v8 == 116;
      case 13:
        v14 = *a1;
        v15 = *(a1 + 5);
        if (v14 != 0x73657261656E6F74 || v15 != 0x7961776174736572)
        {
          return 0;
        }

        return 4;
      case 10:
        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        v4 = *a1;
        v5 = *(a1 + 2);
        if (v4 == 1635217525 && v5 == 25714)
        {
          return 2;
        }

        return 0;
      case 7:
        if (*a1 != 1634629988 || *(a1 + 3) != 1667853665)
        {
          v11 = *a1;
          v12 = *(a1 + 3);
          if (v11 == 1635151465 && v12 == 1684630625)
          {
            return 8;
          }

          return 0;
        }

        return 7;
      case 8:
        if (*a1 == 0x647261776E776F64)
        {
          return 3;
        }

        return 0;
    }
  }

  return result;
}

uint64_t mlir::LLVM::RoundingModeAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v10 = a1;
  if (!mlir::IntegerAttr::getInt(&v10))
  {
    return 1;
  }

  v9 = a1;
  result = mlir::IntegerAttr::getInt(&v9);
  if (result != 1)
  {
    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 2)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 3)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 4)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 7)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == -1;
  }

  return result;
}

uint64_t mlir::LLVM::UnnamedAddrAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

uint64_t mlir::LLVM::VisibilityAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

uint64_t mlir::LLVM::CConvAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail16CConvAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_9CConvAttrEJNS2_5cconv5CConvEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::ComdatAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17ComdatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10ComdatAttrEJNS2_6comdat6ComdatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}