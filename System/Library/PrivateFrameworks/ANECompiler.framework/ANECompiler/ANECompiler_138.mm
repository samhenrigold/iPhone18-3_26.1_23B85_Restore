uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::AbsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::AbsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::AbsOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AbsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::AbsOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AbsOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::AbsOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::complex::AbsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.abs";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<Empty>]";
  v6 = 109;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::AbsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::complex::AbsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::complex::AbsOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AddOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AddOp>,mlir::OpTrait::OneResult<mlir::complex::AddOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::AddOp>,mlir::OpTrait::OpInvariants<mlir::complex::AddOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AddOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::AddOp>,mlir::OpTrait::Elementwise<mlir::complex::AddOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AddOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AddOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::AddOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AddOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::AddOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.add";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::AddOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
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
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<Empty>]";
  v6 = 111;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::AddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::complex::AddOp>,mlir::OpTrait::OneResult<mlir::complex::AddOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::AddOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AddOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::AddOp>,mlir::OpTrait::OpInvariants<mlir::complex::AddOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AddOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AddOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AddOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AddOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::AddOp>,mlir::OpTrait::Elementwise<mlir::complex::AddOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AddOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AddOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, mlir::complex::AddOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::AngleOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AngleOp>,mlir::OpTrait::OneResult<mlir::complex::AngleOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AngleOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AngleOp>,mlir::OpTrait::OneOperand<mlir::complex::AngleOp>,mlir::OpTrait::OpInvariants<mlir::complex::AngleOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AngleOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AngleOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AngleOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AngleOp>,mlir::OpTrait::Elementwise<mlir::complex::AngleOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AngleOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AngleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::AngleOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::AngleOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::AngleOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::complex::AbsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.angle";
    v23 = 13;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::complex::AngleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::complex::AbsOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Atan2Op>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::Atan2Op>,mlir::OpTrait::OneResult<mlir::complex::Atan2Op>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::Atan2Op>,mlir::OpTrait::ZeroSuccessors<mlir::complex::Atan2Op>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::Atan2Op>,mlir::OpTrait::OpInvariants<mlir::complex::Atan2Op>,mlir::BytecodeOpInterface::Trait<mlir::complex::Atan2Op>,mlir::ConditionallySpeculatable::Trait<mlir::complex::Atan2Op>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::Atan2Op>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::Atan2Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::Atan2Op>,mlir::OpTrait::Elementwise<mlir::complex::Atan2Op>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::Atan2Op>,mlir::InferTypeOpInterface::Trait<mlir::complex::Atan2Op>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::Atan2Op>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Atan2Op>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::Atan2Op>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.atan2";
    v23 = 13;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::Atan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
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

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::BitcastOp>,mlir::OpTrait::OneResult<mlir::complex::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::complex::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::BitcastOp>,mlir::OpTrait::OneOperand<mlir::complex::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::complex::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::BitcastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::BitcastOp>::getSpeculatability;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::BitcastOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

BOOL mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::complex::BitcastOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::complex::BitcastOp::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::complex::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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
  if ((mlir::complex::BitcastOp::verifyInvariantsImpl(&v7) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::complex::BitcastOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConjOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConjOp>,mlir::OpTrait::OneResult<mlir::complex::ConjOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConjOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConjOp>,mlir::OpTrait::OneOperand<mlir::complex::ConjOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConjOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConjOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::ConjOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConjOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConjOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConjOp>,mlir::OpTrait::Elementwise<mlir::complex::ConjOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::ConjOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::ConjOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::ConjOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ConjOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::ConjOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.conj";
    v23 = 12;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::ConjOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
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
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::ConjOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::complex::ConjOp>,mlir::OpTrait::OneResult<mlir::complex::ConjOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConjOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConjOp>,mlir::OpTrait::OneOperand<mlir::complex::ConjOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConjOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConjOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::ConjOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConjOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConjOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConjOp>,mlir::OpTrait::Elementwise<mlir::complex::ConjOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::ConjOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::ConjOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v9 = a1, mlir::complex::ConjOp::verifyInvariantsImpl(&v9)) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v7) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::complex::ConstantOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::ConstantOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::ConstantOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::ConstantOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v7 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::getAsmResultNames;
  v7[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::getAsmBlockArgumentNames;
  v7[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::getAsmBlockNames;
  v7[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::complex::ConstantOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::ConstantOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::ConstantOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::complex::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if ((mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::complex::ConstantOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::complex::ConstantOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CosOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::CosOp>,mlir::OpTrait::OneResult<mlir::complex::CosOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::CosOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::CosOp>,mlir::OpTrait::OneOperand<mlir::complex::CosOp>,mlir::OpTrait::OpInvariants<mlir::complex::CosOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::CosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::CosOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::CosOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::CosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::CosOp>,mlir::OpTrait::Elementwise<mlir::complex::CosOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::CosOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::CosOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::CosOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::CosOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::CosOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.cos";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::CosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::CreateOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
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

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::CreateOp>,mlir::OpTrait::OneResult<mlir::complex::CreateOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::CreateOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::CreateOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::CreateOp>,mlir::OpTrait::OpInvariants<mlir::complex::CreateOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::CreateOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::CreateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::CreateOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::CreateOp>::getSpeculatability;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::CreateOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

BOOL mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::complex::CreateOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::complex::CreateOp::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::complex::CreateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::complex::CreateOp::verifyInvariantsImpl(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::DivOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::DivOp>,mlir::OpTrait::OneResult<mlir::complex::DivOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::DivOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::DivOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::DivOp>,mlir::OpTrait::OpInvariants<mlir::complex::DivOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::DivOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::DivOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::DivOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::DivOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::DivOp>,mlir::OpTrait::Elementwise<mlir::complex::DivOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::DivOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::DivOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::DivOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::DivOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::DivOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.div";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::DivOp::fold(&v13, v14);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::DivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::EqualOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
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

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::EqualOp>,mlir::OpTrait::OneResult<mlir::complex::EqualOp>,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::complex::EqualOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::EqualOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::EqualOp>,mlir::OpTrait::OpInvariants<mlir::complex::EqualOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::EqualOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::EqualOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::EqualOp>,mlir::OpTrait::Elementwise<mlir::complex::EqualOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::EqualOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::EqualOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::EqualOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::EqualOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::EqualOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::EqualOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::EqualOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::EqualOp>::refineReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::complex::EqualOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.eq";
    v23 = 10;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl<Empty>]";
  v6 = 111;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MulSIExtendedOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::complex::EqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v7 = a1, mlir::complex::EqualOp::verifyInvariantsImpl(&v7)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ExpOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ExpOp>,mlir::OpTrait::OneResult<mlir::complex::ExpOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ExpOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ExpOp>,mlir::OpTrait::OneOperand<mlir::complex::ExpOp>,mlir::OpTrait::OpInvariants<mlir::complex::ExpOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ExpOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::ExpOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ExpOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ExpOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ExpOp>,mlir::OpTrait::Elementwise<mlir::complex::ExpOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::ExpOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::ExpOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::ExpOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ExpOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::ExpOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.exp";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::ExpOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::ExpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Expm1Op>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::Expm1Op>,mlir::OpTrait::OneResult<mlir::complex::Expm1Op>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::Expm1Op>,mlir::OpTrait::ZeroSuccessors<mlir::complex::Expm1Op>,mlir::OpTrait::OneOperand<mlir::complex::Expm1Op>,mlir::OpTrait::OpInvariants<mlir::complex::Expm1Op>,mlir::BytecodeOpInterface::Trait<mlir::complex::Expm1Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::Expm1Op>,mlir::ConditionallySpeculatable::Trait<mlir::complex::Expm1Op>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::Expm1Op>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::Expm1Op>,mlir::OpTrait::Elementwise<mlir::complex::Expm1Op>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::Expm1Op>,mlir::InferTypeOpInterface::Trait<mlir::complex::Expm1Op>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::Expm1Op>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Expm1Op>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::Expm1Op>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.expm1";
    v23 = 13;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::Expm1Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::ImOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ImOp>,mlir::OpTrait::OneResult<mlir::complex::ImOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::ImOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ImOp>,mlir::OpTrait::OneOperand<mlir::complex::ImOp>,mlir::OpTrait::OpInvariants<mlir::complex::ImOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ImOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ImOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ImOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ImOp>,mlir::OpTrait::Elementwise<mlir::complex::ImOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::ImOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::ImOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::ImOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ImOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::ImOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::complex::AbsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.im";
    v23 = 10;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::ImOp::fold(&v13, v14);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::complex::ImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v8 = a1, mlir::complex::AbsOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::Log1pOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::Log1pOp>,mlir::OpTrait::OneResult<mlir::complex::Log1pOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::Log1pOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::Log1pOp>,mlir::OpTrait::OneOperand<mlir::complex::Log1pOp>,mlir::OpTrait::OpInvariants<mlir::complex::Log1pOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::Log1pOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::Log1pOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::Log1pOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::Log1pOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::Log1pOp>,mlir::OpTrait::Elementwise<mlir::complex::Log1pOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::Log1pOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::Log1pOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::Log1pOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::Log1pOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::Log1pOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.log1p";
    v23 = 13;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::Log1pOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::LogOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::LogOp>,mlir::OpTrait::OneResult<mlir::complex::LogOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::LogOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::LogOp>,mlir::OpTrait::OneOperand<mlir::complex::LogOp>,mlir::OpTrait::OpInvariants<mlir::complex::LogOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::LogOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::LogOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::LogOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::LogOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::LogOp>,mlir::OpTrait::Elementwise<mlir::complex::LogOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::LogOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::LogOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::LogOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::LogOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::LogOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.log";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::LogOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::LogOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::MulOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::MulOp>,mlir::OpTrait::OneResult<mlir::complex::MulOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::MulOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::MulOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::complex::MulOp>,mlir::OpTrait::OpInvariants<mlir::complex::MulOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::MulOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::MulOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::MulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::MulOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::MulOp>,mlir::OpTrait::Elementwise<mlir::complex::MulOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::MulOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::MulOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::MulOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::MulOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::MulOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.mul";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::MulOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::MulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t *mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NegOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::NegOp>,mlir::OpTrait::OneResult<mlir::complex::NegOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::NegOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::NegOp>,mlir::OpTrait::OneOperand<mlir::complex::NegOp>,mlir::OpTrait::OpInvariants<mlir::complex::NegOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::NegOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::complex::NegOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::NegOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::NegOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::NegOp>,mlir::OpTrait::Elementwise<mlir::complex::NegOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::NegOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::NegOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::complex::NegOp>::getSpeculatability;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v7 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::getFastMathFlagsAttr;
  v7[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v8 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::inferReturnTypes;
  v8[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::refineReturnTypes;
  v8[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::NegOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::complex::NegOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x1E69E9840];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::ValueRange::ValueRange(&v22, v24, v25);
    mlir::ValueRange::ValueRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "complex.neg";
    v23 = 11;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = a2;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a2);
  v15 = a3;
  v16 = a4;
  v9 = mlir::complex::NegOp::fold(&v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    v12 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v10 + 1, 8);
    v9 = v12;
    LODWORD(v10) = *(a5 + 8);
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::NegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::AbsOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::NotEqualOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::complex::NotEqualOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IntegerType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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