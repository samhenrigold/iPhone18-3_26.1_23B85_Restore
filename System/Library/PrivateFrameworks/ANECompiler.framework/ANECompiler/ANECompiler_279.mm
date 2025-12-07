uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::canonDeconvPaddings(uint64_t a1, uint64_t a2, mlir::Operation *a3, mlir::Operation *a4, mlir::Operation **a5, uint64_t a6, void *a7)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = a3;
  v35 = v37;
  v36 = 0xA00000000;
  v38[0] = 6;
  IntegerType = mlir::Builder::getIntegerType((a1 + 8), 64, 0);
  v12 = mlir::RankedTensorType::get(v38, 1, IntegerType, 0);
  if (v12)
  {
    v13 = v12;
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v12 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = mlir::DenseElementsAttr::getFromRawBuffer(v12, v14, v35, 8 * v36);
  v31 = *(*(a4 + 9) + 24);
  v32 = v15;
  v30 = *(*(a3 + 9) + 56);
  Stride = mlir::anec::Deconvolution::getStride(&v34);
  Dilation = mlir::anec::Deconvolution::getDilation(&v34);
  Groups = mlir::anec::Convolution::getGroups(&v34);
  ChannelWise = mlir::anec::Deconvolution::getChannelWise(&v34);
  KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(&v34);
  KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(&v34);
  KernelPalettized_LUTAttr = mlir::anec::Deconvolution::getKernelPalettized_LUTAttr(&v34);
  v38[0] = mlir::Operation::getAttrDictionary(v34);
  Value = mlir::ArrayAttr::getValue(v38);
  v38[0] = mlir::Operation::getAttrDictionary(v34);
  v17 = mlir::ArrayAttr::getValue(v38);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v17 + 16 * v18 - 32), *(*(*(v34 + 6) + 96) + 24));
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v38[0] = v20;
  v21 = mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::MemRefType>,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::anec::PaddingMode &,unsigned long long,BOOL,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>((a1 + 8), a2, &v31, &v30, &Stride, &Dilation, &v32, &v33, &Groups, &ChannelWise, &KernelScaleAttr, &KernelZeroPointAttr, &KernelPalettized_LUTAttr, v38);
  if (v35 != v37)
  {
    free(v35);
  }

  return v21 - 16;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::anec::anonymous namespace::static_dag_matcher_0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Padding,void>::id)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v24 = *(a1 + 16);
    if (v24 && instruction::util::IsTasklet(v24))
    {
    }

    return 0;
  }

  *a6 = v9;
  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  a3[1] = 1;
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "padding_modes", 13), (v15 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "padding_modes", 0xDuLL);
  }

  v16 = InherentAttr;
  if (!InherentAttr || !mlir::DenseIntElementsAttr::classof(InherentAttr))
  {
    v23 = *(a1 + 16);
    if (v23 && instruction::util::IsTasklet(v23))
    {
    }

    return 0;
  }

  *a7 = v16;
  if (!*(a2 + 47) || (v17 = mlir::Operation::getInherentAttr(a2, "padding_sizes", 13), (v18 & 1) == 0))
  {
    v17 = mlir::DictionaryAttr::get(a2 + 56, "padding_sizes", 0xDuLL);
  }

  v19 = v17;
  if (!v17 || !mlir::DenseIntElementsAttr::classof(v17))
  {
    v25 = *(a1 + 16);
    if (v25 && instruction::util::IsTasklet(v25))
    {
    }

    return 0;
  }

  *a4 = v19;
  if (!*(a2 + 47) || (v20 = mlir::Operation::getInherentAttr(a2, "background_value", 16), (v21 & 1) == 0))
  {
    v20 = mlir::DictionaryAttr::get(a2 + 56, "background_value", 0x10uLL);
  }

  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      if (instruction::util::IsTasklet(v22))
      {
      }
    }

    return 0;
  }

  *a5 = v20;
  return 1;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DictionaryAttr &,mlir::DenseFPElementsAttr &,mlir::UnitAttr &,mlir::anec::Deconvolution &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::Padding &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::Deconvolution type";
  v13 = 49;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DictionaryAttr &,mlir::DenseFPElementsAttr &,mlir::UnitAttr &,mlir::anec::Deconvolution &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::Padding &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::anec::Padding &,mlir::DenseIntElementsAttr &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::Padding type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::anec::Padding &,mlir::DenseIntElementsAttr &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.padding' to have attribute 'padding_modes' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::anec::Padding &,mlir::DenseIntElementsAttr &)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.padding' to have attribute 'padding_sizes' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::anec::Padding &,mlir::DenseIntElementsAttr &)::$_3>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.padding' to have attribute 'background_value' of type '::mlir::FloatAttr'";
  v13 = 91;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DictionaryAttr &,mlir::DenseFPElementsAttr &,mlir::UnitAttr &,mlir::anec::Deconvolution &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::Padding &)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DictionaryAttr &,mlir::DenseFPElementsAttr &,mlir::UnitAttr &,mlir::anec::Deconvolution &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::Padding &)::$_3>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 100;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DictionaryAttr &,mlir::DenseFPElementsAttr &,mlir::UnitAttr &,mlir::anec::Deconvolution &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingModeAttr &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::anec::Padding &)::$_4>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'dimension' of type '::mlir::IntegerAttr'";
  v13 = 89;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'offset' of type '::mlir::IntegerAttr'";
  v13 = 86;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'size' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'step' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(result + 12) < a2)
      {
        v4 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), a2, 8);
        result = v4;
        v2 = *(v4 + 8);
      }

      if (v2 != a2)
      {
        v5 = result;
        bzero((*result + 8 * v2), 8 * a2 - 8 * v2);
        result = v5;
      }
    }

    *(result + 8) = a2;
  }

  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'conv_op, pad_op, out' failed to satisfy constraint: ''";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop1Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'iv1_step' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::MemRefType>,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::anec::PaddingMode &,unsigned long long,BOOL,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, unint64_t *a9, char *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Deconvolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Deconvolution,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::MemRefType>,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::anec::PaddingMode &,unsigned long long,BOOL,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(v31, v30, v29);
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

void mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::~ANEC_PadDeconvCrop2Folding(mlir::anec::_anonymous_namespace_::ANEC_PadDeconvCrop2Folding *this)
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

uint64_t mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::anec::_anonymous_namespace_::ANEC_PadDeconvCrop2Folding *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v79[4] = *MEMORY[0x1E69E9840];
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v58[0] = v5;
  v58[1] = v6;
  v56 = 0;
  v57 = 0;
  v55[0] = v5;
  v55[1] = v6;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v77 = v79;
  v79[0] = a2;
  v78 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v72 = *(*(v7 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v72);
  if (!DefiningOp)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_80;
    }

    v11 = *(v7 + 3);
LABEL_14:
    (*(*v10 + 88))(v10, v11, v12, &v72);
LABEL_80:
    v22 = 0;
    goto LABEL_81;
  }

  v9 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_80;
    }

    v11 = *(v9 + 24);
    goto LABEL_14;
  }

  v72 = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&v72);
  if (!v13)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_80;
    }

    v11 = *(v9 + 24);
    goto LABEL_14;
  }

  v14 = v13;
  {
    goto LABEL_80;
  }

  v15 = v78;
  if (v78 >= HIDWORD(v78))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v78 + 1, 8);
    v15 = v78;
  }

  v77[v15] = v14;
  LODWORD(v78) = v78 + 1;
  if (!*(v9 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v9, "dimension", 9), (v17 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v9 + 56, "dimension", 9uLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_80;
    }

    v11 = *(v9 + 24);
    goto LABEL_14;
  }

  if (!*(v9 + 47) || (v18 = mlir::Operation::getInherentAttr(v9, "offset", 6), (v19 & 1) == 0))
  {
    v18 = mlir::DictionaryAttr::get(v9 + 56, "offset", 6uLL);
  }

  if (!v18 || *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_80;
    }

    v11 = *(v9 + 24);
    goto LABEL_14;
  }

  if (!*(v9 + 47) || (v20 = mlir::Operation::getInherentAttr(v9, "size", 4), (v21 & 1) == 0))
  {
    v20 = mlir::DictionaryAttr::get(v9 + 56, "size", 4uLL);
  }

  if (!v20 || *(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_81;
  }

  v23 = mlir::Operation::getAttrOfType<mlir::IntegerAttr>(v9, "step", 4uLL);
  if (!v23)
  {
    goto LABEL_81;
  }

  v70 = v23;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v77, v9);
  if (!*(a2 + 47) || (v24 = mlir::Operation::getInherentAttr(a2, "dimension", 9), (v25 & 1) == 0))
  {
    v24 = mlir::DictionaryAttr::get(a2 + 56, "dimension", 9uLL);
  }

  if (!v24 || *(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v26 = *(a3 + 2);
    if (!v26 || !instruction::util::IsTasklet(v26))
    {
      goto LABEL_80;
    }

    v27 = *(a2 + 3);
    goto LABEL_53;
  }

  if (!*(a2 + 47) || (v29 = mlir::Operation::getInherentAttr(a2, "offset", 6), (v30 & 1) == 0))
  {
    v29 = mlir::DictionaryAttr::get(a2 + 56, "offset", 6uLL);
  }

  if (!v29 || *(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v26 = *(a3 + 2);
    if (!v26 || !instruction::util::IsTasklet(v26))
    {
      goto LABEL_80;
    }

    v27 = *(a2 + 3);
    goto LABEL_53;
  }

  if (!*(a2 + 47) || (v31 = mlir::Operation::getInherentAttr(a2, "size", 4), (v32 & 1) == 0))
  {
    v31 = mlir::DictionaryAttr::get(a2 + 56, "size", 4uLL);
  }

  if (!v31 || *(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v26 = *(a3 + 2);
    if (!v26 || !instruction::util::IsTasklet(v26))
    {
      goto LABEL_80;
    }

    v27 = *(a2 + 3);
    goto LABEL_53;
  }

  if (!*(a2 + 47) || (v33 = mlir::Operation::getInherentAttr(a2, "step", 4), (v34 & 1) == 0))
  {
    v33 = mlir::DictionaryAttr::get(a2 + 56, "step", 4uLL);
  }

  if (!v33 || *(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v26 = *(a3 + 2);
    if (!v26 || !instruction::util::IsTasklet(v26))
    {
      goto LABEL_80;
    }

    v27 = *(a2 + 3);
LABEL_53:
    (*(*v26 + 88))(v26, v27, v28, &v72);
    goto LABEL_80;
  }

  v66 = v33;
  if (*(v56 + 36))
  {
    v36 = v56 - 16;
  }

  else
  {
    v36 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
  v37 = mlir::Value::getDefiningOp(&NextResultAtOffset);
  if (*(v54 + 36))
  {
    v38 = v54 - 16;
  }

  else
  {
    v38 = 0;
  }

  v76 = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  v39 = mlir::Value::getDefiningOp(&v76);
  if (*(v9 + 36))
  {
    v40 = v9 - 16;
  }

  else
  {
    v40 = 0;
  }

  v51 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  v72 = mlir::Value::getDefiningOp(&v51);
  if (*(v7 + 9))
  {
    v41 = v7 - 16;
  }

  else
  {
    v41 = 0;
  }

  v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
  v73 = mlir::Value::getDefiningOp(&v50);
  if (*(v7 + 9))
  {
    v42 = v7 - 16;
  }

  else
  {
    v42 = 0;
  }

  v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  {
    goto LABEL_81;
  }

  mlir::IntegerAttr::getValue(&v70, &v72);
  v44 = v73;
  if (v73 >= 0x41)
  {
    if (v44 - llvm::APInt::countLeadingZerosSlowCase(&v72) >= 0x41)
    {
      if (v72)
      {
        MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
      }

      goto LABEL_111;
    }

    v45 = *v72;
    MEMORY[0x1AC55A040]();
    if (v45 != 1)
    {
LABEL_111:
      goto LABEL_81;
    }
  }

  else if (v72 != 1)
  {
    goto LABEL_111;
  }

  mlir::IntegerAttr::getValue(&v66, &v72);
  v46 = v73;
  if (v73 < 0x41)
  {
    if (v72 != 1)
    {
      goto LABEL_117;
    }

LABEL_114:
    v48 = *(v77[1] + 24);
    v72 = *(*v77 + 24);
    v73 = v48;
    v49 = *(v77[3] + 24);
    v74 = *(v77[2] + 24);
    v75 = v49;
    mlir::Builder::getFusedLoc(a3 + 1, &v72, 4, 0);
  }

  if (v46 - llvm::APInt::countLeadingZerosSlowCase(&v72) >= 0x41)
  {
    if (v72)
    {
      MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
    }

    goto LABEL_117;
  }

  v47 = *v72;
  MEMORY[0x1AC55A040]();
  if (v47 == 1)
  {
    goto LABEL_114;
  }

LABEL_117:
LABEL_81:
  if (v77 != v79)
  {
    free(v77);
  }

  return v22;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#13}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#14}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && instruction::util::IsTasklet(*(a1 + 16)))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::anec::InputView type";
  v13 = 45;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'dimension' of type '::mlir::IntegerAttr'";
  v13 = 89;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'offset' of type '::mlir::IntegerAttr'";
  v13 = 86;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'size' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'step' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'dimension' of type '::mlir::IntegerAttr'";
  v13 = 89;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'offset' of type '::mlir::IntegerAttr'";
  v13 = 86;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'size' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#11}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.input_view' to have attribute 'step' of type '::mlir::IntegerAttr'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#12}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'conv_op, pad_op, crop_op, out' failed to satisfy constraint: ''";
  v13 = 73;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#13}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'iv1_step' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvCrop2Folding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#14}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'iv2_step' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::~ANEC_PadDeconvFolding(mlir::anec::_anonymous_namespace_::ANEC_PadDeconvFolding *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'stride' of type '::mlir::DenseIntElementsAttr'";
  v13 = 98;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'dilation' of type '::mlir::DenseIntElementsAttr'";
  v13 = 100;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.deconvolution' to have attribute 'padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_PadDeconvFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out, pad_op' failed to satisfy constraint: ''";
  v13 = 55;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_40()
{
  if (*(v0 + 36))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void mlir::anec::anonymous namespace::ANEC_GOCFolding::~ANEC_GOCFolding(mlir::anec::_anonymous_namespace_::ANEC_GOCFolding *this)
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

char *mlir::anec::anonymous namespace::foldGOCLike(uint64_t a1, uint64_t a2, llvm::hashing::detail *a3, mlir::AffineMap *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v103[6] = *MEMORY[0x1E69E9840];
  v91 = a5;
  v101 = v103;
  v102 = 0xC00000000;
  v98 = v100;
  v99 = 0xC00000000;
  v95 = v97;
  v96 = 0xC00000000;
  v12 = *(*mlir::getElementTypeOrSelf((*(a7 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    mlir::matchConstantWithFloatVector<float>(a7, &v101);
  }

  else
  {
    mlir::matchConstantWithIntVector<float>(a7, &v101);
  }

  v29 = *(*mlir::getElementTypeOrSelf((*(a8 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    mlir::matchConstantWithFloatVector<float>(a8, &v98);
  }

  else
  {
    mlir::matchConstantWithIntVector<float>(a8, &v98);
  }

  if (a9)
  {
    v30 = *(*mlir::getElementTypeOrSelf((*(a9 + 8) & 0xFFFFFFFFFFFFFFF8)) + 136);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      mlir::matchConstantWithFloatVector<float>(a9, &v95);
    }

    else
    {
      mlir::matchConstantWithIntVector<float>(a9, &v95);
    }
  }

  if (a6 < 1)
  {
    v34 = 1;
    v31 = a3;
    v32 = a4;
    goto LABEL_100;
  }

  v31 = a3;
  v32 = a4;
  if (a6 == 1)
  {
    v33 = 0;
    v34 = 1;
LABEL_98:
    v39 = a6 - v33;
    v40 = (a3 + 8 * v33);
    do
    {
      v41 = *v40++;
      v34 *= v41;
      --v39;
    }

    while (v39);
    goto LABEL_100;
  }

  v33 = a6 & 0x7FFFFFFFFFFFFFFELL;
  v35 = (a3 + 8);
  v36 = 1;
  v37 = a6 & 0x7FFFFFFFFFFFFFFELL;
  v38 = 1;
  do
  {
    v36 *= *(v35 - 1);
    v38 *= *v35;
    v35 += 2;
    v37 -= 2;
  }

  while (v37);
  v34 = v38 * v36;
  if (v33 != a6)
  {
    goto LABEL_98;
  }

LABEL_100:
  v42 = a6 + 1;
  if (a6 + 1 >= v32)
  {
    v44 = 1;
    goto LABEL_109;
  }

  v43 = v32 + ~a6;
  if (v43 <= 1)
  {
    v44 = 1;
LABEL_107:
    v49 = v32 - v42;
    v50 = (v31 + 8 * v42);
    do
    {
      v51 = *v50++;
      v44 *= v51;
      --v49;
    }

    while (v49);
    goto LABEL_109;
  }

  v42 += v43 & 0xFFFFFFFFFFFFFFFELL;
  v45 = (v31 + 8 * a6 + 16);
  v46 = 1;
  v47 = v43 & 0xFFFFFFFFFFFFFFFELL;
  v48 = 1;
  do
  {
    v46 *= *(v45 - 1);
    v48 *= *v45;
    v45 += 2;
    v47 -= 2;
  }

  while (v47);
  v44 = v48 * v46;
  if (v43 != (v43 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_107;
  }

LABEL_109:
  v52 = *(v31 + a6);
  v92 = v94;
  v93 = 0xC00000000;
  if (v34 >= 1)
  {
    v53 = 0;
    v54 = 0;
    for (i = 0; i != v34; ++i)
    {
      if (v52 >= 1)
      {
        v56 = 0;
        v57 = v53;
        do
        {
          v58 = v44;
          v59 = v57;
          if (v44 >= 1)
          {
            do
            {
              if (v102 == 1)
              {
                v60 = 0;
              }

              else
              {
                v60 = v59;
              }

              v61 = v101[v60];
              if (v96)
              {
                if (v96 == 1)
                {
                  v62 = 0;
                }

                else
                {
                  v62 = v56;
                }

                v61 = v61 + *(v95 + v62);
              }

              if (v99 == 1)
              {
                v63 = 0;
              }

              else
              {
                v63 = v56;
              }

              v64 = v98[v63];
              if (v54 >= HIDWORD(v93))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v54 + 1, 4);
                v54 = v93;
              }

              *(v92 + v54) = v61 * v64;
              v54 = v93 + 1;
              LODWORD(v93) = v93 + 1;
              ++v59;
              --v58;
            }

            while (v58);
          }

          ++v56;
          v57 += v44;
        }

        while (v56 != v52);
      }

      v53 += v44 * v52;
    }
  }

  if (mlir::Type::isF16(&v91))
  {
    v89 = mlir::MemRefType::get(a3, a4, v91, 0, 0, 0);
    F32Type = mlir::Builder::getF32Type((a1 + 8), v65);
    v67 = mlir::RankedTensorType::get(a3, a4, F32Type, 0);
    v87[0] = mlir::createRawElementsAttr(v67, v92, 4 * v93);
    v87[1] = v68;
    v69 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), a2, &v89, v87);
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v70 = mlir::RankedTensorType::get(a3, a4, v91, 0);
    if (v70)
    {
      v71 = v70;
      v72 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v70 + 8);
      v70 = v71;
    }

    else
    {
      v72 = 0;
    }

    mlir::mps::CPUNDArray::tryMakeAliasedArray(v70, v72, &v89, v87);
    if (mlir::Type::isSignedInteger(&v91, 8))
    {
      if (v93)
      {
        v73 = 0;
        v74 = v88;
        do
        {
          v75 = llroundf(*(v92 + v73));
          if (v75 >= 127)
          {
            v75 = 127;
          }

          if (v75 <= -128)
          {
            LOBYTE(v75) = 0x80;
          }

          *(v74 + v73++) = v75;
        }

        while (v73 < v93);
      }
    }

    else
    {
      mlir::Type::isUnsignedInteger(&v91, 8);
      if (v93)
      {
        v76 = 0;
        v77 = v88;
        do
        {
          v78 = llroundf(*(v92 + v76));
          if (v78 >= 255)
          {
            v78 = 255;
          }

          *(v77 + v76++) = v78 & ~(v78 >> 63);
        }

        while (v76 < v93);
      }
    }

    ElementsAttr = v89;
    if (v89)
    {
      v80 = v90;
    }

    else
    {
      ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(v87, 0, 0);
    }

    v89 = ElementsAttr;
    v90 = v80;
    v86 = mlir::MemRefType::get(a3, a4, v91, 0, 0, 0);
    v69 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a1 + 8), a2, &v86, &v89);
    mlir::mps::CPUNDArray::~CPUNDArray(v87);
  }

  if (v92 != v94)
  {
    free(v92);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  if (v98 != v100)
  {
    free(v98);
  }

  if (v101 != v103)
  {
    free(v101);
  }

  return v69 - 16;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_GOCFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x' failed to satisfy constraint: 'constant value'";
  v13 = 59;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_GOCFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'scale' failed to satisfy constraint: 'constant value'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_GOCFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'bias' failed to satisfy constraint: 'constant value'";
  v13 = 62;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::matchConstantWithIntVector<float>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::ElementsAttr::getShapedType(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<float>(v8, v9, a2, 1);
  return 1;
}

void mlir::anec::anonymous namespace::ANEC_InvertFolding::~ANEC_InvertFolding(mlir::anec::_anonymous_namespace_::ANEC_InvertFolding *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_InvertFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'anec.invert' to have attribute 'epsilon' of type '::mlir::FloatAttr'";
  v13 = 81;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_InvertFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'attr' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_InvertFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x' failed to satisfy constraint: ''";
  v13 = 45;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_InvertFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x' failed to satisfy constraint: 'constant value'";
  v13 = 59;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::ANEC_MulFolding::~ANEC_MulFolding(mlir::anec::_anonymous_namespace_::ANEC_MulFolding *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_MulFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'out' failed to satisfy constraint: ''";
  v13 = 47;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_MulFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x' failed to satisfy constraint: 'constant value'";
  v13 = 59;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::anec::anonymous namespace::ANEC_MulFolding::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'scale' failed to satisfy constraint: 'constant value'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::anec::anonymous namespace::CanonicalizeCast::~CanonicalizeCast(mlir::anec::_anonymous_namespace_::CanonicalizeCast *this)
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

uint64_t mlir::anec::anonymous namespace::CanonicalizeCast::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::Float16Type **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = *(*(a2 + 72) + 24);
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v22 = xmmword_1A7601048;
  v23 = unk_1A7601058;
  F16Type = mlir::Builder::getF16Type(a3 + 1, v6);
  v8 = mlir::RankedTensorType::get(&v22, 4, F16Type, 0);
  v22 = xmmword_1A7601048;
  v23 = unk_1A7601058;
  v10 = mlir::Builder::getF16Type(a3 + 1, v9);
  v19 = mlir::MemRefType::get(&v22, 4, v10, 0, 0, 0);
  v11 = *(a2 + 24);
  *&v22 = mlir::createSplatF16ElementsAttr(v8, 1.0);
  *(&v22 + 1) = v12;
  v18 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 1), v11, &v19, &v22);
  v13 = *(a2 + 24);
  *&v22 = mlir::createSplatF16ElementsAttr(v8, 0.0);
  *(&v22 + 1) = v14;
  v17 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 1), v13, &v19, &v22);
  v15 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::mps::ConstantOp &>((a3 + 1), *(a2 + 24), &v20, &v21, &v18, &v17);
  (*(*a3 + 1))(a3, a2, v15);
  return 1;
}

void mlir::anec::anonymous namespace::ConvertScaledEWToGOCForBias::~ConvertScaledEWToGOCForBias(mlir::anec::_anonymous_namespace_::ConvertScaledEWToGOCForBias *this)
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

uint64_t mlir::anec::anonymous namespace::ConvertScaledEWToGOCForBias::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v157 = *MEMORY[0x1E69E9840];
  v129 = a2;
  Mode = mlir::anec::ScaledElementWise::getMode(&v129);
  if (!v5)
  {
    return 0;
  }

  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = v5;
  v8 = memcmp(Mode, "add", v6);
  result = 0;
  if (v7 != 3 || v8)
  {
    return result;
  }

  v10 = v129;
  v146 = 0;
  v147 = 0;
  v142 = 0;
  v143 = &v146;
  LOBYTE(v144) = 0;
  v145 = 0;
  v141 = &v143;
  v138[0] = &v141;
  v138[1] = &v147;
  v139 = 0;
  v140 = 0;
  v11 = v129 - 16;
  if (*(v129 + 9))
  {
    v12 = v129 - 16;
  }

  else
  {
    v12 = 0;
  }

  *&v155 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v155);
  if (DefiningOp && mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(v138, DefiningOp))
  {
    v14 = v147;
    v137 = v147;
    if (*(v147 + 36))
    {
      v15 = v147 - 16;
    }

    else
    {
      v15 = 0;
    }

    v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v16)
    {
      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    v136[0] = v16;
    v136[1] = v17;
    if (v145)
    {
      v18 = v144;
    }

    else
    {
      v18 = v142;
    }

    v134 = v142;
    v135 = v18;
    *&v155 = v156;
    *(&v155 + 1) = 0x300000000;
    v152 = v154;
    v153 = 0x300000000;
    TransposeList = mlir::anec::Transpose::getTransposeList(&v135);
    if (TransposeList)
    {
      v20 = TransposeList;
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*TransposeList + 8);
      TransposeList = v20;
    }

    else
    {
      v21 = 0;
    }

    mlir::getListOfPairs<long long>(TransposeList, v21, &v155);
    v22 = mlir::anec::Transpose::getTransposeList(&v134);
    if (v22)
    {
      v23 = v22;
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v22 + 8);
      v22 = v23;
    }

    else
    {
      v24 = 0;
    }

    mlir::getListOfPairs<long long>(v22, v24, &v152);
    mlir::ShapedType::getShape(v136);
    v26 = v25;
    IndexFromDim = mlir::anec::getIndexFromDim(1, v25);
    v29 = v28;
    v30 = mlir::anec::getIndexFromDim(3, v26);
    v32 = 0;
    if ((v29 & 1) != 0 && (v31 & 1) != 0 && DWORD2(v155) == 2)
    {
      v32 = 0;
      if (*v155 == IndexFromDim && *(v155 + 8) == v30 || *v155 == v30 && *(v155 + 8) == IndexFromDim)
      {
        if ((v33 = *(v155 + 16), v33 == IndexFromDim) && *(v155 + 24) == v30 || v33 == v30 && *(v155 + 24) == IndexFromDim)
        {
          v32 = 1;
        }
      }
    }

    mlir::ShapedType::getShape(v136);
    v35 = v34;
    v36 = mlir::anec::getIndexFromDim(1, v34);
    v38 = v37;
    v39 = mlir::anec::getIndexFromDim(4, v35);
    if ((v38 & 1) != 0 && (v40 & 1) != 0 && DWORD2(v155) == 2 && (*v155 == v36 && *(v155 + 8) == v39 || *v155 == v39 && *(v155 + 8) == v36))
    {
      v41 = *(v155 + 16);
      if (v41 == v36 && *(v155 + 24) == v39)
      {
        goto LABEL_56;
      }

      if (v41 == v39)
      {
        v42 = *(v155 + 24) == v36 || v32;
        if ((v42 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_56:
        mlir::ShapedType::getShape(v136);
        v44 = v43;
        v45 = mlir::anec::getIndexFromDim(1, v43);
        v47 = v46;
        v48 = mlir::anec::getIndexFromDim(3, v44);
        if ((v47 & 1) == 0 || (v49 & 1) == 0 || v153 != 2 || (*v152 != v45 || v152[1] != v48) && (*v152 != v48 || v152[1] != v45) || ((v50 = v152[2], v50 != v45) || v152[3] != v48) && (v50 != v48 || v152[3] != v45))
        {
          mlir::ShapedType::getShape(v136);
          v52 = v51;
          v53 = mlir::anec::getIndexFromDim(1, v51);
          v55 = v54;
          v56 = mlir::anec::getIndexFromDim(4, v52);
          v58 = 0;
          if ((v55 & 1) == 0 || (v57 & 1) == 0 || v153 != 2)
          {
            goto LABEL_85;
          }

          if ((*v152 != v53 || v152[1] != v56) && (*v152 != v56 || v152[1] != v53))
          {
            goto LABEL_84;
          }

          v59 = v152[2];
          if ((v59 != v53 || v152[3] != v56) && (v59 != v56 || v152[3] != v53))
          {
            goto LABEL_84;
          }
        }

        if (v32)
        {
          v60 = 3;
        }

        else
        {
          v60 = 4;
        }

        {
          v62 = *(v10 + 3);
          *v150 = xmmword_1A7601048;
          v151[0] = unk_1A7601058;
          F16Type = mlir::Builder::getF16Type((a3 + 8), v61);
          v64 = mlir::RankedTensorType::get(v150, 4, F16Type, 0);
          *v150 = xmmword_1A7601048;
          v151[0] = unk_1A7601058;
          v66 = mlir::Builder::getF16Type((a3 + 8), v65);
          v131[0] = mlir::MemRefType::get(v150, 4, v66, 0, 0, 0);
          v150[0] = mlir::createSplatF16ElementsAttr(v64, 1.0);
          v150[1] = v67;
          v133 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), v62, v131, v150);
          mlir::ShapedType::getShape(v136);
          v69 = v68;
          v150[0] = v151;
          HIDWORD(v150[1]) = 6;
          if (v68 < 7)
          {
            if (!v68)
            {
LABEL_112:
              LODWORD(v150[1]) = v69;
              mlir::ShapedType::getShape(v136);
              v88 = mlir::anec::getIndexFromDim(1, v87);
              v58 = v89;
              if (v89)
              {
                v90 = v88;
                Shape = mlir::ShapedType::getShape(v136);
                NumElements = mlir::ShapedType::getNumElements(Shape, v92);
                v94 = v150[0];
                *(v150[0] + v90) = NumElements;
                v95 = LODWORD(v150[1]);
                isSplat = mlir::ElementsAttr::isSplat(v136);
                v97 = mlir::MemRefType::get(v94, v95, isSplat, 0, 0, 0);
                v132 = v97;
                AsAttribute = mlir::mps::ConstantOp::getAsAttribute(&v137);
                if (v97)
                {
                  v100 = AsAttribute;
                  v101 = v99;
                  v102 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v97 + 8);
                  v99 = v101;
                  v103 = v102;
                  AsAttribute = v100;
                }

                else
                {
                  v103 = 0;
                }

                v131[0] = mlir::rewriteElementsAttr(AsAttribute, v99, v97, v103, 0);
                v131[1] = v104;
                v105 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), *(v137 + 24), &v132, v131);
                v106 = v146;
                v127 = *(a3 + 24);
                v107 = *(v146 + 2);
                ZinIrHalH13g::~ZinIrHalH13g(v146);
                v109 = *(v108 + 8);
                v128 = (a3 + 24);
                *(a3 + 24) = v107;
                *(a3 + 32) = v109;
                v110 = *(v106 + 3);
                if (*(v106 + 9))
                {
                  v111 = v106 - 16;
                }

                else
                {
                  v111 = 0;
                }

                v149 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v111, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
                if (*(v106 + 9))
                {
                  v112 = v106 - 16;
                }

                else
                {
                  v112 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v112, 0);
                if (*(v105 + 9))
                {
                  v113 = v105 - 16;
                }

                else
                {
                  v113 = 0;
                }

                v130 = mlir::detail::OpResultImpl::getNextResultAtOffset(v113, 0);
                v114 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a3 + 8), v110, &v149, &NextResultAtOffset, &v133, &v130);
                if (*(v106 + 9))
                {
                  v115 = v106 - 16;
                }

                else
                {
                  v115 = 0;
                }

                v116 = mlir::detail::OpResultImpl::getNextResultAtOffset(v115, 0);
                if (*(v114 + 9))
                {
                  v117 = v114 - 16;
                }

                else
                {
                  v117 = 0;
                }

                v118 = mlir::detail::OpResultImpl::getNextResultAtOffset(v117, 0);
                NextResultAtOffset = &v149;
                v149 = v114;
                mlir::RewriterBase::replaceUsesWithIf(a3, v116, v118, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &NextResultAtOffset, 0);
                if (*(v10 + 9))
                {
                  v119 = v11;
                }

                else
                {
                  v119 = 0;
                }

                v120 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v119, 0);
                if (v120)
                {
                  v121 = *(*(v10 + 9) + 24);
                  do
                  {
                    v122 = *v120;
                    v123 = v120[2];
                    (*(*a3 + 40))(a3, v123);
                    v124 = v120[1];
                    if (v124)
                    {
                      v125 = *v120;
                      *v124 = *v120;
                      if (v125)
                      {
                        v125[1] = v120[1];
                      }
                    }

                    v120[3] = v121;
                    v120[1] = v121;
                    v126 = *v121;
                    *v120 = *v121;
                    if (v126)
                    {
                      *(v126 + 8) = v120;
                    }

                    *v121 = v120;
                    (*(*a3 + 48))(a3, v123);
                    v120 = v122;
                  }

                  while (v122);
                }

                if (v127)
                {
                  *v128 = v127;
                }

                else
                {
                  *v128 = 0;
                  *(a3 + 32) = 0;
                }
              }

              if (v150[0] != v151)
              {
                free(v150[0]);
              }

LABEL_85:
              if (v152 != v154)
              {
                free(v152);
              }

              if (v155 != v156)
              {
                free(v155);
              }

              if (v58)
              {
                return 1;
              }

              goto LABEL_90;
            }

            v71 = 8 * v68;
            v70 = v151;
          }

          else
          {
            LODWORD(v150[1]) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v150, v151, v68, 8);
            v70 = v150[0];
            v71 = 8 * v69;
          }

          memset_pattern16(v70, &unk_1A75989B0, v71);
          goto LABEL_112;
        }

LABEL_84:
        v58 = 0;
        goto LABEL_85;
      }
    }

    if (!v32)
    {
      goto LABEL_84;
    }

    goto LABEL_56;
  }

LABEL_90:
  v72 = v129;
  v138[0] = 0;
  v143 = 0;
  v152 = &v143;
  v153 = v138;
  v154[0] = 0;
  v154[8] = 0;
  if (*(v129 + 9))
  {
    v73 = v129 - 16;
  }

  else
  {
    v73 = 0;
  }

  *&v155 = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0);
  result = mlir::Value::getDefiningOp(&v155);
  if (result)
  {
    result = mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(&v152, result);
    if (result)
    {
      *&v155 = v143;
      result = mlir::Value::getDefiningOp(&v155);
      if (result)
      {
        v74 = *(*(result + 48) + 16);
        if (v74 != &mlir::detail::TypeIDResolver<mlir::anec::Linear,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
        {
          return 0;
        }

        v75 = result;
        v76 = v138[0];
        if (result)
        {
          v78 = *(v72 + 3);
          v155 = xmmword_1A7601048;
          v156[0] = unk_1A7601058;
          v79 = mlir::Builder::getF16Type((a3 + 8), v77);
          v80 = mlir::RankedTensorType::get(&v155, 4, v79, 0);
          v155 = xmmword_1A7601048;
          v156[0] = unk_1A7601058;
          v82 = mlir::Builder::getF16Type((a3 + 8), v81);
          v150[0] = mlir::MemRefType::get(&v155, 4, v82, 0, 0, 0);
          *&v155 = mlir::createSplatF16ElementsAttr(v80, 1.0);
          *(&v155 + 1) = v83;
          *&v155 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a3 + 8), v78, v150, &v155);
          if (*(v72 + 9))
          {
            v84 = v72 - 16;
          }

          else
          {
            v84 = 0;
          }

          v150[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v84, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v141 = (v75 - 16);
          if (*(v76 + 9))
          {
            v85 = (v76 - 2);
          }

          else
          {
            v85 = 0;
          }

          v136[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
          v86 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a3 + 8), *(v72 + 3), v150, &v141, &v155, v136);
          (*(*a3 + 8))(a3, v72, v86);
          return 1;
        }
      }
    }
  }

  return result;
}

void mlir::getListOfPairs<long long>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x800000000;
  mlir::getIntValues<long long>(a1, a2, &v12, 1);
  v4 = v12;
  v5 = v13;
  if (v13)
  {
    v6 = v12;
    do
    {
      v7 = *v6;
      v10 = v6[1];
      v11 = v7;
      v8 = *(a3 + 8);
      if (v8 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned long long,unsigned long long>,true>::growAndEmplaceBack<unsigned long long &,unsigned long long &>(a3, &v11, &v10);
        v4 = v12;
        v5 = v13;
      }

      else
      {
        v9 = (*a3 + 16 * v8);
        *v9 = v7;
        v9[1] = v10;
        *(a3 + 8) = v8 + 1;
      }

      v6 += 2;
    }

    while (v6 != &v4[8 * v5]);
  }

  if (v4 != v14)
  {
    free(v4);
  }
}

BOOL mlir::anec::anonymous namespace::ConvertScaledEWToGOCForBias::isVectorConst(uint64_t a1, int a2)
{
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v4;
  v14[1] = v5;
  mlir::ShapedType::getShape(v14);
  IndexFromDim = mlir::anec::getIndexFromDim(a2, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = IndexFromDim;
  Shape = mlir::ShapedType::getShape(v14);
  NumElements = mlir::ShapedType::getNumElements(Shape, v11);
  return NumElements == *(mlir::ShapedType::getShape(v14) + 8 * v9);
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(uint64_t ****a1, uint64_t ***a2)
{
  if (a2[6][2] != &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
  {
    return 0;
  }

  v7 = *a1;
  v6 = a1[1];
  v21 = a2[9][3];
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (DefiningOp)
  {
    v24 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 1)
    {
      v20 = DefiningOp;
      v23 = 1;
      v21 = &v23;
      v22 = &v24;
      mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::anec::Transpose *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>(&v21, 0, *v7);
      v2 = v23;
      if (v23 == 1)
      {
        v7[1] = v24;
      }

      DefiningOp = v20;
    }

    else
    {
      v2 = 0;
    }
  }

  v9 = DefiningOp != 0;
  v21 = a2[9][7];
  v10 = mlir::Value::getDefiningOp(&v21);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id;
  if (v10 && *(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v6 || *v6 == v10))
  {
    *v6 = v10;
    if (v9 & v2)
    {
      goto LABEL_17;
    }
  }

  *a1[1] = 0;
  v13 = *a1;
  v14 = **a1;
  v15 = *(v14 + 16);
  **v14 = 0;
  if (v15 == 1 && *(v14 + 16) == 1)
  {
    *(v14 + 16) = 0;
  }

  v13[1] = 0;
  v16 = *a1;
  v17 = a1[1];
  v21 = a2[9][3];
  v18 = mlir::Value::getDefiningOp(&v21);
  if (v18)
  {
    if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v17 || *v17 == v18))
    {
      *v17 = v18;
      LODWORD(v11) = 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }
  }

  v19 = v18 != 0;
  v21 = a2[9][7];
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    v24 = result;
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
    {
      return 0;
    }

    if ((*(result + 46) & 0x80) == 0)
    {
      return 0;
    }

    if (*(result + 68) != 1)
    {
      return 0;
    }

    v23 = 1;
    v21 = &v23;
    v22 = &v24;
    mlir::detail::RecursivePatternMatcherBinder<mlir::anec::Transpose,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::anec::Transpose *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::anec::Transpose,0,mlir::detail::op_matcher_with_bind<mlir::anec::Linear>>>(&v21, 0, *v16);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v16[1] = v24;
    if ((v19 & v11) == 0)
    {
      return 0;
    }

LABEL_17:
    if ((a1[3] & 1) == 0)
    {
      *(a1 + 24) = 1;
    }

    a1[2] = a2;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinaryCommutative<mlir::anec::ScaledElementWise,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(uint64_t **a1, uint64_t *a2)
{
  if (*(a2[6] + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ScaledElementWise,void>::id)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[9];
  v7 = *(v6 + 24);
  v8 = **a1;
  if (v8)
  {
    v9 = v8 == v7;
  }

  else
  {
    **a1 = v7;
    v6 = a2[9];
    v9 = 1;
  }

  v18 = *(v6 + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id || (*v5 ? (v11 = *v5 == DefiningOp) : (v11 = 1), !v11 || (*v5 = DefiningOp, !v9)))
  {
    *a1[1] = 0;
    **a1 = 0;
    v12 = *a1;
    v13 = a1[1];
    v18 = *(a2[9] + 24);
    v14 = mlir::Value::getDefiningOp(&v18);
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

    v16 = *(a2[9] + 56);
    if (*v12)
    {
      v17 = *v12 == v16;
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v12 = v16;
      v17 = 1;
      if (v14)
      {
LABEL_23:
        result = 0;
        if ((v15 & v17) == 0)
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  if ((a1[3] & 1) == 0)
  {
    *(a1 + 24) = 1;
  }

  a1[2] = a2;
  return 1;
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  if (*(v1 + 36))
  {
    v3 = v0;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

void mlir::anec::writeSingleRegionPlist(uint64_t a1, mlir::Operation *a2, void **a3, uint64_t a4)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a4;
}

void mlir::anec::anonymous namespace::addInputToNetwork(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((mlir::anec::getANECIRDataType(a2) & 0x100000000) != 0)
  {
    mlir::anec::getANECInputName(a2, __p);
    *&v21[0] = a2[1] & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::ArrayAttr::getValue(v21);
    if (v6)
    {
      v7 = 8 * v6;
      while (*Value < 2)
      {
        ++Value;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      ANECIRDataType = mlir::anec::getANECIRDataType(a2);
      if ((ANECIRDataType & 0x100000000) != 0 && (ANECIRDataType - 7) < 4)
      {
        goto LABEL_11;
      }
    }

    v9 = *a2;
    if (*a2)
    {
      if (!*v9)
      {
        v10 = v9[2];
        v11 = *(*(v10 + 48) + 16);
        if (v11 != &mlir::detail::TypeIDResolver<mlir::anec::State,void>::id && v11 == &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id)
        {
          v12 = *(v10 + 36);
          if (v12)
          {
            v13 = v10 - 16;
          }

          else
          {
            v13 = 0;
          }

          *&v21[0] = v13;
          *(&v21[0] + 1) = v12;
          mlir::ResultRange::use_begin(v21, __dst);
          v14 = *(v10 + 36);
          if (v14)
          {
            v15 = v10 - 16;
          }

          else
          {
            v15 = 0;
          }

          v17.n128_u64[0] = v15;
          v17.n128_u64[1] = v14;
          mlir::ResultRange::use_end(&v17, &v23);
          v22 = v20;
          v21[0] = *__dst;
          v21[1] = v19;
        }
      }
    }

LABEL_11:
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void mlir::anec::getRegionConversionInfo(unsigned int *a1, std::string::size_type a2, uint64_t *a3, std::string::size_type a4)
{
  v5 = 11;
  strcpy(v4, "anec_region");
  mlir::anec::ANECIRNetwork::Create();
}

uint64_t mlir::anec::OpIDMap::addOpID(mlir::anec::OpIDMap *this, mlir::Operation *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a2;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v17);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>,unsigned long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseSetPair<unsigned long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4, &v16, v14);
  if (*(llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v17) + 2) == 1 || *(v17[6] + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 1;
  }

  v14[0] = "non-fusion op should only have 1 op ID";
  v15 = 259;
  mlir::Operation::emitError(v17, v14, v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v24;
      v7 = __p;
      if (v24 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v24 = v5;
      operator delete(v7);
    }

    v8 = v21;
    if (v21)
    {
      v9 = v22;
      v10 = v21;
      if (v22 != v21)
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
        v10 = v21;
      }

      v22 = v8;
      operator delete(v10);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return 0;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v6 = 0;
    v7 = 1;
    while (v5 != -4096)
    {
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 == -8192;
      }

      if (v8)
      {
        v6 = v4;
      }

      v9 = v3 + v7++;
      v3 = v9 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v6)
    {
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v10 = *(v13 + 8);
    v4 = v14;
    goto LABEL_15;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
    goto LABEL_24;
  }

LABEL_15:
  *(a1 + 8) = v10 + 1;
  if (*v4 != -4096)
  {
    --*(a1 + 12);
  }

  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  return v4 + 1;
}

uint64_t mlir::anec::OpIDMap::lookUpTheFirstOpID(mlir::anec::OpIDMap *this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(*this + 32 * v5);
  if (v6 != a2)
  {
    v13 = 1;
    while (v6 != -4096)
    {
      v14 = v5 + v13++;
      v5 = v14 & v4;
      v6 = *(*this + 32 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    v31[0] = *(*(a2 + 6) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(v31);
    if (AttrData)
    {
      v17 = v16;
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v16;
      if (v16)
      {
        memmove(&__dst, AttrData, v16);
      }

      __dst.__r_.__value_.__s.__data_[v17] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }

    v18 = std::string::insert(&__dst, 0, "Unable to find the corresponding op id from ");
    v19 = v18->__r_.__value_.__r.__words[2];
    *v29 = *&v18->__r_.__value_.__l.__data_;
    v30 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v32 = 260;
    v31[0] = v29;
    mlir::Operation::emitError(a2, v31, v34);
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

      v20 = __p;
      if (__p)
      {
        v21 = v40;
        v22 = __p;
        if (v40 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v40 = v20;
        operator delete(v22);
      }

      v23 = v37;
      if (v37)
      {
        v24 = v38;
        v25 = v37;
        if (v38 != v37)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v37;
        }

        v38 = v23;
        operator delete(v25);
      }

      if (v35 != &v36)
      {
        free(v35);
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    return 0;
  }

LABEL_3:
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](this, &v33);
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = *v7 + 8 * v9;
  if (*(v7 + 2))
  {
    if (v9)
    {
      v11 = 8 * v9;
      while (*v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v8;
        v11 -= 8;
        if (!v11)
        {
          return *v10;
        }
      }
    }

    v10 = v8;
  }

  return *v10;
}

uint64_t mlir::anec::OpIDMap::recordOpConversionFailure(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = v4 - 1;
  v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
  v9 = *(*a1 + 32 * v8);
  if (v9 != a2)
  {
    v16 = 1;
    while (v9 != -4096)
    {
      v17 = v8 + v16++;
      v8 = v17 & v7;
      v9 = *(*a1 + 32 * (v17 & v7));
      if (v9 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](a1, &v21);
  if (*(v10 + 2))
  {
    v11 = *(v10 + 4);
    if (v11)
    {
      v12 = 8 * v11;
      for (i = *v10; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v12 -= 8;
        if (!v12)
        {
          return 1;
        }
      }
    }

    else
    {
      i = *v10;
    }

    v14 = &(*v10)[v11];
    while (i != v14)
    {
      v19 = *i;
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
      }

      else
      {
        __p = *a4;
      }

      llvm::DenseMapBase<llvm::DenseMap<unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>,unsigned long,std::string,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,std::string>>::try_emplace<std::string>(a3, &v19, &__p, v18);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      do
      {
        ++i;
      }

      while (i != v14 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

  return 1;
}

uint64_t mlir::anec::OpIDMap::lookUpAndFillRegionInfoSourceOpIDs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_24:
    v26 = "Failed to record op conversion failure\n";
    v27 = 259;
    mlir::Operation::emitError(a2, &v26, v29);
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

      v18 = __p;
      if (__p)
      {
        v19 = v35;
        v20 = __p;
        if (v35 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v35 = v18;
        operator delete(v20);
      }

      v21 = v32;
      if (v32)
      {
        v22 = v33;
        v23 = v32;
        if (v33 != v32)
        {
          do
          {
            v25 = *--v22;
            v24 = v25;
            *v22 = 0;
            if (v25)
            {
              MEMORY[0x1AC55A040](v24, 0x1000C8077774924);
            }
          }

          while (v22 != v21);
          v23 = v32;
        }

        v33 = v21;
        operator delete(v23);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    return 0;
  }

  v5 = v3 - 1;
  v6 = v5 & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*a1 + 32 * v6);
  if (v7 != a2)
  {
    v16 = 1;
    while (v7 != -4096)
    {
      v17 = v6 + v16++;
      v6 = v17 & v5;
      v7 = *(*a1 + 32 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_24;
  }

LABEL_3:
  v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>,mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::DenseSet<unsigned long,llvm::DenseMapInfo<unsigned long,void>>>>::operator[](a1, &v28);
  if (*(v8 + 2))
  {
    v9 = *(v8 + 4);
    if (v9)
    {
      v10 = 8 * v9;
      for (i = *v8; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v10 -= 8;
        if (!v10)
        {
          return 1;
        }
      }
    }

    else
    {
      i = *v8;
    }

    v12 = &(*v8)[v9];
    if (i != v12)
    {
      v13 = *(a3 + 8);
      do
      {
        v14 = *i;
        if (v13 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
          v13 = *(a3 + 8);
        }

        *(*a3 + 8 * v13) = v14;
        v13 = *(a3 + 8) + 1;
        *(a3 + 8) = v13;
        do
        {
          ++i;
        }

        while (i != v12 && *i >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (i != v12);
    }
  }

  return 1;
}

BOOL mlir::anec::OpIDMap::isOpRecorded(mlir::anec::OpIDMap *this, mlir::Operation *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *this;
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(*this + 32 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 32 * v5);
  }

  while (v6 != a2);
  return result;
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIOInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A34F70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECustomIOInfo::~ANECustomIOInfo(mlir::anec::ANECustomIOInfo *this)
{
  v2 = *(this + 8);
  v3 = *(this + 18);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 8);
  }

  if (v2 != this + 80)
  {
    free(v2);
  }

  v7 = *this;
  v8 = *(this + 2);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *this;
  }

  if (v7 != this + 16)
  {
    free(v7);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__0NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A34FA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__0NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
  }

  return 1;
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIO>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A34FF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<mlir::anec::ANECustomIO>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2 != a1 + 13)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3 != a1 + 7)
  {

    free(v3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__1NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F1A35028;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZNS2_4anec12_GLOBAL__N_130ParseCustomIOInfoFromAttributeEPNS2_9OperationEE3__1NS2_14DictionaryAttrENS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISK_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
  }

  return 1;
}

void mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorBufferToTensor,true>(mlir::Operation *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v23 = v25;
  v24 = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  v29 = 1;
  v20 = v22;
  v21 = 0x600000000;
  Interleave = mlir::anec::TensorBufferToTensor::getInterleave(&v16);
  mlir::getValues<long long>(Interleave, &v20);
  Strides = mlir::anec::TensorBufferToTensor::getStrides(&v16);
  mlir::getValues<long long>(Strides, &v26);
  if (!v21 || !v27)
  {
    v8 = 0;
    *a2 = 0;
    goto LABEL_22;
  }

  v29 = *v20;
  if (*(v16 + 9))
  {
    v5 = v16 - 16;
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

  v15[0] = v6;
  v15[1] = v7;
  Shape = mlir::ShapedType::getShape(v15);
  v11 = v9;
  v17 = v19;
  v18 = 0x600000000;
  v12 = (8 * v9) >> 3;
  if (v12 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v12, 8);
    v13 = v18;
    v14 = 8 * v11;
    if (!v11)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = 0;
  v14 = 8 * v9;
  if (v9)
  {
LABEL_14:
    memcpy(v17 + 8 * v13, Shape, v14);
    v13 = v18;
  }

LABEL_15:
  LODWORD(v18) = v13 + (v14 >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(&v23, &v17);
  if (v17 != v19)
  {
    free(v17);
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  if (v24)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v23);
  }

  *(a2 + 48) = a2 + 64;
  *(a2 + 56) = 0x400000000;
  if (v27)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2 + 48, &v26);
  }

  *(a2 + 96) = v29;
  v8 = 1;
LABEL_22:
  *(a2 + 104) = v8;
  if (v20 != v22)
  {
    free(v20);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v23 != v25)
  {
    free(v23);
  }
}

void mlir::anec::ANECIRNetwork::AddLiveState(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = (*a2 + 8);
  v12 = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 488), v4, &std::piecewise_construct, &v12);
  std::string::operator=((v5 + 5), v4);
  v7 = (a1 + 200);
  v6 = *(a1 + 200);
  v8 = *(a1 + 208);
  if (v8 >= *(a1 + 212))
  {
    if (v6 <= v2 && v6 + 16 * v8 > v2)
    {
      v11 = &v2[-v6];
      llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a1 + 200, v8 + 1);
      v6 = *v7;
      v2 = &v11[*v7];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::shared_ptr<mlir::anec::FunctionConversionInfo>,false>::grow(a1 + 200, v8 + 1);
      v6 = *v7;
    }
  }

  v9 = *(a1 + 208);
  v10 = *v2;
  *(v6 + 16 * v9) = *v2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    LODWORD(v9) = *(a1 + 208);
  }

  *(a1 + 208) = v9 + 1;
}

void mlir::anec::ANECIRInput::~ANECIRInput(mlir::anec::ANECIRInput *this)
{
  mlir::anec::ANECIRInput::~ANECIRInput(this);

  JUMPOUT(0x1AC55A070);
}

{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  *(this + 5) = &unk_1F1A2EC58;
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(this + 6));
LABEL_9:
  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void mlir::anec::ANECIRInput::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    a2 = v5;
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v4;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToName(v4, a2);
  v8 = v4;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v4, &std::piecewise_construct, &v8);
  std::string::operator=((v6 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void non-virtual thunk tomlir::anec::ANECIRInput::~ANECIRInput(mlir::anec::ANECIRInput *this)
{
  mlir::anec::ANECIRInput::~ANECIRInput((this - 40));
}

{
  mlir::anec::ANECIRInput::~ANECIRInput((this - 40));

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRInput *,std::shared_ptr<mlir::anec::ANECIRInput>::__shared_ptr_default_delete<mlir::anec::ANECIRInput,mlir::anec::ANECIRInput>,std::allocator<mlir::anec::ANECIRInput>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

mlir::anec::ANECIRInput *std::__shared_ptr_pointer<mlir::anec::ANECIRInput *,std::shared_ptr<mlir::anec::ANECIRInput>::__shared_ptr_default_delete<mlir::anec::ANECIRInput,mlir::anec::ANECIRInput>,std::allocator<mlir::anec::ANECIRInput>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRInput::~ANECIRInput(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t std::__optional_destruct_base<mlir::anec::ANEIOInfo,false>::__optional_destruct_base[abi:nn200100]<mlir::anec::ANEIOInfo const&>(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (v5 < 5)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), *(a2 + 8), 8);
        v6 = *(a2 + 8);
        if (!v6)
        {
LABEL_8:
          *(a1 + 8) = v5;
          goto LABEL_9;
        }

        v4 = *a1;
      }

      memcpy(v4, *a2, 8 * v6);
      goto LABEL_8;
    }
  }

LABEL_9:
  v7 = (a1 + 64);
  *(a1 + 48) = a1 + 64;
  *(a1 + 56) = 0x400000000;
  if (a1 != a2)
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      if (v8 < 5)
      {
        v9 = *(a2 + 56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), *(a2 + 56), 8);
        v9 = *(a2 + 56);
        if (!v9)
        {
LABEL_16:
          *(a1 + 56) = v8;
          goto LABEL_17;
        }

        v7 = *(a1 + 48);
      }

      memcpy(v7, *(a2 + 48), 8 * v9);
      goto LABEL_16;
    }
  }

LABEL_17:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = 1;
  return a1;
}

void std::__optional_storage_base<mlir::anec::ANEIOInfo,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::anec::ANEIOInfo,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1 + 48, (a2 + 48));
      *(a1 + 96) = *(a2 + 96);
    }
  }

  else if (*(a1 + 104))
  {
    v4 = *(a1 + 48);
    if (v4 != (a1 + 64))
    {
      free(v4);
    }

    if (*a1 != a1 + 16)
    {
      free(*a1);
    }

    *(a1 + 104) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
    }

    *(a1 + 48) = a1 + 64;
    *(a1 + 56) = 0x400000000;
    if (*(a2 + 56))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1 + 48, (a2 + 48));
    }

    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = 1;
  }
}

char *std::vector<unsigned short>::__assign_with_size[abi:nn200100]<unsigned short *,unsigned short *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v6 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v6;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFELL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 1)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t mlir::anec::anonymous namespace::updateNetworkIOTypes(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&)::$_1::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a2);
  v33 = ElementTypeOrSelf;
  v32 = mlir::getElementTypeOrSelf(a3);
  if (ElementTypeOrSelf != v32)
  {
    if (mlir::Type::isF32(&v33) && mlir::Type::isF16(&v32))
    {
      v10 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v10)
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v11 = 0;
      }

      v34[0] = v10;
      v34[1] = v11;
      Shape = mlir::ShapedType::getShape(v34);
      v22 = *(Shape + 8 * v21 - 8);
      if (v22 * (mlir::Type::getIntOrFloatBitWidth(&v33) >> 3) <= a4)
      {
        v8 = v33;
        goto LABEL_3;
      }

      v30[0] = "Invalid input strides: row stride must be large enough to represent the whole F32 row";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
LABEL_46:
        ANECIRDataType = 0;
        return ANECIRDataType & 0xFFFFFFFFFFLL;
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

      v15 = v37;
      if (!v37)
      {
LABEL_44:
        if (v35 != &v36)
        {
          free(v35);
        }

        goto LABEL_46;
      }

      v26 = v38;
      v17 = v37;
      if (v38 == v37)
      {
LABEL_43:
        v38 = v15;
        operator delete(v17);
        goto LABEL_44;
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

      while (v26 != v15);
    }

    else
    {
      v30[0] = "Only F16 <-> F32 ANE / host type conversion is supported";
      v31 = 259;
      mlir::Operation::emitError(a1, v30, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        goto LABEL_46;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v40;
        v14 = __p;
        if (v40 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v40 = v12;
        operator delete(v14);
      }

      v15 = v37;
      if (!v37)
      {
        goto LABEL_44;
      }

      v16 = v38;
      v17 = v37;
      if (v38 == v37)
      {
        goto LABEL_43;
      }

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
    }

    v17 = v37;
    goto LABEL_43;
  }

  v8 = ElementTypeOrSelf;
LABEL_3:
  ANECIRDataType = mlir::anec::getANECIRDataType(v8);
  return ANECIRDataType & 0xFFFFFFFFFFLL;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4anec12_GLOBAL__N_120updateNetworkIOTypesES3_RKNSt3__110shared_ptrINSB_13ANECIRNetworkEEEE3__0NS1_9placement10RegionCallEvEENSD_9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t *result, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id)
    {
      v13[5] = v2;
      v13[6] = v3;
      v4 = *result;
      v13[0] = a2;
      AttrData = mlir::OpaqueAttr::getAttrData(*v4);
      v7 = v6;
      Callee = mlir::placement::RegionCall::getCallee(v13);
      if (v7 == v9 && (!v7 || !memcmp(AttrData, Callee, v7)))
      {
        v10 = *(v4 + 8);
        v11 = v13[0];
        v12 = *(v10 + 8);
        if (v12 >= *(v10 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(*(v4 + 8), (v10 + 16), v12 + 1, 8);
          LODWORD(v12) = *(v10 + 8);
        }

        *(*v10 + 8 * v12) = v11;
        ++*(v10 + 8);
      }
    }
  }
}

void mlir::anec::ANECIRNetwork::~ANECIRNetwork(mlir::anec::ANECIRNetwork *this)
{
  mlir::anec::ANECIRNetwork::~ANECIRNetwork(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F1A350F0;
  v2 = *(this + 75);
  if (v2)
  {
    do
    {
      v10 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
        if (*(v2 + 39) < 0)
        {
LABEL_19:
          operator delete(v2[2]);
        }
      }

      else if (*(v2 + 39) < 0)
      {
        goto LABEL_19;
      }

      operator delete(v2);
      v2 = v10;
    }

    while (v10);
  }

  v3 = *(this + 73);
  *(this + 73) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 567) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (*(this + 567) < 0)
  {
LABEL_7:
    operator delete(*(this + 68));
  }

LABEL_8:
  v5 = *(this + 63);
  if (v5)
  {
    do
    {
      v11 = *v5;
      if (*(v5 + 63) < 0)
      {
        operator delete(v5[5]);
        if (*(v5 + 39) < 0)
        {
LABEL_25:
          operator delete(v5[2]);
        }
      }

      else if (*(v5 + 39) < 0)
      {
        goto LABEL_25;
      }

      operator delete(v5);
      v5 = v11;
    }

    while (v11);
  }

  v6 = *(this + 61);
  *(this + 61) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<std::string,std::string,unsigned int>>>>::destroy(this + 464, *(this + 59));
  v7 = *(this + 55);
  if (v7)
  {
    v8 = *(this + 56);
    v9 = *(this + 55);
    if (v8 != v7)
    {
      do
      {
        v12 = *(v8 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v8 -= 16;
      }

      while (v8 != v7);
      v9 = *(this + 55);
    }

    *(this + 56) = v7;
    operator delete(v9);
  }

  v13 = *(this + 52);
  if (v13)
  {
    v14 = *(this + 53);
    v15 = *(this + 52);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = *(this + 52);
    }

    *(this + 53) = v13;
    operator delete(v15);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  v17 = *(this + 37);
  v18 = *(this + 76);
  if (v18)
  {
    v19 = v17 - 8;
    v20 = 16 * v18;
    do
    {
      v21 = *&v19[v20];
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v20 -= 16;
    }

    while (v20);
    v17 = *(this + 37);
  }

  if (v17 != this + 312)
  {
    free(v17);
  }

  v22 = *(this + 25);
  v23 = *(this + 52);
  if (v23)
  {
    v24 = v22 - 8;
    v25 = 16 * v23;
    do
    {
      v26 = *&v24[v25];
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      v25 -= 16;
    }

    while (v25);
    v22 = *(this + 25);
  }

  if (v22 != this + 216)
  {
    free(v22);
  }

  v27 = *(this + 13);
  v28 = *(this + 28);
  if (v28)
  {
    v29 = v27 - 8;
    v30 = 16 * v28;
    do
    {
      v31 = *&v29[v30];
      if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      v30 -= 16;
    }

    while (v30);
    v27 = *(this + 13);
  }

  if (v27 != this + 120)
  {
    free(v27);
  }

  v32 = *(this + 1);
  v33 = *(this + 4);
  if (v33)
  {
    v34 = v32 - 8;
    v35 = 16 * v33;
    do
    {
      v36 = *&v34[v35];
      if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v36->__on_zero_shared)(v36);
        std::__shared_weak_count::__release_weak(v36);
      }

      v35 -= 16;
    }

    while (v35);
    v32 = *(this + 1);
  }

  if (v32 != this + 24)
  {
    free(v32);
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRNetwork *,std::shared_ptr<mlir::anec::ANECIRNetwork>::__shared_ptr_default_delete<mlir::anec::ANECIRNetwork,mlir::anec::ANECIRNetwork>,std::allocator<mlir::anec::ANECIRNetwork>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECIRNetwork *,std::shared_ptr<mlir::anec::ANECIRNetwork>::__shared_ptr_default_delete<mlir::anec::ANECIRNetwork,mlir::anec::ANECIRNetwork>,std::allocator<mlir::anec::ANECIRNetwork>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(ZinIrCollectiveCommunicationUnitInfo *this)
{
  ZinIrCollectiveCommunicationUnitInfo::~ZinIrCollectiveCommunicationUnitInfo(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F1A35178;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  *this = &unk_1F1A2EA30;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 6);
    v7 = *(this + 5);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 5);
    }

    *(this + 6) = v5;
    operator delete(v7);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0>(uint64_t **a1, mlir::anec::_anonymous_namespace_ *a2)
{
  v15 = a2;
  {
    v11 = a2;
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
    a2 = v11;
  }

  v4 = v15;
  {
    return 0;
  }

  v5 = a1[3];
  v14[0] = a1[2];
  v14[1] = &v15;
  v14[2] = v5;
  v6 = **a1;
  v7 = (*(v6 + 424) - *(v6 + 416)) >> 4;
  if (mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v15))
  {
    if (v4)
    {
      v12 = v4;
      InterfaceFor = mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v4);
      if ((mlir::ExternalFoldInterface::externalFold(&v12, **a1, a1[1]) & 1) == 0)
      {
        return 0;
      }

      mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(v14, (v6 + 416), v7);
    }

    else
    {
      v12 = 0;
      InterfaceFor = 0;
    }
  }

  else
  {
    v12 = 0;
    InterfaceFor = 0;
  }

  v8 = v15;
  if (!mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v15))
  {
    v12 = 0;
    InterfaceFor = 0;
    return 1;
  }

  if (!v8)
  {
    v12 = 0;
    InterfaceFor = 0;
    return 1;
  }

  v9 = mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(v8);
  v12 = v8;
  InterfaceFor = v9;
  if (mlir::ExecutionCostOpInterface::getExecutionCost(&v12, *a1[4]))
  {
    mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(v14, (v6 + 416), v7);
    return 1;
  }

  return 0;
}

uint64_t mlir::anec::anonymous namespace::addConstToNetwork(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2, mlir::anec::ANECIRNetwork *a3, mlir::anec::ANECIRWeightSerializer *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(this - 2);
  if (v6)
  {
    while (1)
    {
      v7 = v6[2];
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::anec::HasWeights,mlir::OpTrait::anec::SameOperandsRank,mlir::anec::PlistGeneratorInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
      }

      if (((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::HasWeights<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::HasWeights>(void)::Empty>,void>::resolveTypeID(void)::id, a3, a4) & 1) == 0)
      {
        break;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this);
    LOBYTE(v9) = 0;
  }

  else
  {
LABEL_6:
    v9 = 1;
    if (mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this))
    {
      return v9;
    }
  }

  if (mlir::isOpTriviallyDead(this, v8))
  {
    return 1;
  }

  v34 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v34);
  v11 = v10;
  v33 = v10;
  mlir::anec::computeOpKeyString(&v31, this);
  v29 = 0;
  v30 = 0;
  v35 = &v29;
  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v35, this) & 1) == 0)
  {
    v27 = "Unable to get Elements from the constant op";
    v28 = 259;
    mlir::Operation::emitOpError(this, &v27, &v35);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v44 != 1)
    {
      goto LABEL_60;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v42;
      v14 = __p;
      if (v42 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v42 = v12;
      operator delete(v14);
    }

    v15 = v39;
    if (!v39)
    {
      goto LABEL_54;
    }

    v16 = v40;
    v17 = v39;
    if (v40 == v39)
    {
LABEL_53:
      v40 = v15;
      operator delete(v17);
LABEL_54:
      if (v37 != &v38)
      {
        free(v37);
      }

      goto LABEL_60;
    }

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
LABEL_52:
    v17 = v39;
    goto LABEL_53;
  }

  if (!mlir::ElementsAttr::getNumElements(v29, v30))
  {
    v27 = "Weights should have 1 or more elements";
    v28 = 259;
    mlir::Operation::emitOpError(this, &v27, &v35);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v44 != 1)
    {
      goto LABEL_60;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v42;
      v22 = __p;
      if (v42 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v42 = v20;
      operator delete(v22);
    }

    v15 = v39;
    if (!v39)
    {
      goto LABEL_54;
    }

    v23 = v40;
    v17 = v39;
    if (v40 == v39)
    {
      goto LABEL_53;
    }

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
    goto LABEL_52;
  }

  if (v11 < 6)
  {
    if (mlir::anec::ANECIRWeightSerializer::hasConstant(a3, this))
    {
      mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, this);
    }

    else
    {
      mlir::anec::ANECIRWeightSerializer::addConstant(a3, this);
    }

    if (!v9)
    {
      v35 = &v33;
      v36 = &v34;
      mlir::anec::ANECIRConstant::Create();
    }

    v9 = 1;
  }

  else
  {
    v27 = "Weights should have a rank less than or equal to 5";
    v28 = 259;
    mlir::Operation::emitOpError(this, &v27, &v35);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v44 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v36);
    }
  }

LABEL_60:
  if (v32 < 0)
  {
    operator delete(v31);
  }

  return v9;
}

void mlir::anec::writeSingleRegionPlist(mlir::Operation *,std::shared_ptr<mlir::anec::ANECIRNetwork> const&,mlir::anec::ANECIRWeightSerializer &,std::map<std::string,std::map<std::string,std::string>> *)::$_0::operator() const(mlir::Operation *)::{lambda(std::vector<std::shared_ptr<mlir::anec::ANECIRUnit>> const&,unsigned long)#1}::operator()(uint64_t ****a1, void *a2, unint64_t a3)
{
  v3 = **a1;
  if (v3)
  {
    memset(&__str, 0, sizeof(__str));
    v21 = 0;
    v25 = 0;
    v26 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = &unk_1F1A362A8;
    p_str = &__str;
    llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
    __p[0] = (*a1[1])[3];
    mlir::Attribute::print(__p, &v20, 0);
    v7 = (a2[1] - *a2) >> 4;
    if (v7 > a3)
    {
      do
      {
        v8 = *(*a2 + 16 * a3);
        if (*(v8 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, *(v8 + 8), *(v8 + 16));
        }

        else
        {
          v9 = *(v8 + 8);
          v19.__r_.__value_.__r.__words[2] = *(v8 + 24);
          *&v19.__r_.__value_.__l.__data_ = v9;
        }

        v10 = a1[2];
        *__p = 0u;
        *v17 = 0u;
        v18 = 1065353216;
        mlir::anec::PrependProcNameToNameAndShorten(&v19, v10, __p);
        v11 = v17[0];
        if (v17[0])
        {
          do
          {
            v15 = *v11;
            if (*(v11 + 39) < 0)
            {
              operator delete(v11[2]);
            }

            operator delete(v11);
            v11 = v15;
          }

          while (v15);
        }

        v12 = __p[0];
        __p[0] = 0;
        if (v12)
        {
          operator delete(v12);
        }

        __p[0] = a1[2];
        v13 = std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, __p[0], &std::piecewise_construct, __p);
        __p[0] = &v19;
        v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v13 + 7, &v19.__r_.__value_.__l.__data_, &std::piecewise_construct, __p);
        std::string::operator=((v14 + 7), &__str);
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        ++a3;
      }

      while (a3 != v7);
    }

    llvm::raw_ostream::~raw_ostream(&v20);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t mlir::anec::anonymous namespace::addConstToNetwork(mlir::Operation *,mlir::anec::ANECIRNetwork *,mlir::anec::ANECIRWeightSerializer &)::$_1::operator()(uint64_t a1, int a2)
{
  IndexFromDim = mlir::anec::getIndexFromDim(a2, **a1);
  if (v4)
  {
    return *(mlir::ArrayAttr::getValue(*(a1 + 8)) + 8 * IndexFromDim);
  }

  else
  {
    return 1;
  }
}

void mlir::anec::ANECIRConstant::~ANECIRConstant(void **this)
{
  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F1A2EAF8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
    v1 = vars8;
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::ANECIRConstant::UpdateNamesWithProcName(uint64_t a1, uint64_t a2, uint64_t **a3, void *a4)
{
  v6 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = a2;
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
    a2 = v7;
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v6;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  mlir::anec::PrependProcNameToNameAndShorten(v6, a2, a4);
  v10 = v6;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v6, &std::piecewise_construct, &v10);
  std::string::operator=((v8 + 7), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRConstant *,std::shared_ptr<mlir::anec::ANECIRConstant>::__shared_ptr_default_delete<mlir::anec::ANECIRConstant,mlir::anec::ANECIRConstant>,std::allocator<mlir::anec::ANECIRConstant>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__shared_ptr_pointer<mlir::anec::ANECIRConstant *,std::shared_ptr<mlir::anec::ANECIRConstant>::__shared_ptr_default_delete<mlir::anec::ANECIRConstant,mlir::anec::ANECIRConstant>,std::allocator<mlir::anec::ANECIRConstant>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_1F1A2EAF8;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

_OWORD *std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::__emplace_back_slow_path<std::shared_ptr<mlir::anec::ANECIRConstant> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = v3 + 2;
  }

  *(a1 + 8) = result;
  return result;
}

_OWORD *std::vector<std::shared_ptr<mlir::anec::ANECIRConstant>>::__emplace_back_slow_path<std::shared_ptr<mlir::anec::ANECIRConstant> const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v7 = 16 * v2;
  v8 = *a2;
  *(16 * v2) = *a2;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v7 + 16;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v7 - v11;
  memcpy((v7 - v11), *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

uint64_t mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::anec::PlistGeneratorInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::anec::PlistGeneratorInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::anec::PlistGeneratorInterface,mlir::anec::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::anec::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::map<std::string,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_25:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v9[1];
      }

      if (v12 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v13 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v7, v14, v15);
      v17 = v6 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_25;
      }
    }

    v18 = memcmp(v14, v7, v15);
    v19 = v13 < v6;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      return v8;
    }

    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }
}

uint64_t mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::silc::PlistGeneratorInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::silc::PlistGeneratorInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::silc::PlistGeneratorInterface,mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::silc::PlistGeneratorInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::PlistGeneratorInterface]";
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

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _BYTE **a6, _WORD *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v9 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1, v11, &v14, a5, a6, a7);
  *(v9 + 200) = 0;
  *v9 = &unk_1F1A01E48;
  *(v9 + 192) = &unk_1F1A01EC8;
  v14 = (v9 + 192);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F1A351F8;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F1A351F8;
  v15 = a1;
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](&v14, a1 + 160);
  if (v16 == &v14)
  {
    (*(*v16 + 4))(v16);
  }

  else if (v16)
  {
    (*(*v16 + 5))();
  }

  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, _BYTE **a5, _WORD *a6)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v12 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v13 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v18 = *(a1 + 72);
  if (v18 >= *(a1 + 76))
  {
    v21 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v21;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A01F08;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A35C60;
  *(a1 + 152) = &unk_1F1A35980;
  *(a1 + 160) = &unk_1F1A01F28;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v19;
  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEENS7_12OptionHiddenEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKbEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A351F8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_pointer<mlir::anec::ANECIRTop *,std::shared_ptr<mlir::anec::ANECIRTop>::__shared_ptr_default_delete<mlir::anec::ANECIRTop,mlir::anec::ANECIRTop>,std::allocator<mlir::anec::ANECIRTop>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

mlir::anec::ANECIRTop *std::__shared_ptr_pointer<mlir::anec::ANECIRTop *,std::shared_ptr<mlir::anec::ANECIRTop>::__shared_ptr_default_delete<mlir::anec::ANECIRTop,mlir::anec::ANECIRTop>,std::allocator<mlir::anec::ANECIRTop>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    mlir::anec::ANECIRTop::~ANECIRTop(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void mlir::anec::ANECIRTop::~ANECIRTop(mlir::anec::ANECIRTop *this)
{
  v2 = *(this + 13);
  v3 = *(this + 28);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *(this + 13);
  }

  if (v2 != this + 120)
  {
    free(v2);
  }

  v7 = *(this + 9);
  v8 = *(this + 20);
  if (v8)
  {
    v9 = v7 - 8;
    v10 = 16 * v8;
    do
    {
      v11 = *&v9[v10];
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v10 -= 16;
    }

    while (v10);
    v7 = *(this + 9);
  }

  if (v7 != this + 88)
  {
    free(v7);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_21:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_25:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_25;
  }
}

std::string *std::__fs::filesystem::operator/[abi:nn200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {

    return std::string::operator=(&a3->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a3).__size_)
    {
      std::string::push_back(&a3->__pn_, 47);
    }

    v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    return std::string::append(&a3->__pn_, v7, size);
  }
}

uint64_t mlir::anec::WriteMultiFunctionPassBase<mlir::anec::anonymous namespace::WriteMultiFunctionPass>::WriteMultiFunctionPassBase(uint64_t a1)
{
  v9[20] = *MEMORY[0x1E69E9840];
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F1A352E8;
  *&v8 = "The directory of the input files.";
  *(&v8 + 1) = 33;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 344, (a1 + 152), "source-directory", 16, &v8);
  *(a1 + 344) = &unk_1F1A0CF60;
  *(a1 + 576) = &unk_1F1A0CFE0;
  *&v8 = "The directory in which to place generated plists and the weights file.";
  *(&v8 + 1) = 70;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 592, (a1 + 152), "destination-directory", 21, &v8);
  *(a1 + 592) = &unk_1F1A0CF60;
  *(a1 + 824) = &unk_1F1A0CFE0;
  *&v8 = "The prefix name for the generated plists and the weights file.";
  *(&v8 + 1) = 62;
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::Option<llvm::cl::desc>(a1 + 840, (a1 + 152), "output_file_name_prefix", 23, &v8);
  *(a1 + 840) = &unk_1F1A0CF60;
  *(a1 + 1072) = &unk_1F1A0CFE0;
  *&v7 = "The family to target for ANEC region formation (default A12).";
  *(&v7 + 1) = 61;
  v5 = 0;
  v6 = &v5;
  *&v8 = v9;
  *(&v8 + 1) = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v8, v9, 8uLL, 40);
  v2 = DWORD2(v8);
  v3 = v8 + 40 * DWORD2(v8);
  *v3 = "A12";
  *(v3 + 8) = 3;
  *(v3 + 16) = 0;
  *(v3 + 24) = "A12 family";
  *(v3 + 32) = 10;
  *(v3 + 40) = "A13";
  *(v3 + 48) = 3;
  *(v3 + 56) = 1;
  *(v3 + 64) = "A13 family";
  *(v3 + 72) = 10;
  *(v3 + 80) = "A14";
  *(v3 + 88) = 3;
  *(v3 + 96) = 2;
  *(v3 + 104) = "A14 family";
  *(v3 + 112) = 10;
  *(v3 + 120) = "A15";
  *(v3 + 128) = 3;
  *(v3 + 136) = 3;
  *(v3 + 144) = "A15 family";
  *(v3 + 152) = 10;
  *(v3 + 160) = "A16";
  *(v3 + 168) = 3;
  *(v3 + 176) = 4;
  *(v3 + 184) = "A16 family";
  *(v3 + 192) = 10;
  *(v3 + 200) = "A17";
  *(v3 + 208) = 3;
  *(v3 + 216) = 5;
  *(v3 + 224) = "A17 family";
  *(v3 + 232) = 10;
  *(v3 + 240) = "A18";
  *(v3 + 248) = 3;
  *(v3 + 256) = 6;
  *(v3 + 264) = "A18 family";
  *(v3 + 272) = 10;
  *(v3 + 280) = "A11Legacy";
  *(v3 + 288) = 9;
  *(v3 + 296) = 7;
  *(v3 + 304) = "A11 Legacy family";
  *(v3 + 312) = 17;
  DWORD2(v8) = v2 + 8;
  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::anec::Family>,llvm::cl::ValuesClass>(a1 + 1088, (a1 + 152), "family", 6, &v7, &v6, &v8);
  *(a1 + 1088) = &unk_1F1A0C740;
  *(a1 + 1688) = &unk_1F1A0C7C0;
  if (v8 != v9)
  {
    free(v8);
  }

  *&v8 = "Force the pass to overwrite any files that already exist. Testing only.";
  *(&v8 + 1) = 71;
  LOBYTE(v5) = 0;
  *&v7 = &v5;
  LODWORD(v6) = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>,llvm::cl::OptionHidden>(a1 + 1704, (a1 + 152), "force-overwrite", 15, &v8, &v7, &v6);
  *(a1 + 1704) = &unk_1F1A01D88;
  *(a1 + 1896) = &unk_1F1A01E08;
  *(&v8 + 1) = 163;
  LOBYTE(v6) = 1;
  *&v7 = &v6;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1912, (a1 + 152), "keep-unit-name-attrs", 20, &v8, &v7);
  *(a1 + 1912) = &unk_1F1A01D88;
  *(a1 + 2104) = &unk_1F1A01E08;
  return a1;
}

void mlir::anec::anonymous namespace::WriteMultiFunctionPass::~WriteMultiFunctionPass(mlir::anec::_anonymous_namespace_::WriteMultiFunctionPass *this)
{
  *this = &unk_1F1A352E8;
  *(this + 239) = &unk_1F1A35C60;
  v2 = this + 2072;
  v3 = *(this + 262);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 239) = &unk_1F1A35888;
  v4 = *(this + 251);
  if (v4 != *(this + 250))
  {
    free(v4);
  }

  v5 = *(this + 247);
  if (v5 != this + 1992)
  {
    free(v5);
  }

  *(this + 213) = &unk_1F1A35C60;
  v6 = *(this + 236);
  if (v6 == (this + 1864))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 213) = &unk_1F1A35888;
  v7 = *(this + 225);
  if (v7 != *(this + 224))
  {
    free(v7);
  }

  v8 = *(this + 221);
  if (v8 != this + 1784)
  {
    free(v8);
  }

  mlir::detail::PassOptions::Option<mlir::anec::Family,mlir::detail::PassOptions::GenericOptionParser<mlir::anec::Family>>::~Option(this + 136);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 840);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 592);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 344);

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x1AC55A070);
}

void mlir::anec::anonymous namespace::WriteMultiFunctionPass::runOnOperation(mlir::anec::_anonymous_namespace_::WriteMultiFunctionPass *this)
{
  v158 = *MEMORY[0x1E69E9840];
  v2 = *(this + 304);
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        v9 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
        v146 = v9;
        mlir::Region::getOps<mlir::anec::A17>(&v142, (v9 + 16 * ((*(v9 + 44) >> 23) & 1) + ((*(v9 + 44) >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64));
        if (v143 == v145)
        {
          return;
        }

        v140 = this;
        v141 = &v146;
        v10 = *(this + 743);
        if (v10 < 0)
        {
          v10 = *(this + 91);
        }

        if (!v10)
        {
          LOWORD(v133) = 257;
          mlir::Operation::emitError(v9, v132, v147);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
          v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
          if (v147[0])
          {
            mlir::InFlightDiagnostic::report(v147);
          }

          if (v157[0] == 1)
          {
            if (v156 != v157)
            {
              free(v156);
            }

            v103 = __p;
            if (__p)
            {
              v104 = v155;
              v105 = __p;
              if (v155 != __p)
              {
                do
                {
                  v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
                }

                while (v104 != v103);
                v105 = __p;
              }

              v155 = v103;
              operator delete(v105);
            }

            v69 = v152;
            if (!v152)
            {
              goto LABEL_254;
            }

            v106 = v153;
            v71 = v152;
            if (v153 == v152)
            {
              goto LABEL_253;
            }

            do
            {
              v108 = *--v106;
              v107 = v108;
              *v106 = 0;
              if (v108)
              {
                MEMORY[0x1AC55A040](v107, 0x1000C8077774924);
              }
            }

            while (v106 != v69);
            goto LABEL_252;
          }

          goto LABEL_256;
        }

        v11 = *(this + 991);
        if (v11 < 0)
        {
          v12 = this + 968;
          if (*(this + 122))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v12 = this + 968;
          if (*(this + 991))
          {
LABEL_25:
            if (v11 >= 0)
            {
              v13 = v12;
            }

            else
            {
              v13 = *(this + 121);
            }

            if (v11 >= 0)
            {
              v14 = *(this + 991);
            }

            else
            {
              v14 = *(this + 122);
            }

LABEL_289:
            if (v139)
            {
              if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
              }

              else
              {
                __str = __s;
              }

              v128 = *(this + 265);
              if (v128)
              {
                std::string::operator=(v128, &__str);
              }

              v134 = 0;
              v135 = 0;
              v136 = 0;
              mlir::openOutputFile();
            }

            goto LABEL_334;
          }
        }

        v13 = "network";
        v14 = 7;
        goto LABEL_289;
      }

      v33 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
      v146 = v33;
      mlir::Region::getOps<mlir::anec::A16>(&v142, (v33 + 16 * ((*(v33 + 44) >> 23) & 1) + ((*(v33 + 44) >> 21) & 0x7F8) + 32 * *(v33 + 40) + 64));
      if (v143 == v145)
      {
        return;
      }

      v140 = this;
      v141 = &v146;
      v34 = *(this + 743);
      if (v34 < 0)
      {
        v34 = *(this + 91);
      }

      if (!v34)
      {
        LOWORD(v133) = 257;
        mlir::Operation::emitError(v33, v132, v147);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
        v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
        if (v147[0])
        {
          mlir::InFlightDiagnostic::report(v147);
        }

        if (v157[0] == 1)
        {
          if (v156 != v157)
          {
            free(v156);
          }

          v75 = __p;
          if (__p)
          {
            v76 = v155;
            v77 = __p;
            if (v155 != __p)
            {
              do
              {
                v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
              }

              while (v76 != v75);
              v77 = __p;
            }

            v155 = v75;
            operator delete(v77);
          }

          v69 = v152;
          if (!v152)
          {
            goto LABEL_254;
          }

          v78 = v153;
          v71 = v152;
          if (v153 == v152)
          {
            goto LABEL_253;
          }

          do
          {
            v80 = *--v78;
            v79 = v80;
            *v78 = 0;
            if (v80)
            {
              MEMORY[0x1AC55A040](v79, 0x1000C8077774924);
            }
          }

          while (v78 != v69);
          goto LABEL_252;
        }

        goto LABEL_256;
      }

      v35 = *(this + 991);
      if (v35 < 0)
      {
        v36 = this + 968;
        if (*(this + 122))
        {
          goto LABEL_76;
        }
      }

      else
      {
        v36 = this + 968;
        if (*(this + 991))
        {
LABEL_76:
          if (v35 >= 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = *(this + 121);
          }

          if (v35 >= 0)
          {
            v38 = *(this + 991);
          }

          else
          {
            v38 = *(this + 122);
          }

LABEL_269:
          if (v139)
          {
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __str = __s;
            }

            v124 = *(this + 265);
            if (v124)
            {
              std::string::operator=(v124, &__str);
            }

            v134 = 0;
            v135 = 0;
            v136 = 0;
            mlir::openOutputFile();
          }

          goto LABEL_334;
        }
      }

      v37 = "network";
      v38 = 7;
      goto LABEL_269;
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_106;
      }

      v21 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
      v146 = v21;
      mlir::Region::getOps<mlir::anec::A11Legacy>(&v142, (v21 + 16 * ((*(v21 + 44) >> 23) & 1) + ((*(v21 + 44) >> 21) & 0x7F8) + 32 * *(v21 + 40) + 64));
      if (v143 == v145)
      {
        return;
      }

      v140 = this;
      v141 = &v146;
      v22 = *(this + 743);
      if (v22 < 0)
      {
        v22 = *(this + 91);
      }

      if (!v22)
      {
        LOWORD(v133) = 257;
        mlir::Operation::emitError(v21, v132, v147);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
        v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v116);
        if (v147[0])
        {
          mlir::InFlightDiagnostic::report(v147);
        }

        if (v157[0] == 1)
        {
          if (v156 != v157)
          {
            free(v156);
          }

          v117 = __p;
          if (__p)
          {
            v118 = v155;
            v119 = __p;
            if (v155 != __p)
            {
              do
              {
                v118 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v118 - 1);
              }

              while (v118 != v117);
              v119 = __p;
            }

            v155 = v117;
            operator delete(v119);
          }

          v69 = v152;
          if (!v152)
          {
            goto LABEL_254;
          }

          v120 = v153;
          v71 = v152;
          if (v153 == v152)
          {
            goto LABEL_253;
          }

          do
          {
            v122 = *--v120;
            v121 = v122;
            *v120 = 0;
            if (v122)
            {
              MEMORY[0x1AC55A040](v121, 0x1000C8077774924);
            }
          }

          while (v120 != v69);
          goto LABEL_252;
        }

        goto LABEL_256;
      }

      v23 = *(this + 991);
      if (v23 < 0)
      {
        v24 = this + 968;
        if (*(this + 122))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v24 = this + 968;
        if (*(this + 991))
        {
LABEL_52:
          if (v23 >= 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = *(this + 121);
          }

          if (v23 >= 0)
          {
            v26 = *(this + 991);
          }

          else
          {
            v26 = *(this + 122);
          }

LABEL_299:
          if (v139)
          {
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __str = __s;
            }

            v130 = *(this + 265);
            if (v130)
            {
              std::string::operator=(v130, &__str);
            }

            v134 = 0;
            v135 = 0;
            v136 = 0;
            mlir::openOutputFile();
          }

          goto LABEL_334;
        }
      }

      v25 = "network";
      v26 = 7;
      goto LABEL_299;
    }

    v45 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
    v146 = v45;
    mlir::Region::getOps<mlir::anec::A18>(&v142, (v45 + 16 * ((*(v45 + 44) >> 23) & 1) + ((*(v45 + 44) >> 21) & 0x7F8) + 32 * *(v45 + 40) + 64));
    if (v143 == v145)
    {
      return;
    }

    v140 = this;
    v141 = &v146;
    v46 = *(this + 743);
    if (v46 < 0)
    {
      v46 = *(this + 91);
    }

    if (!v46)
    {
      LOWORD(v133) = 257;
      mlir::Operation::emitError(v45, v132, v147);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
      v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v88);
      if (v147[0])
      {
        mlir::InFlightDiagnostic::report(v147);
      }

      if (v157[0] == 1)
      {
        if (v156 != v157)
        {
          free(v156);
        }

        v89 = __p;
        if (__p)
        {
          v90 = v155;
          v91 = __p;
          if (v155 != __p)
          {
            do
            {
              v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
            }

            while (v90 != v89);
            v91 = __p;
          }

          v155 = v89;
          operator delete(v91);
        }

        v69 = v152;
        if (!v152)
        {
          goto LABEL_254;
        }

        v92 = v153;
        v71 = v152;
        if (v153 == v152)
        {
          goto LABEL_253;
        }

        do
        {
          v94 = *--v92;
          v93 = v94;
          *v92 = 0;
          if (v94)
          {
            MEMORY[0x1AC55A040](v93, 0x1000C8077774924);
          }
        }

        while (v92 != v69);
        goto LABEL_252;
      }

      goto LABEL_256;
    }

    v47 = *(this + 991);
    if (v47 < 0)
    {
      v48 = this + 968;
      if (*(this + 122))
      {
        goto LABEL_100;
      }
    }

    else
    {
      v48 = this + 968;
      if (*(this + 991))
      {
LABEL_100:
        if (v47 >= 0)
        {
          v49 = v48;
        }

        else
        {
          v49 = *(this + 121);
        }

        if (v47 >= 0)
        {
          v50 = *(this + 991);
        }

        else
        {
          v50 = *(this + 122);
        }

LABEL_279:
        if (v139)
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __s;
          }

          v126 = *(this + 265);
          if (v126)
          {
            std::string::operator=(v126, &__str);
          }

          v134 = 0;
          v135 = 0;
          v136 = 0;
          mlir::openOutputFile();
        }

        goto LABEL_334;
      }
    }

    v49 = "network";
    v50 = 7;
    goto LABEL_279;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v15 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
      v146 = v15;
      mlir::Region::getOps<mlir::anec::A15>(&v142, (v15 + 16 * ((*(v15 + 44) >> 23) & 1) + ((*(v15 + 44) >> 21) & 0x7F8) + 32 * *(v15 + 40) + 64));
      if (v143 == v145)
      {
        return;
      }

      v140 = this;
      v141 = &v146;
      v16 = *(this + 743);
      if (v16 < 0)
      {
        v16 = *(this + 91);
      }

      if (!v16)
      {
        LOWORD(v133) = 257;
        mlir::Operation::emitError(v15, v132, v147);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
        v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v109);
        if (v147[0])
        {
          mlir::InFlightDiagnostic::report(v147);
        }

        if (v157[0] == 1)
        {
          if (v156 != v157)
          {
            free(v156);
          }

          v110 = __p;
          if (__p)
          {
            v111 = v155;
            v112 = __p;
            if (v155 != __p)
            {
              do
              {
                v111 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v111 - 1);
              }

              while (v111 != v110);
              v112 = __p;
            }

            v155 = v110;
            operator delete(v112);
          }

          v69 = v152;
          if (!v152)
          {
            goto LABEL_254;
          }

          v113 = v153;
          v71 = v152;
          if (v153 == v152)
          {
            goto LABEL_253;
          }

          do
          {
            v115 = *--v113;
            v114 = v115;
            *v113 = 0;
            if (v115)
            {
              MEMORY[0x1AC55A040](v114, 0x1000C8077774924);
            }
          }

          while (v113 != v69);
          goto LABEL_252;
        }

        goto LABEL_256;
      }

      v17 = *(this + 991);
      if (v17 < 0)
      {
        v18 = this + 968;
        if (*(this + 122))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v18 = this + 968;
        if (*(this + 991))
        {
LABEL_38:
          if (v17 >= 0)
          {
            v19 = v18;
          }

          else
          {
            v19 = *(this + 121);
          }

          if (v17 >= 0)
          {
            v20 = *(this + 991);
          }

          else
          {
            v20 = *(this + 122);
          }

LABEL_294:
          if (v139)
          {
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
            }

            else
            {
              __str = __s;
            }

            v129 = *(this + 265);
            if (v129)
            {
              std::string::operator=(v129, &__str);
            }

            v134 = 0;
            v135 = 0;
            v136 = 0;
            mlir::openOutputFile();
          }

          goto LABEL_334;
        }
      }

      v19 = "network";
      v20 = 7;
      goto LABEL_294;
    }

    v39 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
    v146 = v39;
    mlir::Region::getOps<mlir::anec::A14>(&v142, (v39 + 16 * ((*(v39 + 44) >> 23) & 1) + ((*(v39 + 44) >> 21) & 0x7F8) + 32 * *(v39 + 40) + 64));
    if (v143 == v145)
    {
      return;
    }

    v140 = this;
    v141 = &v146;
    v40 = *(this + 743);
    if (v40 < 0)
    {
      v40 = *(this + 91);
    }

    if (!v40)
    {
      LOWORD(v133) = 257;
      mlir::Operation::emitError(v39, v132, v147);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
      v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
      if (v147[0])
      {
        mlir::InFlightDiagnostic::report(v147);
      }

      if (v157[0] == 1)
      {
        if (v156 != v157)
        {
          free(v156);
        }

        v82 = __p;
        if (__p)
        {
          v83 = v155;
          v84 = __p;
          if (v155 != __p)
          {
            do
            {
              v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
            }

            while (v83 != v82);
            v84 = __p;
          }

          v155 = v82;
          operator delete(v84);
        }

        v69 = v152;
        if (!v152)
        {
          goto LABEL_254;
        }

        v85 = v153;
        v71 = v152;
        if (v153 == v152)
        {
          goto LABEL_253;
        }

        do
        {
          v87 = *--v85;
          v86 = v87;
          *v85 = 0;
          if (v87)
          {
            MEMORY[0x1AC55A040](v86, 0x1000C8077774924);
          }
        }

        while (v85 != v69);
        goto LABEL_252;
      }

      goto LABEL_256;
    }

    v41 = *(this + 991);
    if (v41 < 0)
    {
      v42 = this + 968;
      if (*(this + 122))
      {
        goto LABEL_88;
      }
    }

    else
    {
      v42 = this + 968;
      if (*(this + 991))
      {
LABEL_88:
        if (v41 >= 0)
        {
          v43 = v42;
        }

        else
        {
          v43 = *(this + 121);
        }

        if (v41 >= 0)
        {
          v44 = *(this + 991);
        }

        else
        {
          v44 = *(this + 122);
        }

LABEL_274:
        if (v139)
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __s;
          }

          v125 = *(this + 265);
          if (v125)
          {
            std::string::operator=(v125, &__str);
          }

          v134 = 0;
          v135 = 0;
          v136 = 0;
          mlir::openOutputFile();
        }

        goto LABEL_334;
      }
    }

    v43 = "network";
    v44 = 7;
    goto LABEL_274;
  }

  if (!v2)
  {
    v27 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
    v146 = v27;
    mlir::Region::getOps<mlir::anec::A12>(&v142, (v27 + 16 * ((*(v27 + 44) >> 23) & 1) + ((*(v27 + 44) >> 21) & 0x7F8) + 32 * *(v27 + 40) + 64));
    if (v143 == v145)
    {
      return;
    }

    v140 = this;
    v141 = &v146;
    v28 = *(this + 743);
    if (v28 < 0)
    {
      v28 = *(this + 91);
    }

    if (!v28)
    {
      LOWORD(v133) = 257;
      mlir::Operation::emitError(v27, v132, v147);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
      v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
      if (v147[0])
      {
        mlir::InFlightDiagnostic::report(v147);
      }

      if (v157[0] == 1)
      {
        if (v156 != v157)
        {
          free(v156);
        }

        v66 = __p;
        if (__p)
        {
          v67 = v155;
          v68 = __p;
          if (v155 != __p)
          {
            do
            {
              v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
            }

            while (v67 != v66);
            v68 = __p;
          }

          v155 = v66;
          operator delete(v68);
        }

        v69 = v152;
        if (!v152)
        {
          goto LABEL_254;
        }

        v70 = v153;
        v71 = v152;
        if (v153 == v152)
        {
          goto LABEL_253;
        }

        do
        {
          v73 = *--v70;
          v72 = v73;
          *v70 = 0;
          if (v73)
          {
            MEMORY[0x1AC55A040](v72, 0x1000C8077774924);
          }
        }

        while (v70 != v69);
        goto LABEL_252;
      }

LABEL_256:
      if (v65)
      {
        return;
      }

      goto LABEL_334;
    }

    v29 = *(this + 991);
    if (v29 < 0)
    {
      v30 = this + 968;
      if (*(this + 122))
      {
        goto LABEL_64;
      }
    }

    else
    {
      v30 = this + 968;
      if (*(this + 991))
      {
LABEL_64:
        if (v29 >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(this + 121);
        }

        if (v29 >= 0)
        {
          v32 = *(this + 991);
        }

        else
        {
          v32 = *(this + 122);
        }

LABEL_264:
        if (v139)
        {
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __s;
          }

          v123 = *(this + 265);
          if (v123)
          {
            std::string::operator=(v123, &__str);
          }

          v134 = 0;
          v135 = 0;
          v136 = 0;
          mlir::openOutputFile();
        }

        goto LABEL_334;
      }
    }

    v31 = "network";
    v32 = 7;
    goto LABEL_264;
  }

  if (v2 != 1)
  {
LABEL_106:
    v51 = *(this + 5);
    LOWORD(v144) = 257;
    mlir::Operation::emitOpError((v51 & 0xFFFFFFFFFFFFFFF8), &v142, v147);
    if (v147[0])
    {
      LODWORD(v132[0]) = 3;
      v132[1] = "Unsupported ANE architecture";
      v132[2] = 28;
      v52 = v132;
      v53 = v148;
      if (v149 >= v150)
      {
        if (v148 <= v132 && v148 + 24 * v149 > v132)
        {
          v131 = v132 - v148;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v148, v151, v149 + 1, 24);
          v53 = v148;
          v52 = (v148 + v131);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v148, v151, v149 + 1, 24);
          v52 = v132;
          v53 = v148;
        }
      }

      v54 = &v53[24 * v149];
      v55 = *v52;
      *(v54 + 2) = v52[2];
      *v54 = v55;
      ++v149;
      if (v147[0])
      {
        mlir::InFlightDiagnostic::report(v147);
      }
    }

    if (v157[0] == 1)
    {
      if (v156 != v157)
      {
        free(v156);
      }

      v56 = __p;
      if (__p)
      {
        v57 = v155;
        v58 = __p;
        if (v155 != __p)
        {
          do
          {
            v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
          }

          while (v57 != v56);
          v58 = __p;
        }

        v155 = v56;
        operator delete(v58);
      }

      v59 = v152;
      if (v152)
      {
        v60 = v153;
        v61 = v152;
        if (v153 != v152)
        {
          do
          {
            v63 = *--v60;
            v62 = v63;
            *v60 = 0;
            if (v63)
            {
              MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
            }
          }

          while (v60 != v59);
          v61 = v152;
        }

        v153 = v59;
        operator delete(v61);
      }

      if (v148 != v151)
      {
        free(v148);
      }
    }

    goto LABEL_334;
  }

  v3 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v146 = v3;
  mlir::Region::getOps<mlir::anec::A13>(&v142, (v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 32 * *(v3 + 40) + 64));
  if (v143 == v145)
  {
    return;
  }

  v140 = this;
  v141 = &v146;
  v4 = *(this + 743);
  if (v4 < 0)
  {
    v4 = *(this + 91);
  }

  if (!v4)
  {
    LOWORD(v133) = 257;
    mlir::Operation::emitError(v3, v132, v147);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v147, "Missing destination directory");
    v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
    if (v147[0])
    {
      mlir::InFlightDiagnostic::report(v147);
    }

    if (v157[0] == 1)
    {
      if (v156 != v157)
      {
        free(v156);
      }

      v96 = __p;
      if (__p)
      {
        v97 = v155;
        v98 = __p;
        if (v155 != __p)
        {
          do
          {
            v97 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v97 - 1);
          }

          while (v97 != v96);
          v98 = __p;
        }

        v155 = v96;
        operator delete(v98);
      }

      v69 = v152;
      if (!v152)
      {
        goto LABEL_254;
      }

      v99 = v153;
      v71 = v152;
      if (v153 == v152)
      {
LABEL_253:
        v153 = v69;
        operator delete(v71);
LABEL_254:
        if (v148 != v151)
        {
          free(v148);
        }

        goto LABEL_256;
      }

      do
      {
        v101 = *--v99;
        v100 = v101;
        *v99 = 0;
        if (v101)
        {
          MEMORY[0x1AC55A040](v100, 0x1000C8077774924);
        }
      }

      while (v99 != v69);
LABEL_252:
      v71 = v152;
      goto LABEL_253;
    }

    goto LABEL_256;
  }

  v5 = *(this + 991);
  if (v5 < 0)
  {
    v6 = this + 968;
    if (*(this + 122))
    {
      goto LABEL_11;
    }

LABEL_283:
    v7 = "network";
    v8 = 7;
    goto LABEL_284;
  }

  v6 = this + 968;
  if (!*(this + 991))
  {
    goto LABEL_283;
  }

LABEL_11:
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 121);
  }

  if (v5 >= 0)
  {
    v8 = *(this + 991);
  }

  else
  {
    v8 = *(this + 122);
  }

LABEL_284:
  if (v139)
  {
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = __s;
    }

    v127 = *(this + 265);
    if (v127)
    {
      std::string::operator=(v127, &__str);
    }

    v134 = 0;
    v135 = 0;
    v136 = 0;
    mlir::openOutputFile();
  }

LABEL_334:
  *(this + 5) |= 4uLL;
}

void mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A12>(mlir::ModuleOp)::{lambda(llvm::StringRef,llvm::StringRef)#1}::operator()(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, llvm::formatv_object_base *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v20[0] = *a1 + 720;
  v20[2] = "/";
  v21 = 772;
  v22[0] = v20;
  v22[2] = a2;
  v22[3] = a3;
  v23 = 1282;
  v26[0] = v22;
  v26[2] = ".";
  v27 = 770;
  v28[0] = v26;
  v28[2] = a4;
  v29 = a5;
  v30 = 1282;
  llvm::Twine::str(v28, v24);
  v30 = 260;
  v28[0] = v24;
  if (llvm::sys::fs::access(v28, 0) || (*(v8 + 1832) & 1) != 0)
  {
    *a6 = *v24;
    *(a6 + 16) = v25;
    *(a6 + 24) = 1;
  }

  else
  {
    v9 = *a1[1];
    v23 = 257;
    mlir::Operation::emitError(v9, v22, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, "File ");
    if (*v10)
    {
      v27 = 260;
      v26[0] = v24;
      v11 = v10;
      mlir::Diagnostic::operator<<((v10 + 1), v26);
      v10 = v11;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v10, " already exists");
    *a6 = 0;
    *(a6 + 24) = 0;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
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
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
            }
          }

          while (v16 != v15);
          v17 = v32;
        }

        v33 = v15;
        operator delete(v17);
      }

      if (v29 != &v31)
      {
        free(v29);
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void mlir::anec::anonymous namespace::WriteMultiFunctionPass::nameManglePlistNamesAndPopulateMapping(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 2136);
  if (v3)
  {
    v6 = *a2;
    v7 = *(*a2 + 8);
    v8 = *(*a2 + 16);
    *v29 = 0u;
    *v30 = 0u;
    v31 = 1065353216;
    if (v8)
    {
      v9 = &v7[2 * v8];
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v29, (*v7 + 8), *v7 + 8);
        mlir::anec::ANECIRInput::UpdateNamesWithProcName(*v7, a3, v3);
        v7 += 2;
      }

      while (v7 != v9);
      v6 = *a2;
    }

    v10 = *(v6 + 304);
    if (v10)
    {
      v11 = *(v6 + 296);
      v12 = &v11[2 * v10];
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v29, (*v11 + 8), *v11 + 8);
        mlir::anec::ANECIRInput::UpdateNamesWithProcName(*v11, a3, v3);
        v11 += 2;
      }

      while (v11 != v12);
      v6 = *a2;
    }

    v13 = *(v6 + 208);
    if (v13)
    {
      v14 = *(v6 + 200);
      v15 = &v14[2 * v13];
      do
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v29, (*v14 + 8), *v14 + 8);
        mlir::anec::ANECIRInput::UpdateNamesWithProcName(*v14, a3, v3);
        v14 += 2;
      }

      while (v14 != v15);
      v6 = *a2;
    }

    v16 = *(v6 + 416);
    v17 = *(v6 + 424);
    if (v16 != v17)
    {
      do
      {
        v18 = *v16;
        v16 += 2;
        (*(*v18 + 16))(v18, a3, v3, v29);
      }

      while (v16 != v17);
      v6 = *a2;
    }

    v19 = *(v6 + 112);
    if (v19)
    {
      v20 = *(v6 + 104);
      v21 = 16 * v19;
      do
      {
        v22 = *v20;
        v20 += 2;
        mlir::anec::ANECIROutput::UpdateNamesWithProcName(v22, a3, v3, v29);
        v21 -= 16;
      }

      while (v21);
      v6 = *a2;
    }

    v23 = *(v6 + 440);
    v24 = *(v6 + 448);
    while (v23 != v24)
    {
      v25 = *v23;
      v23 += 2;
      mlir::anec::ANECIRConstant::UpdateNamesWithProcName(v25, a3, v3, v29);
    }

    v26 = v30[0];
    if (v30[0])
    {
      do
      {
        v28 = *v26;
        if (*(v26 + 39) < 0)
        {
          operator delete(v26[2]);
        }

        operator delete(v26);
        v26 = v28;
      }

      while (v28);
    }

    v27 = v29[0];
    v29[0] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }
}

double mlir::Region::getOps<mlir::anec::A12>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A12,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A12,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A12,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A12,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A12>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}

uint64_t **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v22, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_33;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_33:
    operator new();
  }

  v15 = *(v3 + 23);
  if (v15 >= 0)
  {
    v16 = *(v3 + 23);
  }

  else
  {
    v16 = v3[1];
  }

  if (v15 < 0)
  {
    v3 = *v3;
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v8)
    {
      break;
    }

    if (v11 <= 1)
    {
      v17 &= *&v9 - 1;
    }

    else if (v17 >= *&v9)
    {
      v17 %= *&v9;
    }

    if (v17 != v12)
    {
      goto LABEL_33;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  v18 = *(v14 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[3];
  }

  if (v18 != v16)
  {
    goto LABEL_20;
  }

  v20 = v19 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v20, v3, v16))
  {
    goto LABEL_20;
  }

  return v14;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A12>(mlir::ModuleOp)::{lambda(mlir::Operation *)#2}>(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "name", 4), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::contains(a2 + 56, "name", 4uLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    Context = mlir::Attribute::getContext((a2 + 24));
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(Context, v7);
    return mlir::Operation::removeAttr(a2, v6);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,mlir::Operation *>,std::__map_value_compare<std::string,std::__value_type<std::string,mlir::Operation *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,mlir::Operation *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_25:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v9[1];
      }

      if (v12 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v13 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v7, v14, v15);
      v17 = v6 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_25;
      }
    }

    v18 = memcmp(v14, v7, v15);
    v19 = v13 < v6;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      return v8;
    }

    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }
}

double mlir::Region::getOps<mlir::anec::A13>@<D0>(uint64_t *__return_ptr a1@<X8>, mlir::Region *a2@<X0>)
{
  mlir::Region::OpIterator::OpIterator(&v17, a2, 1);
  mlir::Region::OpIterator::OpIterator(&v13, a2, 0);
  *&v11[8] = v17;
  v4 = v14[0];
  *v11 = v14[0];
  v10 = v13;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A13,mlir::Region::OpIterator>::filter;
  if (v14[0] != v18)
  {
    do
    {
      v5 = v12;
      ZinIrHalH13g::~ZinIrHalH13g(v4);
      if (v5())
      {
        break;
      }

      mlir::Region::OpIterator::operator++(&v10);
      v4 = *v11;
    }

    while (*v11 != *&v11[24]);
  }

  v13 = v10;
  *v14 = *v11;
  v15 = *&v11[16];
  v16 = v12;
  *v11 = v18;
  *&v11[8] = v17;
  *&v11[24] = v18;
  v12 = mlir::detail::op_filter_iterator<mlir::anec::A13,mlir::Region::OpIterator>::filter;
  v6 = *v11;
  *(a1 + 4) = v17;
  *(a1 + 5) = v6;
  *(a1 + 6) = *&v11[16];
  v7 = v12;
  v8 = *v14;
  *a1 = v13;
  *(a1 + 1) = v8;
  result = *&v15;
  *(a1 + 2) = v15;
  a1[6] = v16;
  a1[7] = mlir::detail::op_iterator<mlir::anec::A13,mlir::Region::OpIterator>::unwrap;
  a1[14] = v7;
  a1[15] = mlir::detail::op_iterator<mlir::anec::A13,mlir::Region::OpIterator>::unwrap;
  return result;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<llvm::LogicalResult mlir::anec::anonymous namespace::WriteMultiFunctionPass::writeMultiFunctionPlists<mlir::anec::A13>(mlir::ModuleOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v4 = *a1;
    v30 = a2;
    memset(&__p, 0, sizeof(__p));
    mlir::pdl::OperationOp::getOpName(&v30, &__dst);
    if (__dst.__r_.__value_.__s.__data_[16] != 1)
    {
LABEL_15:
      Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v30);
      if (!Name)
      {
        size = 0;
        v10 = 0;
        v11 = 0;
        memset(&v28, 0, sizeof(v28));
        goto LABEL_24;
      }

      v8 = v7;
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v7 >= 0x17)
        {
          operator new();
        }

        *(&v28.__pn_.__r_.__value_.__s + 23) = v7;
        if (v7)
        {
          memmove(&v28, Name, v7);
        }

        v28.__pn_.__r_.__value_.__s.__data_[v8] = 0;
        v11 = HIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]);
        size = v28.__pn_.__r_.__value_.__l.__size_;
        v10 = v28.__pn_.__r_.__value_.__r.__words[0];
LABEL_24:
        memset(&v27, 0, sizeof(v27));
        if ((v11 & 0x80u) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v10;
        }

        if ((v11 & 0x80u) == 0)
        {
          size = v11;
        }

        std::string::append[abi:nn200100]<char const*,0>(&v27.__pn_, &v12->__pn_, (&v12->__pn_ + size));
        if (!std::__fs::filesystem::path::__root_directory(&v27).__size_)
        {
          memset(&__len, 0, sizeof(__len));
          v13 = *(v4 + 495);
          if (v13 >= 0)
          {
            v14 = (v4 + 472);
          }

          else
          {
            v14 = *(v4 + 472);
          }

          if (v13 >= 0)
          {
            v15 = *(v4 + 495);
          }

          else
          {
            v15 = *(v4 + 480);
          }

          std::string::append[abi:nn200100]<char const*,0>(&__len, v14, (v14 + v15));
          std::__fs::filesystem::operator/[abi:nn200100](&v27, &__len, &__dst);
          if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__pn_.__r_.__value_.__l.__data_);
          }

          v27.__pn_ = __dst;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          __dst.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__len.__r_.__value_.__l.__data_);
          }
        }

        v16 = a1[1];
        std::__fs::filesystem::__weakly_canonical(&__dst, &v27, 0);
        std::__fs::filesystem::__weakly_canonical(&__len, v16, 0);
        std::__fs::filesystem::path::lexically_relative(&v26, &__dst, &__len);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_42:
        v17 = *a1[2];
        if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, v27.__pn_.__r_.__value_.__l.__data_, v27.__pn_.__r_.__value_.__l.__size_);
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          __dst = v27.__pn_;
          if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            __len = v26.__pn_;
            goto LABEL_49;
          }
        }

        std::string::__init_copy_ctor_external(&__len, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
LABEL_49:
        mlir::anec::ANECIRNetwork::addWeightFileInfo(v17, &__dst, &__len, &__p);
        if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__len.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_82;
          }
        }

        else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_52:
          if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_82:
        operator delete(v26.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_83:
        operator delete(v27.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_54:
          if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_85:
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          goto LABEL_55;
        }

LABEL_84:
        operator delete(v28.__pn_.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_85;
      }

LABEL_86:
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    mlir::pdl::OperationOp::getOpName(&v30, &__len);
    if (__len.__r_.__value_.__r.__words[0])
    {
      v5 = __len.__r_.__value_.__l.__size_;
      if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_86;
      }

      if (__len.__r_.__value_.__l.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
      if (__len.__r_.__value_.__l.__size_)
      {
        memmove(&__dst, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
      }

      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        __p.__pn_ = __dst;
        goto LABEL_15;
      }
    }

    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_14;
  }

LABEL_55:
  {
    mlir::collect_regions::detail::verifyShouldAddToQueue();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return;
  }

  v18 = a1[3];
  memset(&v28, 0, sizeof(v28));
  v19 = *(v18 + 23);
  if (v19 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if (v19 >= 0)
  {
    v21 = *(v18 + 23);
  }

  else
  {
    v21 = *(v18 + 8);
  }

  std::string::append[abi:nn200100]<char const*,0>(&v28.__pn_, v20, (v20 + v21));
  v22 = a1[1];
  std::__fs::filesystem::__weakly_canonical(&__dst, &v28, 0);
  std::__fs::filesystem::__weakly_canonical(&__len, v22, 0);
  std::__fs::filesystem::path::lexically_relative(&__p, &__dst, &__len);
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

LABEL_71:
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
    goto LABEL_67;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v23 = a1[2];
  v24 = a1[3];
  v25 = *v23;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p.__pn_;
  }

  *(&__len.__r_.__value_.__s + 23) = 0;
  __len.__r_.__value_.__s.__data_[0] = 0;
  mlir::anec::ANECIRNetwork::addWeightFileInfo(v25, v24, &__dst, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__len.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }
}