void mlir::mps_spi::MPSSPIDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if (v6[3] - v7 > 0x18uLL)
    {
      qmemcpy(v7, "device_descriptor_options", 25);
      v6[4] += 25;
    }

    else
    {
      llvm::raw_ostream::write(v6, "device_descriptor_options", 0x19uLL);
    }

    mlir::mps_spi::DeviceDescriptorOptionsAttr::print(v8, a3);
  }
}

uint64_t mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F1A177F0;
  v16[1] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

uint64_t std::__function::__func<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A177F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, void **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(**a2 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v18[0] = v4;
  v18[1] = v6;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  result = 0;
  v17[0] = v5;
  v17[1] = v7;
  if (v4 && v5)
  {
    v9 = *(a1 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v18);
    v19 = mlir::ElementsAttr::isSplat(v17);
    v20 = isSplat;
    v11 = *(v9 + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x1A6FA5710);
    }

    result = (*(*v11 + 48))(v11, &v20, &v19);
    if (result)
    {
      if (mlir::ElementsAttr::getShapedType(v17))
      {
        result = mlir::ElementsAttr::getShapedType(v18);
        if (result)
        {
          Shape = mlir::ShapedType::getShape(v18);
          v14 = v13;
          v15 = mlir::ShapedType::getShape(v17);
          return mlir::mps::isMoreSpecializedShape(Shape, v14, v15, v16);
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mps_spi.rms_norm", 0x10uLL, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id, &v9);
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

  *a1 = &unk_1F1A17868;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::downgradeToVersion;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::DowngraderInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface]";
  v6 = 75;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a4;
  v16[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = mlir::Float32Type::get(a1, a2);
    v11 = mlir::UnrankedTensorType::get(v12);
  }

  v13 = *(a11 + 8);
  if (v13 >= *(a11 + 12))
  {
    v15 = v11;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v13 + 1, 8);
    v11 = v15;
    LODWORD(v13) = *(a11 + 8);
  }

  *(*a11 + 8 * v13) = v11;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17A18;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps_spi::RMSNormOp>::refineReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = 0x400000000;
  v23 = a4;
  v24 = a5;
  if (a5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v14 = mlir::Float32Type::get(a1, a2);
    v13 = mlir::UnrankedTensorType::get(v14);
  }

  *(v20 + v21) = v13;
  LODWORD(v21) = v21 + 1;
  mlir::ValueRange::ValueRange(v19, v20, v21);
  mlir::ValueRange::ValueRange(v18, *a11, *(a11 + 8));
  v23 = &unk_1F1A17A18;
  v25 = &v23;
  if (v25 == &v23)
  {
    (*(*v25 + 4))(v25);
    if (isCompatibleReturnTypesDefaultImpl)
    {
LABEL_8:
      v16 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (v25)
    {
      (*(*v25 + 5))();
    }

    if (isCompatibleReturnTypesDefaultImpl)
    {
      goto LABEL_8;
    }
  }

  v23 = "mps_spi.rms_norm";
  v24 = 16;
  v16 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
LABEL_11:
  if (v20 != v22)
  {
    free(v20);
  }

  return v16;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17A18;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface::Trait<Empty>]";
  v6 = 89;
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

BOOL mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(uint64_t *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && (v7 = a1, mlir::mps_spi::RMSNormOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::mps_spi::RMSNormOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mps_spi.sdpa", 0xCuLL, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id, &v9);
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

  *a1 = &unk_1F1A17930;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::printAssembly()
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v7);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::downgradeToVersion;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17A18;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps_spi::ScaledDotProductAttentionOp>::refineReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = 0x400000000;
  if (mlir::mps_spi::ScaledDotProductAttentionOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &v20))
  {
    mlir::ValueRange::ValueRange(v19, v20, v21);
    mlir::ValueRange::ValueRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_1F1A17A18;
    v24 = v23;
    if (v24 == v23)
    {
      (*(*v24 + 4))(v24);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 5))(v24);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v23[0] = "mps_spi.sdpa";
    v23[1] = 12;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v23, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v20 != v22)
  {
    free(v20);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F1A17A18;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v77;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v67 = v1;
    v78 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v67;
    a1 = v78;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v68 = v1;
    v79 = a1;
    v58 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v58;
    v1 = v68;
    a1 = v79;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v69 = v1;
    v80 = a1;
    v50 = v3;
    v59 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v50;
    v2 = v59;
    v1 = v69;
    a1 = v80;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v70 = v1;
    v81 = a1;
    v51 = v3;
    v60 = v2;
    v43 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v43;
    v3 = v51;
    v2 = v60;
    v1 = v70;
    a1 = v81;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v71 = v1;
    v82 = a1;
    v52 = v3;
    v61 = v2;
    v44 = v4;
    v37 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v5 = v37;
    v4 = v44;
    v3 = v52;
    v2 = v61;
    v1 = v71;
    a1 = v82;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v72 = v1;
    v83 = a1;
    v53 = v3;
    v62 = v2;
    v45 = v4;
    v32 = v6;
    v38 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v32;
    v5 = v38;
    v4 = v45;
    v3 = v53;
    v2 = v62;
    v1 = v72;
    a1 = v83;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v73 = v1;
    v84 = a1;
    v54 = v3;
    v63 = v2;
    v46 = v4;
    v33 = v6;
    v39 = v5;
    v28 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>();
    v7 = v28;
    v6 = v33;
    v5 = v39;
    v4 = v46;
    v3 = v54;
    v2 = v63;
    v1 = v73;
    a1 = v84;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v74 = v1;
    v85 = a1;
    v55 = v3;
    v64 = v2;
    v47 = v4;
    v34 = v6;
    v40 = v5;
    v25 = v8;
    v29 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v25;
    v7 = v29;
    v6 = v34;
    v5 = v40;
    v4 = v47;
    v3 = v55;
    v2 = v64;
    v1 = v74;
    a1 = v85;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(uint64_t *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyNOperands(a1, 5) & 1) != 0 && (v8 = a1, mlir::mps_spi::ScaledDotProductAttentionOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifySameOperandsElementType(a1, v5))
  {
    v8 = a1;
    v6 = mlir::mps_spi::ScaledDotProductAttentionOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void mlir::Dialect::addAttribute<mlir::mps_spi::DeviceDescriptorOptionsAttr>(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = v15;
  v14 = 0x300000000;
  v16[0] = mlir::detail::StorageUserBase<mlir::mps_spi::DeviceDescriptorOptionsAttr,mlir::Attribute,mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v17 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v18 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSD_6detail34DeviceDescriptorOptionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v19 = &v11;
  v20 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSC_6detail34DeviceDescriptorOptionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v21 = &v10;
  v22 = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v23 = "mps_spi.device_descriptor_options";
  v24 = 33;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, &v12);
  v2 = v17;
  if (v17 >= 8)
  {
    if ((v17 & 4) != 0)
    {
      if ((v17 & 2) != 0)
      {
        v3 = v16;
      }

      else
      {
        v3 = v16[0];
      }

      (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v16[0], v16[1]);
    }
  }

  v4 = v13;
  if (v14)
  {
    v5 = 16 * v14;
    v6 = (v13 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v13;
  }

  if (v4 != v15)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSD_6detail34DeviceDescriptorOptionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSC_6detail34DeviceDescriptorOptionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::mps_spi::DeviceDescriptorOptionsAttr>(a2, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::mps_spi::DeviceDescriptorOptionsAttr>(uint64_t a1, uint64_t **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v2 = *(a1 + 24);
  v3 = *a2;
  if (!*(a1 + 8))
  {
    v4 = 0;
    v6 = *(a1 + 16);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *v3++;
  v4 = v5;
  v6 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *v3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v17[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir7mps_spi6detail34DeviceDescriptorOptionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27DeviceDescriptorOptionsAttrEJNS1_10StringAttrEiSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v22[1] = v17;
  v19 = v4;
  v20 = v6;
  v21 = v7;
  *&v23[4] = 0;
  *&v23[8] = v6;
  *&v23[12] = (v7 >> 4) ^ (v7 >> 9);
  v10 = 0xB492B66FBE98F273 * ((v4 >> 4) ^ (v4 >> 9));
  v11 = __ROR8__(v10 - *&v23[8], 43);
  v12 = __ROR8__((0x9AE16A3B2F90404FLL * *&v23[12]) ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * *&v23[4];
  v13 = __ROR8__(*&v23[8] ^ 0xC949D7C7509E6557, 20);
  v14 = 0x9DDFEA08EB382D69 * ((v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20) ^ ((0x9DDFEA08EB382D69 * ((v12 + v11) ^ (v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20))) >> 47) ^ (0x9DDFEA08EB382D69 * ((v12 + v11) ^ (v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20))));
  v18 = &v19;
  *v23 = &v19;
  *&v23[8] = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void *llvm::SmallVector<long long,4u>::SmallVector<long long,void>(void *a1, const void *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v5 = (8 * a3) >> 3;
  if (v5 >= 5)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = (*a1)[2];
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = Slow + 32;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v6;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 16) = v3;
  *(Slow + 24) = v4;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(v8[1], Slow);
  }

  return Slow;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::writeAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id)
  {
    return 0;
  }

  v10 = a2;
  if (!v8 || v8 == 1 && v9 < 2)
  {
    return 0;
  }

  (*(*a3 + 48))(a3, 0);
  Value = mlir::AffineMapAttr::getValue(&v10);
  (*(*a3 + 16))(a3, Value);
  Position = mlir::AffineDimExpr::getPosition(&v10);
  (*(*a3 + 56))(a3, Position);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v10);
  (*(*a3 + 16))(a3, RHS);
  return 1;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::readAttribute(mlir::DialectInterface *a1, uint64_t a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v9 = 0;
  v4 = (*(*a2 + 72))(a2, &v9);
  result = 0;
  if ((v4 & 1) != 0 && !v9)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v8) && ((*(*a2 + 80))(a2, &v7) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v6))
    {
      return mlir::mps_spi::DeviceDescriptorOptionsAttr::get(Context, v8, v7, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::mps_spi::MPSSPIBytecodeDialectInterface::~MPSSPIBytecodeDialectInterface(mlir::mps_spi::MPSSPIBytecodeDialectInterface *this)
{
  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::BytecodeDialectInterface::readType(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = 257;
  (*(*a2 + 16))(&v31, a2, v25);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "dialect ";
    v29 = 8;
    v3 = &v27;
    v4 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v23 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v4 = v33;
        v3 = (v33 + v23);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v3 = &v27;
        v4 = v33;
      }
    }

    v5 = &v4[24 * v34];
    v6 = *v3;
    *(v5 + 2) = v3[2];
    *v5 = v6;
    ++v34;
    if (v31)
    {
      v7 = *(a1 + 8);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      v30 = 261;
      v27 = v9;
      v28 = v8;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = " does not support reading types from bytecode";
        v29 = 45;
        v10 = &v27;
        v11 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v24 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = v33;
            v10 = (v33 + v24);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v10 = &v27;
            v11 = v33;
          }
        }

        v12 = &v11[24 * v34];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v34;
        if (v31)
        {
          mlir::InFlightDiagnostic::report(&v31);
        }
      }
    }
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v40;
      v16 = __p;
      if (v40 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v40 = v14;
      operator delete(v16);
    }

    v17 = v37;
    if (v37)
    {
      v18 = v38;
      v19 = v37;
      if (v38 != v37)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v37;
      }

      v38 = v17;
      operator delete(v19);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return 0;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::writeVersion(unsigned int *a1, uint64_t a2)
{
  (*(*a2 + 48))(a2, a1[8]);
  (*(*a2 + 48))(a2, a1[9]);
  v4 = a1[10];
  v5 = *(*a2 + 48);

  return v5(a2, v4);
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::readVersion@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if ((*(*a1 + 72))(a1, &v7) & 1) != 0 && ((*(*a1 + 72))(a1, &v6) & 1) != 0 && ((*(*a1 + 72))(a1, &v5))
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

BOOL mlir::mps_spi::MPSSPIBytecodeDialectInterface::upgradeFromVersion(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v34[0] = &unk_1F1A179F8;
  v34[1] = 1;
  v35 = 2;
  v3 = a3[2];
  if (!v3)
  {
    goto LABEL_23;
  }

  if (v3 != 1 || a3[3])
  {
    goto LABEL_4;
  }

  v13 = a3[4];
  if (v13 == 2)
  {
    return 1;
  }

  if (v13 >= 3)
  {
LABEL_4:
    v23 = "current mps_spi dialect version is {0}, can't parse version {1}";
    v24 = 63;
    v25 = v31;
    v26 = 2;
    v27 = 1;
    v28 = &unk_1F1A17AB8;
    v29 = v34;
    v30[0] = &unk_1F1A17AB8;
    v30[1] = a3;
    v31[0] = &v28;
    v31[1] = v30;
    v33 = 263;
    v32[0] = &v23;
    mlir::Operation::emitError(a2, v32, v36);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
      }

      v8 = v39;
      if (!v39)
      {
        goto LABEL_42;
      }

      v9 = v40;
      v10 = v39;
      if (v40 == v39)
      {
LABEL_41:
        v40 = v8;
        operator delete(v10);
LABEL_42:
        if (v37 != &v38)
        {
          free(v37);
        }

        return v4;
      }

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
LABEL_40:
      v10 = v39;
      goto LABEL_41;
    }
  }

  else
  {
LABEL_23:
    v22[0] = "mps_spi";
    v22[1] = 7;
    v4 = 1;
    if (!mlir::detail::upgradeFromVersion(a2, v22, a3))
    {
      v23 = "IR upgrade to version {0} failed";
      v24 = 32;
      v25 = v30;
      v26 = 1;
      v27 = 1;
      v28 = &unk_1F1A17AB8;
      v29 = v34;
      v30[0] = &v28;
      v33 = 263;
      v32[0] = &v23;
      mlir::Operation::emitError(a2, v32, v36);
      v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }

      if (v44 == 1)
      {
        if (v43 != &v44)
        {
          free(v43);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v42;
          v17 = __p;
          if (v42 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v42 = v15;
          operator delete(v17);
        }

        v8 = v39;
        if (!v39)
        {
          goto LABEL_42;
        }

        v18 = v40;
        v10 = v39;
        if (v40 == v39)
        {
          goto LABEL_41;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
          }
        }

        while (v18 != v8);
        goto LABEL_40;
      }
    }
  }

  return v4;
}

uint64_t mlir::impl::verifyCastInterfaceOp(mlir::impl *this, mlir::Operation *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v82 = v4;
  v83[0] = v3;
  mlir::OperandRange::getTypes(&v73, &v82);
  if (v74 == v76)
  {
    v81 = 257;
    mlir::Operation::emitOpError(this, &v78, &v82);
    if (v82)
    {
      LODWORD(v69) = 3;
      v70 = "expected at least one result for cast operation";
      v71 = 47;
      v5 = &v69;
      v6 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v69 && v84 + 24 * v85 > &v69)
        {
          v61 = &v69 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v6 = v84;
          v5 = (v84 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v5 = &v69;
          v6 = v84;
        }
      }

      v7 = &v6[24 * v85];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v85;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v93 == 1)
    {
      if (v92 != &v93)
      {
        free(v92);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v91;
        v12 = __p;
        if (v91 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v91 = v10;
        operator delete(v12);
      }

      v13 = v88;
      if (!v88)
      {
        goto LABEL_72;
      }

      v14 = v89;
      v15 = v88;
      if (v89 == v88)
      {
LABEL_71:
        v89 = v13;
        operator delete(v15);
LABEL_72:
        if (v84 != v87)
        {
          free(v84);
        }

        return v9;
      }

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
LABEL_70:
      v15 = v88;
      goto LABEL_71;
    }

    return v9;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v18 = *(this + 9);
    v19 = *(this + 17);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v82 = v18;
  v83[0] = v19;
  mlir::OperandRange::getTypes(&v69, &v82);
  InterfaceFor = mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  mlir::ValueRange::ValueRange(&v82, v69 + 32 * v70, v72 - v70);
  mlir::TypeRange::TypeRange(&v78, v82, v83[0]);
  NextResultAtOffset = v73;
  v22 = v74;
  v23 = v76;
  if (v74)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, v74);
  }

  mlir::ValueRange::ValueRange(&v82, NextResultAtOffset, v23 - v22);
  mlir::TypeRange::TypeRange(v77, v82, v83[0]);
  if ((*InterfaceFor)(v78, v79, v77[0], v77[1]))
  {
    return 1;
  }

  v78 = "operand type";
  v81 = 259;
  mlir::Operation::emitOpError(this, &v78, &v82);
  if (v72 == v70)
  {
    if (!v82)
    {
      goto LABEL_54;
    }

    LODWORD(v78) = 3;
    v79 = "s []";
    v80 = 4;
    v24 = &v78;
    v25 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &v78 && v84 + 24 * v85 > &v78)
      {
        v63 = &v78 - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v25 = v84;
        v24 = (v84 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v24 = &v78;
        v25 = v84;
      }
    }

    v26 = &v25[24 * v85];
    v27 = *v24;
    v28 = v24[2];
LABEL_39:
    *(v26 + 2) = v28;
    *v26 = v27;
    ++v85;
    if (!v82)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  if (v72 - v70 == 1)
  {
    if (v82)
    {
      LODWORD(v78) = 3;
      v79 = " ";
      v80 = 1;
      v29 = &v78;
      v30 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v78 && v84 + 24 * v85 > &v78)
        {
          v65 = &v78 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v30 = v84;
          v29 = (v84 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v29 = &v78;
          v30 = v84;
        }
      }

      v31 = &v30[24 * v85];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      ++v85;
      if (v82)
      {
        v33 = &v78;
        mlir::DiagnosticArgument::DiagnosticArgument(&v78, *(*(v69 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v34 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v78 && v84 + 24 * v85 > &v78)
          {
            v67 = &v78 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v34 = v84;
            v33 = (v84 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v33 = &v78;
            v34 = v84;
          }
        }

        v26 = &v34[24 * v85];
        v27 = *v33;
        v28 = v33[2];
        goto LABEL_39;
      }
    }
  }

  else if (v82)
  {
    LODWORD(v78) = 3;
    v79 = "s ";
    v80 = 2;
    v50 = &v78;
    v51 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &v78 && v84 + 24 * v85 > &v78)
      {
        v66 = &v78 - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v51 = v84;
        v50 = (v84 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v50 = &v78;
        v51 = v84;
      }
    }

    v52 = &v51[24 * v85];
    v53 = *v50;
    *(v52 + 2) = v50[2];
    *v52 = v53;
    ++v85;
    if (v82)
    {
      v78 = ", ";
      llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::OperandRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(void)#1},void>(v69, v70, v71, v72, v83, v83, &v78);
      if (v82)
      {
LABEL_40:
        LODWORD(v78) = 3;
        v79 = " and result type";
        v80 = 16;
        v35 = &v78;
        v36 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v78 && v84 + 24 * v85 > &v78)
          {
            v62 = &v78 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v36 = v84;
            v35 = (v84 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v35 = &v78;
            v36 = v84;
          }
        }

        v37 = &v36[24 * v85];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        v39 = ++v85;
        if (v82)
        {
          v40 = 1;
          v41 = "s ";
          if (v76 - v74 == 1)
          {
            v41 = " ";
          }

          else
          {
            v40 = 2;
          }

          LODWORD(v78) = 3;
          v79 = v41;
          v80 = v40;
          v42 = &v78;
          v43 = v84;
          if (v39 >= v86)
          {
            if (v84 <= &v78 && v84 + 24 * v39 > &v78)
            {
              v64 = &v78 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v39 + 1, 24);
              v43 = v84;
              v42 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v39 + 1, 24);
              v42 = &v78;
              v43 = v84;
            }
          }

          v44 = &v43[24 * v85];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v85;
          if (v82)
          {
            v78 = ", ";
            llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(v73, v74, v75, v76, v83, v83, &v78);
            if (v82)
            {
              LODWORD(v78) = 3;
              v79 = " are cast incompatible";
              v80 = 22;
              v46 = &v78;
              v47 = v84;
              if (v85 >= v86)
              {
                if (v84 <= &v78 && v84 + 24 * v85 > &v78)
                {
                  v68 = &v78 - v84;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v47 = v84;
                  v46 = (v84 + v68);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v46 = &v78;
                  v47 = v84;
                }
              }

              v48 = &v47[24 * v85];
              v49 = *v46;
              *(v48 + 2) = v46[2];
              *v48 = v49;
              ++v85;
            }
          }
        }
      }
    }
  }

LABEL_54:
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v54 = __p;
    if (__p)
    {
      v55 = v91;
      v56 = __p;
      if (v91 != __p)
      {
        do
        {
          v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
        }

        while (v55 != v54);
        v56 = __p;
      }

      v91 = v54;
      operator delete(v56);
    }

    v13 = v88;
    if (!v88)
    {
      goto LABEL_72;
    }

    v57 = v89;
    v15 = v88;
    if (v89 == v88)
    {
      goto LABEL_71;
    }

    do
    {
      v59 = *--v57;
      v58 = v59;
      *v57 = 0;
      if (v59)
      {
        MEMORY[0x1AC55A040](v58, 0x1000C8077774924);
      }
    }

    while (v57 != v13);
    goto LABEL_70;
  }

  return v9;
}

uint64_t mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1EB28B000;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &unk_1EB28B000;
    v18 = v23;
  }

  v19 = v4[454];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

double mlir::mps::detail::MPSAbstractCostModel::computeCost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    mlir::mps::detail::MPSAbstractCostModel::computeCost();
  }

  if (atomic_load_explicit(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, memory_order_acquire) != -1)
  {
    v23 = &v21;
    v22 = &v23;
    std::__call_once(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, &v22, std::__call_once_proxy[abi:nn200100]<std::tuple<mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0 &&>>);
  }

  v23 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v23);
  v8 = v7;
  v11 = llvm::StringMapImpl::hash(AttrData, v7, v9, v10);
  Key = llvm::StringMapImpl::FindKey(&qword_1ED440720, AttrData, v8, v11);
  v13 = qword_1ED440720;
  if (Key == -1)
  {
    v14 = dword_1ED440728;
  }

  else
  {
    v14 = Key;
  }

  if ((atomic_load_explicit(_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    mlir::mps::detail::MPSAbstractCostModel::computeCost();
  }

  v15 = v13 + 8 * v14;
  if (atomic_load_explicit(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, memory_order_acquire) != -1)
  {
    v23 = &v21;
    v22 = &v23;
    std::__call_once(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, &v22, std::__call_once_proxy[abi:nn200100]<std::tuple<mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0 &&>>);
  }

  if (v15 == qword_1ED440720 + 8 * dword_1ED440728)
  {
    v19 = *(a2 + 48);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v23 = *(v19 + 8);
      mlir::SparseElementsAttr::getValues(&v23);
    }

    return 0.0;
  }

  else
  {
    v16 = *(*v15 + 8);
    v17 = *(*v15 + 16);
    v18 = (a1 + (v17 >> 1));
    if (v17)
    {
      v16 = *(*v18 + v16);
    }

    v16(v18, a2, a3);
  }

  return result;
}

uint64_t llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 25));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

float mlir::mps::getMathOpExecutionCost(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  if (v5)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v7[0] = v4;
  v7[1] = v5;
  result = 0.0;
  if (v4)
  {
    if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      mlir::mps::getMathOpExecutionCost(a1, v7, a2, &v8);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::mps::getCopyOpExecutionCost(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v18[0] = v3;
  v18[1] = v4;
  v5 = (*(v2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  v17[0] = v5;
  v17[1] = result;
  isSplat = v5;
  v20 = result;
  if (v5)
  {
    result = mlir::ElementsAttr::getShapedType(&isSplat);
    if (result)
    {
      result = mlir::ShapedType::getShape(&isSplat);
      if (v7)
      {
        v8 = 8 * v7;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        isSplat = v3;
        v20 = v4;
        if (v3)
        {
          result = mlir::ElementsAttr::getShapedType(&isSplat);
          if (result)
          {
            result = mlir::ShapedType::getShape(&isSplat);
            if (v9)
            {
              v10 = 8 * v9;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v10 -= 8;
                if (!v10)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
LABEL_19:
              mlir::mps::getElementBitWidth(v3);
              Shape = mlir::ShapedType::getShape(v18);
              mlir::ShapedType::getNumElements(Shape, v12);
              mlir::mps::getElementBitWidth(v5);
              v13 = mlir::ShapedType::getShape(v17);
              mlir::ShapedType::getNumElements(v13, v14);
              isSplat = mlir::ElementsAttr::isSplat(v17);
              do
              {
                v15 = *(v2 + 16);
                if (!v15)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v15);
                if (!ParentOp)
                {
                  break;
                }

                v2 = ParentOp;
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *mlir::mps::MPSCostModel::computeCostMatMulOp(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v42 = a2;
  mlir::mps::MatMulOp::getTransposeRhs(&v42);
  v4 = *(v42 + 72);
  v5 = *(v4 + 56);
  v6 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v41[0] = v8;
  v41[1] = v9;
  if (*(v42 + 36))
  {
    v10 = v42 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v13 = result;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v40[0] = v11;
  v40[1] = v13;
  v43 = v6;
  v44 = v7;
  if (!v6)
  {
    return result;
  }

  result = mlir::ElementsAttr::getShapedType(&v43);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::getShape(&v43);
  if (!v14)
  {
LABEL_19:
    v43 = v8;
    v44 = v9;
    if (!v8)
    {
      return result;
    }

    result = mlir::ElementsAttr::getShapedType(&v43);
    if (!result)
    {
      return result;
    }

    result = mlir::ShapedType::getShape(&v43);
    if (v16)
    {
      v17 = 8 * v16;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_25;
        }
      }

      return result;
    }

LABEL_25:
    v43 = v11;
    v44 = v13;
    if (!v11)
    {
      return result;
    }

    result = mlir::ElementsAttr::getShapedType(&v43);
    if (!result)
    {
      return result;
    }

    result = mlir::ShapedType::getShape(&v43);
    if (v18)
    {
      v19 = 8 * v18;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_31;
        }
      }

      return result;
    }

LABEL_31:
    mlir::ShapedType::getShape(v41);
    Shape = mlir::ShapedType::getShape(v40);
    v22 = v21 - 2;
    if (v21 < 2)
    {
      v25 = 1;
      v23 = 1;
      goto LABEL_43;
    }

    v23 = *(Shape + 8 * v22);
    if (v21 == 2)
    {
      v25 = 1;
      goto LABEL_43;
    }

    if (v21 == 3)
    {
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
      v26 = (Shape + 8);
      v27 = 1;
      v28 = v22 & 0xFFFFFFFFFFFFFFFELL;
      v29 = 1;
      do
      {
        v27 *= *(v26 - 1);
        v29 *= *v26;
        v26 += 2;
        v28 -= 2;
      }

      while (v28);
      v25 = v29 * v27;
      if (v22 == v24)
      {
LABEL_43:
        v33 = *(Shape + 8 * v21 - 8);
        ParentOp = v42;
        v35 = v25;
        v36 = v23;
        v37 = v33;
        while (1)
        {
          v38 = *(ParentOp + 16);
          if (!v38)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(v38);
          if (!ParentOp)
          {
            break;
          }

          if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
          {
            goto LABEL_49;
          }
        }

        if ((*a3 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_49:
        pow(((v37 + 2.0) * ((v36 + 2.0) * v35)), 0.25);
LABEL_50:
        isSplat = mlir::ElementsAttr::isSplat(v40);
        return mlir::mps::executionCost(a3, v42, isSplat);
      }
    }

    v30 = v21 - v24 - 2;
    v31 = (Shape + 8 * v24);
    do
    {
      v32 = *v31++;
      v25 *= v32;
      --v30;
    }

    while (v30);
    goto LABEL_43;
  }

  v15 = 8 * v14;
  while (*result != 0x8000000000000000)
  {
    ++result;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostResizeOp(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v28, 0);
  v3 = *(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v28 + 36))
  {
    v4 = v28 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  v6 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v27[0] = v6;
  v27[1] = v7;
  v8 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
  }

  v26[0] = v8;
  v26[1] = result;
  isSplat = v8;
  v30 = result;
  if (v8)
  {
    result = mlir::ElementsAttr::getShapedType(&isSplat);
    if (result)
    {
      result = mlir::ShapedType::getShape(&isSplat);
      if (v10)
      {
        v11 = 8 * v10;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        isSplat = v6;
        v30 = v7;
        if (v6)
        {
          result = mlir::ElementsAttr::getShapedType(&isSplat);
          if (result)
          {
            result = mlir::ShapedType::getShape(&isSplat);
            if (v12)
            {
              v13 = 8 * v12;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v13 -= 8;
                if (!v13)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
LABEL_22:
              isSplat = mlir::ElementsAttr::isSplat(v27);
              mlir::Type::getIntOrFloatBitWidth(&isSplat);
              Shape = mlir::ShapedType::getShape(v26);
              mlir::ShapedType::getNumElements(Shape, v15);
              mlir::mps::getElementBitWidth(v26[0]);
              v16 = mlir::ShapedType::getShape(v26);
              mlir::ShapedType::getNumElements(v16, v17);
              InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v28);
              v19 = mlir::ShapedType::getShape(v26);
              mlir::ShapedType::getNumElements(v19, v20);
              if (InterpolationMode == 1)
              {
                mlir::mps::getElementBitWidth(v27[0]);
                v21 = mlir::ShapedType::getShape(v27);
                mlir::ShapedType::getNumElements(v21, v22);
              }

              v23 = mlir::ElementsAttr::isSplat(v26);
              ParentOp = v28;
              isSplat = v23;
              do
              {
                v25 = *(ParentOp + 16);
                if (!v25)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v25);
                if (!ParentOp)
                {
                  break;
                }
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *mlir::mps::getUnaryOpExecutionCost(uint64_t a1, uint64_t a2, float a3)
{
  if (*(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v17[0] = v5;
  v17[1] = v6;
  v7 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v9 = result;
    v18 = v5;
    v19 = v6;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v18 = v5;
    v19 = v6;
    if (!v5)
    {
      return result;
    }
  }

  result = mlir::ElementsAttr::getShapedType(&v18);
  if (result)
  {
    result = mlir::ShapedType::getShape(&v18);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v18 = v7;
      v19 = v9;
      if (v7)
      {
        result = mlir::ElementsAttr::getShapedType(&v18);
        if (result)
        {
          result = mlir::ShapedType::getShape(&v18);
          if (v12)
          {
            v13 = 8 * v12;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v13 -= 8;
              if (!v13)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
LABEL_22:
            Shape = mlir::ShapedType::getShape(v17);
            mlir::ShapedType::getNumElements(Shape, v15);
            isSplat = mlir::ElementsAttr::isSplat(v17);
            return mlir::mps::executionCost(a1, a2, isSplat);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostSampleGridOp(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = *(a2 + 72);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v36[0] = v7;
  v36[1] = v8;
  v9 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v35[0] = v9;
  v35[1] = v10;
  v11 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v13 = result;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v34[0] = v11;
  v34[1] = v13;
  isSplat = v9;
  v39 = v10;
  if (v9)
  {
    result = mlir::ElementsAttr::getShapedType(&isSplat);
    if (result)
    {
      result = mlir::ShapedType::getShape(&isSplat);
      if (v14)
      {
        v15 = 8 * v14;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        isSplat = v7;
        v39 = v8;
        if (v7)
        {
          result = mlir::ElementsAttr::getShapedType(&isSplat);
          if (result)
          {
            result = mlir::ShapedType::getShape(&isSplat);
            if (v16)
            {
              v17 = 8 * v16;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v17 -= 8;
                if (!v17)
                {
                  goto LABEL_25;
                }
              }
            }

            else
            {
LABEL_25:
              isSplat = v11;
              v39 = v13;
              if (v11)
              {
                result = mlir::ElementsAttr::getShapedType(&isSplat);
                if (result)
                {
                  result = mlir::ShapedType::getShape(&isSplat);
                  if (v18)
                  {
                    v19 = 8 * v18;
                    while (*result != 0x8000000000000000)
                    {
                      result += 8;
                      v19 -= 8;
                      if (!v19)
                      {
                        goto LABEL_31;
                      }
                    }
                  }

                  else
                  {
LABEL_31:
                    isSplat = mlir::ElementsAttr::isSplat(v36);
                    mlir::Type::getIntOrFloatBitWidth(&isSplat);
                    Shape = mlir::ShapedType::getShape(v35);
                    mlir::ShapedType::getNumElements(Shape, v21);
                    mlir::mps::getElementBitWidth(v35[0]);
                    v22 = mlir::ShapedType::getShape(v35);
                    mlir::ShapedType::getNumElements(v22, v23);
                    WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v37);
                    v25 = mlir::ShapedType::getShape(v35);
                    mlir::ShapedType::getNumElements(v25, v26);
                    if (WeightsLayout == 1)
                    {
                      mlir::mps::getElementBitWidth(v36[0]);
                      v27 = mlir::ShapedType::getShape(v36);
                      mlir::ShapedType::getNumElements(v27, v28);
                    }

                    mlir::mps::getElementBitWidth(v11);
                    v29 = mlir::ShapedType::getShape(v34);
                    mlir::ShapedType::getNumElements(v29, v30);
                    v31 = mlir::ElementsAttr::isSplat(v35);
                    ParentOp = v37;
                    isSplat = v31;
                    do
                    {
                      v33 = *(ParentOp + 16);
                      if (!v33)
                      {
                        break;
                      }

                      ParentOp = mlir::Block::getParentOp(v33);
                      if (!ParentOp)
                      {
                        break;
                      }
                    }

                    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
                    result = mlir::Type::isF16(&isSplat);
                    if (!result)
                    {
                      return mlir::Type::isF32(&isSplat);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *mlir::mps::getReductionOpExecutionCost(uint64_t a1, uint64_t a2, float a3)
{
  if (*(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v17[0] = v5;
  v17[1] = v6;
  v7 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v9 = result;
    v18 = v5;
    v19 = v6;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v18 = v5;
    v19 = v6;
    if (!v5)
    {
      return result;
    }
  }

  result = mlir::ElementsAttr::getShapedType(&v18);
  if (result)
  {
    result = mlir::ShapedType::getShape(&v18);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v18 = v7;
      v19 = v9;
      if (v7)
      {
        result = mlir::ElementsAttr::getShapedType(&v18);
        if (result)
        {
          result = mlir::ShapedType::getShape(&v18);
          if (v12)
          {
            v13 = 8 * v12;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v13 -= 8;
              if (!v13)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
LABEL_22:
            Shape = mlir::ShapedType::getShape(v17);
            mlir::ShapedType::getNumElements(Shape, v15);
            isSplat = mlir::ElementsAttr::isSplat(v17);
            return mlir::mps::executionCost(a1, a2, isSplat);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostInstanceNormOp(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a2 + 72) + 24);
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (*(*(*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  v8 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v10 = result;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v31[0] = v8;
  v31[1] = v10;
  isSplat = v6;
  v34 = v7;
  if (v6)
  {
    result = mlir::ElementsAttr::getShapedType(&isSplat);
    if (result)
    {
      result = mlir::ShapedType::getShape(&isSplat);
      if (v11)
      {
        v12 = 8 * v11;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        isSplat = v8;
        v34 = v10;
        if (v8)
        {
          result = mlir::ElementsAttr::getShapedType(&isSplat);
          if (result)
          {
            result = mlir::ShapedType::getShape(&isSplat);
            if (v13)
            {
              v14 = 8 * v13;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v14 -= 8;
                if (!v14)
                {
                  goto LABEL_25;
                }
              }
            }

            else
            {
LABEL_25:
              Shape = mlir::ShapedType::getShape(v31);
              mlir::ShapedType::getNumElements(Shape, v16);
              mlir::mps::getElementBitWidth(v6);
              v17 = mlir::ShapedType::getShape(v32);
              mlir::ShapedType::getNumElements(v17, v18);
              v19 = mlir::ShapedType::getShape(v31);
              mlir::ShapedType::getNumElements(v19, v20);
              mlir::mps::getElementBitWidth(v32[0]);
              v21 = mlir::ShapedType::getShape(v32);
              mlir::ShapedType::getNumElements(v21, v22);
              v23 = mlir::ShapedType::getShape(v31);
              mlir::ShapedType::getNumElements(v23, v24);
              mlir::mps::getElementBitWidth(v32[0]);
              v25 = mlir::ShapedType::getShape(v32);
              mlir::ShapedType::getNumElements(v25, v26);
              mlir::mps::getElementBitWidth(v31[0]);
              v27 = mlir::ShapedType::getShape(v31);
              mlir::ShapedType::getNumElements(v27, v28);
              isSplat = mlir::ElementsAttr::isSplat(v32);
              do
              {
                v29 = *(v2 + 16);
                if (!v29)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v29);
                if (!ParentOp)
                {
                  break;
                }

                v2 = ParentOp;
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void mlir::mps::MPSCostModel::computeCostConv2DOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v30 = a2;
  mlir::mps::PadOp::getPaddingMode(&v30);
  mlir::mps::Conv3DOp::getWeightsLayout(&v30);
  if (*(v30 + 36))
  {
    v4 = v30 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  *&v29 = v5;
  *(&v29 + 1) = v6;
  v7 = (*(*(*(v30 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (v8)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
  }

  *&v28 = v7;
  *(&v28 + 1) = v8;
  v9 = (*(*(*(v30 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  if (v10)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
  }

  *&v27 = v9;
  *(&v27 + 1) = v10;
  *v34 = v28;
  if (v28 && mlir::ElementsAttr::getShapedType(v34))
  {
    Shape = mlir::ShapedType::getShape(v34);
    if (v12)
    {
      v13 = 8 * v12;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      *v34 = v27;
      if (v27 && mlir::ElementsAttr::getShapedType(v34))
      {
        v14 = mlir::ShapedType::getShape(v34);
        if (v15)
        {
          v16 = 8 * v15;
          while (*v14 != 0x8000000000000000)
          {
            ++v14;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
          *v34 = v29;
          if (v29 && mlir::ElementsAttr::getShapedType(v34))
          {
            v17 = mlir::ShapedType::getShape(v34);
            if (v18)
            {
              v19 = 8 * v18;
              while (*v17 != 0x8000000000000000)
              {
                ++v17;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
LABEL_31:
              mlir::ShapedType::getShape(&v28);
              mlir::ShapedType::getShape(&v27);
              mlir::ShapedType::getShape(&v29);
              v34[0] = v35;
              v34[1] = 0x400000000;
              v32[0] = v33;
              v32[1] = 0x400000000;
              Strides = mlir::mps::Conv3DOp::getStrides(&v30);
              if (Strides)
              {
                v22 = Strides;
                v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                Strides = v22;
              }

              else
              {
                v21 = 0;
              }

              mlir::getIntValues<long long>(Strides, v21, v34, 1);
              InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v30);
              if (InputAttributeNames)
              {
                v25 = InputAttributeNames;
                v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                InputAttributeNames = v25;
              }

              else
              {
                v24 = 0;
              }

              mlir::getIntValues<long long>(InputAttributeNames, v24, v32, 1);
              isSplat = mlir::ElementsAttr::isSplat(&v29);
              v31 = mlir::ElementsAttr::isSplat(&v28);
              mlir::Type::getIntOrFloatBitWidth(&v31);
              mlir::mps::executionCost(a3, v30, isSplat);
              if (v32[0] != v33)
              {
                free(v32[0]);
              }

              if (v34[0] != v35)
              {
                free(v34[0]);
              }
            }
          }
        }
      }
    }
  }
}

void mlir::mps::MPSCostModel::computeCostConv2DDataGradientOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v29 = a2;
  mlir::mps::PadOp::getPaddingMode(&v29);
  mlir::mps::Conv3DOp::getWeightsLayout(&v29);
  if (*(v29 + 36))
  {
    v4 = v29 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28[0] = v5;
  v28[1] = v6;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v29, 0);
  v8 = (*(*(*(v29 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v27[0] = v8;
  v27[1] = v9;
  v10 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v29, 1u);
  v11 = (*(*(*(v29 + 72) + 32 * v10 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v26[0] = v11;
  v26[1] = v12;
  v30 = v8;
  v31 = v9;
  if (v8 && mlir::ElementsAttr::getShapedType(&v30))
  {
    Shape = mlir::ShapedType::getShape(&v30);
    if (v14)
    {
      v15 = 8 * v14;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      v30 = v11;
      v31 = v12;
      if (v11 && mlir::ElementsAttr::getShapedType(&v30))
      {
        v16 = mlir::ShapedType::getShape(&v30);
        if (v17)
        {
          v18 = 8 * v17;
          while (*v16 != 0x8000000000000000)
          {
            ++v16;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
          v30 = v5;
          v31 = v6;
          if (v5 && mlir::ElementsAttr::getShapedType(&v30))
          {
            v19 = mlir::ShapedType::getShape(&v30);
            if (v20)
            {
              v21 = 8 * v20;
              while (*v19 != 0x8000000000000000)
              {
                ++v19;
                v21 -= 8;
                if (!v21)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
LABEL_31:
              v30 = v32;
              v31 = 0x400000000;
              Strides = mlir::mps::Conv3DOp::getStrides(&v29);
              if (Strides)
              {
                v24 = Strides;
                v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                Strides = v24;
              }

              else
              {
                v23 = 0;
              }

              mlir::getIntValues<long long>(Strides, v23, &v30, 1);
              mlir::ShapedType::getShape(v27);
              mlir::ShapedType::getShape(v26);
              mlir::ShapedType::getShape(v28);
              isSplat = mlir::ElementsAttr::isSplat(v28);
              mlir::mps::executionCost(a3, v29, isSplat);
              if (v30 != v32)
              {
                free(v30);
              }
            }
          }
        }
      }
    }
  }
}

void mlir::mps::MPSCostModel::computeCostDepthwiseConv3DOp(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v50[0] = v3;
  v50[1] = v4;
  v5 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v49[0] = v5;
  v49[1] = v6;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v48[0] = v8;
  v48[1] = v9;
  v57 = v3;
  v58 = v4;
  if (!v3 || !mlir::ElementsAttr::getShapedType(&v57))
  {
    return;
  }

  Shape = mlir::ShapedType::getShape(&v57);
  if (!v11)
  {
LABEL_19:
    v57 = v5;
    v58 = v6;
    if (!v5 || !mlir::ElementsAttr::getShapedType(&v57))
    {
      return;
    }

    v13 = mlir::ShapedType::getShape(&v57);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      return;
    }

LABEL_25:
    v57 = v8;
    v58 = v9;
    if (!v8 || !mlir::ElementsAttr::getShapedType(&v57))
    {
      return;
    }

    v16 = mlir::ShapedType::getShape(&v57);
    if (v17)
    {
      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_31;
        }
      }

      return;
    }

LABEL_31:
    mlir::ShapedType::getShape(v50);
    v20 = v19;
    v21 = mlir::ShapedType::getShape(v49);
    v23 = v22;
    v24 = mlir::ShapedType::getShape(v48);
    v26 = v25;
    v57 = v59;
    memset(v59, 0, sizeof(v59));
    v60 = 0;
    v58 = 0x500000005;
    ChannelAxis = mlir::mps::DepthwiseConv3DOp::getChannelAxis(&v51);
    PositiveAxis = mlir::getPositiveAxis(ChannelAxis, v26);
    v29 = v57;
    if (v26 > 4)
    {
      v30 = 0;
    }

    else
    {
      *v57 = 1;
      v29[1] = v24[PositiveAxis];
      if (v26 < 1)
      {
LABEL_43:
        v34 = v23 - v20 + PositiveAxis;
        v53 = &v55;
        v55 = 0u;
        v56 = 0u;
        v54 = 0x400000004;
        if (v34 <= 3 && v23 == 4)
        {
          *&v55 = *(v21 + 8 * v34);
          if (v34)
          {
            v35 = -1;
          }

          else
          {
            v35 = 0;
          }

          *(&v55 + 1) = *(v21 + 8 * v35 + 8);
          if (v34 <= 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = -1;
          }

          *&v56 = *(v21 + 8 * v36 + 16);
          if (v34 <= 2)
          {
            v37 = 0;
          }

          else
          {
            v37 = -1;
          }

          v38 = *(v21 + 8 * v37 + 24);
          *(&v56 + 1) = v38;
        }

        isSplat = mlir::ElementsAttr::isSplat(v48);
        mlir::mps::getElementBitWidth(v50[0]);
        v40 = mlir::ShapedType::getShape(v50);
        mlir::ShapedType::getNumElements(v40, v41);
        mlir::mps::getElementBitWidth(v49[0]);
        v42 = mlir::ShapedType::getShape(v49);
        mlir::ShapedType::getNumElements(v42, v43);
        mlir::mps::getElementBitWidth(v48[0]);
        v44 = mlir::ShapedType::getShape(v48);
        mlir::ShapedType::getNumElements(v44, v45);
        ParentOp = v51;
        v52 = isSplat;
        do
        {
          v47 = *(ParentOp + 16);
          if (!v47)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(v47);
          if (!ParentOp)
          {
            break;
          }
        }

        while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
        if (!mlir::Type::isF16(&v52))
        {
          mlir::Type::isF32(&v52);
        }

        if (v53 != &v55)
        {
          free(v53);
        }

        if (v57 != v59)
        {
          free(v57);
        }

        return;
      }

      v30 = 2;
    }

    v31 = 1;
    v32 = PositiveAxis;
    do
    {
      if (v32)
      {
        v29[v30] = *v24;
        if (v30)
        {
          ++v30;
        }

        else
        {
          v30 = 2;
        }
      }

      --v32;
      ++v24;
    }

    while (v26 > v31++);
    goto LABEL_43;
  }

  v12 = 8 * v11;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t mlir::mps::getPooling4DExecutionCost<mlir::mps::PoolAvgOp>(uint64_t a1, mlir::Operation *a2)
{
  v45 = a2;
  v3 = (*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v7 = result;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v43[0] = v5;
  v43[1] = v7;
  v39 = v3;
  v40 = v4;
  if (!v3)
  {
    return result;
  }

  result = mlir::ElementsAttr::getShapedType(&v39);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::getShape(&v39);
  if (!v8)
  {
LABEL_13:
    v39 = v5;
    v40 = v7;
    if (!v5)
    {
      return result;
    }

    result = mlir::ElementsAttr::getShapedType(&v39);
    if (!result)
    {
      return result;
    }

    result = mlir::ShapedType::getShape(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        result += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      return result;
    }

LABEL_19:
    mlir::Operation::getAttrDictionary(a2);
    WindowSizes = mlir::mps::PoolAvgOp::getWindowSizes(&v45);
    v42 = WindowSizes;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v39, WindowSizes, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v42);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, WindowSizes, NumElements);
    if (v41 != v38)
    {
      v14 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v39, &v35);
        if (v36 > 0x40)
        {
          v15 = *v35;
          MEMORY[0x1AC55A040]();
        }

        else if (v36)
        {
          v15 = (v35 << -v36) >> -v36;
        }

        else
        {
          v15 = 0;
        }

        v14 *= v15;
        ++v41;
      }

      while (v41 != v38);
    }

    Shape = mlir::ShapedType::getShape(v43);
    v18 = v17;
    mlir::mps::getElementBitWidth(v3);
    v19 = mlir::ShapedType::getShape(v44);
    mlir::ShapedType::getNumElements(v19, v20);
    mlir::mps::getElementBitWidth(v43[0]);
    v21 = mlir::ShapedType::getShape(v43);
    mlir::ShapedType::getNumElements(v21, v22);
    v23 = v18 != 0;
    if (v18)
    {
      v24 = (v18 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24)
      {
        v25 = v24 + 1;
        v26 = (v24 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v27 = (Shape + 8 * v26);
        v28 = (Shape + 8);
        v29 = 1;
        v30 = v26;
        do
        {
          v23 *= *(v28 - 1);
          v29 *= *v28;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v23 *= v29;
        if (v25 == v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v27 = Shape;
      }

      do
      {
        v31 = *v27++;
        v23 *= v31;
      }

      while (v27 != (Shape + 8 * v18));
    }

LABEL_36:
    isSplat = mlir::ElementsAttr::isSplat(v43);
    ParentOp = v45;
    v39 = isSplat;
    do
    {
      v34 = *(ParentOp + 16);
      if (!v34)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v34);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
    result = mlir::Type::isF16(&v39);
    if (!result)
    {
      return mlir::Type::isF32(&v39);
    }

    return result;
  }

  v9 = 8 * v8;
  while (*result != 0x8000000000000000)
  {
    result += 8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t mlir::mps::getPooling4DExecutionCost<mlir::mps::PoolMaxOp>(uint64_t a1, mlir::Operation *a2)
{
  v45 = a2;
  v3 = (*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v7 = result;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v43[0] = v5;
  v43[1] = v7;
  v39 = v3;
  v40 = v4;
  if (!v3)
  {
    return result;
  }

  result = mlir::ElementsAttr::getShapedType(&v39);
  if (!result)
  {
    return result;
  }

  result = mlir::ShapedType::getShape(&v39);
  if (!v8)
  {
LABEL_13:
    v39 = v5;
    v40 = v7;
    if (!v5)
    {
      return result;
    }

    result = mlir::ElementsAttr::getShapedType(&v39);
    if (!result)
    {
      return result;
    }

    result = mlir::ShapedType::getShape(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        result += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      return result;
    }

LABEL_19:
    mlir::Operation::getAttrDictionary(a2);
    WindowSizes = mlir::mps::PoolMaxOp::getWindowSizes(&v45);
    v42 = WindowSizes;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v39, WindowSizes, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v42);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, WindowSizes, NumElements);
    if (v41 != v38)
    {
      v14 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v39, &v35);
        if (v36 > 0x40)
        {
          v15 = *v35;
          MEMORY[0x1AC55A040]();
        }

        else if (v36)
        {
          v15 = (v35 << -v36) >> -v36;
        }

        else
        {
          v15 = 0;
        }

        v14 *= v15;
        ++v41;
      }

      while (v41 != v38);
    }

    Shape = mlir::ShapedType::getShape(v43);
    v18 = v17;
    mlir::mps::getElementBitWidth(v3);
    v19 = mlir::ShapedType::getShape(v44);
    mlir::ShapedType::getNumElements(v19, v20);
    mlir::mps::getElementBitWidth(v43[0]);
    v21 = mlir::ShapedType::getShape(v43);
    mlir::ShapedType::getNumElements(v21, v22);
    v23 = v18 != 0;
    if (v18)
    {
      v24 = (v18 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24)
      {
        v25 = v24 + 1;
        v26 = (v24 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v27 = (Shape + 8 * v26);
        v28 = (Shape + 8);
        v29 = 1;
        v30 = v26;
        do
        {
          v23 *= *(v28 - 1);
          v29 *= *v28;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v23 *= v29;
        if (v25 == v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v27 = Shape;
      }

      do
      {
        v31 = *v27++;
        v23 *= v31;
      }

      while (v27 != (Shape + 8 * v18));
    }

LABEL_36:
    isSplat = mlir::ElementsAttr::isSplat(v43);
    ParentOp = v45;
    v39 = isSplat;
    do
    {
      v34 = *(ParentOp + 16);
      if (!v34)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v34);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
    result = mlir::Type::isF16(&v39);
    if (!result)
    {
      return mlir::Type::isF32(&v39);
    }

    return result;
  }

  v9 = 8 * v8;
  while (*result != 0x8000000000000000)
  {
    result += 8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostCropResizeOp(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = *(*(a2 + 72) + 24);
  if (*(a2 + 36))
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v26[0] = v5;
  v26[1] = v6;
  v7 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
  }

  v25[0] = v7;
  v25[1] = result;
  isSplat = v7;
  v29 = result;
  if (v7)
  {
    result = mlir::ElementsAttr::getShapedType(&isSplat);
    if (result)
    {
      result = mlir::ShapedType::getShape(&isSplat);
      if (v9)
      {
        v10 = 8 * v9;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        isSplat = v5;
        v29 = v6;
        if (v5)
        {
          result = mlir::ElementsAttr::getShapedType(&isSplat);
          if (result)
          {
            result = mlir::ShapedType::getShape(&isSplat);
            if (v11)
            {
              v12 = 8 * v11;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v12 -= 8;
                if (!v12)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
LABEL_22:
              isSplat = mlir::ElementsAttr::isSplat(v26);
              mlir::Type::getIntOrFloatBitWidth(&isSplat);
              Shape = mlir::ShapedType::getShape(v25);
              mlir::ShapedType::getNumElements(Shape, v14);
              mlir::mps::getElementBitWidth(v25[0]);
              v15 = mlir::ShapedType::getShape(v25);
              mlir::ShapedType::getNumElements(v15, v16);
              InterpolationMode = mlir::mps::CropResizeOp::getInterpolationMode(&v27);
              v18 = mlir::ShapedType::getShape(v25);
              mlir::ShapedType::getNumElements(v18, v19);
              if (InterpolationMode == 1)
              {
                mlir::mps::getElementBitWidth(v26[0]);
                v20 = mlir::ShapedType::getShape(v26);
                mlir::ShapedType::getNumElements(v20, v21);
              }

              v22 = mlir::ElementsAttr::isSplat(v25);
              ParentOp = v27;
              isSplat = v22;
              do
              {
                v24 = *(ParentOp + 16);
                if (!v24)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v24);
                if (!ParentOp)
                {
                  break;
                }
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t **mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0::operator()(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  v4 = llvm::StringMapImpl::hash("mps.acos", 8uLL, a3, a4);
  v5 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.acos", 8uLL, v4);
  v5[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostACosOp;
  v5[2] = 0;
  v8 = llvm::StringMapImpl::hash("mps.acosh", 9uLL, v6, v7);
  v9 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.acosh", 9uLL, v8);
  v9[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostACoshOp;
  v9[2] = 0;
  v12 = llvm::StringMapImpl::hash("mps.asin", 8uLL, v10, v11);
  v13 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.asin", 8uLL, v12);
  v13[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostASinOp;
  v13[2] = 0;
  v16 = llvm::StringMapImpl::hash("mps.asinh", 9uLL, v14, v15);
  v17 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.asinh", 9uLL, v16);
  v17[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostASinhOp;
  v17[2] = 0;
  v20 = llvm::StringMapImpl::hash("mps.atan2", 9uLL, v18, v19);
  v21 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.atan2", 9uLL, v20);
  v21[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATan2Op;
  v21[2] = 0;
  v24 = llvm::StringMapImpl::hash("mps.atan", 8uLL, v22, v23);
  v25 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.atan", 8uLL, v24);
  v25[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATanOp;
  v25[2] = 0;
  v28 = llvm::StringMapImpl::hash("mps.atanh", 9uLL, v26, v27);
  v29 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.atanh", 9uLL, v28);
  v29[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATanhOp;
  v29[2] = 0;
  v32 = llvm::StringMapImpl::hash("mps.absolute", 0xCuLL, v30, v31);
  v33 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.absolute", 0xCuLL, v32);
  v33[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAbsoluteOp;
  v33[2] = 0;
  v36 = llvm::StringMapImpl::hash("mps.absolute_square", 0x13uLL, v34, v35);
  v37 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.absolute_square", 0x13uLL, v36);
  v37[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAbsoluteSquareOp;
  v37[2] = 0;
  v40 = llvm::StringMapImpl::hash("mps.add", 7uLL, v38, v39);
  v41 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.add", 7uLL, v40);
  v41[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAddOp;
  v41[2] = 0;
  v44 = llvm::StringMapImpl::hash("mps.and", 7uLL, v42, v43);
  v45 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.and", 7uLL, v44);
  v45[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAndOp;
  v45[2] = 0;
  v48 = llvm::StringMapImpl::hash("mps.assign_variable", 0x13uLL, v46, v47);
  v49 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.assign_variable", 0x13uLL, v48);
  v49[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAssignVariableOp;
  v49[2] = 0;
  v52 = llvm::StringMapImpl::hash("mps.band_part", 0xDuLL, v50, v51);
  v53 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.band_part", 0xDuLL, v52);
  v53[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBandPartOp;
  v53[2] = 0;
  v56 = llvm::StringMapImpl::hash("mps.batch_to_space", 0x12uLL, v54, v55);
  v57 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.batch_to_space", 0x12uLL, v56);
  v57[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBatchToSpaceOp;
  v57[2] = 0;
  v60 = llvm::StringMapImpl::hash("mps.bias_add_grad", 0x11uLL, v58, v59);
  v61 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bias_add_grad", 0x11uLL, v60);
  v61[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBiasAddGradOp;
  v61[2] = 0;
  v64 = llvm::StringMapImpl::hash("mps.bias_add", 0xCuLL, v62, v63);
  v65 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bias_add", 0xCuLL, v64);
  v65[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBiasAddOp;
  v65[2] = 0;
  v68 = llvm::StringMapImpl::hash("mps.bitwise_and", 0xFuLL, v66, v67);
  v69 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_and", 0xFuLL, v68);
  v69[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseAndOp;
  v69[2] = 0;
  v72 = llvm::StringMapImpl::hash("mps.bitwise_left_shift", 0x16uLL, v70, v71);
  v73 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_left_shift", 0x16uLL, v72);
  v73[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseLeftShiftOp;
  v73[2] = 0;
  v76 = llvm::StringMapImpl::hash("mps.bitwise_not", 0xFuLL, v74, v75);
  v77 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_not", 0xFuLL, v76);
  v77[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseNotOp;
  v77[2] = 0;
  v80 = llvm::StringMapImpl::hash("mps.bitwise_or", 0xEuLL, v78, v79);
  v81 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_or", 0xEuLL, v80);
  v81[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseOrOp;
  v81[2] = 0;
  v84 = llvm::StringMapImpl::hash("mps.bitwise_popcount", 0x14uLL, v82, v83);
  v85 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_popcount", 0x14uLL, v84);
  v85[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwisePopcountOp;
  v85[2] = 0;
  v88 = llvm::StringMapImpl::hash("mps.bitwise_right_shift", 0x17uLL, v86, v87);
  v89 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_right_shift", 0x17uLL, v88);
  v89[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseRightShiftOp;
  v89[2] = 0;
  v92 = llvm::StringMapImpl::hash("mps.bitwise_xor", 0xFuLL, v90, v91);
  v93 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.bitwise_xor", 0xFuLL, v92);
  v93[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseXorOp;
  v93[2] = 0;
  v96 = llvm::StringMapImpl::hash("mps.broadcast_gradient_args", 0x1BuLL, v94, v95);
  v97 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.broadcast_gradient_args", 0x1BuLL, v96);
  v97[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBroadcastGradientArgsOp;
  v97[2] = 0;
  v100 = llvm::StringMapImpl::hash("mps.broadcast_to", 0x10uLL, v98, v99);
  v101 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.broadcast_to", 0x10uLL, v100);
  v101[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBroadcastToOp;
  v101[2] = 0;
  v104 = llvm::StringMapImpl::hash("mps.call", 8uLL, v102, v103);
  v105 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.call", 8uLL, v104);
  v105[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCallOp;
  v105[2] = 0;
  v108 = llvm::StringMapImpl::hash("mps.cast", 8uLL, v106, v107);
  v109 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cast", 8uLL, v108);
  v109[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCastOp;
  v109[2] = 0;
  v112 = llvm::StringMapImpl::hash("mps.ceil", 8uLL, v110, v111);
  v113 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.ceil", 8uLL, v112);
  v113[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCeilOp;
  v113[2] = 0;
  v116 = llvm::StringMapImpl::hash("mps.clamp", 9uLL, v114, v115);
  v117 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.clamp", 9uLL, v116);
  v117[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostClampOp;
  v117[2] = 0;
  v120 = llvm::StringMapImpl::hash("mps.col_to_im", 0xDuLL, v118, v119);
  v121 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.col_to_im", 0xDuLL, v120);
  v121[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostColToImOp;
  v121[2] = 0;
  v124 = llvm::StringMapImpl::hash("mps.concat", 0xAuLL, v122, v123);
  v125 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.concat", 0xAuLL, v124);
  v125[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConcatOp;
  v125[2] = 0;
  v128 = llvm::StringMapImpl::hash("mps.conjugate", 0xDuLL, v126, v127);
  v129 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conjugate", 0xDuLL, v128);
  v129[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConjugateOp;
  v129[2] = 0;
  v132 = llvm::StringMapImpl::hash("mps.constant", 0xCuLL, v130, v131);
  v133 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.constant", 0xCuLL, v132);
  v133[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConstantOp;
  v133[2] = 0;
  v136 = llvm::StringMapImpl::hash("mps.conv_2d_data_gradient", 0x19uLL, v134, v135);
  v137 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_2d_data_gradient", 0x19uLL, v136);
  v137[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DDataGradientOp;
  v137[2] = 0;
  v140 = llvm::StringMapImpl::hash("mps.conv_2d", 0xBuLL, v138, v139);
  v141 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_2d", 0xBuLL, v140);
  v141[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DOp;
  v141[2] = 0;
  v144 = llvm::StringMapImpl::hash("mps.conv_2d_weights_gradient", 0x1CuLL, v142, v143);
  v145 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_2d_weights_gradient", 0x1CuLL, v144);
  v145[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DWeightsGradientOp;
  v145[2] = 0;
  v148 = llvm::StringMapImpl::hash("mps.conv_3d_data_gradient", 0x19uLL, v146, v147);
  v149 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_3d_data_gradient", 0x19uLL, v148);
  v149[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DDataGradientOp;
  v149[2] = 0;
  v152 = llvm::StringMapImpl::hash("mps.conv_3d", 0xBuLL, v150, v151);
  v153 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_3d", 0xBuLL, v152);
  v153[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DOp;
  v153[2] = 0;
  v156 = llvm::StringMapImpl::hash("mps.conv_3d_weights_gradient", 0x1CuLL, v154, v155);
  v157 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.conv_3d_weights_gradient", 0x1CuLL, v156);
  v157[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DWeightsGradientOp;
  v157[2] = 0;
  v160 = llvm::StringMapImpl::hash("mps.cos", 7uLL, v158, v159);
  v161 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cos", 7uLL, v160);
  v161[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCosOp;
  v161[2] = 0;
  v164 = llvm::StringMapImpl::hash("mps.cosh", 8uLL, v162, v163);
  v165 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cosh", 8uLL, v164);
  v165[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCoshOp;
  v165[2] = 0;
  v168 = llvm::StringMapImpl::hash("mps.cost_volume", 0xFuLL, v166, v167);
  v169 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cost_volume", 0xFuLL, v168);
  v169[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCostVolumeOp;
  v169[2] = 0;
  v172 = llvm::StringMapImpl::hash("mps.create_complex", 0x12uLL, v170, v171);
  v173 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.create_complex", 0x12uLL, v172);
  v173[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCreateComplexOp;
  v173[2] = 0;
  v176 = llvm::StringMapImpl::hash("mps.create_texture_tensor", 0x19uLL, v174, v175);
  v177 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.create_texture_tensor", 0x19uLL, v176);
  v177[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCreateTextureTensorOp;
  v177[2] = 0;
  v180 = llvm::StringMapImpl::hash("mps.crop", 8uLL, v178, v179);
  v181 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.crop", 8uLL, v180);
  v181[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCropOp;
  v181[2] = 0;
  v184 = llvm::StringMapImpl::hash("mps.crop_resize", 0xFuLL, v182, v183);
  v185 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.crop_resize", 0xFuLL, v184);
  v185[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCropResizeOp;
  v185[2] = 0;
  v188 = llvm::StringMapImpl::hash("mps.cumulative_maximum", 0x16uLL, v186, v187);
  v189 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cumulative_maximum", 0x16uLL, v188);
  v189[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeMaximumOp;
  v189[2] = 0;
  v192 = llvm::StringMapImpl::hash("mps.cumulative_minimum", 0x16uLL, v190, v191);
  v193 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cumulative_minimum", 0x16uLL, v192);
  v193[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeMinimumOp;
  v193[2] = 0;
  v196 = llvm::StringMapImpl::hash("mps.cumulative_product", 0x16uLL, v194, v195);
  v197 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cumulative_product", 0x16uLL, v196);
  v197[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeProductOp;
  v197[2] = 0;
  v200 = llvm::StringMapImpl::hash("mps.cumulative_sum", 0x12uLL, v198, v199);
  v201 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.cumulative_sum", 0x12uLL, v200);
  v201[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeSumOp;
  v201[2] = 0;
  v204 = llvm::StringMapImpl::hash("mps.degamma", 0xBuLL, v202, v203);
  v205 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.degamma", 0xBuLL, v204);
  v205[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDegammaOp;
  v205[2] = 0;
  v208 = llvm::StringMapImpl::hash("mps.depth_to_space_2d", 0x15uLL, v206, v207);
  v209 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depth_to_space_2d", 0x15uLL, v208);
  v209[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthToSpace2DOp;
  v209[2] = 0;
  v212 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d_data_gradient", 0x23uLL, v210, v211);
  v213 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_2d_data_gradient", 0x23uLL, v212);
  v213[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DDataGradientOp;
  v213[2] = 0;
  v216 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d", 0x15uLL, v214, v215);
  v217 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_2d", 0x15uLL, v216);
  v217[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DOp;
  v217[2] = 0;
  v220 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d_weights_gradient", 0x26uLL, v218, v219);
  v221 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_2d_weights_gradient", 0x26uLL, v220);
  v221[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DWeightsGradientOp;
  v221[2] = 0;
  v224 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d_data_gradient", 0x23uLL, v222, v223);
  v225 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_3d_data_gradient", 0x23uLL, v224);
  v225[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DDataGradientOp;
  v225[2] = 0;
  v228 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d", 0x15uLL, v226, v227);
  v229 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_3d", 0x15uLL, v228);
  v229[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DOp;
  v229[2] = 0;
  v232 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d_weights_gradient", 0x26uLL, v230, v231);
  v233 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.depthwise_conv_3d_weights_gradient", 0x26uLL, v232);
  v233[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DWeightsGradientOp;
  v233[2] = 0;
  v236 = llvm::StringMapImpl::hash("mps.dequantize_lut", 0x12uLL, v234, v235);
  v237 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.dequantize_lut", 0x12uLL, v236);
  v237[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDequantizeLUTOp;
  v237[2] = 0;
  v240 = llvm::StringMapImpl::hash("mps.dequantize", 0xEuLL, v238, v239);
  v241 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.dequantize", 0xEuLL, v240);
  v241[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDequantizeOp;
  v241[2] = 0;
  v244 = llvm::StringMapImpl::hash("mps.dimension_size", 0x12uLL, v242, v243);
  v245 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.dimension_size", 0x12uLL, v244);
  v245[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDimensionSizeOp;
  v245[2] = 0;
  v248 = llvm::StringMapImpl::hash("mps.dirac", 9uLL, v246, v247);
  v249 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.dirac", 9uLL, v248);
  v249[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDiracOp;
  v249[2] = 0;
  v252 = llvm::StringMapImpl::hash("mps.divide", 0xAuLL, v250, v251);
  v253 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.divide", 0xAuLL, v252);
  v253[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDivideOp;
  v253[2] = 0;
  v256 = llvm::StringMapImpl::hash("mps.dynamic_shape_cast", 0x16uLL, v254, v255);
  v257 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.dynamic_shape_cast", 0x16uLL, v256);
  v257[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDynamicShapeCastOp;
  v257[2] = 0;
  v260 = llvm::StringMapImpl::hash("mps.elu", 7uLL, v258, v259);
  v261 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.elu", 7uLL, v260);
  v261[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostEluOp;
  v261[2] = 0;
  v264 = llvm::StringMapImpl::hash("mps.equal", 9uLL, v262, v263);
  v265 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.equal", 9uLL, v264);
  v265[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostEqualToOp;
  v265[2] = 0;
  v268 = llvm::StringMapImpl::hash("mps.erf", 7uLL, v266, v267);
  v269 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.erf", 7uLL, v268);
  v269[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostErfOp;
  v269[2] = 0;
  v272 = llvm::StringMapImpl::hash("mps.expand_dims", 0xFuLL, v270, v271);
  v273 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.expand_dims", 0xFuLL, v272);
  v273[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExpandDimsOp;
  v273[2] = 0;
  v276 = llvm::StringMapImpl::hash("mps.exponent_base_10", 0x14uLL, v274, v275);
  v277 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.exponent_base_10", 0x14uLL, v276);
  v277[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentBase10Op;
  v277[2] = 0;
  v280 = llvm::StringMapImpl::hash("mps.exponent_base_2", 0x13uLL, v278, v279);
  v281 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.exponent_base_2", 0x13uLL, v280);
  v281[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentBase2Op;
  v281[2] = 0;
  v284 = llvm::StringMapImpl::hash("mps.exponent", 0xCuLL, v282, v283);
  v285 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.exponent", 0xCuLL, v284);
  v285[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentOp;
  v285[2] = 0;
  v288 = llvm::StringMapImpl::hash("mps.fast_fourier_transform", 0x1AuLL, v286, v287);
  v289 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.fast_fourier_transform", 0x1AuLL, v288);
  v289[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFastFourierTransformOp;
  v289[2] = 0;
  v292 = llvm::StringMapImpl::hash("mps.flatten_2d", 0xEuLL, v290, v291);
  v293 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.flatten_2d", 0xEuLL, v292);
  v293[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFlatten2DOp;
  v293[2] = 0;
  v296 = llvm::StringMapImpl::hash("mps.floor_divide", 0x10uLL, v294, v295);
  v297 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.floor_divide", 0x10uLL, v296);
  v297[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFloorDivideOp;
  v297[2] = 0;
  v300 = llvm::StringMapImpl::hash("mps.floor", 9uLL, v298, v299);
  v301 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.floor", 9uLL, v300);
  v301[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFloorOp;
  v301[2] = 0;
  v304 = llvm::StringMapImpl::hash("mps.gru_gradient", 0x10uLL, v302, v303);
  v305 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gru_gradient", 0x10uLL, v304);
  v305[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGRUGradientOp;
  v305[2] = 0;
  v308 = llvm::StringMapImpl::hash("mps.gru", 7uLL, v306, v307);
  v309 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gru", 7uLL, v308);
  v309[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGRUOp;
  v309[2] = 0;
  v312 = llvm::StringMapImpl::hash("mps.gather_along_axis", 0x15uLL, v310, v311);
  v313 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gather_along_axis", 0x15uLL, v312);
  v313[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherAlongAxisOp;
  v313[2] = 0;
  v316 = llvm::StringMapImpl::hash("mps.gather_nd", 0xDuLL, v314, v315);
  v317 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gather_nd", 0xDuLL, v316);
  v317[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherNDOp;
  v317[2] = 0;
  v320 = llvm::StringMapImpl::hash("mps.gather", 0xAuLL, v318, v319);
  v321 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gather", 0xAuLL, v320);
  v321[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherOp;
  v321[2] = 0;
  v324 = llvm::StringMapImpl::hash("mps.gelu", 8uLL, v322, v323);
  v325 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.gelu", 8uLL, v324);
  v325[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGeluOp;
  v325[2] = 0;
  v328 = llvm::StringMapImpl::hash("mps.get_coordinates", 0x13uLL, v326, v327);
  v329 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.get_coordinates", 0x13uLL, v328);
  v329[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGetCoordOp;
  v329[2] = 0;
  v332 = llvm::StringMapImpl::hash("mps.greater", 0xBuLL, v330, v331);
  v333 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.greater", 0xBuLL, v332);
  v333[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGreaterThanOp;
  v333[2] = 0;
  v336 = llvm::StringMapImpl::hash("mps.greater_equal", 0x11uLL, v334, v335);
  v337 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.greater_equal", 0x11uLL, v336);
  v337[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGreaterThanOrEqualToOp;
  v337[2] = 0;
  v340 = llvm::StringMapImpl::hash("mps.hamming_distance", 0x14uLL, v338, v339);
  v341 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.hamming_distance", 0x14uLL, v340);
  v341[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostHammingDistanceOp;
  v341[2] = 0;
  v344 = llvm::StringMapImpl::hash("mps.hermitean_to_real_fft", 0x19uLL, v342, v343);
  v345 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.hermitean_to_real_fft", 0x19uLL, v344);
  v345[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostHermiteanToRealFFTOp;
  v345[2] = 0;
  v348 = llvm::StringMapImpl::hash("mps.identity", 0xCuLL, v346, v347);
  v349 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.identity", 0xCuLL, v348);
  v349[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIdentityOp;
  v349[2] = 0;
  v352 = llvm::StringMapImpl::hash("mps.im_to_col", 0xDuLL, v350, v351);
  v353 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.im_to_col", 0xDuLL, v352);
  v353[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostImToColOp;
  v353[2] = 0;
  v356 = llvm::StringMapImpl::hash("mps.imaginary_part", 0x12uLL, v354, v355);
  v357 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.imaginary_part", 0x12uLL, v356);
  v357[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostImaginaryPartOp;
  v357[2] = 0;
  v360 = llvm::StringMapImpl::hash("mps.init_random_philox_state", 0x1CuLL, v358, v359);
  v361 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.init_random_philox_state", 0x1CuLL, v360);
  v361[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostInitRandomPhiloxStateOp;
  v361[2] = 0;
  v364 = llvm::StringMapImpl::hash("mps.instance_norm", 0x11uLL, v362, v363);
  v365 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.instance_norm", 0x11uLL, v364);
  v365[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostInstanceNormOp;
  v365[2] = 0;
  v368 = llvm::StringMapImpl::hash("mps.is_finite", 0xDuLL, v366, v367);
  v369 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.is_finite", 0xDuLL, v368);
  v369[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsFiniteOp;
  v369[2] = 0;
  v372 = llvm::StringMapImpl::hash("mps.is_infinite", 0xFuLL, v370, v371);
  v373 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.is_infinite", 0xFuLL, v372);
  v373[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsInfiniteOp;
  v373[2] = 0;
  v376 = llvm::StringMapImpl::hash("mps.is_nan", 0xAuLL, v374, v375);
  v377 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.is_nan", 0xAuLL, v376);
  v377[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsNaNOp;
  v377[2] = 0;
  v380 = llvm::StringMapImpl::hash("mps.lp_norm", 0xBuLL, v378, v379);
  v381 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.lp_norm", 0xBuLL, v380);
  v381[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLPNormOp;
  v381[2] = 0;
  v384 = llvm::StringMapImpl::hash("mps.lstm_gradient", 0x11uLL, v382, v383);
  v385 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.lstm_gradient", 0x11uLL, v384);
  v385[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLSTMGradientOp;
  v385[2] = 0;
  v388 = llvm::StringMapImpl::hash("mps.lstm", 8uLL, v386, v387);
  v389 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.lstm", 8uLL, v388);
  v389[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLSTMOp;
  v389[2] = 0;
  v392 = llvm::StringMapImpl::hash("mps.leaky_relu", 0xEuLL, v390, v391);
  v393 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.leaky_relu", 0xEuLL, v392);
  v393[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLeakyReluOp;
  v393[2] = 0;
  v396 = llvm::StringMapImpl::hash("mps.less", 8uLL, v394, v395);
  v397 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.less", 8uLL, v396);
  v397[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLessThanOp;
  v397[2] = 0;
  v400 = llvm::StringMapImpl::hash("mps.less_equal", 0xEuLL, v398, v399);
  v401 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.less_equal", 0xEuLL, v400);
  v401[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLessThanOrEqualToOp;
  v401[2] = 0;
  v404 = llvm::StringMapImpl::hash("mps.local_convolution_data_gradient", 0x23uLL, v402, v403);
  v405 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.local_convolution_data_gradient", 0x23uLL, v404);
  v405[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionDataGradientOp;
  v405[2] = 0;
  v408 = llvm::StringMapImpl::hash("mps.local_convolution", 0x15uLL, v406, v407);
  v409 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.local_convolution", 0x15uLL, v408);
  v409[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionOp;
  v409[2] = 0;
  v412 = llvm::StringMapImpl::hash("mps.local_convolution_weight_gradient", 0x25uLL, v410, v411);
  v413 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.local_convolution_weight_gradient", 0x25uLL, v412);
  v413[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionWeightGradientOp;
  v413[2] = 0;
  v416 = llvm::StringMapImpl::hash("mps.logarithm_base_10", 0x15uLL, v414, v415);
  v417 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.logarithm_base_10", 0x15uLL, v416);
  v417[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmBase10Op;
  v417[2] = 0;
  v420 = llvm::StringMapImpl::hash("mps.logarithm_base_2", 0x14uLL, v418, v419);
  v421 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.logarithm_base_2", 0x14uLL, v420);
  v421[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmBase2Op;
  v421[2] = 0;
  v424 = llvm::StringMapImpl::hash("mps.logarithm", 0xDuLL, v422, v423);
  v425 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.logarithm", 0xDuLL, v424);
  v425[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmOp;
  v425[2] = 0;
  v428 = llvm::StringMapImpl::hash("mps.matmul", 0xAuLL, v426, v427);
  v429 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.matmul", 0xAuLL, v428);
  v429[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatMulOp;
  v429[2] = 0;
  v432 = llvm::StringMapImpl::hash("mps.materialize_sparse_tensor", 0x1DuLL, v430, v431);
  v433 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.materialize_sparse_tensor", 0x1DuLL, v432);
  v433[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMaterializeSparseTensorOp;
  v433[2] = 0;
  v436 = llvm::StringMapImpl::hash("mps.matrix_decomposition_lu", 0x1BuLL, v434, v435);
  v437 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.matrix_decomposition_lu", 0x1BuLL, v436);
  v437[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixDecompositionLUOp;
  v437[2] = 0;
  v440 = llvm::StringMapImpl::hash("mps.matrix_inverse", 0x12uLL, v438, v439);
  v441 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.matrix_inverse", 0x12uLL, v440);
  v441[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixInverseOp;
  v441[2] = 0;
  v444 = llvm::StringMapImpl::hash("mps.matrix_solver_lu", 0x14uLL, v442, v443);
  v445 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.matrix_solver_lu", 0x14uLL, v444);
  v445[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixSolverLUOp;
  v445[2] = 0;
  v448 = llvm::StringMapImpl::hash("mps.maximum", 0xBuLL, v446, v447);
  v449 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.maximum", 0xBuLL, v448);
  v449[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMaximumOp;
  v449[2] = 0;
  v452 = llvm::StringMapImpl::hash("mps.minimum", 0xBuLL, v450, v451);
  v453 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.minimum", 0xBuLL, v452);
  v453[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMinimumOp;
  v453[2] = 0;
  v456 = llvm::StringMapImpl::hash("mps.modulo", 0xAuLL, v454, v455);
  v457 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.modulo", 0xAuLL, v456);
  v457[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostModuloOp;
  v457[2] = 0;
  v460 = llvm::StringMapImpl::hash("mps.multiply", 0xCuLL, v458, v459);
  v461 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.multiply", 0xCuLL, v460);
  v461[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMultiplyOp;
  v461[2] = 0;
  v464 = llvm::StringMapImpl::hash("mps.n_relu", 0xAuLL, v462, v463);
  v465 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.n_relu", 0xAuLL, v464);
  v465[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNReluOp;
  v465[2] = 0;
  v468 = llvm::StringMapImpl::hash("mps.nand", 8uLL, v466, v467);
  v469 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.nand", 8uLL, v468);
  v469[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNandOp;
  v469[2] = 0;
  v472 = llvm::StringMapImpl::hash("mps.negative", 0xCuLL, v470, v471);
  v473 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.negative", 0xCuLL, v472);
  v473[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNegativeOp;
  v473[2] = 0;
  v476 = llvm::StringMapImpl::hash("mps.non_maximum_suppression", 0x1BuLL, v474, v475);
  v477 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.non_maximum_suppression", 0x1BuLL, v476);
  v477[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNonMaximumSuppressionOp;
  v477[2] = 0;
  v480 = llvm::StringMapImpl::hash("mps.non_zero", 0xCuLL, v478, v479);
  v481 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.non_zero", 0xCuLL, v480);
  v481[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNonZeroOp;
  v481[2] = 0;
  v484 = llvm::StringMapImpl::hash("mps.nor", 7uLL, v482, v483);
  v485 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.nor", 7uLL, v484);
  v485[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNorOp;
  v485[2] = 0;
  v488 = llvm::StringMapImpl::hash("mps.normalization", 0x11uLL, v486, v487);
  v489 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.normalization", 0x11uLL, v488);
  v489[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNormalizationOp;
  v489[2] = 0;
  v492 = llvm::StringMapImpl::hash("mps.not_equal", 0xDuLL, v490, v491);
  v493 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.not_equal", 0xDuLL, v492);
  v493[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNotEqualToOp;
  v493[2] = 0;
  v496 = llvm::StringMapImpl::hash("mps.not", 7uLL, v494, v495);
  v497 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.not", 7uLL, v496);
  v497[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNotOp;
  v497[2] = 0;
  v500 = llvm::StringMapImpl::hash("mps.one_hot", 0xBuLL, v498, v499);
  v501 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.one_hot", 0xBuLL, v500);
  v501[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostOneHotOp;
  v501[2] = 0;
  v504 = llvm::StringMapImpl::hash("mps.or", 6uLL, v502, v503);
  v505 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.or", 6uLL, v504);
  v505[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostOrOp;
  v505[2] = 0;
  v508 = llvm::StringMapImpl::hash("mps.prelu", 9uLL, v506, v507);
  v509 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.prelu", 9uLL, v508);
  v509[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPReluOp;
  v509[2] = 0;
  v512 = llvm::StringMapImpl::hash("mps.pad_gradient", 0x10uLL, v510, v511);
  v513 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pad_gradient", 0x10uLL, v512);
  v513[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPadGradientOp;
  v513[2] = 0;
  v516 = llvm::StringMapImpl::hash("mps.pad", 7uLL, v514, v515);
  v517 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pad", 7uLL, v516);
  v517[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPadOp;
  v517[2] = 0;
  v520 = llvm::StringMapImpl::hash("mps.permute", 0xBuLL, v518, v519);
  v521 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.permute", 0xBuLL, v520);
  v521[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPermuteOp;
  v521[2] = 0;
  v524 = llvm::StringMapImpl::hash("mps.placeholder", 0xFuLL, v522, v523);
  v525 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.placeholder", 0xFuLL, v524);
  v525[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPlaceholderOp;
  v525[2] = 0;
  v528 = llvm::StringMapImpl::hash("mps.pooling_average_gradient", 0x1CuLL, v526, v527);
  v529 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_average_gradient", 0x1CuLL, v528);
  v529[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolAvgGradientOp;
  v529[2] = 0;
  v532 = llvm::StringMapImpl::hash("mps.pooling_average", 0x13uLL, v530, v531);
  v533 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_average", 0x13uLL, v532);
  v533[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolAvgOp;
  v533[2] = 0;
  v536 = llvm::StringMapImpl::hash("mps.pooling_l2_norm_gradient", 0x1CuLL, v534, v535);
  v537 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_l2_norm_gradient", 0x1CuLL, v536);
  v537[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolL2NormGradientOp;
  v537[2] = 0;
  v540 = llvm::StringMapImpl::hash("mps.pooling_l2_norm", 0x13uLL, v538, v539);
  v541 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_l2_norm", 0x13uLL, v540);
  v541[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolL2NormOp;
  v541[2] = 0;
  v544 = llvm::StringMapImpl::hash("mps.pooling_max_gradient", 0x18uLL, v542, v543);
  v545 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_max_gradient", 0x18uLL, v544);
  v545[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolMaxGradientOp;
  v545[2] = 0;
  v548 = llvm::StringMapImpl::hash("mps.pooling_max", 0xFuLL, v546, v547);
  v549 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.pooling_max", 0xFuLL, v548);
  v549[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolMaxOp;
  v549[2] = 0;
  v552 = llvm::StringMapImpl::hash("mps.power", 9uLL, v550, v551);
  v553 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.power", 9uLL, v552);
  v553[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPowerOp;
  v553[2] = 0;
  v556 = llvm::StringMapImpl::hash("mps.prune_gradient", 0x12uLL, v554, v555);
  v557 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.prune_gradient", 0x12uLL, v556);
  v557[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPruningGradientOp;
  v557[2] = 0;
  v560 = llvm::StringMapImpl::hash("mps.prune", 9uLL, v558, v559);
  v561 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.prune", 9uLL, v560);
  v561[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPruningOp;
  v561[2] = 0;
  v564 = llvm::StringMapImpl::hash("mps.quantize", 0xCuLL, v562, v563);
  v565 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.quantize", 0xCuLL, v564);
  v565[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostQuantizeOp;
  v565[2] = 0;
  v568 = llvm::StringMapImpl::hash("mps.random_normal", 0x11uLL, v566, v567);
  v569 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.random_normal", 0x11uLL, v568);
  v569[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomNormalOp;
  v569[2] = 0;
  v572 = llvm::StringMapImpl::hash("mps.random_truncated_normal", 0x1BuLL, v570, v571);
  v573 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.random_truncated_normal", 0x1BuLL, v572);
  v573[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomTruncatedNormalOp;
  v573[2] = 0;
  v576 = llvm::StringMapImpl::hash("mps.random_uniform", 0x12uLL, v574, v575);
  v577 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.random_uniform", 0x12uLL, v576);
  v577[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomUniformOp;
  v577[2] = 0;
  v580 = llvm::StringMapImpl::hash("mps.rank", 8uLL, v578, v579);
  v581 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.rank", 8uLL, v580);
  v581[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRankOp;
  v581[2] = 0;
  v584 = llvm::StringMapImpl::hash("mps.read_data_from_file", 0x17uLL, v582, v583);
  v585 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.read_data_from_file", 0x17uLL, v584);
  v585[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReadDataFromFileOp;
  v585[2] = 0;
  v588 = llvm::StringMapImpl::hash("mps.read_variable", 0x11uLL, v586, v587);
  v589 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.read_variable", 0x11uLL, v588);
  v589[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReadVariableOp;
  v589[2] = 0;
  v592 = llvm::StringMapImpl::hash("mps.real_part", 0xDuLL, v590, v591);
  v593 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.real_part", 0xDuLL, v592);
  v593[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRealPartOp;
  v593[2] = 0;
  v596 = llvm::StringMapImpl::hash("mps.real_to_hermitean_fft", 0x19uLL, v594, v595);
  v597 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.real_to_hermitean_fft", 0x19uLL, v596);
  v597[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRealToHermiteanFFTOp;
  v597[2] = 0;
  v600 = llvm::StringMapImpl::hash("mps.reciprocal", 0xEuLL, v598, v599);
  v601 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reciprocal", 0xEuLL, v600);
  v601[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReciprocalOp;
  v601[2] = 0;
  v604 = llvm::StringMapImpl::hash("mps.reciprocal_square_root", 0x1AuLL, v602, v603);
  v605 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reciprocal_square_root", 0x1AuLL, v604);
  v605[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReciprocalSquareRootOp;
  v605[2] = 0;
  v608 = llvm::StringMapImpl::hash("mps.reduction_and", 0x11uLL, v606, v607);
  v609 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_and", 0x11uLL, v608);
  v609[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionAndOp;
  v609[2] = 0;
  v612 = llvm::StringMapImpl::hash("mps.reduction_argmax", 0x14uLL, v610, v611);
  v613 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_argmax", 0x14uLL, v612);
  v613[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionArgMaxOp;
  v613[2] = 0;
  v616 = llvm::StringMapImpl::hash("mps.reduction_argmin", 0x14uLL, v614, v615);
  v617 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_argmin", 0x14uLL, v616);
  v617[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionArgMinOp;
  v617[2] = 0;
  v620 = llvm::StringMapImpl::hash("mps.reduction_logsumexp", 0x17uLL, v618, v619);
  v621 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_logsumexp", 0x17uLL, v620);
  v621[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionLogSumExpOp;
  v621[2] = 0;
  v624 = llvm::StringMapImpl::hash("mps.reduction_max", 0x11uLL, v622, v623);
  v625 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_max", 0x11uLL, v624);
  v625[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMaxOp;
  v625[2] = 0;
  v628 = llvm::StringMapImpl::hash("mps.reduction_mean", 0x12uLL, v626, v627);
  v629 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_mean", 0x12uLL, v628);
  v629[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMeanOp;
  v629[2] = 0;
  v632 = llvm::StringMapImpl::hash("mps.reduction_min", 0x11uLL, v630, v631);
  v633 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_min", 0x11uLL, v632);
  v633[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMinOp;
  v633[2] = 0;
  v636 = llvm::StringMapImpl::hash("mps.reduction_or", 0x10uLL, v634, v635);
  v637 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_or", 0x10uLL, v636);
  v637[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionOrOp;
  v637[2] = 0;
  v640 = llvm::StringMapImpl::hash("mps.reduction_prod", 0x12uLL, v638, v639);
  v641 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_prod", 0x12uLL, v640);
  v641[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionProdOp;
  v641[2] = 0;
  v644 = llvm::StringMapImpl::hash("mps.reduction_sum", 0x11uLL, v642, v643);
  v645 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_sum", 0x11uLL, v644);
  v645[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionSumOp;
  v645[2] = 0;
  v648 = llvm::StringMapImpl::hash("mps.reduction_variance", 0x16uLL, v646, v647);
  v649 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reduction_variance", 0x16uLL, v648);
  v649[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionVarianceOp;
  v649[2] = 0;
  v652 = llvm::StringMapImpl::hash("mps.reinterpret_cast", 0x14uLL, v650, v651);
  v653 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reinterpret_cast", 0x14uLL, v652);
  v653[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReinterpretCastOp;
  v653[2] = 0;
  v656 = llvm::StringMapImpl::hash("mps.relu6", 9uLL, v654, v655);
  v657 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.relu6", 9uLL, v656);
  v657[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRelu6Op;
  v657[2] = 0;
  v660 = llvm::StringMapImpl::hash("mps.relu_grad", 0xDuLL, v658, v659);
  v661 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.relu_grad", 0xDuLL, v660);
  v661[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReluGradOp;
  v661[2] = 0;
  v664 = llvm::StringMapImpl::hash("mps.relu", 8uLL, v662, v663);
  v665 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.relu", 8uLL, v664);
  v665[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReluOp;
  v665[2] = 0;
  v668 = llvm::StringMapImpl::hash("mps.reshape", 0xBuLL, v666, v667);
  v669 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reshape", 0xBuLL, v668);
  v669[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReshapeOp;
  v669[2] = 0;
  v672 = llvm::StringMapImpl::hash("mps.resize_gradient", 0x13uLL, v670, v671);
  v673 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.resize_gradient", 0x13uLL, v672);
  v673[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostResizeGradientOp;
  v673[2] = 0;
  v676 = llvm::StringMapImpl::hash("mps.resize", 0xAuLL, v674, v675);
  v677 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.resize", 0xAuLL, v676);
  v677[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostResizeOp;
  v677[2] = 0;
  v680 = llvm::StringMapImpl::hash("mps.reverse", 0xBuLL, v678, v679);
  v681 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.reverse", 0xBuLL, v680);
  v681[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReverseOp;
  v681[2] = 0;
  v684 = llvm::StringMapImpl::hash("mps.rint", 8uLL, v682, v683);
  v685 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.rint", 8uLL, v684);
  v685[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRintOp;
  v685[2] = 0;
  v688 = llvm::StringMapImpl::hash("mps.round", 9uLL, v686, v687);
  v689 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.round", 9uLL, v688);
  v689[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRoundOp;
  v689[2] = 0;
  v692 = llvm::StringMapImpl::hash("mps.sample_grid_data_gradient", 0x1DuLL, v690, v691);
  v693 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sample_grid_data_gradient", 0x1DuLL, v692);
  v693[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSampleGridDataGradientOp;
  v693[2] = 0;
  v696 = llvm::StringMapImpl::hash("mps.sample_grid", 0xFuLL, v694, v695);
  v697 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sample_grid", 0xFuLL, v696);
  v697[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSampleGridOp;
  v697[2] = 0;
  v700 = llvm::StringMapImpl::hash("mps.scatter_along_axis", 0x16uLL, v698, v699);
  v701 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.scatter_along_axis", 0x16uLL, v700);
  v701[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterAlongAxisOp;
  v701[2] = 0;
  v704 = llvm::StringMapImpl::hash("mps.scatter_nd", 0xEuLL, v702, v703);
  v705 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.scatter_nd", 0xEuLL, v704);
  v705[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterNDOp;
  v705[2] = 0;
  v708 = llvm::StringMapImpl::hash("mps.scatter", 0xBuLL, v706, v707);
  v709 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.scatter", 0xBuLL, v708);
  v709[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterOp;
  v709[2] = 0;
  v712 = llvm::StringMapImpl::hash("mps.select", 0xAuLL, v710, v711);
  v713 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.select", 0xAuLL, v712);
  v713[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSelectOp;
  v713[2] = 0;
  v716 = llvm::StringMapImpl::hash("mps.shape", 9uLL, v714, v715);
  v717 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.shape", 9uLL, v716);
  v717[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostShapeOp;
  v717[2] = 0;
  v720 = llvm::StringMapImpl::hash("mps.sigmoid_gradient", 0x14uLL, v718, v719);
  v721 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sigmoid_gradient", 0x14uLL, v720);
  v721[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidGradientOp;
  v721[2] = 0;
  v724 = llvm::StringMapImpl::hash("mps.sigmoid_gradient_with_sigmoid", 0x21uLL, v722, v723);
  v725 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sigmoid_gradient_with_sigmoid", 0x21uLL, v724);
  v725[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidGradientWithSigmoidOp;
  v725[2] = 0;
  v728 = llvm::StringMapImpl::hash("mps.sigmoid_hard", 0x10uLL, v726, v727);
  v729 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sigmoid_hard", 0x10uLL, v728);
  v729[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidHardOp;
  v729[2] = 0;
  v732 = llvm::StringMapImpl::hash("mps.sigmoid", 0xBuLL, v730, v731);
  v733 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sigmoid", 0xBuLL, v732);
  v733[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidOp;
  v733[2] = 0;
  v736 = llvm::StringMapImpl::hash("mps.sign", 8uLL, v734, v735);
  v737 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sign", 8uLL, v736);
  v737[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSignOp;
  v737[2] = 0;
  v740 = llvm::StringMapImpl::hash("mps.signbit", 0xBuLL, v738, v739);
  v741 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.signbit", 0xBuLL, v740);
  v741[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSignbitOp;
  v741[2] = 0;
  v744 = llvm::StringMapImpl::hash("mps.sin", 7uLL, v742, v743);
  v745 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sin", 7uLL, v744);
  v745[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSinOp;
  v745[2] = 0;
  v748 = llvm::StringMapImpl::hash("mps.singlegate_rnn_gradient", 0x1BuLL, v746, v747);
  v749 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.singlegate_rnn_gradient", 0x1BuLL, v748);
  v749[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSingleGateRNNGradientOp;
  v749[2] = 0;
  v752 = llvm::StringMapImpl::hash("mps.singlegate_rnn", 0x12uLL, v750, v751);
  v753 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.singlegate_rnn", 0x12uLL, v752);
  v753[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSingleGateRNNOp;
  v753[2] = 0;
  v756 = llvm::StringMapImpl::hash("mps.sinh", 8uLL, v754, v755);
  v757 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sinh", 8uLL, v756);
  v757[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSinhOp;
  v757[2] = 0;
  v760 = llvm::StringMapImpl::hash("mps.size", 8uLL, v758, v759);
  v761 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.size", 8uLL, v760);
  v761[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSizeOp;
  v761[2] = 0;
  v764 = llvm::StringMapImpl::hash("mps.slice", 9uLL, v762, v763);
  v765 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.slice", 9uLL, v764);
  v765[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSliceOp;
  v765[2] = 0;
  v768 = llvm::StringMapImpl::hash("mps.softmax", 0xBuLL, v766, v767);
  v769 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.softmax", 0xBuLL, v768);
  v769[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftmaxOp;
  v769[2] = 0;
  v772 = llvm::StringMapImpl::hash("mps.softplus", 0xCuLL, v770, v771);
  v773 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.softplus", 0xCuLL, v772);
  v773[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftplusOp;
  v773[2] = 0;
  v776 = llvm::StringMapImpl::hash("mps.softplus_parametric", 0x17uLL, v774, v775);
  v777 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.softplus_parametric", 0x17uLL, v776);
  v777[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftplusParametricOp;
  v777[2] = 0;
  v780 = llvm::StringMapImpl::hash("mps.softsign", 0xCuLL, v778, v779);
  v781 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.softsign", 0xCuLL, v780);
  v781[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftsignOp;
  v781[2] = 0;
  v784 = llvm::StringMapImpl::hash("mps.sort", 8uLL, v782, v783);
  v785 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.sort", 8uLL, v784);
  v785[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSortOp;
  v785[2] = 0;
  v788 = llvm::StringMapImpl::hash("mps.space_to_batch", 0x12uLL, v786, v787);
  v789 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.space_to_batch", 0x12uLL, v788);
  v789[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSpaceToBatchOp;
  v789[2] = 0;
  v792 = llvm::StringMapImpl::hash("mps.space_to_depth_2d", 0x15uLL, v790, v791);
  v793 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.space_to_depth_2d", 0x15uLL, v792);
  v793[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSpaceToDepth2DOp;
  v793[2] = 0;
  v796 = llvm::StringMapImpl::hash("mps.split", 9uLL, v794, v795);
  v797 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.split", 9uLL, v796);
  v797[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSplitOp;
  v797[2] = 0;
  v800 = llvm::StringMapImpl::hash("mps.square", 0xAuLL, v798, v799);
  v801 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.square", 0xAuLL, v800);
  v801[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSquareOp;
  v801[2] = 0;
  v804 = llvm::StringMapImpl::hash("mps.square_root", 0xFuLL, v802, v803);
  v805 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.square_root", 0xFuLL, v804);
  v805[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSquareRootOp;
  v805[2] = 0;
  v808 = llvm::StringMapImpl::hash("mps.squeeze", 0xBuLL, v806, v807);
  v809 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.squeeze", 0xBuLL, v808);
  v809[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSqueezeOp;
  v809[2] = 0;
  v812 = llvm::StringMapImpl::hash("mps.stencil", 0xBuLL, v810, v811);
  v813 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.stencil", 0xBuLL, v812);
  v813[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStencilOp;
  v813[2] = 0;
  v816 = llvm::StringMapImpl::hash("mps.strided_slice_gradient", 0x1AuLL, v814, v815);
  v817 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.strided_slice_gradient", 0x1AuLL, v816);
  v817[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceGradientOp;
  v817[2] = 0;
  v820 = llvm::StringMapImpl::hash("mps.strided_slice", 0x11uLL, v818, v819);
  v821 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.strided_slice", 0x11uLL, v820);
  v821[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceOp;
  v821[2] = 0;
  v824 = llvm::StringMapImpl::hash("mps.strided_slice_update", 0x18uLL, v822, v823);
  v825 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.strided_slice_update", 0x18uLL, v824);
  v825[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceUpdateOp;
  v825[2] = 0;
  v828 = llvm::StringMapImpl::hash("mps.subtract", 0xCuLL, v826, v827);
  v829 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.subtract", 0xCuLL, v828);
  v829[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSubtractOp;
  v829[2] = 0;
  v832 = llvm::StringMapImpl::hash("mps.swish", 9uLL, v830, v831);
  v833 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.swish", 9uLL, v832);
  v833[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSwishOp;
  v833[2] = 0;
  v836 = llvm::StringMapImpl::hash("mps.tan", 7uLL, v834, v835);
  v837 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.tan", 7uLL, v836);
  v837[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTanOp;
  v837[2] = 0;
  v840 = llvm::StringMapImpl::hash("mps.tanh", 8uLL, v838, v839);
  v841 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.tanh", 8uLL, v840);
  v841[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTanhOp;
  v841[2] = 0;
  v844 = llvm::StringMapImpl::hash("mps.tile_gradient", 0x11uLL, v842, v843);
  v845 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.tile_gradient", 0x11uLL, v844);
  v845[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTileGradientOp;
  v845[2] = 0;
  v848 = llvm::StringMapImpl::hash("mps.tile", 8uLL, v846, v847);
  v849 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.tile", 8uLL, v848);
  v849[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTileOp;
  v849[2] = 0;
  v852 = llvm::StringMapImpl::hash("mps.top_k_grad", 0xEuLL, v850, v851);
  v853 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.top_k_grad", 0xEuLL, v852);
  v853[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTopKGradientOp;
  v853[2] = 0;
  v856 = llvm::StringMapImpl::hash("mps.top_k", 9uLL, v854, v855);
  v857 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.top_k", 9uLL, v856);
  v857[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTopKOp;
  v857[2] = 0;
  v860 = llvm::StringMapImpl::hash("mps.transpose", 0xDuLL, v858, v859);
  v861 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.transpose", 0xDuLL, v860);
  v861[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTransposeOp;
  v861[2] = 0;
  v864 = llvm::StringMapImpl::hash("mps.truncate", 0xCuLL, v862, v863);
  v865 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.truncate", 0xCuLL, v864);
  v865[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTruncateOp;
  v865[2] = 0;
  v868 = llvm::StringMapImpl::hash("mps.type_constraint", 0x13uLL, v866, v867);
  v869 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.type_constraint", 0x13uLL, v868);
  v869[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTypeConstraintOp;
  v869[2] = 0;
  v872 = llvm::StringMapImpl::hash("mps.unrealized_fold", 0x13uLL, v870, v871);
  v873 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.unrealized_fold", 0x13uLL, v872);
  v873[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostUnrealizedFoldOp;
  v873[2] = 0;
  v876 = llvm::StringMapImpl::hash("mps.update_random_state", 0x17uLL, v874, v875);
  v877 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.update_random_state", 0x17uLL, v876);
  v877[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostUpdateRandomStateOp;
  v877[2] = 0;
  v880 = llvm::StringMapImpl::hash("mps.variable_from_tensor", 0x18uLL, v878, v879);
  v881 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.variable_from_tensor", 0x18uLL, v880);
  v881[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostVariableFromTensorOp;
  v881[2] = 0;
  v884 = llvm::StringMapImpl::hash("mps.xnor", 8uLL, v882, v883);
  v885 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.xnor", 8uLL, v884);
  v885[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostXnorOp;
  v885[2] = 0;
  v888 = llvm::StringMapImpl::hash("mps.xor", 7uLL, v886, v887);
  result = llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1ED440720, "mps.xor", 7uLL, v888);
  v890 = *result;
  v890[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostXorOp;
  v890[2] = 0;
  return result;
}

size_t **llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 25, 8uLL);
  v12 = buffer;
  v13 = (buffer + 3);
  if (a3)
  {
    memcpy(buffer + 3, a2, a3);
  }

  v13[a3] = 0;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = a3;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::~StringMap, a2, a3);
}

void OUTLINED_FUNCTION_1_35()
{
  v0[2] = 0;
  v0[3] = 0x1800000000;
  v0[1] = 0;
}

float OUTLINED_FUNCTION_4_14(float a1, float a2)
{
  result = v2 / (a1 * 0.75);
  if (a2 >= result)
  {
    return a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_14()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

uint64_t mlir::mps::foldCastAttribute(uint64_t result, uint64_t a2, void *a3, int a4)
{
  v196 = *MEMORY[0x1E69E9840];
  v185 = result;
  v186 = a2;
  v184 = a3;
  if (!result)
  {
    return result;
  }

  Type = mlir::ElementsAttr::getType(&v185);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v183[0] = v9;
  v183[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v183);
  if (v184 == isSplat)
  {
    return v185 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (a4)
  {
    if (mlir::ElementsAttr::getNumElements(v185, v186) >= 1025)
    {
      ElementBitWidth = mlir::mps::getElementBitWidth(isSplat);
      if (ElementBitWidth < mlir::mps::getElementBitWidth(v184) && !mlir::ElementsAttr::isSplat(&v185))
      {
        return 0;
      }
    }
  }

  v11 = mlir::ElementsAttr::getType(&v185);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v190 = v12;
  v191 = v11;
  Shape = mlir::ShapedType::getShape(&v190);
  v15 = v14;
  v16 = *(*isSplat + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v16 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      return 0;
    }

    v33 = *(*v184 + 136);
    if (v33 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      if ((mlir::Type::isF16(&v184) || mlir::Type::isBF16(&v184)) && mlir::Type::isF32(&isSplat))
      {
        v36 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
        if (mlir::Type::isF16(&v184))
        {
        }

        else
        {
        }
      }
    }

    else if (v33 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v190 = &v192;
      v191 = 0x400000000;
      isSignedInteger = mlir::Type::isSignedInteger(&v184);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v184);
      mlir::ElementsAttr::getValues<llvm::APFloat>(&v185, &v177);
      v174 = v177;
      if (v177 == 1)
      {
        v175 = v178;
      }

      else
      {
        (*(*v178 + 16))(&v175);
      }

      v145 = *(&v178 + 1);
      v176 = *(&v178 + 1);
      LOWORD(v171) = v179;
      if (v179 == 1)
      {
        v172 = v180;
      }

      else
      {
        (*(*v180 + 16))(&v172);
        v145 = v176;
      }

      v173 = v181;
      if (v145 == v181)
      {
LABEL_390:
        if ((v171 & 1) == 0)
        {
          v146 = v172;
          v172 = 0;
          if (v146)
          {
            (*(*v146 + 8))(v146);
          }
        }

        if ((v174 & 1) == 0)
        {
          v147 = v175;
          v175 = 0;
          if (v147)
          {
            (*(*v147 + 8))(v147);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
        v148 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
        v110 = mlir::createElementsAttr(v148, v190, v191) & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v149 = !isSignedInteger;
        while (1)
        {
          if (HIBYTE(v174))
          {
            v151 = 0;
          }

          else
          {
            v151 = v145;
          }

          if (v174 == 1)
          {
            v152 = v175 + 32 * v151;
            v154 = *(v152 + 1);
            v153 = (v152 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v175) == v154)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v188, v153);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v188, v153);
            }
          }

          else
          {
            (*(*v175 + 24))(&v187);
          }

          v169 = IntOrFloatBitWidth;
          if (IntOrFloatBitWidth > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, 0, 0);
          }

          v168 = 0;
          v170 = v149;
          LOBYTE(v167) = 0;
          if (llvm::APFloat::convertToInteger(&v187, &v168, 0, &v167))
          {
            v110 = 0;
            goto LABEL_432;
          }

          v156 = v190;
          if (v191 >= HIDWORD(v191))
          {
            if (v190 <= &v168 && v190 + 16 * v191 > &v168)
            {
              v161 = &v168 - v190;
              llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v190, v191 + 1);
              v156 = v190;
              v157 = (v190 + v161);
            }

            else
            {
              llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v190, v191 + 1);
              v157 = &v168;
              v156 = v190;
            }
          }

          else
          {
            v157 = &v168;
          }

          v158 = &v156[16 * v191];
          v159 = *(v157 + 2);
          *(v158 + 2) = v159;
          if (v159 > 0x40)
          {
            llvm::APInt::initSlowCase(v158, v157);
          }

          *v158 = *v157;
          LODWORD(v191) = v191 + 1;
          v160 = mlir::ElementsAttr::isSplat(&v185);
          if (v160)
          {
            break;
          }

          if (v169 >= 0x41)
          {
            v160 = v168;
            if (v168)
            {
              v160 = MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
            }
          }

          v150 = v188;
          if (llvm::APFloatBase::PPCDoubleDouble(v160) == v150)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v188);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v188);
          }

          v145 = v176 + 1;
          v176 = v145;
          if (v145 == v173)
          {
            goto LABEL_390;
          }
        }

        v162 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
        v163 = v162;
        if (v162)
        {
          v164 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v162 + 8);
        }

        else
        {
          v164 = 0;
        }

        v110 = mlir::DenseElementsAttr::get(v163, v164, v190, 1) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_432:
        if (v169 >= 0x41 && v168)
        {
          MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
        }

        llvm::APFloat::~APFloat(&v187);
        if ((v171 & 1) == 0)
        {
          v165 = v172;
          v172 = 0;
          if (v165)
          {
            (*(*v165 + 8))(v165);
          }
        }

        if ((v174 & 1) == 0)
        {
          v166 = v175;
          v175 = 0;
          if (v166)
          {
            (*(*v166 + 8))(v166);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
      }

      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v190);
      return v110;
    }

    return 0;
  }

  isF32 = mlir::Type::isF32(&v184);
  if (isF32)
  {
    v190 = &v192;
    v191 = 0x400000000;
    v38 = llvm::APFloatBase::IEEEsingle(isF32);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v185, &v177);
    v174 = v177;
    if (v177 == 1)
    {
      v175 = v178;
    }

    else
    {
      (*(*v178 + 16))(&v175);
    }

    v41 = *(&v178 + 1);
    v176 = *(&v178 + 1);
    LOWORD(v171) = v179;
    if (v179 == 1)
    {
      v172 = v180;
    }

    else
    {
      (*(*v180 + 16))(&v172);
      v41 = v176;
    }

    v173 = v181;
    if (v41 == v181)
    {
LABEL_103:
      if ((v171 & 1) == 0)
      {
        v44 = v172;
        v172 = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }
      }

      if ((v174 & 1) == 0)
      {
        v45 = v175;
        v175 = 0;
        if (v45)
        {
          (*(*v45 + 8))(v45);
        }
      }

      if ((v179 & 1) == 0)
      {
        v46 = v180;
        v180 = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }

      if ((v177 & 1) == 0)
      {
        v47 = v178;
        *&v178 = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }
      }

      v48 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      ElementsAttr = mlir::createElementsAttr(v48, v190, v191);
      v50 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        if (HIBYTE(v174))
        {
          v51 = 0;
        }

        else
        {
          v51 = v41;
        }

        v52 = v175;
        if (v174 == 1)
        {
          v53 = v175 + 16 * v51;
          v169 = *(v53 + 2);
          if (v169 > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, v53);
          }

          v168 = *v53;
        }

        else
        {
          v52 = (*(*v175 + 24))(&v168);
        }

        v56 = llvm::APFloatBase::PPCDoubleDouble(v52);
        if (v56 == v38)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v188, v38);
        }

        llvm::detail::IEEEFloat::IEEEFloat(&v188, v38, v54, v55);
        v167 = isSplat;
        Signedness = mlir::IntegerType::getSignedness(&v167);
        if (v56 == v188)
        {
          llvm::detail::DoubleAPFloat::convertFromAPInt(&v188, &v168, Signedness == 1);
        }

        if (llvm::detail::IEEEFloat::convertFromAPInt(&v188, &v168, Signedness == 1, 0))
        {
          v76 = 0;
          goto LABEL_288;
        }

        if (mlir::ElementsAttr::isSplat(&v185))
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v190, &v187);
        if (v56 == v188)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v188);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v188);
        }

        if (v169 >= 0x41 && v168)
        {
          MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
        }

        v41 = v176 + 1;
        v176 = v41;
        if (v41 == v173)
        {
          goto LABEL_103;
        }
      }

      v77 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      if (v77)
      {
        v78 = v77;
        v79 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
        v77 = v78;
      }

      else
      {
        v79 = 0;
      }

      v76 = mlir::DenseElementsAttr::get(v77, v79, &v187, 1) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_288:
      if (v56 == v188)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v188);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v188);
      }

      v50 = v76;
      if (v169 >= 0x41)
      {
        ElementsAttr = v168;
        if (v168)
        {
          ElementsAttr = MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
          v50 = v76;
        }
      }

      if ((v171 & 1) == 0)
      {
        ElementsAttr = v172;
        v172 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v76;
        }
      }

      if ((v174 & 1) == 0)
      {
        ElementsAttr = v175;
        v175 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v76;
        }
      }

      if ((v179 & 1) == 0)
      {
        ElementsAttr = v180;
        v180 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v76;
        }
      }

      if ((v177 & 1) == 0)
      {
        ElementsAttr = v178;
        *&v178 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v76;
        }
      }
    }

    v75 = v50;
    v82 = v190;
    v117 = v191;
    if (v191)
    {
      v118 = llvm::APFloatBase::PPCDoubleDouble(ElementsAttr);
      v119 = &v82[4 * v117 - 3];
      v120 = -32 * v117;
      do
      {
        if (v118 == *v119)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v119);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v119);
        }

        v119 = (v121 - 32);
        v120 += 32;
      }

      while (v120);
      v82 = v190;
    }

    if (v82 == &v192)
    {
      return v75;
    }

    goto LABEL_314;
  }

  isF16 = mlir::Type::isF16(&v184);
  if (isF16)
  {
    v190 = &v192;
    v191 = 0x400000000;
    v40 = llvm::APFloatBase::IEEEhalf(isF16);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v185, &v177);
    v174 = v177;
    if (v177 == 1)
    {
      v175 = v178;
    }

    else
    {
      (*(*v178 + 16))(&v175);
    }

    v58 = *(&v178 + 1);
    v176 = *(&v178 + 1);
    LOWORD(v171) = v179;
    if (v179 == 1)
    {
      v172 = v180;
    }

    else
    {
      (*(*v180 + 16))(&v172);
      v58 = v176;
    }

    v173 = v181;
    if (v58 == v181)
    {
LABEL_176:
      if ((v171 & 1) == 0)
      {
        v71 = v172;
        v172 = 0;
        if (v71)
        {
          (*(*v71 + 8))(v71);
        }
      }

      if ((v174 & 1) == 0)
      {
        v72 = v175;
        v175 = 0;
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
      v73 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      v74 = mlir::createElementsAttr(v73, v190, v191);
      v75 = v74 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        v59 = HIBYTE(v174) ? 0 : v58;
        v60 = v175;
        if (v174 == 1)
        {
          v61 = v175 + 16 * v59;
          v169 = *(v61 + 2);
          if (v169 > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, v61);
          }

          v168 = *v61;
        }

        else
        {
          v60 = (*(*v175 + 24))(&v168);
        }

        v64 = llvm::APFloatBase::PPCDoubleDouble(v60);
        if (v64 == v40)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v188, v40);
        }

        llvm::detail::IEEEFloat::IEEEFloat(&v188, v40, v62, v63);
        v167 = isSplat;
        v65 = mlir::IntegerType::getSignedness(&v167);
        if (v64 == v188)
        {
          llvm::detail::DoubleAPFloat::convertFromAPInt(&v188, &v168, v65 == 1);
        }

        llvm::detail::IEEEFloat::convertFromAPInt(&v188, &v168, v65 == 1, 1);
        v66 = mlir::ElementsAttr::isSplat(&v185);
        v67 = v66;
        if (v66)
        {
          v68 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
          if (v68)
          {
            v69 = v68;
            v70 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v68 + 8);
            v68 = v69;
          }

          else
          {
            v70 = 0;
          }

          v5 = mlir::DenseElementsAttr::get(v68, v70, &v187, 1) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v190, &v187);
        }

        if (v64 == v188)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v188);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v188);
        }

        if (v169 >= 0x41 && v168)
        {
          MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
        }

        if (v67)
        {
          break;
        }

        v58 = v176 + 1;
        v176 = v58;
        if (v58 == v173)
        {
          goto LABEL_176;
        }
      }

      if ((v171 & 1) == 0)
      {
        v80 = v172;
        v172 = 0;
        if (v80)
        {
          (*(*v80 + 8))(v80);
        }
      }

      if ((v174 & 1) == 0)
      {
        v81 = v175;
        v175 = 0;
        if (v81)
        {
          (*(*v81 + 8))(v81);
        }
      }

      v74 = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
      v75 = v5;
    }

    v82 = v190;
    v83 = v191;
    if (v191)
    {
      v84 = llvm::APFloatBase::PPCDoubleDouble(v74);
      v85 = &v82[4 * v83 - 3];
      v86 = -32 * v83;
      do
      {
        if (v84 == *v85)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v85);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v85);
        }

        v85 = (v87 - 32);
        v86 += 32;
      }

      while (v86);
      v82 = v190;
    }

    if (v82 == &v192)
    {
      return v75;
    }

LABEL_314:
    free(v82);
    return v75;
  }

  isBF16 = mlir::Type::isBF16(&v184);
  if (isBF16)
  {
    v190 = &v192;
    v191 = 0x400000000;
    v43 = llvm::APFloatBase::BFloat(isBF16);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v185, &v177);
    v174 = v177;
    if (v177 == 1)
    {
      v175 = v178;
    }

    else
    {
      (*(*v178 + 16))(&v175);
    }

    v88 = *(&v178 + 1);
    v176 = *(&v178 + 1);
    LOWORD(v171) = v179;
    if (v179 == 1)
    {
      v172 = v180;
    }

    else
    {
      (*(*v180 + 16))(&v172);
      v88 = v176;
    }

    v173 = v181;
    if (v88 == v181)
    {
LABEL_236:
      if ((v171 & 1) == 0)
      {
        v101 = v172;
        v172 = 0;
        if (v101)
        {
          (*(*v101 + 8))(v101);
        }
      }

      if ((v174 & 1) == 0)
      {
        v102 = v175;
        v175 = 0;
        if (v102)
        {
          (*(*v102 + 8))(v102);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
      v103 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      v4 = mlir::createElementsAttr(v103, v190, v191) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        v89 = HIBYTE(v174) ? 0 : v88;
        v90 = v175;
        if (v174 == 1)
        {
          v91 = v175 + 16 * v89;
          v169 = *(v91 + 2);
          if (v169 > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, v91);
          }

          v168 = *v91;
        }

        else
        {
          v90 = (*(*v175 + 24))(&v168);
        }

        v94 = llvm::APFloatBase::PPCDoubleDouble(v90);
        if (v94 == v43)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v188, v43);
        }

        llvm::detail::IEEEFloat::IEEEFloat(&v188, v43, v92, v93);
        v167 = isSplat;
        v95 = mlir::IntegerType::getSignedness(&v167);
        if (v94 == v188)
        {
          llvm::detail::DoubleAPFloat::convertFromAPInt(&v188, &v168, v95 == 1);
        }

        llvm::detail::IEEEFloat::convertFromAPInt(&v188, &v168, v95 == 1, 1);
        v96 = mlir::ElementsAttr::isSplat(&v185);
        v97 = v96;
        if (v96)
        {
          v98 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
          if (v98)
          {
            v99 = v98;
            v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
            v98 = v99;
          }

          else
          {
            v100 = 0;
          }

          v4 = mlir::DenseElementsAttr::get(v98, v100, &v187, 1) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v190, &v187);
        }

        if (v94 == v188)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v188);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v188);
        }

        if (v169 >= 0x41 && v168)
        {
          MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
        }

        if (v97)
        {
          break;
        }

        v88 = v176 + 1;
        v176 = v88;
        if (v88 == v173)
        {
          goto LABEL_236;
        }
      }

      if ((v171 & 1) == 0)
      {
        v104 = v172;
        v172 = 0;
        if (v104)
        {
          (*(*v104 + 8))(v104);
        }
      }

      if ((v174 & 1) == 0)
      {
        v105 = v175;
        v175 = 0;
        if (v105)
        {
          (*(*v105 + 8))(v105);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
    }

    llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v190);
    return v4;
  }

  if (mlir::Type::isInteger(&v184, 1))
  {
    v177 = &v179;
    v178 = xmmword_1A7598A10;
    mlir::ElementsAttr::getValues<llvm::APInt>(&v185, &v190);
    LOWORD(v187) = v190;
    if (v190 == 1)
    {
      v188 = v191;
    }

    else
    {
      (*(*v191 + 16))(&v188);
    }

    v106 = v192;
    v189 = v192;
    v174 = v193;
    if (v193 == 1)
    {
      v175 = v194;
    }

    else
    {
      (*(*v194 + 16))(&v175);
      v106 = v189;
    }

    v176 = v195;
    if (v106 == v195)
    {
LABEL_256:
      if ((v174 & 1) == 0)
      {
        v107 = v175;
        v175 = 0;
        if (v107)
        {
          (*(*v107 + 8))(v107);
        }
      }

      if ((v187 & 1) == 0)
      {
        v108 = v188;
        v188 = 0;
        if (v108)
        {
          (*(*v108 + 8))(v108);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v190);
      v109 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      result = mlir::createElementsAttr<BOOL>(v109, v177, v178) & 0xFFFFFFFFFFFFFFFBLL;
      if (v177 == &v179)
      {
        return result;
      }

      v110 = result;
      free(v177);
      return v110;
    }

    while (1)
    {
      if (BYTE1(v187))
      {
        v111 = 0;
      }

      else
      {
        v111 = v106;
      }

      if (v187 == 1)
      {
        v112 = &v188[16 * v111];
        LODWORD(v172) = *(v112 + 2);
        if (v172 > 0x40)
        {
          llvm::APInt::initSlowCase(&v171, v112);
        }

        v171 = *v112;
      }

      else
      {
        (*(*v188 + 24))(&v171);
        v113 = v172;
        if (v172 > 0x40)
        {
          v114 = llvm::APInt::countLeadingZerosSlowCase(&v171) == v113;
          goto LABEL_278;
        }
      }

      v114 = v171 == 0;
LABEL_278:
      v115 = v114;
      v116 = v178;
      if ((v178 + 1) > *(&v178 + 1))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v177, &v179, v178 + 1, 1);
        v116 = v178;
      }

      *(v177 + v116) = v115 ^ 1;
      *&v178 = v178 + 1;
      if (v172 >= 0x41 && v171)
      {
        MEMORY[0x1AC55A040](v171, 0x1000C8000313F17);
      }

      v106 = v189 + 1;
      v189 = v106;
      if (v106 == v176)
      {
        goto LABEL_256;
      }
    }
  }

  if (*(*v184 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v190 = &v192;
  v191 = 0x400000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(&v185, &v177);
  LOWORD(v187) = v177;
  if (v177 == 1)
  {
    v188 = v178;
  }

  else
  {
    (*(*v178 + 16))(&v188);
  }

  v122 = *(&v178 + 1);
  v189 = *(&v178 + 1);
  v174 = v179;
  if (v179 == 1)
  {
    v175 = v180;
  }

  else
  {
    (*(*v180 + 16))(&v175);
    v122 = v189;
  }

  v176 = v181;
  if (v122 == v181)
  {
LABEL_324:
    if ((v174 & 1) == 0)
    {
      v123 = v175;
      v175 = 0;
      if (v123)
      {
        (*(*v123 + 8))(v123);
      }
    }

    if ((v187 & 1) == 0)
    {
      v124 = v188;
      v188 = 0;
      if (v124)
      {
        (*(*v124 + 8))(v124);
      }
    }

    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
    v125 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
    v6 = mlir::createElementsAttr(v125, v190, v191) & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_384;
  }

  while (1)
  {
    if (BYTE1(v187))
    {
      v126 = 0;
    }

    else
    {
      v126 = v122;
    }

    if (v187 == 1)
    {
      v127 = &v188[16 * v126];
      LODWORD(v172) = *(v127 + 2);
      if (v172 > 0x40)
      {
        llvm::APInt::initSlowCase(&v171, v127);
      }

      v171 = *v127;
    }

    else
    {
      (*(*v188 + 24))(&v171);
    }

    if (!mlir::Type::isSignedInteger(&isSplat))
    {
      if (v172 >= 0x41)
      {
        v129 = v171;
      }

      else
      {
        v129 = &v171;
      }

      goto LABEL_348;
    }

    if (v172 > 0x40)
    {
      v129 = v171;
LABEL_348:
      v128 = *v129;
      goto LABEL_349;
    }

    v128 = v172 ? (v171 << -v172) >> -v172 : 0;
LABEL_349:
    v130 = mlir::Type::getIntOrFloatBitWidth(&v184);
    v131 = mlir::Type::isSignedInteger(&v184);
    v169 = v130;
    if (v130 > 0x40)
    {
      llvm::APInt::initSlowCase(&v168, v128, v131);
    }

    v132 = 0xFFFFFFFFFFFFFFFFLL >> -v130;
    if (!v130)
    {
      v132 = 0;
    }

    v168 = (v132 & v128);
    v133 = mlir::ElementsAttr::isSplat(&v185);
    v134 = v133;
    if (v133)
    {
      v135 = mlir::RankedTensorType::get(Shape, v15, v184, 0);
      if (v135)
      {
        v136 = v135;
        v137 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v135 + 8);
        v135 = v136;
      }

      else
      {
        v137 = 0;
      }

      v6 = mlir::DenseElementsAttr::get(v135, v137, &v168, 1) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v138 = v190;
      if (v191 >= HIDWORD(v191))
      {
        if (v190 <= &v168 && v190 + 16 * v191 > &v168)
        {
          v142 = &v168 - v190;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v190, v191 + 1);
          v138 = v190;
          v139 = (v190 + v142);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v190, v191 + 1);
          v139 = &v168;
          v138 = v190;
        }
      }

      else
      {
        v139 = &v168;
      }

      v140 = &v138[16 * v191];
      v141 = *(v139 + 2);
      *(v140 + 2) = v141;
      if (v141 > 0x40)
      {
        llvm::APInt::initSlowCase(v140, v139);
      }

      *v140 = *v139;
      LODWORD(v191) = v191 + 1;
    }

    if (v169 >= 0x41 && v168)
    {
      MEMORY[0x1AC55A040](v168, 0x1000C8000313F17);
    }

    if (v172 >= 0x41 && v171)
    {
      MEMORY[0x1AC55A040](v171, 0x1000C8000313F17);
    }

    if (v134)
    {
      break;
    }

    v122 = v189 + 1;
    v189 = v122;
    if (v122 == v176)
    {
      goto LABEL_324;
    }
  }

  if ((v174 & 1) == 0)
  {
    v143 = v175;
    v175 = 0;
    if (v143)
    {
      (*(*v143 + 8))(v143);
    }
  }

  if ((v187 & 1) == 0)
  {
    v144 = v188;
    v188 = 0;
    if (v144)
    {
      (*(*v144 + 8))(v144);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v177);
LABEL_384:
  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v190);
  return v6;
}

uint64_t mlir::ElementsAttr::getValues<llvm::APInt>@<X0>(mlir::ElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<llvm::APInt>(a1, &v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, *(a1 + 1));
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::ElementsAttrRange(a2, ShapedType, v6, &v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12 & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 32);
    *(result + 32) = 0;
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
    }
  }

  if ((*result & 1) == 0)
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(v3);
      return v4;
    }
  }

  return result;
}

void *mlir::createElementsAttr<BOOL>(void *a1, uint64_t a2, size_t a3)
{
  v27[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = ((a3 - (a3 != 0)) >> 3) + 1;
  }

  else
  {
    v6 = 0;
  }

  v25 = v27;
  v7 = xmmword_1A75D9A70;
  v26 = xmmword_1A75D9A70;
  if (v6)
  {
    if (v6 < 0x29)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v25, v27, v6, 1);
      v7 = xmmword_1A75D9A70;
      v8 = v26;
      v9 = v6 - v26;
      if (v6 == v26)
      {
        goto LABEL_10;
      }
    }

    bzero(v25 + v8, v9);
    v7 = xmmword_1A75D9A70;
LABEL_10:
    *&v26 = v6;
  }

  v22 = v24;
  v23 = v7;
  if (!a3)
  {
    v12 = 0;
    v13 = v22;
    v14 = v25;
    goto LABEL_25;
  }

  if (a3 < 0x29)
  {
    v10 = 0;
    v11 = a3;
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v22, v24, a3, 1);
    v10 = v23;
    v11 = a3 - v23;
    if (a3 == v23)
    {
      goto LABEL_18;
    }
  }

  bzero(v22 + v10, v11);
LABEL_18:
  v15 = 0;
  *&v23 = a3;
  do
  {
    *(v22 + v15) = *(a2 + v15);
    ++v15;
  }

  while (a3 != v15);
  v13 = v22;
  v12 = v23;
  v14 = v25;
  if (v23 == 1)
  {
    if (*v22)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v16;
    goto LABEL_38;
  }

LABEL_25:
  v17 = v26;
  if (v26)
  {
    v18 = v13 + 3;
    do
    {
      if (v12)
      {
        v19 = *(v18 - 3);
        if (v12 > 1)
        {
          v19 |= 2 * *(v18 - 2);
          if (v12 != 2)
          {
            v19 |= 4 * *(v18 - 1);
            if (v12 != 3)
            {
              v19 |= 8 * *v18;
              if (v12 != 4)
              {
                v19 |= 16 * v18[1];
                if (v12 != 5)
                {
                  v19 |= 32 * v18[2];
                  if (v12 != 6)
                  {
                    v19 |= v18[3] << 6;
                    if (v12 != 7)
                    {
                      v19 |= v18[4] << 7;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v19 = 0;
      }

      *v14++ = v19;
      v12 -= 8;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

LABEL_38:
  RawElementsAttr = mlir::createRawElementsAttr(a1, v25, v26);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return RawElementsAttr;
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2, uint64_t a3, BOOL a4, int a5)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    llvm::APInt::initSlowCase(this, a3, a4);
  }

  *this = a3;
  if (a4 || a5)
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v5 = 0;
    }

    *this = v5 & a3;
  }

  return this;
}

BOOL llvm::isa<mlir::FloatType,mlir::Type>(uint64_t a1)
{
  v1 = *(**a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

void *mlir::mps::anonymous namespace::convertFP32ToT<half>(uint64_t a1, uint64_t a2, void *a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v19, a1, a2);
  if (v20 == 1)
  {
    _S0 = mlir::mps::CPUNDArray::getSplatFloatValue(v19);
    __asm { FCVT            H0, S0 }

    LOWORD(v18[0]) = LOWORD(_S0);
    if (a3)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v9 = 0;
    }

    v11 = mlir::DenseElementsAttr::getFromRawBuffer(a3, v9, v18, 2);
    ElementsAttr = v11;
    if (v11)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v11 + 8);
    }
  }

  else
  {
    if (a3)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v10 = 0;
    }

    mlir::mps::CPUNDArray::CPUNDArray(v18, a3, v10, 0);
    v13 = v19[5];
    v14 = v18[5];
    if (mlir::mps::CPUNDArray::getNumElements(v19) >= 1)
    {
      v15 = 0;
      do
      {
        _S0 = *(v13 + 4 * v15);
        __asm { FCVT            H0, S0 }

        *(v14 + 2 * v15++) = _S0;
      }

      while (v15 < mlir::mps::CPUNDArray::getNumElements(v19));
    }

    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v18, 0, 0);
    mlir::mps::CPUNDArray::~CPUNDArray(v18);
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v19);
  return ElementsAttr;
}

void *mlir::mps::anonymous namespace::convertFP32ToT<__emulated_bf16>(uint64_t a1, uint64_t a2, void *a3)
{
  mlir::mps::CPUNDArray::CPUNDArray(v15, a1, a2);
  if (v16 == 1)
  {
    SplatFloatValue = mlir::mps::CPUNDArray::getSplatFloatValue(v15);
    v5 = SplatFloatValue + (COERCE_FLOAT(LODWORD(SplatFloatValue) & 0xFF800000) * 0.0039062);
    LOWORD(v14[0]) = HIWORD(v5);
    if (a3)
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v6 = 0;
    }

    v12 = mlir::DenseElementsAttr::getFromRawBuffer(a3, v6, v14, 2);
    ElementsAttr = v12;
    if (v12)
    {
      mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
    }
  }

  else
  {
    if (a3)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a3 + 8);
    }

    else
    {
      v7 = 0;
    }

    mlir::mps::CPUNDArray::CPUNDArray(v14, a3, v7, 0);
    v8 = v15[5];
    v9 = v14[5];
    if (mlir::mps::CPUNDArray::getNumElements(v15) >= 1)
    {
      v10 = 0;
      do
      {
        *(v9 + 2 * v10) = HIWORD(COERCE_UNSIGNED_INT(*(v8 + 4 * v10) + (COERCE_FLOAT(*(v8 + 4 * v10) & 0xFF800000) * 0.0039062)));
        ++v10;
      }

      while (v10 < mlir::mps::CPUNDArray::getNumElements(v15));
    }

    ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v14, 0, 0);
    mlir::mps::CPUNDArray::~CPUNDArray(v14);
  }

  mlir::mps::CPUNDArray::~CPUNDArray(v15);
  return ElementsAttr;
}

uint64_t mlir::ElementsAttr::getValues<llvm::APFloat>@<X0>(mlir::ElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<llvm::APFloat>(a1, &v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, *(a1 + 1));
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::ElementsAttrRange(a2, ShapedType, v6, &v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12 & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unint64_t mlir::mps::foldTransposeOp(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v48 = a3;
  v49 = a1;
  v47 = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = a1 - 16;
  v7 = *(a1 + 36) ? a1 - 16 : 0;
  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (v9)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
  }

  v46[0] = v8;
  v46[1] = v9;
  if (!mlir::ElementsAttr::getShapedType(v46))
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v47);
  v11 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  ShapedType = v11;
  v45 = Type;
  mlir::ShapedType::getShape(&ShapedType);
  v13 = v12;
  v52[0] = v53;
  v52[1] = 0x100000000;
  v50[0] = &v51;
  v50[1] = 0x100000000;
  if (mlir::getPositiveAxes(*(*(a1 + 72) + 56), v12, v52, 0, 0, 0) && mlir::getPositiveAxes(*(*(a1 + 72) + 88), v13, v50, 0, 0, 0) && ((a4 & 1) != 0 || v13 < 2 || (*v50[0] >= *v52[0] ? (v14 = *v52[0]) : (v14 = *v50[0]), v14 != v13 - 2 || (*v52[0] <= *v50[0] ? (v15 = *v50[0]) : (v15 = *v52[0]), v15 != v13 - 1 || (*(a1 + 36) ? (v16 = v6) : (v16 = 0), ShapedType = *mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0), v45 = 0, (llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ValueUseIterator<mlir::OpOperand>,mlir::OpOperand>>,mlir::mps::foldTransposeOp(mlir::mps::TransposeOp,mlir::ElementsAttr,BOOL)::$_0>(&ShapedType, &v49) & 1) == 0)))))
  {
    Shape = mlir::ShapedType::getShape(v46);
    v21 = v20;
    ShapedType = mlir::ElementsAttr::getShapedType(&v47);
    v45 = v22;
    isSplat = mlir::ElementsAttr::isSplat(&ShapedType);
    v24 = mlir::RankedTensorType::get(Shape, v21, isSplat, 0);
    if (mlir::ElementsAttr::isSplat(&v47))
    {
      v25 = v47;
      v26 = v48;
      if (v24)
      {
        v27 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v27 = 0;
      }

      v17 = mlir::reshapeElementsAttr(v25, v26, v24, v27) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      mlir::mps::CPUNDArray::CPUNDArray(&ShapedType, v47, v48);
      v43[0] = 0;
      v43[1] = 0;
      if (v24)
      {
        v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
      }

      else
      {
        v28 = 0;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v24, v28, v43, v42);
      __p = 0;
      v40 = 0;
      v41 = 0;
      std::vector<long long>::__append(&__p, v13);
      v29 = __p;
      if (v13 >= 1)
      {
        if (v13 > 3)
        {
          v30 = v13 & 0x7FFFFFFFFFFFFFFCLL;
          v31 = xmmword_1A7598670;
          v32 = (__p + 16);
          v33 = vdupq_n_s64(2uLL);
          v34 = vdupq_n_s64(4uLL);
          v35 = v13 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v32[-1] = v31;
            *v32 = vaddq_s64(v31, v33);
            v31 = vaddq_s64(v31, v34);
            v32 += 2;
            v35 -= 4;
          }

          while (v35);
          goto LABEL_49;
        }

        v30 = 0;
        do
        {
          v29[v30] = v30;
          ++v30;
LABEL_49:
          ;
        }

        while (v13 != v30);
      }

      v36 = *v50[0];
      v37 = v29[*v52[0]];
      v29[*v52[0]] = v29[*v50[0]];
      v29[v36] = v37;
      mlir::mps::transpose(&ShapedType, v42, v29, (v40 - v29) >> 3);
      n128_u64 = v43[0]->n128_u64;
      if (!v43[0])
      {
        n128_u64 = mlir::mps::CPUNDArray::getElementsAttr(v42, 0, 0);
      }

      v17 = n128_u64 & 0xFFFFFFFFFFFFFFFBLL;
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }

      mlir::mps::CPUNDArray::~CPUNDArray(v42);
      mlir::mps::CPUNDArray::~CPUNDArray(&ShapedType);
    }
  }

  else
  {
    v17 = 0;
  }

  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  if (v52[0] != v53)
  {
    free(v52[0]);
  }

  return v17;
}

uint64_t llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ValueUseIterator<mlir::OpOperand>,mlir::OpOperand>>,mlir::mps::foldTransposeOp(mlir::mps::TransposeOp,mlir::ElementsAttr,BOOL)::$_0>(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = v2[2];
      v6 = *(*(v5 + 48) + 16);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
      {
        v7 = v2[2];
      }

      else
      {
        v7 = 0;
      }

      v18 = v7;
      if (*(*a2 + 36))
      {
        v8 = *a2 - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      if (v5)
      {
        v10 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id;
      }

      else
      {
        v10 = 0;
      }

      if (v10 && (*(v5 + 36) ? (v11 = v5 - 16) : (v11 = 0), (v12 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0)) != 0 && !*v12))
      {
        if (*(v5 + 36))
        {
          v13 = v5 - 16;
        }

        else
        {
          v13 = 0;
        }

        v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
        if (*(*(*(*v14 + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
        {
          v15 = *(*v14 + 16);
        }

        else
        {
          v15 = 0;
        }

        v18 = v15;
        if (*(v5 + 36))
        {
          v16 = v5 - 16;
        }

        else
        {
          v16 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
        if (!v15)
        {
          goto LABEL_3;
        }
      }

      else if (!v7)
      {
        goto LABEL_3;
      }

      if (!mlir::mps::MatMulOp::getTransposeRhs(&v18) && *(*(v18 + 72) + 56) == NextResultAtOffset)
      {
        return 1;
      }

LABEL_3:
      v2 = *v2;
    }

    while (v2 != v3);
  }

  return 0;
}

void mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v109 = 1283;
    v73 = "mps.squeeze";
LABEL_83:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v73;
    v76 = 11;
    goto LABEL_86;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v2 + 8);
    Values = mlir::SparseElementsAttr::getValues(v110);
    v5 = *(v4 + 16);
  }

  else
  {
    Values = *(v2 + 24);
  }

  {
    v74 = v5;
    v75 = Values;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    Values = v75;
    v5 = v74;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v8 = v7;
  {
    v95 = v7;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v95;
  }

  mlir::detail::InterfaceMap::insert(v4 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.expand_dims";
    v76 = 15;
    goto LABEL_86;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v9 + 8);
    v13 = mlir::SparseElementsAttr::getValues(v110);
    v12 = *(v11 + 16);
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *(v9 + 24);
    {
      goto LABEL_12;
    }
  }

  v79 = v13;
  v87 = v12;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v79;
  v12 = v87;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v14 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v15 = v14;
  {
    v96 = v14;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v96;
  }

  mlir::detail::InterfaceMap::insert(v11 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v109 = 1283;
    v77 = "mps.flatten_2d";
LABEL_77:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v77;
    v76 = 14;
    goto LABEL_86;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v16 + 8);
    v20 = mlir::SparseElementsAttr::getValues(v110);
    v19 = *(v18 + 16);
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *(v16 + 24);
    {
      goto LABEL_17;
    }
  }

  v80 = v20;
  v88 = v19;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v80;
  v19 = v88;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v21 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v22 = v21;
  {
    v97 = v21;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v97;
  }

  mlir::detail::InterfaceMap::insert(v18 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v109 = 1283;
    v77 = "mps.dequantize";
    goto LABEL_77;
  }

  v25 = v23;
  v26 = *(v23 + 16);
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v23 + 8);
    v27 = mlir::SparseElementsAttr::getValues(v110);
    v26 = *(v25 + 16);
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = *(v23 + 24);
    {
      goto LABEL_22;
    }
  }

  v81 = v27;
  v89 = v26;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v81;
  v26 = v89;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v28 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v29 = v28;
  {
    v98 = v28;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v98;
  }

  mlir::detail::InterfaceMap::insert(v25 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.quantize";
    v76 = 12;
    goto LABEL_86;
  }

  v32 = v30;
  v33 = *(v30 + 16);
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v30 + 8);
    v34 = mlir::SparseElementsAttr::getValues(v110);
    v33 = *(v32 + 16);
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = *(v30 + 24);
    {
      goto LABEL_27;
    }
  }

  v82 = v34;
  v90 = v33;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v82;
  v33 = v90;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v35 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v36 = v35;
  {
    v99 = v35;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v99;
  }

  mlir::detail::InterfaceMap::insert(v32 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.cast";
    v76 = 8;
    goto LABEL_86;
  }

  v39 = v37;
  v40 = *(v37 + 16);
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v37 + 8);
    v41 = mlir::SparseElementsAttr::getValues(v110);
    v40 = *(v39 + 16);
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = *(v37 + 24);
    {
      goto LABEL_32;
    }
  }

  v83 = v41;
  v91 = v40;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v83;
  v40 = v91;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v42 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v43 = v42;
  {
    v100 = v42;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v43 = v100;
  }

  mlir::detail::InterfaceMap::insert(v39 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v109 = 1283;
    v78 = "mps.concat";
LABEL_85:
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = v78;
    v76 = 10;
LABEL_86:
    v108 = v76;
    v104 = ".";
    v105 = 259;
    llvm::operator+(&v106, &v104, v110);
    llvm::report_fatal_error(v110, 1);
  }

  v46 = v44;
  v47 = *(v44 + 16);
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v44 + 8);
    v48 = mlir::SparseElementsAttr::getValues(v110);
    v47 = *(v46 + 16);
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = *(v44 + 24);
    {
      goto LABEL_37;
    }
  }

  v84 = v48;
  v92 = v47;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v48 = v84;
  v47 = v92;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v49 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v50 = v49;
  {
    v101 = v49;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v50 = v101;
  }

  mlir::detail::InterfaceMap::insert(v46 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v109 = 1283;
    v106 = "Attempting to attach an interface to an unregistered operation ";
    v107 = "mps.strided_slice";
    v76 = 17;
    goto LABEL_86;
  }

  v53 = v51;
  v54 = *(v51 + 16);
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v51 + 8);
    v55 = mlir::SparseElementsAttr::getValues(v110);
    v54 = *(v53 + 16);
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = *(v51 + 24);
    {
      goto LABEL_42;
    }
  }

  v85 = v55;
  v93 = v54;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v55 = v85;
  v54 = v93;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v56 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v57 = v56;
  {
    v102 = v56;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v57 = v102;
  }

  mlir::detail::InterfaceMap::insert(v53 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v109 = 1283;
    v73 = "mps.reshape";
    goto LABEL_83;
  }

  v60 = v58;
  v61 = *(v58 + 16);
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v58 + 8);
    v62 = mlir::SparseElementsAttr::getValues(v110);
    v61 = *(v60 + 16);
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = *(v58 + 24);
    {
      goto LABEL_47;
    }
  }

  v86 = v62;
  v94 = v61;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v62 = v86;
  v61 = v94;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v63 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v64 = v63;
  {
    v103 = v63;
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v64 = v103;
  }

  mlir::detail::InterfaceMap::insert(v60 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v109 = 1283;
    v78 = "mps.select";
    goto LABEL_85;
  }

  v67 = v65;
  v68 = *(v65 + 16);
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v110[0] = *(v65 + 8);
    v69 = mlir::SparseElementsAttr::getValues(v110);
    v68 = *(v67 + 16);
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = *(v65 + 24);
    {
      goto LABEL_52;
    }
  }

  v71 = v68;
  v72 = v69;
  mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v69 = v72;
  v68 = v71;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id);
  v70 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  {
    mlir::mps::registerExternalCanonicalizeExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert(v67 + 32, mlir::detail::TypeIDResolver<mlir::ExternalCanonicalizeInterface,void>::resolveTypeID(void)::id, v70);
}

const char *llvm::getTypeName<mlir::ExternalCanonicalizeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalCanonicalizeInterface]";
  v6 = 85;
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

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::SqueezeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v46[4] = *MEMORY[0x1E69E9840];
  v43 = a2;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v42[0] = v6;
  v42[1] = v7;
  result = mlir::ElementsAttr::getShapedType(v42);
  if (!result)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v42);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (Shape + 8 * v15);
      v16 = (Shape + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = Shape;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (Shape + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::ShapedType::getShape(v42);
  v24 = v22;
  v44 = v46;
  v45 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v46;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v25, 8);
  v26 = v45;
  v27 = v44;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v45;
    v27 = v44;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v45) = v26 + (v28 >> 3);
  if (v45)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v40 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v40);
    }
  }

  ODSOperandIndexAndLength = mlir::mps::DynamicShapeCastOp::getODSOperandIndexAndLength(&v43, 0);
  v41 = *(*(v43 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v39 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::SmallVector<long long,4u> &>(a3 + 1, *(a2 + 24), &v41, &v44);
  ((*a3)[1])(a3, a2, v39);
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::SmallVector<long long,4u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
  mlir::mps::ReshapeOp::build(a1, v17, *a3, *a4, *(a4 + 8));
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

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::ExpandDimsOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v41[0] = v6;
  v41[1] = v7;
  result = mlir::ElementsAttr::getShapedType(v41);
  if (!result)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v41);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (Shape + 8 * v15);
      v16 = (Shape + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = Shape;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (Shape + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::ShapedType::getShape(v41);
  v24 = v22;
  v42 = v44;
  v43 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v44;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v25, 8);
  v26 = v43;
  v27 = v42;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v43;
    v27 = v42;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v43) = v26 + (v28 >> 3);
  if (v43)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v39 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v39);
    }
  }

  v40 = *(*(a2 + 72) + 24);
  v38 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::SmallVector<long long,4u> &>(a3 + 1, *(a2 + 24), &v40, &v42);
  ((*a3)[1])(a3, a2, v38);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeSqueezeExpandFlatten<mlir::mps::Flatten2DOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v44[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v41[0] = v6;
  v41[1] = v7;
  result = mlir::ElementsAttr::getShapedType(v41);
  if (!result)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v41);
  if (v10)
  {
    v11 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 3)
    {
      v14 = v11 + 1;
      v15 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v13 = (Shape + 8 * v15);
      v16 = (Shape + 16);
      v17 = 0uLL;
      v18 = vnegq_f64(0);
      v19 = v15;
      v20 = 0uLL;
      do
      {
        v17 = vsubq_s64(v17, vceqq_s64(v16[-1], v18));
        v20 = vsubq_s64(v20, vceqq_s64(*v16, v18));
        v16 += 2;
        v19 -= 4;
      }

      while (v19);
      v12 = vaddvq_s64(vaddq_s64(v20, v17));
      if (v14 == v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = Shape;
    }

    do
    {
      v21 = *v13++;
      if (v21 == 0x8000000000000000)
      {
        ++v12;
      }
    }

    while (v13 != (Shape + 8 * v10));
LABEL_17:
    if (v12 > 1)
    {
      return 0;
    }
  }

  v23 = mlir::ShapedType::getShape(v41);
  v24 = v22;
  v42 = v44;
  v43 = 0x400000000;
  v25 = (8 * v22) >> 3;
  if (v25 < 5)
  {
    v26 = 0;
    v27 = v44;
    v28 = 8 * v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v25, 8);
  v26 = v43;
  v27 = v42;
  v28 = 8 * v24;
  if (v24)
  {
LABEL_23:
    memcpy(v27 + 8 * v26, v23, v28);
    v26 = v43;
    v27 = v42;
  }

LABEL_24:
  v29 = v26 + (v28 >> 3);
  LODWORD(v43) = v26 + (v28 >> 3);
  if (v43)
  {
    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 3)
    {
      goto LABEL_41;
    }

    v32 = v30 + 1;
    v31 = &v27->i64[v32 & 0x3FFFFFFFFFFFFFFCLL];
    v33 = v27 + 1;
    v34 = vnegq_f64(0);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmovn_s64(vceqq_s64(v33[-1], v34));
      if (v36.i8[0])
      {
        v33[-1].i64[0] = -1;
      }

      if (v36.i8[4])
      {
        v33[-1].i64[1] = -1;
      }

      v37 = vmovn_s64(vceqq_s64(*v33, v34));
      if (v37.i8[0])
      {
        v33->i64[0] = -1;
      }

      if (v37.i8[4])
      {
        v33->i64[1] = -1;
      }

      v33 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_41:
      v39 = &v27->i64[v29];
      do
      {
        if (*v31 == 0x8000000000000000)
        {
          *v31 = -1;
        }

        ++v31;
      }

      while (v31 != v39);
    }
  }

  v40 = *(*(a2 + 72) + 24);
  v38 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,llvm::SmallVector<long long,4u> &>(a3 + 1, *(a2 + 24), &v40, &v42);
  ((*a3)[1])(a3, a2, v38);
  if (v42 != v44)
  {
    free(v42);
  }

  return 1;
}

uint64_t mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::DequantizeOp>>::externalCanonicalize(uint64_t a1, uint64_t a2, mlir::UnknownLoc **a3)
{
  v24 = a2;
  v23[0] = a3;
  v23[1] = &v24;
  v22 = 0;
  v21 = 1;
  v20 = v4;
  v19 = v5;
  v6 = *(*(v24 + 72) + 120);
  v18 = v7;
  if (HIBYTE(v22) == 1 && v22 == 1 && v21 == 1)
  {
    v8 = 0;
    v9 = v24;
  }

  else
  {
    v9 = v24;
    v8 = *(v9 + 16 * ((*(v9 + 44) >> 23) & 1) + 64);
  }

  v17 = v8;
  v10 = *(v9 + 72);
  if (v10[7] == v4)
  {
    v11 = v10[11] == v5 && v6 == v7;
    if (v11 && v8 == *(v9 + 80))
    {
      return 0;
    }
  }

  v12 = v10[3];
  v15 = *(v9 + 88);
  v16 = v12;
  v13 = mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::TypeAttr,mlir::IntegerAttr &>(a3 + 1, *(v9 + 24), &v16, &v20, &v19, &v18, &v15, &v17);
  (*(*a3 + 1))(a3, v9, v13);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeQuantizeOp<mlir::mps::DequantizeOp>::externalCanonicalize(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(mlir::Value,BOOL &)#1}::operator()(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v34[0] = v6;
  v34[1] = v7;
  if (mlir::ElementsAttr::getShapedType(v34))
  {
    Shape = mlir::ShapedType::getShape(v34);
    if (v9)
    {
      v10 = 8 * v9;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v11 = mlir::ShapedType::getShape(v34);
      if (mlir::ShapedType::getNumElements(v11, v12) == 1)
      {
        *a3 = 1;
        return v4;
      }
    }
  }

  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v35 = v4;
  DefiningOp = mlir::Value::getDefiningOp(&v35);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v32, DefiningOp) && (mlir::ElementsAttr::isSplat(v33) & 1) != 0)
  {
    *a3 = 1;
    mlir::ElementsAttr::value_begin<mlir::TypedAttr,void>(&v35, v33);
    if (BYTE1(v35))
    {
      v14 = 0;
    }

    else
    {
      v14 = v37;
    }

    if (v35 == 1)
    {
      v15 = *(v36 + 8 * v14);
    }

    else
    {
      v15 = (*(*v36 + 24))();
    }

    v17 = v38(v15);
    if ((v35 & 1) == 0)
    {
      v19 = v36;
      v36 = 0;
      if (v19)
      {
        v20 = v17;
        v21 = v18;
        (*(*v19 + 8))(v19);
        v18 = v21;
        v17 = v20;
      }
    }

    v35 = v17;
    v36 = v18;
    FunctionType = mlir::FunctionOpInterface::getFunctionType(&v35);
    v23 = mlir::RankedTensorType::get(0, 0, FunctionType, 0);
    if (v23)
    {
      v24 = v23;
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
      v23 = v24;
    }

    else
    {
      v25 = 0;
    }

    v32 = mlir::DenseElementsAttr::get(v23, v25, &v35, 1uLL);
    v26 = *a1;
    v27 = *(*a1[1] + 24);
    isSplat = mlir::ElementsAttr::isSplat(v34);
    v31 = mlir::RankedTensorType::get(0, 0, isSplat, 0);
    v29 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type,mlir::mps::MPSBufferTensorAttr &>((v26 + 8), v27, &v31, &v32);
    if (*(v29 + 9))
    {
      v30 = v29 - 16;
    }

    else
    {
      v30 = 0;
    }

    return mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  }

  else
  {
    *a3 = 0;
  }

  return v4;
}

uint64_t mlir::ShapedType::hasStaticShape(mlir::ShapedType *this)
{
  if (!mlir::ElementsAttr::getShapedType(this))
  {
    return 0;
  }

  Shape = mlir::ShapedType::getShape(this);
  if (!v3)
  {
    return 1;
  }

  v4 = 8 * v3 - 8;
  do
  {
    v5 = *Shape++;
    v6 = v5 != 0x8000000000000000;
    v7 = v5 == 0x8000000000000000 || v4 == 0;
    v4 -= 8;
  }

  while (!v7);
  return v6;
}

void *mlir::ElementsAttr::value_begin<mlir::TypedAttr,void>@<X0>(uint64_t a1@<X8>, mlir::ElementsAttr *a2@<X0>)
{
  result = mlir::ElementsAttr::getValues<mlir::TypedAttr,void>(a2, v5);
  v4 = v5[0];
  *a1 = v5[0];
  *(a1 + 1) = v5[1];
  if (v4 == 1)
  {
    *(a1 + 8) = v6;
  }

  else
  {
    result = (*(*v6 + 16))(v6);
  }

  *(a1 + 16) = v7;
  if ((v8 & 1) == 0)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v5[0] & 1) == 0)
  {
    result = v6;
    v6 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *mlir::ElementsAttr::getValues<mlir::TypedAttr,void>@<X0>(mlir::ElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::getValues<mlir::Attribute>(a1, &v11);
  result = llvm::map_range<mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>,mlir::TypedAttr (*)(mlir::Attribute)>(&v11, _ZZNK4mlir12ElementsAttr9getValuesINS_9TypedAttrEvEENS_6detail17ElementsAttrRangeIN4llvm15mapped_iteratorINS3_20ElementsAttrIteratorINS_9AttributeEEEPFT_S8_EDTclclsr3stdE7declvalISC_EEdeclL_ZNSt3__17declvalB8nn200100IS9_EEDTclsr3stdE9__declvalISA_ELi0EEEvEEEEEEEEvENUlS8_E_8__invokeES8_, v15);
  v8 = v15[0];
  *a2 = v15[0];
  *(a2 + 1) = v15[1];
  if (v8 == 1)
  {
    *(a2 + 8) = v16;
  }

  else
  {
    result = (*(*v16 + 16))(v16);
  }

  *(a2 + 16) = v17;
  v9 = v18;
  *(a2 + 32) = v18;
  *(a2 + 33) = v19;
  if (v9 == 1)
  {
    *(a2 + 40) = *v20;
    *(a2 + 56) = *&v20[16];
    *(a2 + 64) = ShapedType;
    *(a2 + 72) = v6;
  }

  else
  {
    result = (*(**v20 + 16))(*v20);
    v10 = v18;
    *(a2 + 48) = *&v20[8];
    *(a2 + 64) = ShapedType;
    *(a2 + 72) = v6;
    if ((v10 & 1) == 0)
    {
      result = *v20;
      *v20 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if ((v15[0] & 1) == 0)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v13 & 1) == 0)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v11 & 1) == 0)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *llvm::map_range<mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>,mlir::TypedAttr (*)(mlir::Attribute)>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v20 = *result;
  v6 = v20;
  v7 = *(result + 1);
  v21 = v7;
  if (v20 == 1)
  {
    v22[0] = result[1];
  }

  else
  {
    result = (*(*result[1] + 16))(v22);
    v6 = v20;
    v7 = v21;
  }

  v8 = v4[2];
  v22[1] = v8;
  if (v6)
  {
    v9 = v22[0];
    v10 = v22[0];
  }

  else
  {
    v9 = 0;
    v10 = v22[0];
    v22[0] = 0;
  }

  v17 = *(v4 + 24);
  v11 = v17;
  v12 = *(v4 + 25);
  v18 = v12;
  if (v17 == 1)
  {
    v19[0] = v4[4];
  }

  else
  {
    result = (*(*v4[4] + 16))(v19);
    v11 = v17;
    v12 = v18;
  }

  v13 = v4[5];
  v19[1] = v13;
  if (v11)
  {
    v14 = v19[0];
    v15 = v19[0];
  }

  else
  {
    v14 = 0;
    v15 = v19[0];
    v19[0] = 0;
  }

  *a3 = v6;
  *(a3 + 1) = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
  *(a3 + 33) = v12;
  *(a3 + 40) = v15;
  *(a3 + 48) = v13;
  v16 = v6 | (v9 == 0);
  *(a3 + 56) = a2;
  if ((v16 & 1) == 0)
  {
    result = (*(*v9 + 8))(v9);
  }

  if ((v11 & 1) == 0 && v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if ((v17 & 1) == 0)
  {
    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v16 & 1) == 0)
  {
    result = (*(*v9 + 8))(v9);
  }

  if ((v20 & 1) == 0)
  {
    result = v22[0];
    v22[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}