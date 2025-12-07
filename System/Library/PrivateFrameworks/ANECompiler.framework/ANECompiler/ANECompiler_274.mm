void mlir::RegisteredOperationName::Model<mlir::anec::GlobalArgMinMax>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::GlobalArgMinMax>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::GlobalArgMinMax>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::GlobalArgMinMax>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.global_arg_min_max";
      v17 = 23;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::GlobalArgMinMax>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::HighPrecisionSigmoid,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::HighPrecisionSigmoid>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::HighPrecisionSigmoid>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.high_precision_sigmoid";
      v17 = 27;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::HighPrecisionSigmoid>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::InputView>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.input_view", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31870;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::InputView>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::InputView,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::InputView>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InputView>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InputView>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InputView>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InputView>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::InputView>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::InputView>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.input_view";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InputView>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.instance_norm", 0x12uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::InstanceNorm,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31938;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec12InstanceNormEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec12InstanceNormEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec12InstanceNormEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec12InstanceNormEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec12InstanceNormEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec12InstanceNormEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::InstanceNorm,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::InstanceNorm,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::InstanceNorm>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::InstanceNorm>::refineReturnTypes(mlir::Float16Type *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.instance_norm";
      v17 = 18;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::InstanceNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v135;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v121 = v1;
    v136 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v121;
    a1 = v136;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v122 = v1;
    v137 = a1;
    v108 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v108;
    v1 = v122;
    a1 = v137;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v123 = v1;
    v138 = a1;
    v96 = v3;
    v109 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v96;
    v2 = v109;
    v1 = v123;
    a1 = v138;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v124 = v1;
    v139 = a1;
    v97 = v3;
    v110 = v2;
    v85 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v85;
    v3 = v97;
    v2 = v110;
    v1 = v124;
    a1 = v139;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v125 = v1;
    v140 = a1;
    v98 = v3;
    v111 = v2;
    v75 = v5;
    v86 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v75;
    v4 = v86;
    v3 = v98;
    v2 = v111;
    v1 = v125;
    a1 = v140;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v126 = v1;
    v141 = a1;
    v99 = v3;
    v112 = v2;
    v76 = v5;
    v87 = v4;
    v66 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v66;
    v5 = v76;
    v4 = v87;
    v3 = v99;
    v2 = v112;
    v1 = v126;
    a1 = v141;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v127 = v1;
    v142 = a1;
    v100 = v3;
    v113 = v2;
    v77 = v5;
    v88 = v4;
    v67 = v6;
    v58 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v58;
    v6 = v67;
    v5 = v77;
    v4 = v88;
    v3 = v100;
    v2 = v113;
    v1 = v127;
    a1 = v142;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v128 = v1;
    v143 = a1;
    v101 = v3;
    v114 = v2;
    v78 = v5;
    v89 = v4;
    v68 = v6;
    v51 = v8;
    v59 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v51;
    v7 = v59;
    v6 = v68;
    v5 = v78;
    v4 = v89;
    v3 = v101;
    v2 = v114;
    v1 = v128;
    a1 = v143;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v129 = v1;
    v144 = a1;
    v102 = v3;
    v115 = v2;
    v79 = v5;
    v90 = v4;
    v69 = v6;
    v52 = v8;
    v60 = v7;
    v45 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v45;
    v8 = v52;
    v7 = v60;
    v6 = v69;
    v5 = v79;
    v4 = v90;
    v3 = v102;
    v2 = v115;
    v1 = v129;
    a1 = v144;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v130 = v1;
    v145 = a1;
    v103 = v3;
    v116 = v2;
    v80 = v5;
    v91 = v4;
    v70 = v6;
    v53 = v8;
    v61 = v7;
    v40 = v10;
    v46 = v9;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v10 = v40;
    v9 = v46;
    v8 = v53;
    v7 = v61;
    v6 = v70;
    v5 = v80;
    v4 = v91;
    v3 = v103;
    v2 = v116;
    v1 = v130;
    a1 = v145;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v131 = v1;
    v146 = a1;
    v104 = v3;
    v117 = v2;
    v81 = v5;
    v92 = v4;
    v71 = v6;
    v54 = v8;
    v62 = v7;
    v41 = v10;
    v47 = v9;
    v36 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v11 = v36;
    v10 = v41;
    v9 = v47;
    v8 = v54;
    v7 = v62;
    v6 = v71;
    v5 = v81;
    v4 = v92;
    v3 = v104;
    v2 = v117;
    v1 = v131;
    a1 = v146;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v132 = v1;
    v147 = a1;
    v105 = v3;
    v118 = v2;
    v82 = v5;
    v93 = v4;
    v72 = v6;
    v55 = v8;
    v63 = v7;
    v42 = v10;
    v48 = v9;
    v33 = v12;
    v37 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v33;
    v11 = v37;
    v10 = v42;
    v9 = v48;
    v8 = v55;
    v7 = v63;
    v6 = v72;
    v5 = v82;
    v4 = v93;
    v3 = v105;
    v2 = v118;
    v1 = v132;
    a1 = v147;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v134 = v1;
    v149 = a1;
    v107 = v3;
    v120 = v2;
    v84 = v5;
    v95 = v4;
    v74 = v6;
    v57 = v8;
    v65 = v7;
    v44 = v10;
    v50 = v9;
    v35 = v12;
    v39 = v11;
    v30 = v14;
    v32 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v30;
    v13 = v32;
    v12 = v35;
    v11 = v39;
    v10 = v44;
    v9 = v50;
    v8 = v57;
    v7 = v65;
    v6 = v74;
    v5 = v84;
    v4 = v95;
    v3 = v107;
    v2 = v120;
    v1 = v134;
    a1 = v149;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Invert>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Invert>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Invert>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Invert>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Invert>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Invert>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Invert>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.invert";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Invert>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v170 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v170;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v154 = v1;
    v171 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v154;
    a1 = v171;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v155 = v1;
    v172 = a1;
    v139 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v139;
    v1 = v155;
    a1 = v172;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v156 = v1;
    v173 = a1;
    v125 = v3;
    v140 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v125;
    v2 = v140;
    v1 = v156;
    a1 = v173;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v157 = v1;
    v174 = a1;
    v126 = v3;
    v141 = v2;
    v112 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v112;
    v3 = v126;
    v2 = v141;
    v1 = v157;
    a1 = v174;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v158 = v1;
    v175 = a1;
    v127 = v3;
    v142 = v2;
    v100 = v5;
    v113 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v100;
    v4 = v113;
    v3 = v127;
    v2 = v142;
    v1 = v158;
    a1 = v175;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v159 = v1;
    v176 = a1;
    v128 = v3;
    v143 = v2;
    v101 = v5;
    v114 = v4;
    v89 = v6;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v6 = v89;
    v5 = v101;
    v4 = v114;
    v3 = v128;
    v2 = v143;
    v1 = v159;
    a1 = v176;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v160 = v1;
    v177 = a1;
    v129 = v3;
    v144 = v2;
    v102 = v5;
    v115 = v4;
    v79 = v7;
    v90 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::ConstantFoldable,mlir::OpTrait::IsCommutative,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v79;
    v6 = v90;
    v5 = v102;
    v4 = v115;
    v3 = v129;
    v2 = v144;
    v1 = v160;
    a1 = v177;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::ConstantFoldable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::ConstantFoldable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v161 = v1;
    v178 = a1;
    v130 = v3;
    v145 = v2;
    v103 = v5;
    v116 = v4;
    v80 = v7;
    v91 = v6;
    v70 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v8 = v70;
    v7 = v80;
    v6 = v91;
    v5 = v103;
    v4 = v116;
    v3 = v130;
    v2 = v145;
    v1 = v161;
    a1 = v178;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v162 = v1;
    v179 = a1;
    v131 = v3;
    v146 = v2;
    v104 = v5;
    v117 = v4;
    v81 = v7;
    v92 = v6;
    v62 = v9;
    v71 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v62;
    v8 = v71;
    v7 = v81;
    v6 = v92;
    v5 = v104;
    v4 = v117;
    v3 = v131;
    v2 = v146;
    v1 = v162;
    a1 = v179;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v163 = v1;
    v180 = a1;
    v132 = v3;
    v147 = v2;
    v105 = v5;
    v118 = v4;
    v82 = v7;
    v93 = v6;
    v63 = v9;
    v72 = v8;
    v55 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v55;
    v9 = v63;
    v8 = v72;
    v7 = v82;
    v6 = v93;
    v5 = v105;
    v4 = v118;
    v3 = v132;
    v2 = v147;
    v1 = v163;
    a1 = v180;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ReshapeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v164 = v1;
    v181 = a1;
    v133 = v3;
    v148 = v2;
    v106 = v5;
    v119 = v4;
    v83 = v7;
    v94 = v6;
    v64 = v9;
    v73 = v8;
    v49 = v11;
    v56 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v11 = v49;
    v10 = v56;
    v9 = v64;
    v8 = v73;
    v7 = v83;
    v6 = v94;
    v5 = v106;
    v4 = v119;
    v3 = v133;
    v2 = v148;
    v1 = v164;
    a1 = v181;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::TransposeSwapInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v165 = v1;
    v182 = a1;
    v134 = v3;
    v149 = v2;
    v107 = v5;
    v120 = v4;
    v84 = v7;
    v95 = v6;
    v65 = v9;
    v74 = v8;
    v50 = v11;
    v57 = v10;
    v44 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v44;
    v11 = v50;
    v10 = v57;
    v9 = v65;
    v8 = v74;
    v7 = v84;
    v6 = v95;
    v5 = v107;
    v4 = v120;
    v3 = v134;
    v2 = v149;
    v1 = v165;
    a1 = v182;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::NeuronOpTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::NeuronOpTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v166 = v1;
    v183 = a1;
    v135 = v3;
    v150 = v2;
    v108 = v5;
    v121 = v4;
    v85 = v7;
    v96 = v6;
    v66 = v9;
    v75 = v8;
    v51 = v11;
    v58 = v10;
    v40 = v13;
    v45 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v13 = v40;
    v12 = v45;
    v11 = v51;
    v10 = v58;
    v9 = v66;
    v8 = v75;
    v7 = v85;
    v6 = v96;
    v5 = v108;
    v4 = v121;
    v3 = v135;
    v2 = v150;
    v1 = v166;
    a1 = v183;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v167 = v1;
    v184 = a1;
    v136 = v3;
    v151 = v2;
    v109 = v5;
    v122 = v4;
    v86 = v7;
    v97 = v6;
    v67 = v9;
    v76 = v8;
    v52 = v11;
    v59 = v10;
    v41 = v13;
    v46 = v12;
    v37 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v14 = v37;
    v13 = v41;
    v12 = v46;
    v11 = v52;
    v10 = v59;
    v9 = v67;
    v8 = v76;
    v7 = v86;
    v6 = v97;
    v5 = v109;
    v4 = v122;
    v3 = v136;
    v2 = v151;
    v1 = v167;
    a1 = v184;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v168 = v1;
    v185 = a1;
    v137 = v3;
    v152 = v2;
    v110 = v5;
    v123 = v4;
    v87 = v7;
    v98 = v6;
    v68 = v9;
    v77 = v8;
    v53 = v11;
    v60 = v10;
    v42 = v13;
    v47 = v12;
    v35 = v15;
    v38 = v14;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v15 = v35;
    v14 = v38;
    v13 = v42;
    v12 = v47;
    v11 = v53;
    v10 = v60;
    v9 = v68;
    v8 = v77;
    v7 = v87;
    v6 = v98;
    v5 = v110;
    v4 = v123;
    v3 = v137;
    v2 = v152;
    v1 = v168;
    a1 = v185;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v169 = v1;
    v186 = a1;
    v138 = v3;
    v153 = v2;
    v111 = v5;
    v124 = v4;
    v88 = v7;
    v99 = v6;
    v69 = v9;
    v78 = v8;
    v54 = v11;
    v61 = v10;
    v43 = v13;
    v48 = v12;
    v36 = v15;
    v39 = v14;
    v34 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v16 = v34;
    v15 = v36;
    v14 = v39;
    v13 = v43;
    v12 = v48;
    v11 = v54;
    v10 = v61;
    v9 = v69;
    v8 = v78;
    v7 = v88;
    v6 = v99;
    v5 = v111;
    v4 = v124;
    v3 = v138;
    v2 = v153;
    v1 = v169;
    a1 = v186;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::Invert,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::ConstantFoldable,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::Invert::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.l2norm_pool", 0x10uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::L2NormPool,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31AC8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::L2NormPool>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::L2NormPool>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::L2NormPool>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.l2norm_pool";
      v17 = 16;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::L2NormPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::L2NormPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::L2NormPool::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.layer_norm", 0xFuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::LayerNorm,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31B90;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9LayerNormEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec9LayerNormEJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENS3_23MemoryEffectOpInterface5TraitENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENSG_22ZinIrUnitInfoInterface5TraitENSG_23PlistGeneratorInterface5TraitENSV_ILSW_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1E_vE9CallbacksE(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9LayerNormEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec9LayerNormEJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS7_22ZinIrUnitInfoInterface5TraitENS7_23PlistGeneratorInterface5TraitENSM_ILSN_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS15_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9LayerNormEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec9LayerNormEJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENS2_23MemoryEffectOpInterface5TraitENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENSB_22ZinIrUnitInfoInterface5TraitENSB_23PlistGeneratorInterface5TraitENSQ_ILSR_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS19_vE9CallbacksE(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::LayerNorm,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::LayerNorm,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LayerNorm>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::LayerNorm>::refineReturnTypes(mlir::Float16Type *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::BatchNorm>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.layer_norm";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LayerNorm>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::LeakyRelu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::LeakyRelu>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.leaky_relu";
      v17 = 15;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::LeakyRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::LeakyRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::LeakyRelu::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::Linear>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.linear", 0xBuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31D20;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Linear>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Linear>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Linear>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Linear>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Linear>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Linear>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Linear>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.linear";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Linear>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v106 = v1;
    v120 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v106;
    a1 = v120;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v107 = v1;
    v121 = a1;
    v94 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v94;
    v1 = v107;
    a1 = v121;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v108 = v1;
    v122 = a1;
    v83 = v3;
    v95 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v83;
    v2 = v95;
    v1 = v108;
    a1 = v122;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v109 = v1;
    v123 = a1;
    v84 = v3;
    v96 = v2;
    v73 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v73;
    v3 = v84;
    v2 = v96;
    v1 = v109;
    a1 = v123;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v110 = v1;
    v124 = a1;
    v85 = v3;
    v97 = v2;
    v64 = v5;
    v74 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v64;
    v4 = v74;
    v3 = v85;
    v2 = v97;
    v1 = v110;
    a1 = v124;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v111 = v1;
    v125 = a1;
    v86 = v3;
    v98 = v2;
    v65 = v5;
    v75 = v4;
    v56 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v56;
    v5 = v65;
    v4 = v75;
    v3 = v86;
    v2 = v98;
    v1 = v111;
    a1 = v125;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v112 = v1;
    v126 = a1;
    v87 = v3;
    v99 = v2;
    v66 = v5;
    v76 = v4;
    v49 = v7;
    v57 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v49;
    v6 = v57;
    v5 = v66;
    v4 = v76;
    v3 = v87;
    v2 = v99;
    v1 = v112;
    a1 = v126;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::HasWeights<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::HasWeights>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v113 = v1;
    v127 = a1;
    v88 = v3;
    v100 = v2;
    v67 = v5;
    v77 = v4;
    v50 = v7;
    v58 = v6;
    v43 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v43;
    v7 = v50;
    v6 = v58;
    v5 = v67;
    v4 = v77;
    v3 = v88;
    v2 = v100;
    v1 = v113;
    a1 = v127;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v114 = v1;
    v128 = a1;
    v89 = v3;
    v101 = v2;
    v68 = v5;
    v78 = v4;
    v51 = v7;
    v59 = v6;
    v38 = v9;
    v44 = v8;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v9 = v38;
    v8 = v44;
    v7 = v51;
    v6 = v59;
    v5 = v68;
    v4 = v78;
    v3 = v89;
    v2 = v101;
    v1 = v114;
    a1 = v128;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v115 = v1;
    v129 = a1;
    v90 = v3;
    v102 = v2;
    v69 = v5;
    v79 = v4;
    v52 = v7;
    v60 = v6;
    v39 = v9;
    v45 = v8;
    v34 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v34;
    v9 = v39;
    v8 = v45;
    v7 = v52;
    v6 = v60;
    v5 = v69;
    v4 = v79;
    v3 = v90;
    v2 = v102;
    v1 = v115;
    a1 = v129;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v116 = v1;
    v130 = a1;
    v91 = v3;
    v103 = v2;
    v70 = v5;
    v80 = v4;
    v53 = v7;
    v61 = v6;
    v40 = v9;
    v46 = v8;
    v31 = v11;
    v35 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v11 = v31;
    v10 = v35;
    v9 = v40;
    v8 = v46;
    v7 = v53;
    v6 = v61;
    v5 = v70;
    v4 = v80;
    v3 = v91;
    v2 = v103;
    v1 = v116;
    a1 = v130;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v118 = v1;
    v132 = a1;
    v93 = v3;
    v105 = v2;
    v72 = v5;
    v82 = v4;
    v55 = v7;
    v63 = v6;
    v42 = v9;
    v48 = v8;
    v33 = v11;
    v37 = v10;
    v28 = v13;
    v30 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v28;
    v12 = v30;
    v11 = v33;
    v10 = v37;
    v9 = v42;
    v8 = v48;
    v7 = v55;
    v6 = v63;
    v5 = v72;
    v4 = v82;
    v3 = v93;
    v2 = v105;
    v1 = v118;
    a1 = v132;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::Linear,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::Linear::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Log2>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec4Log2EJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEE15CallbacksHolderIZNS3_2OpINS3_4anec4Log2EJNS3_7OpTrait11ZeroRegionsENSI_9OneResultENSI_14OneTypedResultINS3_10MemRefTypeEE4ImplENSI_14ZeroSuccessorsENSI_10OneOperandENSI_12OpInvariantsENSI_4anec13MinimumFamilyILNSG_6FamilyE2EE4ImplENS3_23MemoryEffectOpInterface5TraitENSG_23PlistGeneratorInterface5TraitENSG_20ReshapeSwapInterface5TraitENSG_22TransposeSwapInterface5TraitENSS_13NeuronOpTraitENST_ILSU_0EE4ImplENS3_24ExecutionCostOpInterface5TraitENS3_20InferTypeOpInterface5TraitENSG_25InferReturnTypesInterface5TraitENS3_30CompatibleReturnTypesInterface5TraitEEE13getFoldHookFnEvEUlS5_S8_SC_E_KS1H_vE9CallbacksE(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENS9_9OneResultENS9_14OneTypedResultINS2_10MemRefTypeEE4ImplENS9_14ZeroSuccessorsENS9_10OneOperandENS9_12OpInvariantsENS9_4anec13MinimumFamilyILNS7_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENS7_23PlistGeneratorInterface5TraitENS7_20ReshapeSwapInterface5TraitENS7_22TransposeSwapInterface5TraitENSJ_13NeuronOpTraitENSK_ILSL_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENS7_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE13getHasTraitFnEvEUlS3_E_KS18_vE9CallbacksE(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE + 2;
  result = _ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEE15CallbacksHolderIZNS2_2OpINS2_4anec4Log2EJNS2_7OpTrait11ZeroRegionsENSD_9OneResultENSD_14OneTypedResultINS2_10MemRefTypeEE4ImplENSD_14ZeroSuccessorsENSD_10OneOperandENSD_12OpInvariantsENSD_4anec13MinimumFamilyILNSB_6FamilyE2EE4ImplENS2_23MemoryEffectOpInterface5TraitENSB_23PlistGeneratorInterface5TraitENSB_20ReshapeSwapInterface5TraitENSB_22TransposeSwapInterface5TraitENSN_13NeuronOpTraitENSO_ILSP_0EE4ImplENS2_24ExecutionCostOpInterface5TraitENS2_20InferTypeOpInterface5TraitENSB_25InferReturnTypesInterface5TraitENS2_30CompatibleReturnTypesInterface5TraitEEE18getPrintAssemblyFnEvEUlS4_S6_S7_E_KS1C_vE9CallbacksE(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Log2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Log2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Log2>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Log2>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Log2>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Log2>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Log2>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Log2>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.log2";
      v17 = 9;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Log2>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.matmul", 0xBuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::MatMul,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31EB0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MatMul>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::MatMul>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.matmul";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MatMul>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v106 = v1;
    v120 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v106;
    a1 = v120;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v107 = v1;
    v121 = a1;
    v94 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v94;
    v1 = v107;
    a1 = v121;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v108 = v1;
    v122 = a1;
    v83 = v3;
    v95 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v83;
    v2 = v95;
    v1 = v108;
    a1 = v122;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v109 = v1;
    v123 = a1;
    v84 = v3;
    v96 = v2;
    v73 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v73;
    v3 = v84;
    v2 = v96;
    v1 = v109;
    a1 = v123;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v110 = v1;
    v124 = a1;
    v85 = v3;
    v97 = v2;
    v64 = v5;
    v74 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v64;
    v4 = v74;
    v3 = v85;
    v2 = v97;
    v1 = v110;
    a1 = v124;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v111 = v1;
    v125 = a1;
    v86 = v3;
    v98 = v2;
    v65 = v5;
    v75 = v4;
    v56 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v56;
    v5 = v65;
    v4 = v75;
    v3 = v86;
    v2 = v98;
    v1 = v111;
    a1 = v125;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v112 = v1;
    v126 = a1;
    v87 = v3;
    v99 = v2;
    v66 = v5;
    v76 = v4;
    v49 = v7;
    v57 = v6;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v7 = v49;
    v6 = v57;
    v5 = v66;
    v4 = v76;
    v3 = v87;
    v2 = v99;
    v1 = v112;
    a1 = v126;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v113 = v1;
    v127 = a1;
    v88 = v3;
    v100 = v2;
    v67 = v5;
    v77 = v4;
    v50 = v7;
    v58 = v6;
    v43 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v43;
    v7 = v50;
    v6 = v58;
    v5 = v67;
    v4 = v77;
    v3 = v88;
    v2 = v100;
    v1 = v113;
    a1 = v127;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v114 = v1;
    v128 = a1;
    v89 = v3;
    v101 = v2;
    v68 = v5;
    v78 = v4;
    v51 = v7;
    v59 = v6;
    v38 = v9;
    v44 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v38;
    v8 = v44;
    v7 = v51;
    v6 = v59;
    v5 = v68;
    v4 = v78;
    v3 = v89;
    v2 = v101;
    v1 = v114;
    a1 = v128;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v115 = v1;
    v129 = a1;
    v90 = v3;
    v102 = v2;
    v69 = v5;
    v79 = v4;
    v52 = v7;
    v60 = v6;
    v39 = v9;
    v45 = v8;
    v34 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v34;
    v9 = v39;
    v8 = v45;
    v7 = v52;
    v6 = v60;
    v5 = v69;
    v4 = v79;
    v3 = v90;
    v2 = v102;
    v1 = v115;
    a1 = v129;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v116 = v1;
    v130 = a1;
    v91 = v3;
    v103 = v2;
    v70 = v5;
    v80 = v4;
    v53 = v7;
    v61 = v6;
    v40 = v9;
    v46 = v8;
    v31 = v11;
    v35 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v11 = v31;
    v10 = v35;
    v9 = v40;
    v8 = v46;
    v7 = v53;
    v6 = v61;
    v5 = v70;
    v4 = v80;
    v3 = v91;
    v2 = v103;
    v1 = v116;
    a1 = v130;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v118 = v1;
    v132 = a1;
    v93 = v3;
    v105 = v2;
    v72 = v5;
    v82 = v4;
    v55 = v7;
    v63 = v6;
    v42 = v9;
    v48 = v8;
    v33 = v11;
    v37 = v10;
    v28 = v13;
    v30 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v28;
    v12 = v30;
    v11 = v33;
    v10 = v37;
    v9 = v42;
    v8 = v48;
    v7 = v55;
    v6 = v63;
    v5 = v72;
    v4 = v82;
    v3 = v93;
    v2 = v105;
    v1 = v118;
    a1 = v132;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::MatMul,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::anec::MatMul::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.max_pool", 0xDuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::MaxPool,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A31F78;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::MaxPool>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::MaxPool>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MaxPool>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.max_pool";
      v17 = 13;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::MaxPool>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::MaxPool,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::L2NormPool::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::NRelu>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::mutateOpForReshapeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ReshapeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ReshapeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::mutateOpForTransposeSwap;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::TransposeSwapInterfaceInterfaceTraits::Model<mlir::anec::Ceil>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::TransposeSwapInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::NRelu>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.n_relu";
      v17 = 11;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::NRelu>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::NRelu,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ReshapeSwapInterface::Trait,mlir::anec::TransposeSwapInterface::Trait,mlir::OpTrait::anec::NeuronOpTrait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::NRelu::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::Padding>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.padding", 0xCuLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32108;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Padding>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::Padding>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::Padding>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::Padding>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::Padding>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::Padding>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Padding>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.padding";
      v17 = 12;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::Padding>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v106 = v1;
    v120 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v1 = v106;
    a1 = v120;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v107 = v1;
    v121 = a1;
    v94 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v94;
    v1 = v107;
    a1 = v121;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v108 = v1;
    v122 = a1;
    v83 = v3;
    v95 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v3 = v83;
    v2 = v95;
    v1 = v108;
    a1 = v122;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v109 = v1;
    v123 = a1;
    v84 = v3;
    v96 = v2;
    v73 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v73;
    v3 = v84;
    v2 = v96;
    v1 = v109;
    a1 = v123;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v110 = v1;
    v124 = a1;
    v85 = v3;
    v97 = v2;
    v64 = v5;
    v74 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v5 = v64;
    v4 = v74;
    v3 = v85;
    v2 = v97;
    v1 = v110;
    a1 = v124;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v111 = v1;
    v125 = a1;
    v86 = v3;
    v98 = v2;
    v65 = v5;
    v75 = v4;
    v56 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v6 = v56;
    v5 = v65;
    v4 = v75;
    v3 = v86;
    v2 = v98;
    v1 = v111;
    a1 = v125;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v112 = v1;
    v126 = a1;
    v87 = v3;
    v99 = v2;
    v66 = v5;
    v76 = v4;
    v49 = v7;
    v57 = v6;
    mlir::anec::getOpMinimumFamilyImpl<(mlir::anec::Family)0>();
    v7 = v49;
    v6 = v57;
    v5 = v66;
    v4 = v76;
    v3 = v87;
    v2 = v99;
    v1 = v112;
    a1 = v126;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v113 = v1;
    v127 = a1;
    v88 = v3;
    v100 = v2;
    v67 = v5;
    v77 = v4;
    v50 = v7;
    v58 = v6;
    v43 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v43;
    v7 = v50;
    v6 = v58;
    v5 = v67;
    v4 = v77;
    v3 = v88;
    v2 = v100;
    v1 = v113;
    a1 = v127;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::ZinIrUnitInfoInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v114 = v1;
    v128 = a1;
    v89 = v3;
    v101 = v2;
    v68 = v5;
    v78 = v4;
    v51 = v7;
    v59 = v6;
    v38 = v9;
    v44 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v38;
    v8 = v44;
    v7 = v51;
    v6 = v59;
    v5 = v68;
    v4 = v78;
    v3 = v89;
    v2 = v101;
    v1 = v114;
    a1 = v128;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v115 = v1;
    v129 = a1;
    v90 = v3;
    v102 = v2;
    v69 = v5;
    v79 = v4;
    v52 = v7;
    v60 = v6;
    v39 = v9;
    v45 = v8;
    v34 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait,mlir::anec::RegionPerformanceInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)1>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)3>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)4>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)5>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)6>::Impl,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)7>::Impl,mlir::ExecutionCostOpInterface::Trait>();
    v10 = v34;
    v9 = v39;
    v8 = v45;
    v7 = v52;
    v6 = v60;
    v5 = v69;
    v4 = v79;
    v3 = v90;
    v2 = v102;
    v1 = v115;
    a1 = v129;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v116 = v1;
    v130 = a1;
    v91 = v3;
    v103 = v2;
    v70 = v5;
    v80 = v4;
    v53 = v7;
    v61 = v6;
    v40 = v9;
    v46 = v8;
    v31 = v11;
    v35 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v11 = v31;
    v10 = v35;
    v9 = v40;
    v8 = v46;
    v7 = v53;
    v6 = v61;
    v5 = v70;
    v4 = v80;
    v3 = v91;
    v2 = v103;
    v1 = v116;
    a1 = v130;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::anec::InferReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v118 = v1;
    v132 = a1;
    v93 = v3;
    v105 = v2;
    v72 = v5;
    v82 = v4;
    v55 = v7;
    v63 = v6;
    v42 = v9;
    v48 = v8;
    v33 = v11;
    v37 = v10;
    v28 = v13;
    v30 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v13 = v28;
    v12 = v30;
    v11 = v33;
    v10 = v37;
    v9 = v42;
    v8 = v48;
    v7 = v55;
    v6 = v63;
    v5 = v72;
    v4 = v82;
    v3 = v93;
    v2 = v105;
    v1 = v118;
    a1 = v132;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::anec::Padding,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::Padding::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.pixel_shuffle", 0x12uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::PixelShuffle,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A321D0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelShuffle>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::PixelShuffle>::refineReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelShuffle>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.pixel_shuffle";
      v17 = 18;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelShuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::PixelShuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::BatchToSpace::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "anec.pixel_unshuffle", 0x14uLL, a2, &mlir::detail::TypeIDResolver<mlir::anec::PixelUnshuffle,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F1A32298;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::anec::PixelUnshuffle>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  (a5)(v15, a6, a2, a3, a4);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::getZinIrUnitInfo;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::ZinIrUnitInfoInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::ZinIrUnitInfoInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::addOpToNetwork;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::anec::A11Legacy>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::anec::PixelUnshuffle>::refineReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelUnshuffle>::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::ValueRange::ValueRange(&v16, v18, v19);
    mlir::ValueRange::ValueRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "anec.pixel_unshuffle";
      v17 = 20;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferPromotedReturnTypes;
  v2[1] = mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::inferReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::anec::detail::InferReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::ArgMinMax>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::anec::InferReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::anec::PixelUnshuffle>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::anec::PixelUnshuffle,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::anec::BatchToSpace::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  {
    mlir::Op<mlir::anec::ArgMinMax,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants();
  }

  if ((*(**(a1 + 6) + 32))(*(a1 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 1;
  }

  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl>(a1);
  if (result)
  {
    return 1;
  }

  return result;
}