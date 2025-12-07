void *mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PadOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 123;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[3])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void *mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
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
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_7@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 1869901417;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_35_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = 0x200000002;

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a14, v15, 3uLL, 16);
}

uint64_t *OUTLINED_FUNCTION_43_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*v19 + 36);
  v22 = *v19 - 16;
  if (!v21)
  {
    v22 = 0;
  }

  a18 = v22;
  a19 = v21;

  return mlir::OperandRange::getTypes(&a10, &a18);
}

void OUTLINED_FUNCTION_62_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v6, a1 + 1, 16);
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_82_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

void OUTLINED_FUNCTION_83_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, va, v22 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = *(a1 + 80);

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

BOOL OUTLINED_FUNCTION_93_1@<W0>(const char *a1@<X2>, uint64_t *a2@<X8>)
{

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(a2, (v2 & 0xFFFFFFFFFFFFFFF8), a1, 6, 0);
}

uint64_t OUTLINED_FUNCTION_100_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = 1936026729;
  *a2 = *"inner_tiles";
  *(result + 32) += 11;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_1@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 6;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a6 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a6);
}

uint64_t OUTLINED_FUNCTION_126_1()
{
  v2 = (*v0 + 24);

  return mlir::Attribute::getContext(v2);
}

void OUTLINED_FUNCTION_127_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *(v31 - 152) = a2;
  *(v31 - 144) = v30;
  *(v31 - 140) = a30;
}

llvm::raw_ostream *OUTLINED_FUNCTION_131_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(v2, va1, va);
}

uint64_t *OUTLINED_FUNCTION_132_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va1, va);
}

llvm::raw_ostream *OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return mlir::printDynamicIndexList(v11, v12, a3, v13, v14, v15, 0, 0, a9, a10, a11);
}

uint64_t *OUTLINED_FUNCTION_139_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return mlir::detail::DenseArrayAttrImpl<long long>::print(va, v13);
}

uint64_t *OUTLINED_FUNCTION_149_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = a18;
  v24 = a19;

  return mlir::tensor::PadOp::getMixedPadImpl(v19, v20, v21, v23, v24, &a10);
}

void OUTLINED_FUNCTION_150_0(const char *a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v4 = a1;
  LOWORD(v9) = 259;

  mlir::OpState::emitOpError(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_163_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = a1;

  return mlir::ArrayAttr::getValue(&a13);
}

uint64_t OUTLINED_FUNCTION_165_1@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_188_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 6) = v2;
  *(result + 32) += 14;
  return result;
}

uint64_t OUTLINED_FUNCTION_189_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = v2;
  *(result + 32) += 15;
  return result;
}

uint64_t OUTLINED_FUNCTION_190_0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 12;
  return result;
}

void OUTLINED_FUNCTION_197(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  mlir::Block::getTerminator(v3);
}

void OUTLINED_FUNCTION_198()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 - 152, v0, v1, 8);
}

void OUTLINED_FUNCTION_199(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  llvm::SmallVectorBase<unsigned int>::grow_pod(va, v19, v20, 8);
}

uint64_t OUTLINED_FUNCTION_200@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return mlir::ArrayAttr::getValue(&a2);
}

uint64_t mlir::impl::CanonicalizerBase<anonymous namespace::Canonicalizer>::CanonicalizerBase(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
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
  *a1 = &unk_1F1A0AD08;
  *&v6 = "Seed the worklist in general top-down order";
  *(&v6 + 1) = 43;
  *&v5 = &v3;
  LOBYTE(v3) = 1;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "top-down", 8, &v6, &v5);
  *(a1 + 344) = &unk_1F1A01D88;
  *(a1 + 536) = &unk_1F1A01E08;
  *&v5 = "Perform control flow optimizations to the region tree";
  *(&v5 + 1) = 53;
  v4 = 1;
  *&v3 = &v4;
  v7[0] = "disabled";
  v7[1] = 8;
  v8 = 0;
  v9 = "Don't run any control-flow simplification.";
  v10 = 42;
  v11 = "normal";
  v12 = 6;
  v13 = 1;
  v14 = "Perform simple control-flow simplifications (e.g. dead args elimination).";
  v15 = 73;
  v16 = "aggressive";
  v17 = 10;
  v18 = 2;
  v19 = "Perform aggressive control-flow simplification (e.g. block merging).";
  v20 = 68;
  *&v6 = v7;
  *(&v6 + 1) = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1 + 552, (a1 + 152), "region-simplify", 15, &v5, &v3, &v6);
  *(a1 + 552) = &unk_1F1A0AD78;
  *(a1 + 1152) = &unk_1F1A0ADF8;
  if (v6 != v7)
  {
    free(v6);
  }

  *&v6 = "Max. iterations between applying patterns / simplifying regions";
  *(&v6 + 1) = 63;
  LODWORD(v3) = 10;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1168, (a1 + 152), "max-iterations", 14, &v6, &v5);
  *(a1 + 1168) = &unk_1F1A0CA98;
  *(a1 + 1368) = &unk_1F1A0CB18;
  *&v6 = "Max. number of pattern rewrites within an iteration";
  *(&v6 + 1) = 51;
  LODWORD(v3) = -1;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(a1 + 1384, (a1 + 152), "max-num-rewrites", 16, &v6, &v5);
  *(a1 + 1384) = &unk_1F1A0CA98;
  *(a1 + 1584) = &unk_1F1A0CB18;
  *&v6 = "Test only: Fail pass on non-convergence to detect cyclic pattern";
  *(&v6 + 1) = 64;
  LOBYTE(v3) = 0;
  *&v5 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1600, (a1 + 152), "test-convergence", 16, &v6, &v5);
  *(a1 + 1600) = &unk_1F1A01D88;
  *(a1 + 1792) = &unk_1F1A01E08;
  *&v3 = "Labels of patterns that should be filtered out during application";
  *(&v3 + 1) = 65;
  *&v6 = "disable-patterns";
  *(&v6 + 1) = 16;
  v5 = (a1 + 152);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 1808, &v6, &v5, &v3);
  *(a1 + 2064) = 0;
  *(a1 + 1808) = &unk_1F1A0B438;
  *(a1 + 2056) = &unk_1F1A0B4B8;
  *(a1 + 2072) = &unk_1F1A35AA0;
  *&v5 = a1 + 2056;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, &v5);
  *(a1 + 1808) = &unk_1F1A0B2E0;
  *(a1 + 2056) = &unk_1F1A0B360;
  *&v3 = "Labels of patterns that should be used during application, all other patterns are filtered out";
  *(&v3 + 1) = 94;
  *&v6 = "enable-patterns";
  *(&v6 + 1) = 15;
  v5 = (a1 + 152);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1 + 2080, &v6, &v5, &v3);
  *(a1 + 2336) = 0;
  *(a1 + 2080) = &unk_1F1A0B438;
  *(a1 + 2328) = &unk_1F1A0B4B8;
  *(a1 + 2344) = &unk_1F1A35AA0;
  *&v5 = a1 + 2328;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a1 + 312, &v5);
  *(a1 + 2080) = &unk_1F1A0B2E0;
  *(a1 + 2328) = &unk_1F1A0B360;
  return a1;
}

void anonymous namespace::Canonicalizer::~Canonicalizer(_anonymous_namespace_::Canonicalizer *this)
{
  *this = &unk_1F1A0AC68;
  v2 = *(this + 301);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F1A0AD08;
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 260);
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(this + 226);
  *(this + 200) = &unk_1F1A35C60;
  v3 = *(this + 223);
  if (v3 == (this + 1760))
  {
    (*(*v3 + 32))(v3);
    *(this + 200) = &unk_1F1A35888;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
LABEL_8:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 200) = &unk_1F1A35888;
    v4 = *(this + 212);
    if (v4 != *(this + 211))
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 208);
  if (v5 != this + 1680)
  {
    free(v5);
  }

  *(this + 173) = &unk_1F1A0CC18;
  v6 = *(this + 197);
  if (v6 == (this + 1552))
  {
    (*(*v6 + 32))(v6);
    *(this + 173) = &unk_1F1A35888;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
LABEL_15:
      free(v7);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 173) = &unk_1F1A35888;
    v7 = *(this + 185);
    if (v7 != *(this + 184))
    {
      goto LABEL_15;
    }
  }

  v8 = *(this + 181);
  if (v8 != this + 1464)
  {
    free(v8);
  }

  *(this + 146) = &unk_1F1A0CC18;
  v9 = *(this + 170);
  if (v9 == (this + 1336))
  {
    (*(*v9 + 32))(v9);
    *(this + 146) = &unk_1F1A35888;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
LABEL_22:
      free(v10);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    *(this + 146) = &unk_1F1A35888;
    v10 = *(this + 158);
    if (v10 != *(this + 157))
    {
      goto LABEL_22;
    }
  }

  v11 = *(this + 154);
  if (v11 != this + 1248)
  {
    free(v11);
  }

  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(this + 69);
  *(this + 43) = &unk_1F1A35C60;
  v12 = *(this + 66);
  if (v12 == (this + 504))
  {
    (*(*v12 + 32))(v12);
    *(this + 43) = &unk_1F1A35888;
    v13 = *(this + 55);
    if (v13 != *(this + 54))
    {
LABEL_29:
      free(v13);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    *(this + 43) = &unk_1F1A35888;
    v13 = *(this + 55);
    if (v13 != *(this + 54))
    {
      goto LABEL_29;
    }
  }

  v14 = *(this + 51);
  if (v14 != this + 424)
  {
    free(v14);
  }

  mlir::Pass::~Pass(this);
}

{

  JUMPOUT(0x1AC55A070);
}

__n128 anonymous namespace::Canonicalizer::runOnOperation(uint64_t this)
{
  v1 = *(this + 40) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(this + 2400);
  v6 = *(this + 2352);
  v7 = *(this + 2368);
  result = *(this + 2384);
  v4 = *(v1 + 44);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((v1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40));
    v9 = 0;
    v8[0] = v6;
    v8[1] = v7;
    v8[2] = result;
    mlir::applyPatternsAndFoldGreedily(v5, v2, v8, &v9);
  }

  return result;
}

void anonymous namespace::Canonicalizer::initialize(_anonymous_namespace_::Canonicalizer *this, mlir::MLIRContext *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 2352) = *(this + 472);
  *(this + 589) = *(this + 170);
  *(this + 295) = *(this + 162);
  *(this + 296) = *(this + 189);
  v13 = a2;
  *__p = 0u;
  v15 = 0u;
  v16 = v18;
  v17 = 0x600000000;
  v18[6] = 0;
  v18[7] = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x2800000000;
  v23 = 0;
  v24 = 0;
  v25 = 0x2800000000;
  mlir::MLIRContext::getLoadedDialects(&v11, a2);
  v3 = v11;
  v4 = v12;
  if (v11 != v12)
  {
    do
    {
      v5 = *v3++;
      (*(*v5 + 16))(v5, &v13);
    }

    while (v3 != v4);
    v3 = v11;
  }

  if (v3)
  {
    v12 = v3;
    operator delete(v3);
  }

  RegisteredOperations = mlir::MLIRContext::getRegisteredOperations(a2);
  if (v7)
  {
    v8 = RegisteredOperations;
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      (*(*v10 + 24))(v10, &v13, a2);
      v9 -= 8;
    }

    while (v9);
  }

  operator new();
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = a4;
  v15 = a2;
  v16 = 0;
  v9 = llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(a1, v12, &v15, a5, a6, a7);
  *(v9 + 608) = 0;
  *v9 = &unk_1F1A0AED0;
  *(v9 + 600) = &unk_1F1A0AF50;
  v15 = (v9 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v15);
  v13[0] = &unk_1F1A0B1E0;
  v13[1] = a1;
  v17 = &v15;
  v14 = v13;
  v15 = &unk_1F1A0B1E0;
  v16 = a1;
  std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](&v15, a1 + 568);
  if (v17 != &v15)
  {
    if (v17)
    {
      (*(*v17 + 5))();
    }

    v10 = v14;
    if (v14 != v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v10 + 32))(v10);
    return a1;
  }

  (*(*v17 + 4))(v17);
  v10 = v14;
  if (v14 == v13)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v7 = a1;
  v23 = 0;
  v8 = *(*(a1 + 160) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(a1 + 168);
    v13 = 0;
    v14 = (v12 + 8);
    if (a4)
    {
      v15 = (v12 + 8);
      while (1)
      {
        v16 = *v15;
        v15 += 6;
        if (v16 == a4)
        {
          a1 = memcmp(*(v14 - 1), a3, a4);
          if (!a1)
          {
            break;
          }
        }

        ++v13;
        v14 = v15;
        if (v11 == v13)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v14;
        v14 += 6;
        if (!v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(v12 + 48 * v13 + 40);
    v23 = v18;
  }

  else
  {
LABEL_17:
    v25 = 1283;
    v24[0] = "Cannot find option named '";
    v24[2] = a3;
    v24[3] = a4;
    v26[0] = v24;
    v26[2] = "'!";
    v27 = 770;
    v19 = llvm::errs(a1);
    if (llvm::cl::Option::error(v7, v26, 0, 0, v19))
    {
      return 1;
    }

    v18 = 0;
  }

  *(v7 + 128) = v18;
  *(v7 + 12) = a2;
  v21 = *(v7 + 592);
  if (v21)
  {
    (*(*v21 + 48))(v21, &v23);
    return 0;
  }

  else
  {
    v22 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(v22);
  }
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::printOptionValue(llvm::raw_ostream *result, unint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F1A0AFF8;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 152), result, &v6, (result + 136), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          v9 = v6;
          v10 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 16);
          v6 = v9;
          result = v10;
          v7 = *(a2 + 8);
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
    goto LABEL_8;
  }

  v7 = llvm::raw_ostream::write(this, v4, v5);
  v6 = *(v7 + 4);
  if (v6 < *(v7 + 3))
  {
    goto LABEL_7;
  }

LABEL_3:
  llvm::raw_ostream::write(v7, 61);
LABEL_8:
    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  JUMPOUT(0x1AC55A070);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::GreedySimplifyRegionLevel>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5, uint64_t *a6)
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
    v24 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, v18 + 1, 8);
    GeneralCategory = v24;
    LODWORD(v18) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v18) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F1A0AFF8;
  *(a1 + 144) = 0;
  *a1 = &unk_1F1A0AF90;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F1A0B080;
  *(a1 + 568) = &unk_1F1A0B150;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v15, v16, v17);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
  *(a1 + 32) = *a4;
  v19 = **a5;
  *(a1 + 128) = v19;
  *(a1 + 148) = 1;
  *(a1 + 144) = v19;
  v20 = *(a6 + 2);
  if (v20)
  {
    v21 = *a6;
    v22 = v21 + 40 * v20;
    do
    {
      llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(a1 + 152, *v21, *(v21 + 8), (v21 + 16), *(v21 + 24), *(v21 + 32));
      v21 += 40;
    }

    while (v21 != v22);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(a1);

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option((a1 - 600));

  JUMPOUT(0x1AC55A070);
}

void *llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(void *a1)
{
  *a1 = &unk_1F1A0AF90;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F1A0B100;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~opt(void *a1)
{
  *a1 = &unk_1F1A0AF90;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F1A0B100;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  JUMPOUT(0x1AC55A070);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *result)
{
  *result = &unk_1F1A0B100;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F1A0B100;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

void *llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *result)
{
  *result = &unk_1F1A0B100;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::~parser(void *a1)
{
  *a1 = &unk_1F1A0B100;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__function::__func<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1},std::allocator<llvm::cl::opt<mlir::GreedySimplifyRegionLevel,false,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::{lambda(mlir::GreedySimplifyRegionLevel const&)#1}>,void ()(mlir::GreedySimplifyRegionLevel const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001A75E91A9)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001A75E91A9 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001A75E91A9))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001A75E91A9 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F1A0AFF8;
  v21 = 1;
  v20 = v6;
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    if (v8 <= v19 && v8 + 48 * v10 > v19)
    {
      v18 = v19 - v8;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = v19;
    }

    a3 = v17;
    a2 = v16;
    a1 = v15;
  }

  v11 = v8 + 48 * *(a1 + 24);
  v12 = *(v7 + 1);
  *v11 = *v7;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_1F1A0B060;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F1A0AFF8;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::GreedySimplifyRegionLevel>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_1F1A0B060;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_1F1A0AFF8;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t std::__function::__value_func<void ()(mlir::GreedySimplifyRegionLevel const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
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
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE7__cloneEPNS0_6__baseISU_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A0B1E0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_25GreedySimplifyRegionLevelENS4_19GenericOptionParserIS6_EEEC1IJN4llvm2cl4descENSC_11initializerIS6_EENSC_11ValuesClassEEEERS4_NSB_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISP_EEFvRKS6_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionINS_25GreedySimplifyRegionLevelENS1_19GenericOptionParserIS3_EEEC1IJN4llvm2cl4descENS9_11initializerIS3_EENS9_11ValuesClassEEEERS1_NS8_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *mlir::detail::PassOptions::Option<mlir::GreedySimplifyRegionLevel,mlir::detail::PassOptions::GenericOptionParser<mlir::GreedySimplifyRegionLevel>>::~Option(void *a1)
{
  *a1 = &unk_1F1A0AF90;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F1A0B100;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F1A35888;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  v11[1] = a4;
  v14 = a2;
  v15 = 0;
  v8 = llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v11, &v14, a5, a6);
  *(v8 + 208) = 0;
  *v8 = &unk_1F1A0CB58;
  *(v8 + 200) = &unk_1F1A0CBD8;
  v14 = (v8 + 200);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100]((a2 + 160), &v14);
  v12[0] = &unk_1F1A0B260;
  v12[1] = a1;
  v16 = &v14;
  v13 = v12;
  v14 = &unk_1F1A0B260;
  v15 = a1;
  std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](&v14, a1 + 168);
  if (v16 != &v14)
  {
    if (v16)
    {
      (*(*v16 + 5))();
    }

    v9 = v13;
    if (v13 != v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    return a1;
  }

  (*(*v16 + 4))(v16);
  v9 = v13;
  if (v13 == v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  return a1;
}

void *mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(void *a1, llvm::raw_ostream *this)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = a1[16];

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 72);
  *(result + 208) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F1A0CC18;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  *(a1 - 200) = &unk_1F1A0CC18;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 184);
  v5 = *(a1 - 176);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 72);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 72) = *(a2 - 72);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<long long,false,llvm::cl::parser<long long>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
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
  v16 = *(a1 + 72);
  if (v16 >= *(a1 + 76))
  {
    v19 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v16 + 1, 8);
    GeneralCategory = v19;
    LODWORD(v16) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v16) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 136) = &unk_1F1A0CC80;
  *a1 = &unk_1F1A0CC18;
  *(a1 + 160) = &unk_1F1A359E0;
  *(a1 + 168) = &unk_1F1A0CCA0;
  *(a1 + 192) = a1 + 168;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v13, v14, v15);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
  *(a1 + 32) = *a4;
  v17 = **a5;
  *(a1 + 128) = v17;
  *(a1 + 152) = 1;
  *(a1 + 144) = v17;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(void *a1)
{
  *a1 = &unk_1F1A0CC18;
  v2 = a1 + 21;
  v3 = a1[24];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F1A35888;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<long long,llvm::cl::parser<long long>>::~Option(uint64_t a1)
{
  *(a1 - 200) = &unk_1F1A0CC18;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {

    free(v5);
  }
}

{
  *(a1 - 200) = &unk_1F1A0CC18;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 200) = &unk_1F1A35888;
    v4 = *(a1 - 104);
    if (v4 != *(a1 - 112))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 136);
  if (v5 != (a1 - 120))
  {
    free(v5);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__function::__value_func<void ()(long long const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
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
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A0B260;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKxEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIxN4llvm2cl6parserIxEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      v12 -= 3;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    *(a1 + 136) = v11;
    *(a1 + 176) = 0;
  }

  *(a1 + 256) = 1;
  v15 = a1;
  v16[0] = a1 + 264;
  v17[0] = a3;
  v17[1] = a4;
  v16[1] = a1;
  v16[2] = v17;
  v16[3] = &v15;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v16) & 1) == 0;
}

void mlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x1AC55A070);
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::setDefault(void *a1)
{
  v2 = a1 + 16;
  v3 = a1[16];
  a1[24] = a1[23];
  v4 = a1[17];
  while (v4 != v3)
  {
    v5 = *(v4 - 1);
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*v4);
    }
  }

  a1[17] = v3;
  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (v3 >= a1[18])
    {
      v3 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v2, v6 + 8);
    }

    else
    {
      if (*(v6 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v3, *(v6 + 8), *(v6 + 16));
      }

      else
      {
        v8 = *(v6 + 8);
        v3->__r_.__value_.__r.__words[2] = *(v6 + 24);
        *&v3->__r_.__value_.__l.__data_ = v8;
      }

      ++v3;
    }

    a1[17] = v3;
    v6 += 40;
  }
}

void *mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::print(void *result, llvm::raw_ostream *this)
{
  if (result[17] == result[16])
  {
    return result;
  }

  v3 = result;
  v4 = result[2];
  v5 = result[3];
  result = *(this + 4);
  if (v5 > *(this + 3) - result)
  {
    v6 = llvm::raw_ostream::write(this, v4, v5);
    result = *(v6 + 4);
    if (*(v6 + 3) - result > 1uLL)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(v6, "={", 2uLL);
    v7 = v3[16];
    v8 = v3[17];
    if (v7 == v8)
    {
      goto LABEL_16;
    }

LABEL_10:
    result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, v7);
    for (i = v7 + 1; i != v8; ++i)
    {
      v11 = *(this + 4);
      if (*(this + 3) == v11)
      {
        llvm::raw_ostream::write(this, ",", 1uLL);
      }

      else
      {
        *v11 = 44;
        ++*(this + 4);
      }

      result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, i);
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = v5;
    memcpy(result, v4, v5);
    result = (*(this + 4) + v9);
    *(this + 4) = result;
  }

  v6 = this;
  if (*(this + 3) - result <= 1uLL)
  {
    goto LABEL_9;
  }

LABEL_4:
  *result = 31549;
  *(v6 + 4) += 2;
  v7 = v3[16];
  v8 = v3[17];
  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_16:
  v12 = *(this + 4);
  if (*(this + 3) == v12)
  {

    return llvm::raw_ostream::write(this, "}", 1uLL);
  }

  else
  {
    *v12 = 125;
    ++*(this + 4);
  }

  return result;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 + 128, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 256) = 1;
  *(a1 + 256) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 - 120, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, char **a3, _OWORD *a4)
{
  *a1 = &unk_1F1A35888;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
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
  v14 = *(a1 + 72);
  if (v14 >= *(a1 + 76))
  {
    v16 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v14 + 1, 8);
    GeneralCategory = v16;
    LODWORD(v14) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v14) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *a1 = &unk_1F1A0B4F8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = &unk_1F1A35AA0;
  *(a1 + 216) = &unk_1F1A0B560;
  *(a1 + 240) = a1 + 216;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1], v11, v12, v13);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::mps::ConstantAttributeConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::ConstantAttributeConversionType>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x1AC55A070);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  v29 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    while (v10 != v9)
    {
      v11 = *(v10 - 1);
      v10 -= 3;
      if (v11 < 0)
      {
        operator delete(*v10);
      }
    }

    *(a1 + 136) = v9;
    *(a1 + 176) = 0;
  }

  if (!__src)
  {
    __dst = 0uLL;
    v31 = 0;
    goto LABEL_17;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_41;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
    *(&__dst + __len) = 0;
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p[0]);
LABEL_17:
  *__p = __dst;
  v28 = v31;
  v13 = *(a1 + 136);
  v12 = *(a1 + 144);
  if (v13 >= v12)
  {
    v16 = *(a1 + 128);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
    if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3);
    v19 = 2 * v18;
    if (2 * v18 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x555555555555555)
    {
      v20 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      if (v20 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v21 = (24 * v17);
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(v21, __p[0], __p[1]);
    }

    else
    {
      *&v21->__r_.__value_.__l.__data_ = *__p;
      v21->__r_.__value_.__r.__words[2] = v28;
    }

    v15 = v21 + 1;
    v22 = *(a1 + 128);
    v23 = *(a1 + 136) - v22;
    v24 = v21 - v23;
    memcpy(v24, v22, v23);
    *(a1 + 128) = v24;
    *(a1 + 136) = v15;
    *(a1 + 144) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 136), __p[0], __p[1]);
    }

    else
    {
      v14 = *__p;
      *(v13 + 16) = v28;
      *v13 = v14;
    }

    v15 = (v13 + 24);
  }

  *(a1 + 136) = v15;
  *(a1 + 12) = v29;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 184, &v29);
  v25 = *(a1 + 240);
  if (!v25)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_41:
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v25 + 48))(v25, __p);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__function::__func<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000001A75E9758)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000001A75E9758 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001A75E9758))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001A75E9758 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

std::string *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 8));
  }

  else
  {
    *&v5->__r_.__value_.__l.__data_ = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v6 = v5 + 1;
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  v9 = v5 - v8;
  memcpy(v9, *a1, v8);
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void *llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  *a1 = &unk_1F1A0B4F8;
  v2 = a1 + 27;
  v3 = a1[30];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[23];
    if (v4)
    {
LABEL_5:
      a1[24] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[23];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[19];
  if (v5)
  {
    v6 = a1[20];
    v7 = a1[19];
    if (v6 != v5)
    {
      v8 = v6 - 40;
      v9 = a1[20];
      do
      {
        *(v9 - 40) = &unk_1F1A0D0E0;
        v9 -= 40;
        if (*(v9 + 31) < 0)
        {
          operator delete(*(v6 - 32));
        }

        v8 -= 40;
        v6 = v9;
      }

      while (v9 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v10 = a1[16];
  if (v10)
  {
    v11 = a1[17];
    v12 = a1[16];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[16];
    }

    a1[17] = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F1A35888;
  v14 = a1[12];
  if (v14 != a1[11])
  {
    free(v14);
  }

  v15 = a1[8];
  if (v15 != a1 + 10)
  {
    free(v15);
  }

  return a1;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}::operator()(uint64_t a1, const void *a2, size_t __len)
{
  if (a2)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v26) = __len;
    if (__len)
    {
      memmove(&__dst, a2, __len);
    }

    *(&__dst + __len) = 0;
    v7 = __dst;
    v6 = v25;
    v5 = HIBYTE(v26);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    __dst = 0;
    v25 = 0;
    v26 = 0;
  }

  *v23 = v26;
  *&v23[3] = *(&v26 + 3);
  v8 = *(a1 + 24);
  v9 = *v8;
  v11 = *(*v8 + 136);
  v10 = *(*v8 + 144);
  if (v11 >= v10)
  {
    v13 = v9[16];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v13) >> 3);
    if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v13) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      if (v17 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v18 = 24 * v14;
    if (v5 < 0)
    {
      std::string::__init_copy_ctor_external(v18, v7, v6);
    }

    else
    {
      *v18 = v7;
      *(v18 + 8) = v6;
      *(v18 + 16) = *v23;
      *(v18 + 19) = *&v23[3];
      *(v18 + 23) = v5;
    }

    v12 = v18 + 24;
    v19 = v9[16];
    v20 = v9[17] - v19;
    v21 = (v18 - v20);
    memcpy(v21, v19, v20);
    v9[16] = v21;
    v9[17] = v12;
    v9[18] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    if (v5 < 0)
    {
      std::string::__init_copy_ctor_external(*(*v8 + 136), v7, v6);
    }

    else
    {
      *v11 = v7;
      *(v11 + 8) = v6;
      *(v11 + 16) = *v23;
      *(v11 + 19) = *&v23[3];
      *(v11 + 23) = v5;
    }

    v12 = v11 + 24;
  }

  v9[17] = v12;
  if (v5 < 0)
  {
    operator delete(v7);
  }

  return 1;
}

void *mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(llvm::raw_ostream *a1, int a2, std::string *this)
{
  v5 = std::string::find(this, 32, 0);
  v6 = std::string::find(this, 123, 0);
  v7 = std::string::find(this, 39, 0);
  v8 = std::string::find(this, 34, 0);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v5 >= v9)
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    if (v11 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v14 = a1;

    return llvm::raw_ostream::write(v14, v12, size);
  }

  v10 = *(a1 + 4);
  if (*(a1 + 3) == v10)
  {
    llvm::raw_ostream::write(a1, "{", 1uLL);
  }

  else
  {
    *v10 = 123;
    ++*(a1 + 4);
  }

  v16 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v16 >= 0)
  {
    v17 = this;
  }

  else
  {
    v17 = this->__r_.__value_.__r.__words[0];
  }

  if (v16 >= 0)
  {
    v18 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = this->__r_.__value_.__l.__size_;
  }

  result = llvm::raw_ostream::write(a1, v17, v18);
  v19 = *(a1 + 4);
  if (*(a1 + 3) == v19)
  {
    v12 = "}";
    v14 = a1;
    size = 1;

    return llvm::raw_ostream::write(v14, v12, size);
  }

  *v19 = 125;
  ++*(a1 + 4);
  return result;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v5 = __str;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= a4)
      {
        v23 = a4;
      }

      if (v22 >= 0x555555555555555)
      {
        v24 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = v23;
      }

      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v5++);
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v8)
    {
      v21 = *(v13 - 1);
      v13 -= 3;
      if (v21 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v15 = (__str + v14);
    if (v13 != v8)
    {
      do
      {
        std::string::operator=(v8++, v5++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v16 = v13;
    if (v15 != a3)
    {
      v17 = 0;
      do
      {
        while (1)
        {
          v18 = &v15[v17 / 0x18];
          v19 = &v13[v17 / 8];
          if ((SHIBYTE(v15[v17 / 0x18].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          std::string::__init_copy_ctor_external(v19, v18->__r_.__value_.__l.__data_, v18->__r_.__value_.__l.__size_);
          v17 += 24;
          if (&v15[v17 / 0x18] == a3)
          {
            goto LABEL_17;
          }
        }

        v20 = *&v18->__r_.__value_.__l.__data_;
        v19->__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v19->__r_.__value_.__l.__data_ = v20;
        v17 += 24;
      }

      while (&v15[v17 / 0x18] != a3);
LABEL_17:
      v16 = &v13[v17 / 8];
    }

    *(a1 + 8) = v16;
  }
}

void std::__shared_ptr_emplace<mlir::FrozenRewritePatternSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A0B5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void mlir::PDLPatternModule::~PDLPatternModule(mlir::PDLPatternModule *this)
{
  if (*(this + 33))
  {
    v2 = *(this + 32);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 15) + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          v7 = *(v4 + 4);
          if (v7 == (v4 + 8))
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          llvm::deallocate_buffer(v4, (v6 + 41));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 15));
  if (*(this + 27))
  {
    v8 = *(this + 26);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(*(this + 12) + v9);
        if (v10 != -8 && v10 != 0)
        {
          v12 = *v10;
          v13 = *(v10 + 4);
          if (v13 == (v10 + 8))
          {
            (*(*v13 + 32))(v13);
          }

          else if (v13)
          {
            (*(*v13 + 40))(v13);
          }

          llvm::deallocate_buffer(v10, (v12 + 41));
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(*(this + 12));
  llvm::deallocate_buffer(*(this + 9), (16 * *(this + 22)));
}

void anonymous namespace::CSEDriver::simplify(uint64_t **this, mlir::Operation *a2, BOOL *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 24);
  v11[3] = v12;
  v11[4] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0;
  v13[0] = 0;
  v13[1] = 1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = *(a2 + 11);
  if ((v5 & 0x7FFFFF) != 0)
  {
    v6 = (((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v7 = 24 * (v5 & 0x7FFFFF);
    do
    {
      v6 = (v6 + 24);
      v7 -= 24;
    }

    while (v7);
  }

  v8 = this[1];
  v9 = this[2];
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(**this + 16))(*this, v10);
  }

  if (a3)
  {
    *a3 = this[1] != this[2];
  }

  llvm::deallocate_buffer(v14, (16 * v16));
}

void sub_1A6E2D780(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (v39)
  {
    llvm::deallocate_buffer(*v38, 0x1000);
  }

  if (v41)
  {
    llvm::deallocate_buffer(*v40, *(v40 + 8));
  }

  if (v40 != v37)
  {
    free(v40);
  }

  if (v38 != v36)
  {
    free(v38);
  }
}

void anonymous namespace::CSEDriver::simplifyRegion(uint64_t a1, void *a2, mlir::Region *a3)
{
  if (*a3 != a3)
  {
    v14 = v3;
    v15 = v4;
    DominanceInfo = mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 0);
    if (*a3 != a3 && (v9 = *(a3 + 1), *(v9 + 8) == a3))
    {
      v10 = a2[16];
      __p[0] = a2;
      __p[1] = v10;
      a2[16] = __p;
      *&v12 = 0;
    }

    else if ((DominanceInfo & 4) != 0)
    {
      v12 = 0u;
      v13 = 0u;
      *__p = 0u;
      mlir::detail::DominanceInfoBase<false>::getDominanceInfo(*(a1 + 32), a3, 1);
      operator new();
    }
  }
}

void anonymous namespace::CSEDriver::simplifyBlock(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = (a3 + 32);
  v6 = *(a3 + 40);
  if (v6 != (a3 + 32))
  {
    v67 = (a3 + 32);
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v6);
      v9 = v8;
      if ((*(v8 + 44) & 0x7FFFFF) != 0)
      {
        {
          v10 = *(v8 + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v10 = *(v9 + 48);
          if (v10[2] == &mlir::detail::TypeIDResolver<void,void>::id)
          {
LABEL_9:
            v74 = 0;
            v75 = 0;
            v76[0] = 0;
            v76[1] = &v77;
            v76[2] = 0x400000000;
            v80 = 0;
            v81[0] = 0;
            v79 = v81;
            v81[1] = 1;
            v82 = 0;
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v11 = *(v9 + 44);
            if ((v11 & 0x7FFFFF) != 0)
            {
              v12 = (v9 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64);
              v13 = 24 * (v11 & 0x7FFFFF);
              do
              {
                v12 = (v12 + 24);
                v13 -= 24;
              }

              while (v13);
              llvm::deallocate_buffer(v82, (16 * v84));
            }

            llvm::deallocate_buffer(0, 0);
          }
        }

        if ((*(*v10 + 4))(v10, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          goto LABEL_9;
        }

        v14 = *(v9 + 44);
        if ((v14 & 0x7FFFFF) != 0)
        {
          v15 = (v9 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 32 * *(v9 + 40) + 64);
          v16 = 24 * (v14 & 0x7FFFFF);
          do
          {
            v15 = (v15 + 24);
            v16 -= 24;
          }

          while (v16);
        }
      }

      v70 = v9;
      {
      }

      if (((*(**(v9 + 48) + 32))(*(v9 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v18 = v70;
        if (mlir::isOpTriviallyDead(v70, v17))
        {
          std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 8, &v70);
          ++*(a1 + 72);
          goto LABEL_4;
        }

        v20 = *(v18 + 11);
        v21 = v20 & 0x7FFFFF;
        if ((v20 & 0x7FFFFF) != 0)
        {
          v22 = (((v18 + 16 * ((v20 >> 23) & 1) + ((v20 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10));
          v23 = 24 * v21;
          do
          {
            if (v22 != *v22)
            {
              v24 = v22[1];
              if (v22 == v24 || v22 != *(v24 + 8))
              {
                goto LABEL_4;
              }
            }

            v22 += 3;
            v23 -= 24;
          }

          while (v23);
        }

        if (mlir::isMemoryEffectFree(v18, v19))
        {
          if (v25)
          {
            ++*(a1 + 64);
          }

          else
          {
            v27 = a2[16];
            v29 = *(v27 + 16);
            v30 = *v28;
            Slow = *a2;
            if (*a2)
            {
              *a2 = *Slow;
            }

            else
            {
              a2[11] += 32;
              v39 = a2[1];
              if (v39 && (Slow = ((v39 + 7) & 0xFFFFFFFFFFFFFFF8), (Slow + 4) <= a2[2]))
              {
                a2[1] = Slow + 4;
              }

              else
              {
                v62 = v29;
                v64 = v28;
                Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a2 + 1), 32, 32, 3);
                v29 = v62;
                v28 = v64;
              }
            }

            Slow[2] = v18;
            Slow[3] = v18;
            *Slow = v29;
            Slow[1] = v30;
            *v28 = Slow;
            *(v27 + 16) = Slow;
          }

          goto LABEL_4;
        }

        if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18))
        {
          v68 = 0;
          v69 = 0;
          goto LABEL_4;
        }

        v26 = v18 ? mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v18) : 0;
        v68 = v18;
        v69 = v26;
        if (v18)
        {
          if (mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(&v68))
          {
            break;
          }
        }
      }

LABEL_4:
      v6 = *(v6 + 1);
      if (v6 == v5)
      {
        goto LABEL_89;
      }
    }

    if (!v32)
    {
      goto LABEL_43;
    }

    v33 = *(v32 + 16);
    if (v33 != *(v18 + 2))
    {
      goto LABEL_43;
    }

    v73 = v32;
    if (*(v32 + 8) == v33 + 32)
    {
      v44 = 0;
    }

    else
    {
      v42 = v32;
      ZinIrHalH13g::~ZinIrHalH13g(*(v32 + 8));
      v44 = v43;
      v32 = v42;
    }

    v61 = v32;
    v74 = v32;
    v75 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>((a1 + 40), &v73, &v74, &v71);
    if (v72 == 1)
    {
      if (*(v71 + 16))
      {
        goto LABEL_43;
      }

      v44 = *(v71 + 8);
    }

    if (!v44)
    {
LABEL_60:
      v45 = v71;
      *(v71 + 8) = v18;
      *(v45 + 16) = 0;
      goto LABEL_4;
    }

    while (1)
    {
      if (v44 == v18)
      {
        goto LABEL_60;
      }

      mlir::getEffectsRecursively(v44, &v74);
      if ((v78 & 1) == 0)
      {
        {
          goto LABEL_83;
        }

        goto LABEL_79;
      }

      v63 = v44;
      if (v75)
      {
        v46 = v74;
        for (i = 40 * v75; i; i -= 40)
        {
          v48 = **v46;
          {
            if (v48 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
              goto LABEL_78;
            }
          }

          else
          {
            mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Write>();
            if (v48 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
            {
LABEL_78:
              v5 = v67;
              v44 = v63;
              {
                goto LABEL_79;
              }

LABEL_83:
              {
                mlir::MemoryEffects::Write::Write(&mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance);
              }

LABEL_79:
              v51 = v71;
              *(v71 + 8) = v44;
              *(v51 + 16) = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
              if (v78 == 1 && v74 != v76)
              {
                free(v74);
              }

LABEL_43:
              v34 = a2[16];
              v36 = *(v34 + 16);
              v37 = *v35;
              v38 = *a2;
              if (*a2)
              {
                *a2 = *v38;
              }

              else
              {
                a2[11] += 32;
                v40 = a2[1];
                if (v40 && (v38 = ((v40 + 7) & 0xFFFFFFFFFFFFFFF8), (v38 + 4) <= a2[2]))
                {
                  a2[1] = v38 + 4;
                }

                else
                {
                  v65 = v35;
                  v38 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((a2 + 1), 32, 32, 3);
                  v35 = v65;
                }
              }

              v41 = v70;
              v38[2] = v70;
              v38[3] = v41;
              *v38 = v36;
              v38[1] = v37;
              *v35 = v38;
              *(v34 + 16) = v38;
              goto LABEL_4;
            }
          }

          v46 += 5;
        }
      }

      v49 = *(v63 + 1);
      if (v49 == (*(v63 + 2) + 32))
      {
        v44 = 0;
        v5 = v67;
        if (v78 == 1)
        {
LABEL_76:
          if (v74 != v76)
          {
            free(v74);
          }
        }
      }

      else
      {
        ZinIrHalH13g::~ZinIrHalH13g(v49);
        v44 = v50;
        v5 = v67;
        if (v78 == 1)
        {
          goto LABEL_76;
        }
      }

      if (!v44)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_89:
  v52 = *(a1 + 48);
  if (v52 || *(a1 + 52))
  {
    v53 = *(a1 + 56);
    if (v53 > 4 * v52 && v53 >= 0x41)
    {
      llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::shrink_and_clear(a1 + 40);
      return;
    }

    if (!v53)
    {
      goto LABEL_102;
    }

    v54 = *(a1 + 40);
    v55 = 24 * v53 - 24;
    if (v55 > 0x17)
    {
      v57 = v55 / 0x18 + 1;
      v56 = (v54 + 24 * (v57 & 0x1FFFFFFFFFFFFFFELL));
      v58 = *(a1 + 40);
      v59 = v57 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v58 = -4096;
        v58[3] = -4096;
        v58 += 6;
        v59 -= 2;
      }

      while (v59);
      if (v57 == (v57 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v56 = *(a1 + 40);
    }

    v60 = (v54 + 24 * v53);
    do
    {
      *v56 = -4096;
      v56 += 3;
    }

    while (v56 != v60);
LABEL_102:
    *(a1 + 48) = 0;
  }
}

int32x2_t **llvm::ScopedHashTableScope<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::~ScopedHashTableScope(int32x2_t **a1)
{
  v2 = *a1;
  (*a1)[16] = a1[1];
  v3 = a1[2];
  if (v3)
  {
    do
    {
      if (v3[1])
      {
      }

      else
      {
        v5 = v2[15].i32[0];
        if (v5)
        {
          v6 = v2[13];
          v7 = v5 - 1;
          v13 = v7 & mlir::OperationEquivalence::computeHash(*&v3[2], llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v14 = (*&v6 + 16 * v13);
          v15 = v3[2];
          v16 = *v14;
          if (v15 == *v14)
          {
LABEL_16:
            *v14 = -8192;
            v2[14] = vadd_s32(v2[14], 0x1FFFFFFFFLL);
          }

          else
          {
            v17 = 1;
            while (1)
            {
              if (v16 != -4096 && v16 != -8192 && v15 != -8192 && v15 != -4096)
              {
                mlir::OperationEquivalence::isEquivalentTo(v15, v16, 1, v8, v9, v10, v11, v12);
              }

              if (v16 == -4096)
              {
                break;
              }

              v18 = v13 + v17++;
              v13 = v18 & v7;
              v14 = (*&v6 + 16 * (v18 & v7));
              v15 = v3[2];
              v16 = *v14;
              if (v15 == *v14)
              {
                goto LABEL_16;
              }
            }
          }
        }
      }

      v4 = *v3;
      a1[2] = *v3;
      v2 = *a1;
      *v3 = **a1;
      *v2 = v3;
      v3 = v4;
    }

    while (v4);
  }

  return a1;
}

void std::deque<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>::emplace_back<std::unique_ptr<anonymous namespace::CSEDriver::CFGStackNode>>(unint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x200;
    v9 = v7 - 512;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    a1[4] = v9;
    v18 = *v5;
    a1[1] = (v5 + 1);
  }

  v14 = a1[5];
  v15 = a1[4] + v14;
  v16 = *(a1[1] + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8));
  v17 = *a2;
  *a2 = 0;
  *(v16 + 8 * (v15 & 0x1FF)) = v17;
  a1[5] = v14 + 1;
}

BOOL mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::ExecutionCostOpInterface::getExecutionCost(a1, &v10);
  if (v11)
  {
    v1 = v10;
    v2 = 40 * v11 - 40;
    v3 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
    do
    {
      v4 = **v1;
      {
        v8 = v2;
        v9 = v1;
        mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>();
        v3 = &mlir::detail::TypeIDResolver<mlir::ConvertToLLVMPatternInterface,void>::resolveTypeID(void)::id;
        v2 = v8;
        v1 = v9;
      }

      v6 = v4 == v3[433];
      v5 = v6;
      v6 = !v6 || v2 == 0;
      v2 -= 40;
      v1 += 5;
    }

    while (!v6);
  }

  else
  {
    v5 = 0;
  }

  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>>::lookup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = *(a1 + 104);
    v6 = v3 - 1;
    LODWORD(v12) = v6 & mlir::OperationEquivalence::computeHash(a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v13 = (v5 + 16 * v12);
    v14 = *v13;
    if (*v13 == a2)
    {
      goto LABEL_15;
    }

    if ((a2 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v12 + v15++;
        v12 = v16 & v6;
        v14 = *(v5 + 16 * v12);
        if (v14 == a2)
        {
          v13 = (v5 + 16 * v12);
          goto LABEL_15;
        }
      }
    }

    else
    {
      v17 = 1;
      while (1)
      {
        if ((v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          mlir::OperationEquivalence::isEquivalentTo(a2, v14, 1, v7, v8, v9, v10, v11);
        }

        if (v14 == -4096)
        {
          break;
        }

        v18 = v12 + v17++;
        LODWORD(v12) = v18 & v6;
        v13 = (v5 + 16 * (v18 & v6));
        v14 = *v13;
        if (*v13 == a2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v13 = (*(a1 + 104) + 16 * *(a1 + 120));
LABEL_15:
  if (v13 == (*(a1 + 104) + 16 * *(a1 + 120)))
  {
    return 0;
  }

  else
  {
    return *(v13[1] + 24);
  }
}

void anonymous namespace::CSEDriver::replaceUsesAndDelete(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a1;
  v56 = *MEMORY[0x1E69E9840];
  v51 = a3;
  if (a5)
  {
    v7 = *(*a1 + 16);
    if (v7 && instruction::util::IsTasklet(*(*a1 + 16)))
    {
      (*(*v7 + 48))(v7, a3, v5);
    }

    v8 = *v6;
    v9 = *(a3 + 36);
    if (v9)
    {
      v10 = a3 - 16;
    }

    else
    {
      v10 = 0;
    }

    mlir::ValueRange::ValueRange(&v54, v10, v9);
    v11 = *(v5 + 36);
    if (v11)
    {
      v12 = v5 - 16;
    }

    else
    {
      v12 = 0;
    }

    mlir::ValueRange::ValueRange(&v52, v12, v11);
    mlir::RewriterBase::replaceAllUsesWith(v8, v54, v55, v52, v53);
    v13 = v6 + 1;
    goto LABEL_54;
  }

  v50 = a2;
  v15 = *(*a1 + 16);
  if (v15 && instruction::util::IsTasklet(*(*a1 + 16)))
  {
    v16 = *(a3 + 36);
    v17 = (a3 - 16);
    if (!v16)
    {
      v17 = 0;
    }

    v47 = v17;
    v48 = *(a3 + 36);
    if (v16)
    {
      for (i = 0; i != v48; ++i)
      {
        v19 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v47, i);
        v20 = *(a2 + 120);
        if (v19)
        {
          v21 = v20 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

LABEL_25:
          v22 = v19[2];
          v23 = *(a2 + 104);
          v24 = v20 - 1;
          v30 = v24 & mlir::OperationEquivalence::computeHash(v22, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
          v31 = *(v23 + 16 * v30);
          if (v31 == v22)
          {
            continue;
          }

          if ((v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v32 = 1;
            do
            {
              if (v31 == -4096)
              {
                goto LABEL_37;
              }

              v33 = v30 + v32++;
              v30 = v33 & v24;
              v31 = *(v23 + 16 * (v33 & v24));
            }

            while (v31 != v22);
            continue;
          }

          v34 = 1;
          while (1)
          {
            if ((v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              mlir::OperationEquivalence::isEquivalentTo(v22, v31, 1, v25, v26, v27, v28, v29);
            }

            if (v31 == -4096)
            {
              break;
            }

            v35 = v30 + v34++;
            v30 = v35 & v24;
            v31 = *(v23 + 16 * (v35 & v24));
            if (v31 == v22)
            {
              goto LABEL_19;
            }
          }

LABEL_37:
          while (1)
          {
            v19 = *v19;
            if (!v19)
            {
              break;
            }

            v20 = *(a2 + 120);
            if (v20)
            {
              goto LABEL_25;
            }
          }
        }

        (*(*v15 + 48))(v15, a3, a4);
LABEL_19:
        ;
      }
    }
  }

  v6 = a1;
  v36 = *a1;
  v37 = *(a3 + 36);
  if (v37)
  {
    v38 = a3 - 16;
  }

  else
  {
    v38 = 0;
  }

  mlir::ValueRange::ValueRange(&v54, v38, v37);
  v5 = a4;
  v39 = *(a4 + 36);
  if (v39)
  {
    v40 = a4 - 16;
  }

  else
  {
    v40 = 0;
  }

  mlir::ValueRange::ValueRange(&v52, v40, v39);
  v41 = *(v51 + 36);
  if (v41)
  {
    v42 = v51 - 16;
  }

  else
  {
    v42 = 0;
  }

  if (!v41)
  {
LABEL_53:
    v13 = a1 + 1;
LABEL_54:
    std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v51);
    goto LABEL_55;
  }

  v43 = 0;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v42, v43))
  {
    if (v41 == ++v43)
    {
      goto LABEL_53;
    }
  }

LABEL_55:
  if (*(**(v5 + 24) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    v44 = *(v51 + 24);
    if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      *(v5 + 24) = v44;
    }
  }

  ++v6[8];
}

unint64_t mlir::OperationEquivalence::directHashValue(unint64_t a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * a1 - 0xAE502812AA7333) ^ HIDWORD(a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v1 >> 47) ^ v1);
  return 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::try_emplace<std::pair<mlir::Operation *,decltype(nullptr)>>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 24 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 24 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v9[2] = 0;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<anonymous namespace::CSEDriver::replaceUsesAndDelete(llvm::ScopedHashTable<mlir::Operation *,mlir::Operation *,anonymous namespace::SimpleOperationInfo,llvm::RecyclingAllocator<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *>,32ul,8ul>> &,mlir::Operation *,mlir::Operation *,BOOL)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 120);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  v4 = *(*a1 + 104);
  v5 = v2 - 1;
  v11 = v5 & mlir::OperationEquivalence::computeHash(v3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v12 = *(v4 + 16 * v11);
  if (v12 == v3)
  {
    return 0;
  }

  if ((v3 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = 1;
    do
    {
      result = v12 == -4096;
      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v15 = v11 + v13++;
      v11 = v15 & v5;
      v12 = *(v4 + 16 * (v15 & v5));
    }

    while (v12 != v3);
  }

  else
  {
    v16 = 1;
    while (1)
    {
      if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        mlir::OperationEquivalence::isEquivalentTo(v3, v12, 1, v6, v7, v8, v9, v10);
      }

      if (v12 == -4096)
      {
        break;
      }

      result = 0;
      v17 = v11 + v16++;
      v11 = v17 & v5;
      v12 = *(v4 + 16 * (v17 & v5));
      if (v12 == v3)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::operator[](uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    v19 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v4 = a1;
  v5 = *a1;
  v6 = v3 - 1;
  v12 = (v3 - 1) & mlir::OperationEquivalence::computeHash(*a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v13 = (v5 + 16 * v12);
  v14 = *a2;
  v15 = *v13;
  if (*a2 != *v13)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      if (v15 != -4096 && v15 != -8192 && v14 != -8192 && v14 != -4096)
      {
        mlir::OperationEquivalence::isEquivalentTo(v14, v15, 1, v7, v8, v9, v10, v11);
      }

      a1 = v4;
      if (v15 == -4096)
      {
        break;
      }

      if (v15 == -8192 && v16 == 0)
      {
        v16 = v13;
      }

      v18 = v12 + v17++;
      v12 = v18 & v6;
      v13 = (v5 + 16 * (v18 & v6));
      v14 = *a2;
      v15 = *v13;
      if (*a2 == *v13)
      {
        return v13 + 1;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    v19 = *(v4 + 4);
LABEL_15:
    v24 = v13;
    v20 = *(a1 + 2);
    if (4 * v20 + 4 >= 3 * v19)
    {
      v19 *= 2;
    }

    else if (v19 + ~v20 - *(a1 + 3) > v19 >> 3)
    {
      *(a1 + 2) = v20 + 1;
      if (*v13 == -4096)
      {
LABEL_19:
        *v13 = *a2;
        v13[1] = 0;
        return v13 + 1;
      }

LABEL_18:
      --*(a1 + 3);
      goto LABEL_19;
    }

    v22 = a1;
    a1 = v22;
    v23 = *(v22 + 2);
    v13 = v24;
    *(a1 + 2) = v23 + 1;
    if (*v13 == -4096)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return v13 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::LookupBucketFor<mlir::Operation *>(uint64_t result, int a2, uint64_t *a3, uint64_t **a4)
{
  if (a2)
  {
    v6 = result;
    v7 = a2 - 1;
    v13 = (a2 - 1) & mlir::OperationEquivalence::computeHash(*a3, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
    v14 = (v6 + 16 * v13);
    result = *a3;
    v15 = *v14;
    if (*a3 != *v14)
    {
      v16 = 0;
      v17 = 1;
      while (1)
      {
        if (v15 != -4096 && result != -8192 && result != -4096 && v15 != -8192)
        {
          mlir::OperationEquivalence::isEquivalentTo(result, v15, 1, v8, v9, v10, v11, v12);
        }

        if (v15 == -4096)
        {
          break;
        }

        if (v15 == -8192 && v16 == 0)
        {
          v16 = v14;
        }

        v18 = v13 + v17++;
        v13 = v18 & v7;
        v14 = (v6 + 16 * (v18 & v7));
        result = *a3;
        v15 = *v14;
        if (*a3 == *v14)
        {
          goto LABEL_15;
        }
      }

      if (v16)
      {
        v14 = v16;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  *a4 = v14;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>,mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *,anonymous namespace::SimpleOperationInfo,llvm::detail::DenseMapPair<mlir::Operation *,llvm::ScopedHashTableVal<mlir::Operation *,mlir::Operation *> *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v38 = v3;
    if (v3)
    {
      v16 = (v4 + 16 * v3);
      v17 = v4;
      do
      {
        while ((*v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v17 += 2;
          if (v17 == v16)
          {
            goto LABEL_33;
          }
        }

        v25 = *a1;
        v26 = *(a1 + 16) - 1;
        v21 = v26 & mlir::OperationEquivalence::computeHash(*v17, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::directHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
        v22 = (v25 + 16 * v21);
        v23 = *v17;
        v24 = *v22;
        if (*v17 != *v22)
        {
          v18 = 0;
          v20 = 1;
          while (1)
          {
            if (v24 != -4096 && v24 != -8192 && v23 != -8192 && v23 != -4096)
            {
              mlir::OperationEquivalence::isEquivalentTo(v23, v24, 1, v27, v28, v29, v30, v31);
            }

            if (v24 == -4096)
            {
              break;
            }

            if (v24 == -8192 && v18 == 0)
            {
              v18 = v22;
            }

            v19 = v21 + v20++;
            v21 = v19 & v26;
            v22 = (v25 + 16 * (v19 & v26));
            v23 = *v17;
            v24 = *v22;
            if (*v17 == *v22)
            {
              goto LABEL_32;
            }
          }

          if (v18)
          {
            v22 = v18;
          }
        }

LABEL_32:
        v32 = *v17;
        v17 += 2;
        *v22 = v32;
        ++*(a1 + 8);
      }

      while (v17 != v16);
    }

LABEL_33:

    llvm::deallocate_buffer(v4, (16 * v38));
  }

  *(a1 + 8) = 0;
  v33 = *(a1 + 16);
  if (v33)
  {
    if (((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_41;
    }

    v34 = ((v33 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v34 & 0x1FFFFFFFFFFFFFFELL)];
    v35 = result + 2;
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v35 - 2) = -4096;
      *v35 = -4096;
      v35 += 4;
      v36 -= 2;
    }

    while (v36);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_41:
      v37 = &result[2 * v33];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v37);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (24 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = 24 * v1 - 24;
    if (v6 < 0x18)
    {
      v7 = *result;
LABEL_14:
      v11 = (v5 + 24 * v1);
      do
      {
        *v7 = -4096;
        v7 = (v7 + 24);
      }

      while (v7 != v11);
      return result;
    }

    v8 = v6 / 0x18 + 1;
    v7 = (v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL));
    v9 = *result;
    v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v9 = -4096;
      *(v9 + 3) = -4096;
      v9 = (v9 + 48);
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void anonymous namespace::CSE::~CSE(_anonymous_namespace_::CSE *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::CSE::runOnOperation(_anonymous_namespace_::CSE *this)
{
  v11[1] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v11[2], 0, 24);
  v11[0] = &unk_1F1A02010;
  v2 = *(this + 6);
  v7[0] = v2;
  v3 = v2[9];
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) == 0 && v4)
  {
    do
    {
      v5 = *(v4 + 72);
      v4 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v5 & 4) == 0 && v4);
  }

  v7[0] = v11;
  memset(&v7[1], 0, 24);
  v7[5] = 0;
  v7[6] = 0;
  v7[4] = mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>((v2 + 3), v4);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
}

void sub_1A6E2FEB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, llvm *a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24)
{
  ZinIrHalH13g::~ZinIrHalH13g((v24 + 43));
  ZinIrHalH13g::~ZinIrHalH13g((v24 + 345));
  if (a12)
  {
    mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>(v24 + 7);
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>(v24 + 7);
  }

  else
  {
    mlir::detail::PreservedAnalyses::preserveAll((v24 + 7));
  }

  llvm::deallocate_buffer(a18, (24 * a20));
}

void sub_1A6E2FF0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v29)
  {
    operator delete(v29);
  }

  ZinIrHalH13g::~ZinIrHalH13g((v28 - 56));
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>(uint64_t a1, std::recursive_mutex **a2)
{
  {
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v4 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = ((v4 >> 4) ^ (v4 >> 9)) & (v6 - 1);
  v8 = *(v5 + 16 * v7);
  if (v4 != v8)
  {
    v23 = 1;
    while (v8 != -4096)
    {
      v24 = v7 + v23++;
      v7 = v24 & (v6 - 1);
      v8 = *(v5 + 16 * v7);
      if (v4 == v8)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if (a2)
    {
      v25 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
      v26 = 69;
      v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
      if (v26 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v26;
      }

      v11 = &v25[v10];
      v12 = v26 - v10;
      if (v26 - v10 >= 0x12)
      {
        v13 = 18;
      }

      else
      {
        v13 = v26 - v10;
      }

      v14 = &v11[v13];
      v15 = v12 - v13;
      if (v15 >= v15 - 1)
      {
        v16 = v15 - 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 6)
      {
        if (*v14 == 1919511661 && *(v14 + 4) == 14906)
        {
          v14 += 6;
          v16 -= 6;
        }

        else if (v16 >= 0x17 && *v14 == 0x6F6D796E6F6E6128 && *(v14 + 8) == 0x73656D616E207375 && *(v14 + 15) == 0x3A3A296563617073)
        {
          v14 += 23;
          v16 -= 23;
        }
      }

      mlir::PassInstrumentor::runBeforeAnalysis(a2, v14, v16, v4, *a1);
    }

    operator new();
  }

LABEL_4:
  if (v7 == v6)
  {
    goto LABEL_5;
  }

  v21 = *(v5 + 16 * v7 + 8);
  if (*(a1 + 40) == v21)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 32) + 16 * v21 + 8) + 8;
}

const char *llvm::getTypeName<mlir::DominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DominanceInfo]";
  v6 = 69;
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

char *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(char **a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v35 = 0;
  v7 = (a1 + 2);
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 2, 0, 16, &v35);
  v9 = *(a1 + 2);
  v10 = 16 * v9;
  v11 = &v8[16 * v9];
  v12 = **a3;
  v13 = **a4;
  **a4 = 0;
  *v11 = v12;
  *(v11 + 1) = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || (v14 + 8 < &v8[v10] ? (v25 = v8 + 8 >= &v14[v10]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v14 < &v8[v10 - 8] ? (v27 = v8 >= &v14[v10 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      v19 = *(v17 + 1);
      *(v17 + 1) = 0;
      *v16 = v18;
      *(v16 + 1) = v19;
      v16 += 16;
      v17 += 16;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v28 = v15 + 1;
  v29 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = &v8[16 * v29];
  v17 = &v14[16 * v29];
  v30 = v29;
  v31 = v8;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    *(v31 + 1) = v34;
    v31 += 32;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v20 = v14 - 8;
  do
  {
    v21 = *&v20[v10];
    *&v20[v10] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v10 -= 16;
  }

  while (v10);
  v14 = *a1;
LABEL_10:
  v22 = v35;
  if (v14 != v7)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = *(a1 + 2) + 1;
  *(a1 + 2) = v23;
  *(a1 + 3) = v22;
  return &v8[16 * v23 - 16];
}

void mlir::detail::AnalysisModel<mlir::DominanceInfo>::~AnalysisModel(void *a1)
{
  *a1 = &unk_1F1A0B740;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1));
}

{
  *a1 = &unk_1F1A0B740;
  mlir::detail::DominanceInfoBase<false>::~DominanceInfoBase((a1 + 1));
}

void sub_1A6E3076C()
{

  JUMPOUT(0x1AC55A070);
}

BOOL mlir::detail::AnalysisModel<mlir::DominanceInfo>::invalidate(uint64_t a1, const void ***a2)
{
  v3 = mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(a2);
  if (!v3)
  {
    mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(a2);
  }

  return !v3;
}

void mlir::detail::PreservedAnalyses::unpreserve<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    if (this[1] != *this)
    {
LABEL_3:
      v4 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      if (v4)
      {
        *v4 = -2;
        ++*(this + 6);
      }

      return;
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = v3; *i != v2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }

    v8 = v5 - 1;
    *(this + 5) = v8;
    *i = v3[v8];
  }
}

BOOL mlir::detail::PreservedAnalyses::isPreserved<mlir::DominanceInfo>(const void ***this)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    v2 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v3 = *this;
    v4 = this[1];
    if (v4 != *this)
    {
LABEL_3:
      v3 = llvm::SmallPtrSetImplBase::doFind(this, v2);
      v4 = *this;
      v5 = this[1];
      if (!v3)
      {
        v6 = 16;
        if (v5 == v4)
        {
          v6 = 20;
        }

        v3 = &v5[*(this + v6)];
      }

      goto LABEL_14;
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v3 != v2)
    {
      ++v3;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v3 = &v4[v7];
  }

  v5 = v4;
LABEL_14:
  v9 = v5 == v4;
  v10 = 16;
  if (v9)
  {
    v10 = 20;
  }

  return v3 != &v5[*(this + v10)];
}

llvm::SmallPtrSetImplBase *mlir::detail::PreservedAnalyses::preserveAll(llvm::SmallPtrSetImplBase *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *this;
    if (*(this + 1) != *this)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(this, v1);
    }
  }

  else
  {
    v6 = this;
    mlir::detail::PreservedAnalyses::isAll();
    this = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::detail::PreservedAnalyses::AllAnalysesType,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (*(v6 + 1) != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(this + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(this + 4))
    {
      *(this + 5) = v3 + 1;
      v2[v3] = v1;
      return this;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return this;
}

char **mlir::detail::PreservedAnalyses::preserve<mlir::DominanceInfo>(char **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::AnalysisMap::getAnalysisImpl<mlir::DominanceInfo,mlir::Operation *>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::DominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      *&v2[8 * v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

char **mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>(char **result)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *result;
    if (result[1] != *result)
    {
LABEL_3:

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v1);
    }
  }

  else
  {
    v6 = result;
    mlir::detail::PreservedAnalyses::preserve<mlir::PostDominanceInfo>();
    result = v6;
    v1 = mlir::detail::TypeIDResolver<mlir::PostDominanceInfo,void>::resolveTypeID(void)::id;
    v2 = *v6;
    if (v6[1] != *v6)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 5);
  if (!v3)
  {
LABEL_11:
    if (v3 < *(result + 4))
    {
      *(result + 5) = v3 + 1;
      *&v2[8 * v3] = v1;
      return result;
    }

    goto LABEL_3;
  }

  v4 = 8 * v3;
  v5 = v2;
  while (*v5 != v1)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::PostDominanceInfo>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::PostDominanceInfo]";
  v6 = 73;
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

void mlir::detail::ConversionPatternRewriterImpl::undoRewrites(mlir::detail::ConversionPatternRewriterImpl *this, unsigned int a2)
{
  v2 = (this + 176);
  v3 = *(this + 46);
  if (v3 != a2)
  {
    v6 = a2;
    v7 = 8 * a2;
    v8 = 8 * v3;
    v9 = v7 - v8;
    v10 = (v8 + *(this + 22) - 8);
    do
    {
      v11 = *v10--;
      (*(*v11 + 16))(v11);
      v9 += 8;
    }

    while (v9);
    v12 = *(this + 46);
    if (v12 != a2)
    {
      if (v12 > a2)
      {
        v13 = 8 * v12;
        v14 = v7 - v13;
        v15 = &(*v2)[v13 - 8];
        do
        {
          v16 = *v15;
          *v15 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
        goto LABEL_32;
      }

      if (*(this + 47) >= a2)
      {
        v17 = *v2;
        v24 = v6 - v12;
        if (v6 == v12)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v37 = 0;
      v17 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v2, this + 192, v6, 8, &v37);
      v18 = *(this + 22);
      v19 = *(this + 46);
      if (!v19)
      {
LABEL_28:
        v36 = v37;
        if (v18 != this + 192)
        {
          free(v18);
        }

        *(this + 22) = v17;
        *(this + 47) = v36;
        v12 = *(this + 46);
        v24 = v6 - v12;
        if (v6 == v12)
        {
          goto LABEL_32;
        }

LABEL_31:
        bzero(&v17[8 * v12], 8 * v24);
LABEL_32:
        *(this + 46) = a2;
        return;
      }

      v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v21 = 8 * v19;
      if (v20 >= 0xB)
      {
        if (v18 >= &v17[v21] || (v22 = v17, v23 = *(this + 22), v17 >= &v18[v21]))
        {
          v25 = v20 + 1;
          v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
          v22 = &v17[v26];
          v23 = &v18[v26];
          v27 = (v18 + 16);
          v28 = v17 + 16;
          v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *(v27 - 1);
            v31 = *v27;
            *(v27 - 1) = 0uLL;
            *v27 = 0uLL;
            *(v28 - 1) = v30;
            *v28 = v31;
            v27 += 2;
            v28 += 2;
            v29 -= 4;
          }

          while (v29);
          if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_23:
            v34 = v18 - 8;
            do
            {
              v35 = *&v34[v21];
              *&v34[v21] = 0;
              if (v35)
              {
                (*(*v35 + 8))(v35);
              }

              v21 -= 8;
            }

            while (v21);
            v18 = *v2;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v22 = v17;
        v23 = *(this + 22);
      }

      v32 = &v18[8 * v19];
      do
      {
        v33 = *v23;
        *v23 = 0;
        v23 += 8;
        *v22 = v33;
        v22 += 8;
      }

      while (v23 != v32);
      goto LABEL_23;
    }
  }
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::remapValues(uint64_t *a1, mlir::detail::OpResultImpl *a2, mlir::detail::OpResultImpl *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a8 > *(a9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), a8, 8);
    v44 = 0;
    v45 = a7;
    v46 = 0;
LABEL_4:
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v17 = mlir::ValueRange::dereference_iterator(&v45, v14);
      v40 = v17;
      v18 = *(v17 + 1);
      Loc = a4;
      if ((a5 & 1) == 0)
      {
        Loc = mlir::Value::getLoc(&v40);
      }

      v20 = a1[43];
      if (!v20)
      {
        v16 = *(a9 + 8);
        if (v16 >= *(a9 + 12))
        {
          v32 = v15;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v16 + 1, 8);
          v15 = v32;
          v16 = *(a9 + 8);
        }

        *(*a9 + 8 * v16) = v15;
        ++*(a9 + 8);
        goto LABEL_8;
      }

      v21 = (v18 & 0xFFFFFFFFFFFFFFF8);
      v41 = &v43;
      v42 = 0x100000000;
      if (mlir::TypeConverter::convertType(v20, v21, &v41))
      {
        if (v42 == 1)
        {
          v22 = *v41;
          v24 = v23;
          v38 = v23;
          if (v22 != (*(v23 + 1) & 0xFFFFFFFFFFFFFFF8))
          {
            v39[0] = v23;
            ParentBlock = mlir::Value::getParentBlock(v39);
            v26 = (ParentBlock + 40);
            if (v39[0] && (*(v39[0] + 1) & 7) != 7)
            {
              v26 = (mlir::detail::OpResultImpl::getOwner(v39[0]) + 8);
            }

            v24 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 1u, ParentBlock, *v26, Loc, &v38, 1, v22, a1[43]);
            v39[0] = v38;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[]((a1 + 13), v39) = v24;
            v38 = v24;
          }

          v27 = *(a9 + 8);
          if (v27 >= *(a9 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v27 + 1, 8);
            v27 = *(a9 + 8);
          }

          v28 = 0;
          *(*a9 + 8 * v27) = v24;
          ++*(a9 + 8);
          v29 = v41;
          if (v41 != &v43)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v31 = *(a9 + 8);
          if (v31 >= *(a9 + 12))
          {
            v33 = v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), v31 + 1, 8);
            v30 = v33;
            v31 = *(a9 + 8);
          }

          *(*a9 + 8 * v31) = v30;
          ++*(a9 + 8);
          v28 = 3;
          v29 = v41;
          if (v41 != &v43)
          {
LABEL_24:
            free(v29);
          }
        }
      }

      else
      {
        v39[0] = a2;
        v39[1] = a3;
        v39[2] = v13;
        v39[3] = v17;
        v39[4] = v21;
        (*(*a1 + 88))(a1, Loc, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVectorImpl<mlir::Value> &)::$_0>, v39);
        v28 = 1;
        v29 = v41;
        if (v41 != &v43)
        {
          goto LABEL_24;
        }
      }

      if (v28 != 3 && v28)
      {
        return 0;
      }

LABEL_8:
      v13 = (v44 + 1);
      v14 = v46 + 1;
      ++v44;
      v46 = v14;
      if (v14 == a8)
      {
        return 1;
      }
    }
  }

  v44 = 0;
  v45 = a7;
  v46 = 0;
  if (a8)
  {
    goto LABEL_4;
  }

  return 1;
}

unint64_t anonymous namespace::ConversionValueMapping::lookupOrDefault(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    if (a3 && (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
    {
      return a2;
    }

    goto LABEL_28;
  }

  v4 = *a1;
  v5 = v3 - 1;
  v6 = a2;
  if (!a3)
  {
    while (1)
    {
      a2 = v6;
      v18 = HIDWORD(v6);
      v19 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
      v16 = v5 & (-348639895 * ((((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 32) >> 15) ^ (-348639895 * (v18 ^ (v19 >> 47) ^ v19))));
      v17 = *(v4 + 16 * v16);
      if (v17 != a2)
      {
        break;
      }

LABEL_21:
      if (v16 == v3)
      {
        v7 = a2;
        goto LABEL_23;
      }

      v6 = *(v4 + 16 * v16 + 8);
      v7 = a2;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v14 = 1;
    while (v17 != -4096)
    {
      v15 = v16 + v14++;
      v16 = v15 & v5;
      v17 = *(v4 + 16 * v16);
      if (v17 == a2)
      {
        goto LABEL_21;
      }
    }

LABEL_28:
    if (a2)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  a2 = 0;
  while (1)
  {
    v7 = v6;
    if ((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      a2 = v6;
    }

    v8 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
    v10 = v5 & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = *(v4 + 16 * v10);
    if (v11 != v7)
    {
      break;
    }

LABEL_7:
    if (v10 != v3)
    {
      v6 = *(v4 + 16 * v10 + 8);
      if (v6)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  v12 = 1;
  while (v11 != -4096)
  {
    v13 = v10 + v12++;
    v10 = v13 & v5;
    v11 = *(v4 + 16 * v10);
    if (v11 == v7)
    {
      goto LABEL_7;
    }
  }

LABEL_23:
  if (a2)
  {
    return a2;
  }

  else
  {
    return v7;
  }
}

BOOL mlir::TypeConverter::convertType(uint64_t a1, void *a2, uint64_t *a3)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v57 = a2;
  Context = mlir::Attribute::getContext(&v57);
  isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(Context);
  if (isMultithreadingEnabled)
  {
    llvm::sys::RWMutexImpl::lock_shared((a1 + 520));
  }

  v7 = *(a1 + 488);
  if (v7)
  {
    v8 = *(a1 + 472);
    v9 = ((v57 >> 4) ^ (v57 >> 9)) & (v7 - 1);
    v10 = *(v8 + 16 * v9);
    if (v57 == v10)
    {
LABEL_5:
      if (v9 != v7)
      {
        v18 = v8 + 16 * v9;
        v21 = *(v18 + 8);
        v19 = (v18 + 8);
        v20 = v21;
        if (v21)
        {
          v22 = *(a3 + 2);
          if (v22 >= *(a3 + 3))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v22 + 1, 8);
            LODWORD(v22) = *(a3 + 2);
          }

          *(*a3 + 8 * v22) = v20;
          ++*(a3 + 2);
          v20 = *v19 != 0;
        }

        v23 = 0;
        if (isMultithreadingEnabled)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v55 = 1;
      while (v10 != -4096)
      {
        v56 = v9 + v55++;
        v9 = v56 & (v7 - 1);
        v10 = *(v8 + 16 * v9);
        if (v57 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v11 = *(a1 + 496);
  v12 = *(a1 + 512);
  if (v12)
  {
    v13 = ((v57 >> 4) ^ (v57 >> 9)) & (v12 - 1);
    v14 = v11 + 40 * v13;
    v15 = *v14;
    if (v57 == *v14)
    {
      goto LABEL_19;
    }

    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (v12 - 1);
      v14 = v11 + 40 * v13;
      v15 = *v14;
      if (v57 == *v14)
      {
        goto LABEL_19;
      }
    }
  }

  v14 = v11 + 40 * v12;
LABEL_19:
  if (v14 == v11 + 40 * v12)
  {
    v23 = 1;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
LABEL_25:
      llvm::sys::RWMutexImpl::unlock_shared((a1 + 520));
    }
  }

  else
  {
    v24 = *(v14 + 8);
    v25 = *(v14 + 16);
    v26 = *(a3 + 2);
    if (v26 + v25 > *(a3 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v26 + v25, 8);
      LODWORD(v26) = *(a3 + 2);
    }

    if (v25)
    {
      memcpy((*a3 + 8 * v26), v24, 8 * v25);
      LODWORD(v26) = *(a3 + 2);
    }

    v23 = 0;
    *(a3 + 2) = v26 + v25;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (!v23)
  {
    return v20;
  }

  v27 = *(a1 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = *(a3 + 2);
  v29 = 32 * v27;
  v30 = *(a1 + 8) - 8;
  while (1)
  {
    v58 = v57;
    v31 = *(v30 + v29);
    if (!v31)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v32 = (*(*v31 + 48))(v31, &v58, a3);
    if ((v32 & 0x100) != 0)
    {
      break;
    }

    v29 -= 32;
    if (!v29)
    {
      return 0;
    }
  }

  v34 = v32;
  v35 = mlir::Attribute::getContext(&v57);
  v36 = mlir::MLIRContext::isMultithreadingEnabled(v35);
  if (v36)
  {
    llvm::sys::RWMutexImpl::lock((a1 + 520));
    if ((v34 & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>((a1 + 472), &v57, &v58);
      v20 = 0;
LABEL_66:
      llvm::sys::RWMutexImpl::unlock_shared((a1 + 520));
      return v20;
    }
  }

  else if ((v34 & 1) == 0)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>((a1 + 472), &v57, &v58);
    return 0;
  }

  v37 = *a3;
  v38 = *(a3 + 2);
  v39 = v38 - v28;
  v40 = (v37 + 8 * v28);
  if (v38 - v28 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>,mlir::Block *,mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::Block *>>::try_emplace<mlir::Block *>((a1 + 472), &v57, (v37 + 8 * v28), &v58);
    v20 = 1;
    if (!v36)
    {
      return v20;
    }

    goto LABEL_66;
  }

  v58 = v60;
  v59 = 0x200000000;
  if (v39 < 3)
  {
    if (v38 == v28)
    {
      v43 = 0;
      goto LABEL_50;
    }

    v41 = 0;
    v42 = v60;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v38 - v28, 8);
    v41 = v59;
    v42 = v58;
  }

  memcpy(&v42[v41], v40, 8 * v39);
  v43 = v59;
LABEL_50:
  LODWORD(v59) = v43 + v39;
  v44 = *(a1 + 512);
  if (v44)
  {
    v45 = *(a1 + 496);
    v46 = v44 - 1;
    v47 = ((v57 >> 4) ^ (v57 >> 9)) & v46;
    v48 = (v45 + 40 * v47);
    v49 = *v48;
    if (v57 == *v48)
    {
      goto LABEL_63;
    }

    v50 = 0;
    v51 = 1;
    while (v49 != -4096)
    {
      if (v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v49 == -8192;
      }

      if (v52)
      {
        v50 = v48;
      }

      v53 = v47 + v51++;
      v47 = v53 & v46;
      v48 = (v45 + 40 * v47);
      v49 = *v48;
      if (v57 == *v48)
      {
        goto LABEL_63;
      }
    }

    if (v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v48;
    }
  }

  else
  {
    v54 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>((a1 + 496), v54, &v57, &v58);
LABEL_63:
  if (v58 != v60)
  {
    free(v58);
  }

  v20 = 1;
  if (v36)
  {
    goto LABEL_66;
  }

  return v20;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a6;
  v15[1] = a7;
  v14 = a8;
  if (a7 != 1 || (*(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != a8)
  {
    v13[0] = mlir::Attribute::getContext(&v14);
    v13[1] = 0;
    v13[2] = a3;
    v13[3] = a4;
    mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v13, a5, &v14, v15);
    operator new();
  }

  return mlir::ValueRange::dereference_iterator(v15, 0);
}

mlir::Block *mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(uint64_t a1, uint64_t a2, void *a3, mlir::TypeConverter *a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](a1 + 352, &v22) = a4;
  v9 = v22;
  if (*v22 == v22)
  {
    return 0;
  }

  for (i = *(v22[1] + 8); i != v9; i = v11)
  {
    v11 = i[1];
    v12 = (i - 1);
    mlir::TypeConverter::convertBlockSignature(v23, a4, (i - 1));
    if (v27 != 1)
    {
      return 0;
    }

    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v12, a4, v23);
    if (v27)
    {
      if (v25 != v26)
      {
        free(v25);
      }

      if (v23[0] != v24)
      {
        free(v23[0]);
      }
    }
  }

  if (a5)
  {
    v14 = v22[1];
    if (v14)
    {
      v15 = (v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    return mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v15, a4, a5);
  }

  else
  {
    v16 = v22[1];
    if (v16)
    {
      v17 = (v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    mlir::TypeConverter::convertBlockSignature(v23, a4, v17);
    if (v27 == 1)
    {
      v18 = v22[1];
      if (v18)
      {
        v19 = (v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      result = mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(a1, a2, v19, a4, v23);
      if (v27)
      {
        if (v25 != v26)
        {
          v20 = result;
          free(v25);
          result = v20;
        }

        if (v23[0] != v24)
        {
          v21 = result;
          free(v23[0]);
          return v21;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::TypeConverter::convertBlockSignature(void **__return_ptr a1@<X8>, mlir::TypeConverter *this@<X0>, mlir::Block *a3@<X1>)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 7) - *(a3 + 6);
  v7 = v6 >> 3;
  __src = v31;
  v30 = 0x400000000;
  if ((v6 >> 3))
  {
    v8 = (v6 >> 3);
    if (v7 < 5)
    {
      v9 = 0;
      v10 = v31;
      if (!v8)
      {
LABEL_12:
        LODWORD(v30) = v7;
        goto LABEL_13;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v31, (v6 >> 3), 32);
      v9 = v30;
      v10 = __src;
      if (v30 == v8)
      {
        goto LABEL_12;
      }
    }

    v11 = 32 * v9;
    v12 = &v10[32 * v9];
    v13 = 32 * v8 - 32 - v11;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = (v13 >> 5) + 1;
    v12 += 32 * (v14 & 0xFFFFFFFFFFFFFFELL);
    v15 = &v10[v11 + 32];
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v15 - 32) = 0;
      *v15 = 0;
      *(v15 - 8) = 0;
      v15[24] = 0;
      v15 += 64;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_10:
      v17 = &v10[32 * v8];
      do
      {
        *v12 = 0;
        v12[24] = 0;
        v12 += 32;
      }

      while (v12 != v17);
    }

    goto LABEL_12;
  }

LABEL_13:
  v32 = v34;
  v33 = 0x400000000;
  ArgumentTypes = mlir::Block::getArgumentTypes(a3);
  mlir::ValueRange::ValueRange(v35, ArgumentTypes, (v19 - ArgumentTypes) >> 3);
  mlir::TypeRange::TypeRange(&v27, v35[0], v35[1]);
  if ((mlir::TypeConverter::convertSignatureArgs(this, v27, v28, &__src, 0) & 1) == 0)
  {
    v22 = 0;
    *a1 = 0;
    goto LABEL_35;
  }

  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v20 = v30;
  if (v30 && &__src != a1)
  {
    if (__src == v31)
    {
      v23 = v30;
      if (v30 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v30, 32), (v23 = v30) != 0))
      {
        memcpy(*a1, __src, 32 * v23);
      }

      *(a1 + 2) = v20;
    }

    else
    {
      *a1 = __src;
      v21 = HIDWORD(v30);
      *(a1 + 2) = v20;
      *(a1 + 3) = v21;
      __src = v31;
      HIDWORD(v30) = 0;
    }

    LODWORD(v30) = 0;
  }

  a1[18] = a1 + 20;
  a1[19] = 0x400000000;
  v22 = 1;
  if (&__src != a1)
  {
    v24 = v33;
    if (v33)
    {
      if (v32 != v34)
      {
        a1[18] = v32;
        v25 = HIDWORD(v33);
        *(a1 + 38) = v24;
        *(a1 + 39) = v25;
        v32 = v34;
        HIDWORD(v33) = 0;
LABEL_34:
        LODWORD(v33) = 0;
        v22 = 1;
        goto LABEL_35;
      }

      if (v33 < 5)
      {
        v26 = v33;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 18), a1 + 20, v33, 8);
        v26 = v33;
        if (!v33)
        {
          goto LABEL_33;
        }
      }

      memcpy(a1[18], v32, 8 * v26);
LABEL_33:
      *(a1 + 38) = v24;
      goto LABEL_34;
    }
  }

LABEL_35:
  *(a1 + 192) = v22;
  if (v32 != v34)
  {
    free(v32);
  }

  if (__src != v31)
  {
    free(__src);
  }
}

mlir::Block *mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(uint64_t a1, uint64_t a2, mlir::Block *this, uint64_t a4, uint64_t a5)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v6 = a2 + 24;
  v43 = *(a2 + 24);
  v8 = *(this + 6);
  v7 = *(this + 7);
  v9 = *(a5 + 144);
  v10 = *(a5 + 152);
  ArgumentTypes = mlir::Block::getArgumentTypes(this);
  v13 = 8 * v10;
  if ((v12 - ArgumentTypes) != v13)
  {
    goto LABEL_14;
  }

  if (v10)
  {
    if (v12 != ArgumentTypes)
    {
      v14 = v13 - 8;
      v15 = v9;
      while (*v15 == (*(*ArgumentTypes + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        ArgumentTypes += 8;
        ++v15;
        if (ArgumentTypes != v12)
        {
          v16 = v14;
          v14 -= 8;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }

    v15 = v9;
LABEL_10:
    if (ArgumentTypes != v12)
    {
LABEL_14:
      v17 = (v6 - 16);
      v18 = v7 - v8;
      UnknownLoc = mlir::Builder::getUnknownLoc((v6 - 16), v12);
      v20 = UnknownLoc;
      v45 = v47;
      v46 = 0x600000000;
      if (v10 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v10, 8);
        v21 = (v45 + 8 * (v10 & 0xFFFFFFFC));
        v22 = v10 & 3;
        v23 = vdupq_n_s64(v20);
        v24 = (v45 + 16);
        v25 = v10 & 0xFFFFFFFC;
        do
        {
          v24[-1] = v23;
          *v24 = v23;
          v24 += 2;
          v25 -= 4;
        }

        while (v25);
        if ((v10 & 0xFFFFFFFC) != v10)
        {
          do
          {
            *v21++ = v20;
            --v22;
          }

          while (v22);
        }

        goto LABEL_37;
      }

      if (!v10)
      {
        goto LABEL_37;
      }

      v26 = vdupq_n_s64(v10 - 1);
      v27 = v10 + 1;
      v28 = vmovn_s64(vcgeq_u64(v26, xmmword_1A7598670));
      if (v28.i8[0])
      {
        v47[0] = UnknownLoc;
        v29 = v27 & 0xE;
        if ((v28.i8[4] & 1) == 0)
        {
LABEL_23:
          if (v29 == 2)
          {
            goto LABEL_37;
          }

LABEL_27:
          v30 = vmovn_s64(vcgtq_u64(v26, xmmword_1A75989F0));
          if (v30.i8[0])
          {
            v47[2] = UnknownLoc;
            if ((v30.i8[4] & 1) == 0)
            {
LABEL_29:
              if (v29 == 4)
              {
                goto LABEL_37;
              }

              goto LABEL_33;
            }
          }

          else if ((v30.i8[4] & 1) == 0)
          {
            goto LABEL_29;
          }

          v47[3] = UnknownLoc;
          if (v29 == 4)
          {
            goto LABEL_37;
          }

LABEL_33:
          v31 = vmovn_s64(vcgtq_u64(v26, xmmword_1A75DA400));
          if (v31.i8[0])
          {
            v47[4] = UnknownLoc;
          }

          if (v31.i8[4])
          {
            v47[5] = UnknownLoc;
          }

LABEL_37:
          LODWORD(v46) = v10;
          if ((v18 & 0x7FFFFFFF8) != 0)
          {
            v32 = 0;
            do
            {
              v33 = *a5 + 32 * v32;
              if ((*(v33 + 24) & 1) != 0 && !*(v33 + 16))
              {
                v34 = *(v33 + 8);
                if (v34)
                {
                  v35 = *v33;
                  v36 = *(*(*(this + 6) + 8 * v32) + 32);
                  v37 = 8 * v35;
                  v38 = 1;
                  do
                  {
                    *(v45 + v37) = v36;
                    v37 += 8;
                  }

                  while (v34 > v38++);
                }
              }

              ++v32;
            }

            while (v32 != (v18 >> 3));
          }

          Parent = mlir::Block::getParent(this);
          v41 = *(this + 2);
          mlir::ValueRange::ValueRange(v48, v9, v10);
          mlir::OpBuilder::createBlock(v17, Parent, v41, v48[0], v48[1], v45, v46);
        }
      }

      else
      {
        v29 = v27 & 0xE;
        if ((v28.i8[4] & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v47[1] = UnknownLoc;
      if (v29 == 2)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v15 = v9;
    if (ArgumentTypes != v12)
    {
      goto LABEL_14;
    }
  }

  if (v15 != (v9 + v13))
  {
    goto LABEL_14;
  }

  if (v43)
  {
    *v6 = v43;
  }

  else
  {
    *v6 = 0;
    *(v6 + 8) = 0;
  }

  return this;
}

uint64_t mlir::TypeConverter::convertType(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = v6;
  v5 = 0x100000000;
  v2 = 0;
  if (mlir::TypeConverter::convertType(a1, a2, &v4) && v5 == 1)
  {
    v2 = *v4;
  }

  if (v4 != v6)
  {
    free(v4);
  }

  return v2;
}

void mlir::ConversionPatternRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl **this, mlir::Block *a2)
{
  v3 = *(a2 + 5);
  if (v3 != (a2 + 32))
  {
    ZinIrHalH13g::~ZinIrHalH13g(v3);
    mlir::ConversionPatternRewriter::eraseOp(this, v4);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(this[5], a2);
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOperationInserted(uint64_t a1, uint64_t a2, uint64_t a3, ZinIrHalH13g *this)
{
  if (a3)
  {
    if ((a3 + 32) != this)
    {
      ZinIrHalH13g::~ZinIrHalH13g(this);
    }

    operator new();
  }

  operator new();
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  v31 = a3;
  v32 = 0;
  if (!v6)
  {
    v7 = 0;
  }

  v33 = v7;
  v34 = 0;
  if (!a4 || !v6)
  {
LABEL_29:
    operator new();
  }

  v9 = 0;
  while (1)
  {
    v13 = mlir::ValueRange::dereference_iterator(&v31, v9);
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v34);
    v29 = NextResultAtOffset;
    if (!v13)
    {
      if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
      {
        v17 = a2;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *(a1 + 336);
        if (v18)
        {
          v19 = *(a1 + 320);
          v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
          v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
          v22 = v18 - 1;
          v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
          v24 = *(v19 + 16 * v23);
          if (v24 == v17)
          {
            goto LABEL_8;
          }

          v25 = 1;
          while (v24 != -4096)
          {
            v26 = v23 + v25++;
            v23 = v26 & v22;
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_8;
            }
          }
        }
      }

      v30[0] = NextResultAtOffset;
      ParentBlock = mlir::Value::getParentBlock(v30);
      if (v30[0])
      {
        v28 = (*(v30[0] + 1) & 7) == 7;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v10 = (ParentBlock + 40);
      }

      else
      {
        v10 = (mlir::detail::OpResultImpl::getOwner(v30[0]) + 8);
      }

      v11 = *v10;
      Loc = mlir::Value::getLoc(&v29);
      mlir::ValueRange::ValueRange(v30, 0, 0);
      v13 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 2u, ParentBlock, v11, Loc, v30[0], v30[1], *(v29 + 1) & 0xFFFFFFFFFFFFFFF8, *(a1 + 344));
      NextResultAtOffset = v29;
    }

    v30[0] = NextResultAtOffset;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1 + 104, v30) = v13;
LABEL_8:
    v9 = v32 + 1;
    v15 = v34 + 1;
    v32 = v9;
    ++v34;
    if (v9 == a4 || v15 == v6)
    {
      goto LABEL_29;
    }
  }
}

void mlir::detail::ConversionPatternRewriterImpl::notifyBlockInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    operator new();
  }

  operator new();
}

void mlir::ConversionPatternRewriter::~ConversionPatternRewriter(mlir::ConversionPatternRewriter *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  ZinIrHalH13g::~ZinIrHalH13g(this);
}

{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ZinIrHalH13g::~ZinIrHalH13g(this);

  JUMPOUT(0x1AC55A070);
}

void mlir::ConversionPatternRewriter::replaceOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v6, v5, *(a3 + 9));
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(this + 5), a2, v6[0], v6[1]);
}

void mlir::ConversionPatternRewriter::eraseOp(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 9);
  v8 = v11;
  v10 = 1;
  if (v4 < 2)
  {
    if (v4 == 1)
    {
      v11[0] = 0;
    }

    v5 = v11;
  }

  else
  {
    v9 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v8, v11, v4, 8);
    v5 = v8;
    bzero(v8, 8 * v4);
  }

  v9 = v4;
  v6 = *(this + 5);
  mlir::ValueRange::ValueRange(v7, v5, v4);
  mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(v6, a2, v7[0], v7[1]);
}

void mlir::ConversionPatternRewriter::inlineBlockBefore(mlir::ConversionPatternRewriter *a1, mlir::Block *a2, mlir::Block *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 5);
  if (*(*(v10 + 376) + 32))
  {
    v12 = *(a2 + 6);
    v11 = *(a2 + 7);
    v19[0] = a5;
    v19[1] = 0;
    if (v12 != v11 && a6 != 0)
    {
      v14 = mlir::ValueRange::dereference_iterator(v19, 0);
      mlir::ConversionPatternRewriter::replaceUsesOfBlockArgument(a1, *v12, v14);
    }

    v15 = a2 + 32;
    if (*(a2 + 4) != (a2 + 32))
    {
      do
      {
        ZinIrHalH13g::~ZinIrHalH13g(*(a2 + 5));
        mlir::RewriterBase::moveOpBefore(a1, v16, a3, a4);
      }

      while (*(a2 + 4) != v15);
    }

    v17 = *(a2 + 5);
    if (v17 != (a2 + 32))
    {
      ZinIrHalH13g::~ZinIrHalH13g(v17);
      mlir::ConversionPatternRewriter::eraseOp(a1, v18);
    }

    mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(*(a1 + 5), a2);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockBeingInlined(v10, a3, a2);
}

uint64_t mlir::ConversionPatternRewriter::cancelOpModification(mlir::ConversionPatternRewriter *this, mlir::Operation *a2)
{
  v3 = *(this + 5);
  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v5)
  {
    v6 = 8 * v5;
    while (1)
    {
      v7 = *(v4 + v6 - 8);
      v8 = v7 && *(v7 + 8) == 7;
      if (v8 && *(v7 + 24) == a2)
      {
        break;
      }

      v6 -= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v4 += v6;
  }

  else
  {
    v4 += 8 * v5;
  }

LABEL_12:
  (*(**(v4 - 8) + 16))(*(v4 - 8));
  v9 = *(this + 5);
  v10 = *(v9 + 176);
  v11 = (((v4 - v10) << 29) - 0x100000000) >> 29;
  v12 = (v10 + v11 + 8);
  v13 = *(v9 + 184);
  if (v12 != (v10 + 8 * v13))
  {
    v14 = v11 - 8 * v13 + 8;
    do
    {
      v15 = *(v12 - 1);
      *(v12 - 1) = *v12;
      *v12 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      ++v12;
      v14 += 8;
    }

    while (v14);
    LODWORD(v13) = *(v9 + 184);
    v10 = *(v9 + 176);
  }

  v16 = v13 - 1;
  *(v9 + 184) = v16;
  result = *(v10 + 8 * v16);
  *(v10 + 8 * v16) = 0;
  if (result)
  {
    v18 = *(*result + 8);

    return v18();
  }

  return result;
}

uint64_t mlir::OperationConverter::convert(mlir::ConversionTarget **this, mlir::ConversionPatternRewriter *a2, mlir::Operation *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v6 = *(this + 56);
  if (v5)
  {
    if (v6 != 2)
    {
      return 1;
    }

    v7 = this[3];
    if (!v7)
    {
      return 1;
    }

    goto LABEL_53;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v45 = 257;
      mlir::Operation::emitError(a3, v44, &v50);
      if (v50)
      {
        v47 = 3;
        v48 = "failed to legalize operation '";
        v49 = 30;
        v8 = &v47;
        v9 = v52;
        if (v53 >= v54)
        {
          if (v52 <= &v47 && v52 + 24 * v53 > &v47)
          {
            v40 = &v47 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v9 = v52;
            v8 = (v52 + v40);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v8 = &v47;
            v9 = v52;
          }
        }

        v10 = &v9[24 * v53];
        v11 = *v8;
        *(v10 + 2) = *(v8 + 2);
        *v10 = v11;
        ++v53;
        if (v50)
        {
          mlir::Diagnostic::operator<<(v51, *(v46 + 6));
          if (v50)
          {
            v47 = 3;
            v48 = "'";
            v49 = 1;
            v12 = &v47;
            v13 = v52;
            if (v53 >= v54)
            {
              if (v52 <= &v47 && v52 + 24 * v53 > &v47)
              {
                v42 = &v47 - v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                v13 = v52;
                v12 = (v52 + v42);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                v12 = &v47;
                v13 = v52;
              }
            }

            v14 = &v13[24 * v53];
            v15 = *v12;
            *(v14 + 2) = *(v12 + 2);
            *v14 = v15;
            ++v53;
          }
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v59;
          v19 = __p;
          if (v59 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v59 = v17;
          operator delete(v19);
        }

        v20 = v56;
        if (!v56)
        {
          goto LABEL_58;
        }

        v21 = v57;
        v22 = v56;
        if (v57 == v56)
        {
LABEL_57:
          v57 = v20;
          operator delete(v22);
LABEL_58:
          if (v52 != v55)
          {
            free(v52);
          }

          return v16;
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
LABEL_56:
        v22 = v56;
        goto LABEL_57;
      }

      return v16;
    }

    return 1;
  }

  if (!mlir::ConversionTarget::isIllegal(this[18], a3))
  {
    v7 = this[2];
    if (v7)
    {
LABEL_53:
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7, &v46, &v50);
      return 1;
    }

    return 1;
  }

  v45 = 257;
  mlir::Operation::emitError(a3, v44, &v50);
  if (v50)
  {
    v47 = 3;
    v48 = "failed to legalize operation '";
    v49 = 30;
    v25 = &v47;
    v26 = v52;
    if (v53 >= v54)
    {
      if (v52 <= &v47 && v52 + 24 * v53 > &v47)
      {
        v41 = &v47 - v52;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v26 = v52;
        v25 = (v52 + v41);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v25 = &v47;
        v26 = v52;
      }
    }

    v27 = &v26[24 * v53];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    ++v53;
    if (v50)
    {
      mlir::Diagnostic::operator<<(v51, *(v46 + 6));
      if (v50)
      {
        v47 = 3;
        v48 = "' that was explicitly marked illegal";
        v49 = 36;
        v29 = &v47;
        v30 = v52;
        if (v53 >= v54)
        {
          if (v52 <= &v47 && v52 + 24 * v53 > &v47)
          {
            v43 = &v47 - v52;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v30 = v52;
            v29 = (v52 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
            v29 = &v47;
            v30 = v52;
          }
        }

        v31 = &v30[24 * v53];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v53;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v59;
      v35 = __p;
      if (v59 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v59 = v33;
      operator delete(v35);
    }

    v20 = v56;
    if (!v56)
    {
      goto LABEL_58;
    }

    v36 = v57;
    v22 = v56;
    if (v57 == v56)
    {
      goto LABEL_57;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
      }
    }

    while (v36 != v20);
    goto LABEL_56;
  }

  return v16;
}

uint64_t anonymous namespace::OperationLegalizer::legalize(mlir::ConversionTarget **this, mlir::Operation *a2, mlir::ConversionPatternRewriter *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = a2;
  isLegal = mlir::ConversionTarget::isLegal(this[12], a2);
  if ((isLegal & 0x100) != 0)
  {
    if (isLegal)
    {
      v35 = &v30;
      v36 = a3;
    }

    return 1;
  }

  v7 = *(a3 + 5);
  v8 = *(v7 + 296);
  if (v8)
  {
    v9 = *(v7 + 280);
    v10 = v8 - 1;
    v11 = ((a2 >> 4) ^ (a2 >> 9)) & v10;
    v12 = *(v9 + 8 * v11);
    if (v12 == a2)
    {
      return 1;
    }

    v13 = 1;
    result = 1;
    while (v12 != -4096)
    {
      v15 = v11 + v13++;
      v11 = v15 & v10;
      v12 = *(v9 + 8 * v11);
      if (v12 == a2)
      {
        return result;
      }
    }
  }

  v16 = *(v7 + 256);
  if (v16)
  {
    v17 = *(v7 + 240);
    v18 = v16 - 1;
    v19 = v18 & ((a2 >> 4) ^ (a2 >> 9));
    v20 = *(v17 + 8 * v19);
    if (v20 == a2)
    {
      return 1;
    }

    v21 = 1;
    result = 1;
    while (v20 != -4096)
    {
      v22 = v19 + v21++;
      v19 = v22 & v18;
      v20 = *(v17 + 8 * v19);
      if (v20 == a2)
      {
        return result;
      }
    }
  }

  v35 = v37;
  v36 = 0x200000000;
  v23 = *(a2 + 2);
  ZinIrHalH13g::~ZinIrHalH13g(a2);
  *(a3 + 3) = v23;
  *(a3 + 4) = v24;
  if ((mlir::OpBuilder::tryFold(a3 + 8, a2, &v35) & 1) == 0)
  {
    v26 = 0;
    v27 = v35;
    if (v35 == v37)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v36)
  {
    mlir::ValueRange::ValueRange(&v38, v35, v36);
    mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(*(a3 + 5), a2, v38, v39);
  }

  v27 = v35;
  if (v35 != v37)
  {
LABEL_22:
    free(v27);
  }

LABEL_23:
  if ((v26 & 1) == 0)
  {
    v34 = a2;
    v35 = this;
    v28 = *(a3 + 5);
    v38 = this;
    v39 = &v34;
    v40 = a3;
    v29 = v28[78];
    v32 = v28[46] | (v28[68] << 32);
    v33 = v29;
    v31[0] = this;
    v31[1] = v28;
    v31[2] = &v32;
    v36 = &v34;
    v37[0] = a3;
    v37[1] = &v32;
    v37[2] = v28;
  }

  return 1;
}

uint64_t mlir::OperationConverter::convertOperations(mlir::OperationConverter *a1, uint64_t a2, uint64_t a3)
{
  v11[27] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 0;
    v5 = *(a1 + 18);
    v9[0] = &v10;
    v9[1] = 0x600000000;
    v6 = 8 * a3;
    do
    {
      v7 = *(a2 + v4);
      v11[0] = v9;
      v11[1] = v5;
      mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(v7, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>, v11, 0);
      v4 += 8;
    }

    while (v6 != v4);
    mlir::Attribute::getContext((*a2 + 24));
    operator new();
  }

  return 1;
}

void mlir::OperationConverter::finalize(mlir::OperationConverter *this, mlir::ConversionPatternRewriter *a2)
{
  v219[6] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 5);
  v3 = *(v2 + 104);
  v206 = v2 + 104;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  if (*(v2 + 112))
  {
    v4 = *(v2 + 120);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v3;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v6 += 2;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v200 = &v3[2 * v4];
LABEL_294:
    if (v6 != v200)
    {
      v201 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::operator[](&v212, v6 + 1);
      v202 = *v6;
      v203 = *(v201 + 2);
      if (v203 >= *(v201 + 3))
      {
        v204 = v201;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v201, v201 + 2, v203 + 1, 8);
        v201 = v204;
        v203 = *(v204 + 2);
      }

      *(*v201 + 8 * v203) = v202;
      ++*(v201 + 2);
      while (1)
      {
        v6 += 2;
        if (v6 == v200)
        {
          break;
        }

        if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_294;
        }
      }
    }
  }

LABEL_6:
  v207 = *(v2 + 184);
  if (!v207)
  {
LABEL_283:
    v195 = v212;
    if (v214)
    {
      v196 = v212 + 24;
      v197 = 72 * v214;
      do
      {
        if ((*(v196 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v198 = *(v196 - 2);
          if (v196 != v198)
          {
            free(v198);
          }
        }

        v196 += 72;
        v197 -= 72;
      }

      while (v197);
      v195 = v212;
      v199 = 72 * v214;
    }

    else
    {
      v199 = 0;
    }

    llvm::deallocate_buffer(v195, v199);
  }

  v7 = 0;
  while (1)
  {
    mlir::ValueRange::ValueRange(&v217, 0, 0);
    v8 = *(*(v2 + 176) + 8 * v7);
    v9 = *(v8 + 8);
    v10 = v8 && v9 == 8;
    v208 = v7;
    if (v10)
    {
      break;
    }

    if (v8)
    {
      v11 = v9 == 4;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v209 = *(v8 + 40);
      mlir::ValueRange::ValueRange(v218, *(*(v8 + 32) + 48), (*(*(v8 + 32) + 56) - *(*(v8 + 32) + 48)) >> 3);
      v217 = *v218;
      v12 = v218[1];
      v215 = v218[0];
      v216 = 0;
      if (v218[1])
      {
        goto LABEL_25;
      }
    }

    else
    {
      mlir::ValueRange::ValueRange(v218, 0, 0);
      v209 = 0;
      v217 = *v218;
      v12 = v218[1];
      v215 = v218[0];
      v216 = 0;
      if (v218[1])
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    v7 = v208 + 1;
    if (v208 + 1 == v207)
    {
      goto LABEL_283;
    }
  }

  v13 = *(v8 + 24);
  v209 = *(v8 + 32);
  v14 = *(v13 + 36);
  if (v14)
  {
    v15 = v13 - 16;
  }

  else
  {
    v15 = 0;
  }

  mlir::ValueRange::ValueRange(v218, v15, v14);
  v217 = *v218;
  v12 = v218[1];
  v215 = v218[0];
  v216 = 0;
  if (!v218[1])
  {
    goto LABEL_8;
  }

LABEL_25:
  v16 = 0;
LABEL_28:
  v17 = mlir::ValueRange::dereference_iterator(&v215, v16);
  v211 = v17;
  v18 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v2 + 120);
  if (v19)
  {
    v20 = *(v2 + 104);
    v21 = v19 - 1;
    if (v18)
    {
      v22 = 0;
      v23 = v17;
      while (1)
      {
        v24 = v23;
        if ((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8) == v18)
        {
          v22 = v23;
        }

        v25 = 0x9DDFEA08EB382D69 * ((8 * v23 - 0xAE502812AA7333) ^ HIDWORD(v23));
        v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v23) ^ (v25 >> 47) ^ v25);
        v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v21;
        v28 = *(v20 + 16 * v27);
        if (v28 != v24)
        {
          break;
        }

LABEL_34:
        if (v27 != v19)
        {
          v23 = *(v20 + 16 * v27 + 8);
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_55;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & v21;
        v28 = *(v20 + 16 * v27);
        if (v28 == v24)
        {
          goto LABEL_34;
        }
      }

LABEL_55:
      if (!v22)
      {
        v22 = v24;
      }

      if (v17 == v22)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v31 = v17;
      while (1)
      {
        v22 = v31;
        v32 = HIDWORD(v31);
        v33 = 0x9DDFEA08EB382D69 * ((8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31));
        v34 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v32 ^ (v33 >> 47) ^ v33)) >> 32) >> 15) ^ (-348639895 * (v32 ^ (v33 >> 47) ^ v33)))) & v21;
        v35 = *(v20 + 16 * v34);
        if (v35 != v22)
        {
          break;
        }

LABEL_47:
        if (v34 == v19)
        {
          v24 = v22;
          goto LABEL_55;
        }

        v31 = *(v20 + 16 * v34 + 8);
        v24 = v22;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      v36 = 1;
      while (v35 != -4096)
      {
        v37 = v34 + v36++;
        v34 = v37 & v21;
        v35 = *(v20 + 16 * v34);
        if (v35 == v22)
        {
          goto LABEL_47;
        }
      }

      if (!v22)
      {
        v22 = 0;
      }

      if (v17 == v22)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v22 = v17;
    if (!v17)
    {
      v22 = 0;
    }

    if (v17 == v22)
    {
LABEL_58:
      v218[0] = v219;
      HIDWORD(v218[1]) = 6;
      v38 = 1;
      v219[0] = v17;
      while (1)
      {
        v39 = v218[0];
        v40 = *(v218[0] + --v38);
        LODWORD(v218[1]) = v38;
        v41 = *v40;
        if (*v40)
        {
          v42 = *(v2 + 296);
          v43 = *(v2 + 240);
          v44 = *(v2 + 256);
          v45 = v44 - 1;
          if (v42)
          {
            v46 = *(v2 + 280);
            v47 = v42 - 1;
            while (1)
            {
              v48 = v41[2];
              v49 = (v48 >> 4) ^ (v48 >> 9);
              v50 = v49 & v47;
              v51 = *(v46 + 8 * (v49 & v47));
              if (v51 != v48)
              {
                v52 = 1;
                while (v51 != -4096)
                {
                  v53 = v50 + v52++;
                  v50 = v53 & v47;
                  v51 = *(v46 + 8 * v50);
                  if (v51 == v48)
                  {
                    goto LABEL_65;
                  }
                }

                if (!v44)
                {
                  goto LABEL_98;
                }

                v54 = v49 & v45;
                v55 = *(v43 + 8 * v54);
                if (v55 != v48)
                {
                  break;
                }
              }

LABEL_65:
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_85;
              }
            }

            v56 = 1;
            while (v55 != -4096)
            {
              v57 = v54 + v56++;
              v54 = v57 & v45;
              v55 = *(v43 + 8 * v54);
              if (v55 == v48)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_98;
          }

          if (v44)
          {
            while (1)
            {
              v48 = v41[2];
              v58 = ((v48 >> 4) ^ (v48 >> 9)) & v45;
              v59 = *(v43 + 8 * v58);
              if (v59 != v48)
              {
                break;
              }

LABEL_79:
              v41 = *v41;
              if (!v41)
              {
                goto LABEL_85;
              }
            }

            v60 = 1;
            while (v59 != -4096)
            {
              v61 = v58 + v60++;
              v58 = v61 & v45;
              v59 = *(v43 + 8 * v58);
              if (v59 == v48)
              {
                goto LABEL_79;
              }
            }

LABEL_98:
            if (v39 != v219)
            {
LABEL_99:
              free(v39);
            }
          }

          else
          {
            v48 = v41[2];
            if (v218[0] != v219)
            {
              goto LABEL_99;
            }
          }

          if (v48)
          {
            v72 = *(v2 + 120);
            if (v72)
            {
              v73 = *(v2 + 104);
              v74 = v72 - 1;
              v75 = v211;
              while (1)
              {
                v76 = v75;
                v77 = HIDWORD(v75);
                v78 = 0x9DDFEA08EB382D69 * ((8 * v76 - 0xAE502812AA7333) ^ v77);
                v79 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v77 ^ (v78 >> 47) ^ v78)) >> 32) >> 15) ^ (-348639895 * (v77 ^ (v78 >> 47) ^ v78)))) & v74;
                v80 = *(v73 + 16 * v79);
                if (v80 != v76)
                {
                  break;
                }

LABEL_104:
                if (v79 != v72)
                {
                  v75 = *(v73 + 16 * v79 + 8);
                  if (v75)
                  {
                    continue;
                  }
                }

                goto LABEL_112;
              }

              v81 = 1;
              while (v80 != -4096)
              {
                v82 = v79 + v81++;
                v79 = v82 & v74;
                v80 = *(v73 + 16 * v79);
                if (v80 == v76)
                {
                  goto LABEL_104;
                }
              }
            }

            else
            {
              v76 = v211;
            }

LABEL_112:
            if (v76 == v211)
            {
              v83 = 0;
            }

            else
            {
              v83 = v76;
            }

            v210 = v83;
            v218[0] = v83;
            ParentBlock = mlir::Value::getParentBlock(v218);
            if (v218[0])
            {
              v85 = (*(v218[0] + 1) & 7) == 7;
            }

            else
            {
              v85 = 1;
            }

            if (v85)
            {
              v86 = (ParentBlock + 40);
            }

            else
            {
              v86 = (mlir::detail::OpResultImpl::getOwner(v218[0]) + 8);
            }

            v87 = *v86;
            Loc = mlir::Value::getLoc(&v211);
            v89 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(v2, 2u, ParentBlock, v87, Loc, &v210, 1, *(v211 + 8) & 0xFFFFFFFFFFFFFFF8, v209);
            v90 = v211;
            v91 = *(v2 + 120);
            if (!v91)
            {
LABEL_197:
              v139 = v89;
              llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(v206, 2 * v91);
              v140 = *(v2 + 120);
              if (!v140)
              {
                goto LABEL_217;
              }

              goto LABEL_198;
            }

            v92 = *(v2 + 104);
            v93 = 0x9DDFEA08EB382D69 * ((8 * v211 - 0xAE502812AA7333) ^ HIDWORD(v211));
            v94 = 0x9DDFEA08EB382D69 * (HIDWORD(v211) ^ (v93 >> 47) ^ v93);
            v95 = v91 - 1;
            v96 = (-348639895 * ((v94 >> 47) ^ v94)) & (v91 - 1);
            v97 = (v92 + 16 * v96);
            v98 = *v97;
            if (v211 != *v97)
            {
              v99 = 0;
              v100 = 1;
              while (v98 != -4096)
              {
                if (v99)
                {
                  v101 = 0;
                }

                else
                {
                  v101 = v98 == -8192;
                }

                if (v101)
                {
                  v99 = v97;
                }

                v102 = v96 + v100++;
                v96 = v102 & v95;
                v97 = (v92 + 16 * (v102 & v95));
                v98 = *v97;
                if (v211 == *v97)
                {
                  goto LABEL_137;
                }
              }

              if (v99)
              {
                v97 = v99;
              }

              v138 = *(v2 + 112);
              if (4 * v138 + 4 >= 3 * v91)
              {
                goto LABEL_197;
              }

              if (v91 + ~v138 - *(v2 + 116) > v91 >> 3)
              {
                *(v2 + 112) = v138 + 1;
                if (*v97 != -4096)
                {
                  goto LABEL_135;
                }

                goto LABEL_136;
              }

              v139 = v89;
              llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(v206, v91);
              v140 = *(v2 + 120);
              if (!v140)
              {
LABEL_217:
                v97 = 0;
LABEL_218:
                v89 = v139;
                goto LABEL_219;
              }

LABEL_198:
              v141 = *(v2 + 104);
              v142 = 0x9DDFEA08EB382D69 * ((8 * v90 - 0xAE502812AA7333) ^ HIDWORD(v90));
              v143 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v142 >> 47) ^ v142);
              LODWORD(v142) = -348639895 * ((v143 >> 47) ^ v143);
              v144 = v140 - 1;
              v145 = (v140 - 1) & v142;
              v97 = (v141 + 16 * v145);
              v146 = *v97;
              if (v90 == *v97)
              {
                goto LABEL_218;
              }

              v147 = 0;
              v148 = 1;
              v89 = v139;
              while (v146 != -4096)
              {
                if (v147)
                {
                  v149 = 0;
                }

                else
                {
                  v149 = v146 == -8192;
                }

                if (v149)
                {
                  v147 = v97;
                }

                v150 = v145 + v148++;
                v145 = v150 & v144;
                v97 = (v141 + 16 * (v150 & v144));
                v146 = *v97;
                if (v90 == *v97)
                {
                  goto LABEL_219;
                }
              }

              if (v147)
              {
                v97 = v147;
              }

LABEL_219:
              ++*(v2 + 112);
              if (*v97 != -4096)
              {
LABEL_135:
                --*(v2 + 116);
              }

LABEL_136:
              *v97 = v90;
              v97[1] = 0;
            }

LABEL_137:
            v97[1] = v89;
            v103 = v212;
            v104 = v214;
            if (!v214)
            {
              v108 = 0;
              v114 = v213;
              if (4 * v213 + 4 >= 3 * v214)
              {
                goto LABEL_211;
              }

              goto LABEL_149;
            }

            v105 = 0x9DDFEA08EB382D69 * ((8 * v89 - 0xAE502812AA7333) ^ HIDWORD(v89));
            v106 = 0x9DDFEA08EB382D69 * (HIDWORD(v89) ^ (v105 >> 47) ^ v105);
            v107 = (v214 - 1) & (-348639895 * ((v106 >> 47) ^ v106));
            v108 = v212 + 72 * v107;
            v109 = *v108;
            if (*v108 != v89)
            {
              v110 = 0;
              v111 = 1;
              while (v109 != -4096)
              {
                if (v110)
                {
                  v112 = 0;
                }

                else
                {
                  v112 = v109 == -8192;
                }

                if (v112)
                {
                  v110 = v108;
                }

                v113 = v107 + v111++;
                v107 = v113 & (v214 - 1);
                v108 = v212 + 72 * v107;
                v109 = *v108;
                if (*v108 == v89)
                {
                  goto LABEL_153;
                }
              }

              if (v110)
              {
                v108 = v110;
              }

              v114 = v213;
              if (4 * v213 + 4 >= 3 * v214)
              {
LABEL_211:
                v205 = v89;
                v151 = 2 * v214;
                goto LABEL_222;
              }

LABEL_149:
              if (v214 + ~v114 - HIDWORD(v213) <= v214 >> 3)
              {
                v205 = v89;
                v151 = v214;
LABEL_222:
                v153 = (v151 - 1) | ((v151 - 1) >> 1);
                v154 = v153 | (v153 >> 2) | ((v153 | (v153 >> 2)) >> 4);
                v155 = ((v154 | (v154 >> 8)) >> 16) | v154 | (v154 >> 8);
                if ((v155 + 1) > 0x40)
                {
                  v156 = v155 + 1;
                }

                else
                {
                  v156 = 64;
                }

                v214 = v156;
                buffer = llvm::allocate_buffer(72 * v156, 8uLL);
                v212 = buffer;
                if (v103)
                {
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v212, v103, &v103[9 * v104]);
                  llvm::deallocate_buffer(v103, (72 * v104));
                }

                v213 = 0;
                v164 = v214;
                if (v214)
                {
                  v165 = buffer;
                  v166 = 72 * v214 - 72;
                  v167 = buffer;
                  v89 = v205;
                  if (v166 < 0x48)
                  {
                    goto LABEL_303;
                  }

                  v168 = v166 / 0x48 + 1;
                  v167 = (v165 + 72 * (v168 & 0x7FFFFFFFFFFFFFELL));
                  v169 = v165;
                  v170 = v168 & 0x7FFFFFFFFFFFFFELL;
                  do
                  {
                    *v169 = -4096;
                    *(v169 + 9) = -4096;
                    v169 = (v169 + 144);
                    v170 -= 2;
                  }

                  while (v170);
                  if (v168 != (v168 & 0x7FFFFFFFFFFFFFELL))
                  {
LABEL_303:
                    do
                    {
                      *v167 = -4096;
                      v167 = (v167 + 72);
                    }

                    while (v167 != (v165 + 72 * v164));
                  }

                  if (v164)
                  {
                    v171 = 0x9DDFEA08EB382D69 * ((8 * v205 - 0xAE502812AA7333) ^ HIDWORD(v205));
                    v172 = 0x9DDFEA08EB382D69 * (HIDWORD(v205) ^ (v171 >> 47) ^ v171);
                    v173 = v164 - 1;
                    v174 = v173 & (-348639895 * ((v172 >> 47) ^ v172));
                    v108 = v165 + 72 * v174;
                    v175 = *v108;
                    if (*v108 != v205)
                    {
                      v176 = 0;
                      v177 = 1;
                      while (v175 != -4096)
                      {
                        if (v176)
                        {
                          v178 = 0;
                        }

                        else
                        {
                          v178 = v175 == -8192;
                        }

                        if (v178)
                        {
                          v176 = v108;
                        }

                        v179 = v174 + v177++;
                        v174 = v179 & v173;
                        v108 = v165 + 72 * v174;
                        v175 = *v108;
                        if (*v108 == v205)
                        {
                          goto LABEL_272;
                        }
                      }

                      if (v176)
                      {
                        v108 = v176;
                      }
                    }
                  }

                  else
                  {
                    v108 = 0;
                  }
                }

                else
                {
                  v108 = 0;
                  v89 = v205;
                }

LABEL_272:
                LODWORD(v213) = v213 + 1;
                if (*v108 != -4096)
                {
LABEL_151:
                  --HIDWORD(v213);
                }
              }

              else
              {
                LODWORD(v213) = v114 + 1;
                if (*v108 != -4096)
                {
                  goto LABEL_151;
                }
              }

              *v108 = v89;
              *(v108 + 1) = v108 + 24;
              *(v108 + 2) = 0x600000000;
            }

LABEL_153:
            v115 = v211;
            v116 = *(v108 + 4);
            if (v116 >= *(v108 + 5))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod((v108 + 8), v108 + 24, v116 + 1, 8);
              v116 = *(v108 + 4);
            }

            *(*(v108 + 1) + 8 * v116) = v115;
            ++*(v108 + 4);
            v117 = v212;
            v118 = v214;
            if (!v214)
            {
              v123 = 0;
              v129 = v213;
              if (4 * v213 + 4 >= 3 * v214)
              {
                goto LABEL_215;
              }

              goto LABEL_167;
            }

            v119 = 0x9DDFEA08EB382D69 * ((8 * v210 - 0xAE502812AA7333) ^ (v210 >> 32));
            v120 = 0x9DDFEA08EB382D69 * ((v210 >> 32) ^ (v119 >> 47) ^ v119);
            v121 = v214 - 1;
            v122 = (-348639895 * ((v120 >> 47) ^ v120)) & (v214 - 1);
            v123 = (v212 + 72 * v122);
            v124 = *v123;
            if (v210 != *v123)
            {
              v125 = 0;
              v126 = 1;
              while (v124 != -4096)
              {
                if (v125)
                {
                  v127 = 0;
                }

                else
                {
                  v127 = v124 == -8192;
                }

                if (v127)
                {
                  v125 = v123;
                }

                v128 = v122 + v126++;
                v122 = v128 & v121;
                v123 = (v212 + 72 * (v128 & v121));
                v124 = *v123;
                if (v210 == *v123)
                {
                  goto LABEL_171;
                }
              }

              if (v125)
              {
                v123 = v125;
              }

              v129 = v213;
              if (4 * v213 + 4 >= 3 * v214)
              {
LABEL_215:
                v152 = 2 * v214;
                goto LABEL_228;
              }

LABEL_167:
              if (v214 + ~v129 - HIDWORD(v213) <= v214 >> 3)
              {
                v152 = v214;
LABEL_228:
                v158 = (v152 - 1) | ((v152 - 1) >> 1);
                v159 = v158 | (v158 >> 2) | ((v158 | (v158 >> 2)) >> 4);
                v160 = ((v159 | (v159 >> 8)) >> 16) | v159 | (v159 >> 8);
                if ((v160 + 1) > 0x40)
                {
                  v161 = v160 + 1;
                }

                else
                {
                  v161 = 64;
                }

                v214 = v161;
                v162 = llvm::allocate_buffer(72 * v161, 8uLL);
                v212 = v162;
                if (v117)
                {
                  v163 = 9 * v118;
                  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(&v212, v117, &v117[v163]);
                  llvm::deallocate_buffer(v117, (v163 * 8));
                }

                v213 = 0;
                v180 = v214;
                if (!v214)
                {
                  goto LABEL_267;
                }

                v181 = 72 * v214 - 72;
                v182 = v162;
                if (v181 < 0x48)
                {
                  goto LABEL_304;
                }

                v183 = v181 / 0x48 + 1;
                v182 = (v162 + 72 * (v183 & 0x7FFFFFFFFFFFFFELL));
                v184 = v162;
                v185 = v183 & 0x7FFFFFFFFFFFFFELL;
                do
                {
                  *v184 = -4096;
                  *(v184 + 9) = -4096;
                  v184 = (v184 + 144);
                  v185 -= 2;
                }

                while (v185);
                if (v183 != (v183 & 0x7FFFFFFFFFFFFFELL))
                {
LABEL_304:
                  do
                  {
                    *v182 = -4096;
                    v182 = (v182 + 72);
                  }

                  while (v182 != (v162 + 72 * v180));
                }

                if (v180)
                {
                  v186 = 0x9DDFEA08EB382D69 * ((8 * v210 - 0xAE502812AA7333) ^ (v210 >> 32));
                  v187 = 0x9DDFEA08EB382D69 * ((v210 >> 32) ^ (v186 >> 47) ^ v186);
                  LODWORD(v186) = -348639895 * ((v187 >> 47) ^ v187);
                  v188 = v180 - 1;
                  v189 = v186 & (v180 - 1);
                  v123 = (v162 + 72 * v189);
                  v190 = *v123;
                  if (v210 != *v123)
                  {
                    v191 = 0;
                    v192 = 1;
                    while (v190 != -4096)
                    {
                      if (v191)
                      {
                        v193 = 0;
                      }

                      else
                      {
                        v193 = v190 == -8192;
                      }

                      if (v193)
                      {
                        v191 = v123;
                      }

                      v194 = v189 + v192++;
                      v189 = v194 & v188;
                      v123 = (v162 + 72 * (v194 & v188));
                      v190 = *v123;
                      if (v210 == *v123)
                      {
                        goto LABEL_268;
                      }
                    }

                    if (v191)
                    {
                      v123 = v191;
                    }
                  }
                }

                else
                {
LABEL_267:
                  v123 = 0;
                }

LABEL_268:
                LODWORD(v213) = v213 + 1;
                if (*v123 != -4096)
                {
LABEL_169:
                  --HIDWORD(v213);
                }
              }

              else
              {
                LODWORD(v213) = v129 + 1;
                if (*v123 != -4096)
                {
                  goto LABEL_169;
                }
              }

              *v123 = v210;
              v123[1] = v123 + 3;
              v123[2] = 0x600000000;
            }

LABEL_171:
            v130 = v211;
            v131 = v123[1];
            v132 = *(v123 + 4);
            v133 = (v131 + 8 * v132);
            if (v132)
            {
              v134 = 8 * v132;
              v135 = v123[1];
              do
              {
                if (*v135 == v211)
                {
                  goto LABEL_177;
                }

                ++v135;
                v134 -= 8;
              }

              while (v134);
              v135 = v133;
            }

            else
            {
              v135 = v123[1];
LABEL_177:
              if (v135 != v133)
              {
                v136 = v135 + 1;
                if (v135 + 1 != v133)
                {
                  v137 = v133 - v135 - 8;
                  do
                  {
                    if (*v136 != v130)
                    {
                      *v135++ = *v136;
                    }

                    ++v136;
                    v137 -= 8;
                  }

                  while (v137);
                }
              }
            }

            *(v123 + 4) = (v135 - v131) >> 3;
          }

LABEL_27:
          v16 = v216 + 1;
          v216 = v16;
          if (v16 == v12)
          {
            goto LABEL_8;
          }

          goto LABEL_28;
        }

LABEL_85:
        if (!v214)
        {
          goto LABEL_91;
        }

        v62 = 0x9DDFEA08EB382D69 * ((8 * v40 - 0xAE502812AA7333) ^ HIDWORD(v40));
        v63 = 0x9DDFEA08EB382D69 * (HIDWORD(v40) ^ (v62 >> 47) ^ v62);
        v64 = (v214 - 1) & (-348639895 * ((v63 >> 47) ^ v63));
        v65 = v212 + 72 * v64;
        v66 = *v65;
        if (v40 != *v65)
        {
          break;
        }

LABEL_92:
        if (v65 != v212 + 72 * v214)
        {
          v69 = *(v65 + 1);
          v70 = *(v65 + 4);
          v71 = v70 + v38;
          if (v71 > HIDWORD(v218[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v218, v219, v71, 8);
            v38 = v218[1];
          }

          if (v70)
          {
            memcpy(v218[0] + 8 * v38, v69, 8 * v70);
            v38 = v218[1];
          }

          v38 += v70;
          LODWORD(v218[1]) = v38;
        }

        if (!v38)
        {
          v48 = 0;
          v39 = v218[0];
          goto LABEL_98;
        }
      }

      v67 = 1;
      while (v66 != -4096)
      {
        v68 = v64 + v67++;
        v64 = v68 & (v214 - 1);
        v65 = v212 + 72 * v64;
        v66 = *v65;
        if (v40 == *v65)
        {
          goto LABEL_92;
        }
      }

LABEL_91:
      v65 = v212 + 72 * v214;
      goto LABEL_92;
    }
  }

  if (v18)
  {
    if (v22 && (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) == v18)
    {
      goto LABEL_27;
    }
  }

  else if (v22)
  {
    goto LABEL_27;
  }

  goto LABEL_58;
}

void mlir::reconcileUnrealizedCasts(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v71 = 0;
  v70 = 0u;
  v72 = v74;
  v73 = 0;
  if (!a2)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    goto LABEL_90;
  }

  v4 = a1;
  v5 = 8 * a2;
  v6 = a1;
  v7 = &a1[a2];
  do
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>,mlir::OpResult,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::OpResult,void>,llvm::detail::DenseSetPair<mlir::OpResult>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v70, v6, &v61);
    if (v63 == 1)
    {
      v8 = *v6;
      v9 = v73;
      if (v73 >= HIDWORD(v73))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v73 + 1, 8);
        v9 = v73;
      }

      v72[v9] = v8;
      LODWORD(v73) = v73 + 1;
    }

    ++v6;
    v5 -= 8;
  }

  while (v5);
  v10 = v73;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  for (i = &v70; v73; v10 = v73)
  {
    v12 = v72[v10 - 1];
    if (v71)
    {
      v13 = 0x9DDFEA08EB382D69 * ((8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v13 >> 47) ^ v13);
      v15 = (-348639895 * ((v14 >> 47) ^ v14)) & (v71 - 1);
      v16 = *(v70 + 8 * v15);
      if (v12 == v16)
      {
LABEL_16:
        *(v70 + 8 * v15) = -8192;
        *(&v70 + 1) = vadd_s32(*(&v70 + 8), 0x1FFFFFFFFLL);
        v10 = v73;
      }

      else
      {
        v49 = 1;
        while (v16 != -4096)
        {
          v50 = v15 + v49++;
          v15 = v50 & (v71 - 1);
          v16 = *(v70 + 8 * v15);
          if (v12 == v16)
          {
            goto LABEL_16;
          }
        }
      }
    }

    LODWORD(v73) = v10 - 1;
    v17 = *(v12 + 36);
    if (v17)
    {
      v18 = v12 - 16;
    }

    else
    {
      v18 = 0;
    }

    if (!v17)
    {
LABEL_10:
      mlir::reconcileUnrealizedCasts(llvm::ArrayRef<mlir::UnrealizedConversionCastOp>,llvm::SmallVectorImpl<mlir::UnrealizedConversionCastOp> *)::$_0::operator()(&i, v12);
      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v19 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v19))
    {
      if (v17 == ++v19)
      {
        goto LABEL_10;
      }
    }

    v65 = v12;
    if (v12)
    {
      while (1)
      {
        ODSOperandIndexAndLength = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v65, 0);
        if ((*(v65 + 46) & 0x80) != 0)
        {
          v21 = *(v65 + 72);
        }

        else
        {
          v21 = 0;
        }

        v60[0] = v21 + 32 * ODSOperandIndexAndLength;
        v60[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
        mlir::OperandRange::getTypes(&v61, v60);
        v22 = *(v12 + 36);
        if (v22)
        {
          v23 = v12 - 16;
        }

        else
        {
          v23 = 0;
        }

        v74[0] = v23;
        v74[1] = v22;
        mlir::OperandRange::getTypes(&v57, v74);
        v24 = v64 - v62;
        v25 = v58;
        if (v64 - v62 == v59 - v58)
        {
          if (v64 == v62)
          {
LABEL_47:
            mlir::reconcileUnrealizedCasts(llvm::ArrayRef<mlir::UnrealizedConversionCastOp>,llvm::SmallVectorImpl<mlir::UnrealizedConversionCastOp> *)::$_0::operator()(&i, v12);
            v35 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v65, 0);
            if ((*(v65 + 46) & 0x80) != 0)
            {
              v36 = *(v65 + 72);
              v37 = *(v12 + 36);
              if (v37)
              {
                v38 = v12 - 16;
              }

              else
              {
                v38 = 0;
              }

              if (v37)
              {
LABEL_52:
                v39 = (HIDWORD(v35) + v35);
                if (v39 != v35)
                {
                  v40 = 0;
                  v41 = v36 + 32 * v35;
                  v42 = v39 - v35;
                  do
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, v40);
                    v44 = *NextResultAtOffset;
                    if (*NextResultAtOffset)
                    {
                      v45 = *(v41 + 32 * v40 + 24);
                      do
                      {
                        v46 = v44[1];
                        if (v46)
                        {
                          v47 = *v44;
                          *v46 = *v44;
                          if (v47)
                          {
                            *(v47 + 8) = v46;
                          }
                        }

                        v44[3] = v45;
                        v44[1] = v45;
                        v48 = *v45;
                        *v44 = *v45;
                        if (v48)
                        {
                          *(v48 + 8) = v44;
                        }

                        *v45 = v44;
                        v44 = *NextResultAtOffset;
                      }

                      while (*NextResultAtOffset);
                    }

                    ++v40;
                  }

                  while (v40 != v37 && v40 != v42);
                }
              }
            }

            else
            {
              v36 = 0;
              v37 = *(v12 + 36);
              if (v37)
              {
                v38 = v12 - 16;
              }

              else
              {
                v38 = 0;
              }

              if (v37)
              {
                goto LABEL_52;
              }
            }

            if (!a3)
            {
LABEL_12:
              mlir::Operation::erase(v12, v11);
              break;
            }

LABEL_11:
            v57 = v12;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v67, &v57, &v61);
            goto LABEL_12;
          }

          v26 = v57;
          v27 = v61 + 32 * v62 + 24;
          while (1)
          {
            v28 = *(*v27 + 8);
            if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, v25) + 8) ^ v28) > 7)
            {
              break;
            }

            ++v25;
            v27 += 32;
            if (!--v24)
            {
              goto LABEL_47;
            }
          }
        }

        v76[0] = v65;
        v29 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(v76, 0);
        if (HIDWORD(v29) + v29 != v29)
        {
          v30 = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(v76, 0);
          v61 = *(*(v76[0] + 72) + 32 * v30 + 24);
          DefiningOp = mlir::Value::getDefiningOp(&v61);
          if (DefiningOp)
          {
            v32 = *(*(DefiningOp + 48) + 16);
            v33 = v32 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id;
            v34 = v32 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id ? DefiningOp : 0;
            v75 = v34;
            if (v33 && mlir::reconcileUnrealizedCasts(&v75, v76, &v65) > 1u)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

  if (!a3)
  {
LABEL_90:
    llvm::deallocate_buffer(v67, (8 * v69));
  }

  while (1)
  {
    v52 = *v4;
    if (!v69)
    {
      goto LABEL_77;
    }

    v53 = (v69 - 1) & ((v52 >> 4) ^ (v52 >> 9));
    v54 = *(v67 + v53);
    if (v54 != v52)
    {
      break;
    }

LABEL_83:
    if (v53 == v69)
    {
      goto LABEL_77;
    }

LABEL_80:
    if (++v4 == v7)
    {
      goto LABEL_90;
    }
  }

  v55 = 1;
  while (v54 != -4096)
  {
    v56 = v53 + v55++;
    v53 = v56 & (v69 - 1);
    v54 = *(v67 + v53);
    if (v54 == v52)
    {
      goto LABEL_83;
    }
  }

LABEL_77:
  v51 = *(a3 + 8);
  if (v51 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v51 + 1, 8);
    v51 = *(a3 + 8);
  }

  *(*a3 + 8 * v51) = v52;
  ++*(a3 + 8);
  goto LABEL_80;
}